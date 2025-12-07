@interface NSSet
+ (NSSet)allocWithZone:(_NSZone *)zone;
+ (NSSet)set;
+ (NSSet)setWithArray:(NSArray *)array;
+ (NSSet)setWithArray:(id)array copyItems:(BOOL)items;
+ (NSSet)setWithArray:(id)array range:(_NSRange)range;
+ (NSSet)setWithArray:(id)array range:(_NSRange)range copyItems:(BOOL)items;
+ (NSSet)setWithObject:(id)object;
+ (NSSet)setWithObjects:(id *)objects count:(NSUInteger)cnt;
+ (NSSet)setWithObjects:(id)firstObj;
+ (NSSet)setWithOrderedSet:(id)set;
+ (NSSet)setWithOrderedSet:(id)set copyItems:(BOOL)items;
+ (NSSet)setWithOrderedSet:(id)set range:(_NSRange)range;
+ (NSSet)setWithOrderedSet:(id)set range:(_NSRange)range copyItems:(BOOL)items;
+ (NSSet)setWithSet:(NSSet *)set;
+ (NSSet)setWithSet:(id)set copyItems:(BOOL)items;
+ (id)newSetWithObjects:(const void *)objects count:(unint64_t)count;
- (BOOL)__getValue:(id *)value forObj:(id)obj;
- (BOOL)containsObject:(id)anObject;
- (BOOL)intersectsOrderedSet:(id)set;
- (BOOL)intersectsSet:(NSSet *)otherSet;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSet:(NSSet *)otherSet;
- (BOOL)isSubsetOfOrderedSet:(id)set;
- (BOOL)isSubsetOfSet:(NSSet *)otherSet;
- (NSArray)allObjects;
- (NSEnumerator)objectEnumerator;
- (NSSet)initWithArray:(NSArray *)array;
- (NSSet)initWithArray:(id)array copyItems:(BOOL)items;
- (NSSet)initWithArray:(id)array range:(_NSRange)range copyItems:(BOOL)items;
- (NSSet)initWithObject:(id)object;
- (NSSet)initWithObjects:(id *)objects count:(NSUInteger)cnt;
- (NSSet)initWithObjects:(id)firstObj;
- (NSSet)initWithOrderedSet:(id)set;
- (NSSet)initWithOrderedSet:(id)set copyItems:(BOOL)items;
- (NSSet)initWithOrderedSet:(id)set range:(_NSRange)range copyItems:(BOOL)items;
- (NSSet)initWithSet:(NSSet *)set copyItems:(BOOL)flag;
- (NSSet)objectsPassingTest:(void *)predicate;
- (NSSet)objectsWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSSet)setByAddingObject:(id)anObject;
- (NSSet)setByAddingObjectsFromArray:(NSArray *)other;
- (NSSet)setByAddingObjectsFromSet:(NSSet *)other;
- (NSString)description;
- (NSString)descriptionWithLocale:(id)locale;
- (NSUInteger)count;
- (id)anyObject;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLocale:(id)locale indent:(unint64_t)indent;
- (id)member:(id)object;
- (id)members:(id)members notFoundMarker:(id)marker;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectPassingTest:(id)test;
- (id)objectWithOptions:(unint64_t)options passingTest:(id)test;
- (id)sortedArrayUsingComparator:(id)comparator;
- (id)sortedArrayWithOptions:(unint64_t)options usingComparator:(id)comparator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)countForObject:(id)object;
- (unint64_t)hash;
- (void)__applyValues:(void *)values context:(void *)context;
- (void)enumerateObjectsUsingBlock:(void *)block;
- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)getObjects:(id *)objects;
- (void)getObjects:(id *)objects count:(unint64_t)count;
- (void)getObjects:(id *)objects range:(_NSRange)range;
- (void)makeObjectsPerformSelector:(SEL)aSelector;
- (void)makeObjectsPerformSelector:(SEL)aSelector withObject:(id)argument;
@end

@implementation NSSet

+ (NSSet)set
{
  v2 = [[self alloc] initWithObjects:0 count:0];

  return v2;
}

- (id)anyObject
{
  v7 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  memset(v6, 0, sizeof(v6));
  result = [(NSSet *)self countByEnumeratingWithState:v6 objects:&v5 count:16];
  if (result)
  {
    return **(&v6[0] + 1);
  }

  return result;
}

- (NSArray)allObjects
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  v4 = [(NSSet *)self count];
  v5 = v4;
  if (v4 >> 60)
  {
    v12 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v4);
    v13 = [NSException exceptionWithName:@"NSGenericException" reason:v12 userInfo:0];
    CFRelease(v12);
    objc_exception_throw(v13);
  }

  v14[0] = 0;
  if (v4 <= 1)
  {
    v4 = 1;
  }

  v6 = _CFCreateArrayStorage(v4, 0, v14);
  [(NSSet *)self getObjects:v6 count:v5];
  if (v6)
  {
    if (v5)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *v7++;
        --v8;
      }

      while (v8);
    }

    v10 = [[NSArray alloc] _initByAdoptingBuffer:v6 count:v5 size:v5];
  }

  else
  {
    v10 = [[NSArray alloc] initWithObjects:0 count:v5];
  }

  return v10;
}

- (NSString)description
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  return [(NSSet *)self descriptionWithLocale:0 indent:0];
}

- (unint64_t)hash
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  return [(NSSet *)self count];
}

- (BOOL)containsObject:(id)anObject
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
    if (anObject)
    {
      return [(NSSet *)self member:anObject]!= 0;
    }
  }

  else if (anObject)
  {
    return [(NSSet *)self member:anObject]!= 0;
  }

  return 0;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v26 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v19 = _os_log_pack_size();
    v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v25, v26);
    *v21 = 136315394;
    *(v21 + 4) = "[NSSet countByEnumeratingWithState:objects:count:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = count;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSSet countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_28;
  }

  if (count >> 61)
  {
    v19 = _os_log_pack_size();
    v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v25, v26);
    *v23 = 136315394;
    *(v23 + 4) = "[NSSet countByEnumeratingWithState:objects:count:]";
    *(v23 + 12) = 2048;
    *(v23 + 14) = count;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSSet countByEnumeratingWithState:objects:count:]", count);
LABEL_28:
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v19];
    objc_exception_throw(v24);
  }

  var0 = state->var0;
  if (state->var0 == -1)
  {
    return 0;
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableSet);
    var0 = state->var0;
    if (state->var0)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!var0)
  {
LABEL_9:
    state->var2 = state->var3;
    state->var3[0] = [(NSSet *)self count];
    objectEnumerator = [(NSSet *)self objectEnumerator];
    state->var3[1] = objectEnumerator;
    if (objectEnumerator)
    {
      v11 = objectEnumerator;
      var0 = state->var0;
      goto LABEL_11;
    }

    return 0;
  }

LABEL_7:
  v11 = state->var3[1];
LABEL_11:
  state->var1 = objects;
  v13 = state->var3[0];
  if (v13 - var0 >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = v13 - var0;
  }

  if (countCopy)
  {
    v15 = 0;
    while (1)
    {
      nextObject = [(NSEnumerator *)v11 nextObject];
      if (!nextObject)
      {
        break;
      }

      objects[v15++] = nextObject;
      if (countCopy == v15)
      {
        var0 = state->var0;
        goto LABEL_19;
      }
    }

    v17 = -1;
  }

  else
  {
LABEL_19:
    v17 = var0 + countCopy;
    if (v13 <= v17)
    {
      v17 = -1;
    }

    v15 = countCopy;
  }

  state->var0 = v17;
  return v15;
}

- (unint64_t)countForObject:(id)object
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  return [(NSSet *)self member:object]!= 0;
}

- (id)descriptionWithLocale:(id)locale indent:(unint64_t)indent
{
  localeCopy = locale;
  v36[1] = *MEMORY[0x1E69E9840];
  if (indent >= 0x64)
  {
    indentCopy = 100;
  }

  else
  {
    indentCopy = indent;
  }

  v7 = [(NSSet *)self count];
  v10 = v7;
  if (v7 >> 60)
  {
    v28 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7);
    v29 = [NSException exceptionWithName:@"NSGenericException" reason:v28 userInfo:0];
    CFRelease(v28);
    objc_exception_throw(v29);
  }

  if (v7 <= 1)
  {
    v7 = 1;
  }

  v11 = MEMORY[0x1EEE9AC00](v7, v8, v9);
  v13 = (&v30 - v12);
  v36[0] = 0;
  if (v10 >= 0x101)
  {
    v13 = _CFCreateArrayStorage(v11, 0, v36);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  [(NSSet *)self getObjects:v13 count:v10];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v33 = &__kCFAllocatorSystemDefault;
  v34 = v14;
  v31 = objc_autoreleasePoolPush();
  indentCopy2 = indent;
  if (v10)
  {
    v16 = v13;
    v17 = v10;
    do
    {
      v18 = *v16;
      if (_NSIsNSString(*v16))
      {
        _stringRepresentation = [v18 _stringRepresentation];
      }

      else if (objc_opt_respondsToSelector())
      {
        _stringRepresentation = [v18 descriptionWithLocale:localeCopy indent:indentCopy + 1];
      }

      else if (objc_opt_respondsToSelector())
      {
        _stringRepresentation = [v18 descriptionWithLocale:localeCopy];
      }

      else
      {
        _stringRepresentation = [v18 description];
      }

      if (_stringRepresentation)
      {
        v20 = _stringRepresentation;
      }

      else
      {
        v20 = @"(null)";
      }

      *v16++ = v20;
      --v17;
    }

    while (v17);
  }

  v21 = v34;
  v22 = CFStringCreateMutable(v33, 0);
  if (indentCopy2)
  {
    do
    {
      CFStringAppend(v22, @"    ");
      --indentCopy;
    }

    while (indentCopy);
  }

  CFStringAppend(Mutable, v22);
  CFStringAppend(Mutable, @"{(\n");
  v23 = 1;
  v24 = v10;
  while (v24)
  {
    CFStringAppend(Mutable, v22);
    CFStringAppend(Mutable, @"    ");
    CFStringAppend(Mutable, *v13);
    if (v23 >= v10)
    {
      v25 = @"\n";
    }

    else
    {
      v25 = @",\n";
    }

    --v24;
    ++v13;
    ++v23;
    CFStringAppend(Mutable, v25);
  }

  CFStringAppend(Mutable, v22);
  CFStringAppend(Mutable, @"}"));
  CFRelease(v22);
  objc_autoreleasePoolPop(v31);
  v26 = Mutable;
  free(v21);
  return v26;
}

- (NSString)descriptionWithLocale:(id)locale
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  return [(NSSet *)self descriptionWithLocale:locale indent:0];
}

- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v8 = _os_log_pack_size();
    v11 = v15 - ((MEMORY[0x1EEE9AC00](v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v11, v8, 0, &dword_1830E6000, "*** %s: block cannot be nil", v15[0]);
    *v12 = 136315138;
    *(v12 + 4) = "[NSSet enumerateObjectsWithOptions:usingBlock:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSSet enumerateObjectsWithOptions:usingBlock:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v8];
    objc_exception_throw(v14);
  }

  v6 = opts;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
  }

  __NSSetEnumerate(self, v6 & 0xFD, block);
}

- (void)enumerateObjectsUsingBlock:(void *)block
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, 0, &dword_1830E6000, "*** %s: block cannot be nil", v10[0]);
    *v7 = 136315138;
    *(v7 + 4) = "[NSSet enumerateObjectsUsingBlock:]";
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSSet enumerateObjectsUsingBlock:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  [(NSSet *)self enumerateObjectsWithOptions:0 usingBlock:block];
}

- (void)getObjects:(id *)objects count:(unint64_t)count
{
  countCopy = count;
  objectsCopy = objects;
  v24 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v12 = _os_log_pack_size();
    v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v18, v19);
    *v14 = 136315394;
    *(v14 + 4) = "[NSSet getObjects:count:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = countCopy;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSSet getObjects:count:]", countCopy);
    goto LABEL_17;
  }

  if (count >> 61)
  {
    v12 = _os_log_pack_size();
    v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v18, v19);
    *v16 = 136315394;
    *(v16 + 4) = "[NSSet getObjects:count:]";
    *(v16 + 12) = 2048;
    *(v16 + 14) = countCopy;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSSet getObjects:count:]", countCopy);
LABEL_17:
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v17);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(NSSet *)self countByEnumeratingWithState:&v20 objects:&v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
LABEL_8:
    v11 = 0;
    while (1)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(self);
      }

      if (countCopy == v11)
      {
        break;
      }

      *objectsCopy++ = *(*(&v20 + 1) + 8 * v11);
      if (v9 == ++v11)
      {
        v9 = [(NSSet *)self countByEnumeratingWithState:&v20 objects:&v18 count:16];
        countCopy -= v11;
        if (v9)
        {
          goto LABEL_8;
        }

        return;
      }
    }
  }
}

- (void)getObjects:(id *)objects
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = [(NSSet *)self count];
  if (!objects && v6)
  {
    v8 = v6;
    v9 = _os_log_pack_size();
    v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = _os_log_pack_fill(v10, v9, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v16, v17);
    *v11 = 136315394;
    *(v11 + 4) = "[NSSet getObjects:]";
    *(v11 + 12) = 2048;
    *(v11 + 14) = v8;
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSSet getObjects:]", v8);
    goto LABEL_11;
  }

  if (v6 >> 61)
  {
    v13 = v6;
    v9 = _os_log_pack_size();
    v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v10, v9, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v16, v17);
    *v14 = 136315394;
    *(v14 + 4) = "[NSSet getObjects:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = v13;
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSSet getObjects:]", v13);
LABEL_11:
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v10, v9];
    objc_exception_throw(v15);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v7 = [(NSSet *)self count];

  [(NSSet *)self getObjects:objects count:v7];
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  CFLog(3, @"*** ERROR: this process has called an NSArray-taking method, such as initWithArray:, and passed in an NSSet object.  This is being worked-around for now, but will soon cause you grief.", objects, range.location, range.length, v4, v5, v6, v14);
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v7, __CFTSANTagMutableSet);
  }

  v11 = [(NSSet *)self count];
  if (v11)
  {
    v12 = v11;
    v13 = malloc_type_malloc(16 * v11, 0x80040B8603338uLL);
    [(NSSet *)self getObjects:v13 count:v12];

    memmove(objects, v13, 8 * length);
  }
}

- (BOOL)intersectsOrderedSet:(id)set
{
  selfCopy2 = set;
  v24 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v14 = _os_log_pack_size();
    v15 = _os_log_pack_fill(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v19[0]);
    *v15 = 136315138;
    *(v15 + 4) = "[NSSet intersectsOrderedSet:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSSet intersectsOrderedSet:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14];
    objc_exception_throw(v17);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v6 = [(NSSet *)self count];
  v7 = [(NSSet *)selfCopy2 count];
  v8 = v6 >= v7;
  v20 = 0u;
  v21 = 0u;
  if (v6 >= v7)
  {
    selfCopy = selfCopy2;
  }

  else
  {
    selfCopy = self;
  }

  if (v8)
  {
    selfCopy2 = self;
  }

  v22 = 0uLL;
  v23 = 0uLL;
  v10 = [(NSSet *)selfCopy countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(selfCopy);
        }

        if ([(NSSet *)selfCopy2 containsObject:*(*(&v20 + 1) + 8 * v13)])
        {
          LOBYTE(v10) = 1;
          return v10;
        }

        ++v13;
      }

      while (v11 != v13);
      v10 = [(NSSet *)selfCopy countByEnumeratingWithState:&v20 objects:v19 count:16];
      v11 = v10;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  return v10;
}

- (BOOL)intersectsSet:(NSSet *)otherSet
{
  v4 = otherSet;
  v45 = *MEMORY[0x1E69E9840];
  if (otherSet)
  {
    if ((_NSIsNSSet(otherSet) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
    {
      goto LABEL_15;
    }

    if (++__checkForAndForgiveClientSin_cnt_0 <= 0x64)
    {
      v7 = __CFExceptionProem(self, a2);
      CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
    }

    v14 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v15 = [(NSSet *)v4 countByEnumeratingWithState:&v41 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(v4);
          }

          [v14 addObject:*(*(&v41 + 1) + 8 * i)];
        }

        v16 = [(NSSet *)v4 countByEnumeratingWithState:&v41 objects:v40 count:16];
      }

      while (v16);
    }

    v4 = v14;
    if (v4)
    {
LABEL_15:
      if ((_NSIsNSSet(v4) & 1) == 0)
      {
        v27 = _os_log_pack_size();
        v30 = v35 - ((MEMORY[0x1EEE9AC00](v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
        v31 = _os_log_pack_fill(v30, v27, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v35[0]);
        *v31 = 136315138;
        *(v31 + 4) = "[NSSet intersectsSet:]";
        v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSSet intersectsSet:]");
        v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
        objc_exception_throw(v33);
      }
    }
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v19 = [(NSSet *)self count];
  v20 = [(NSSet *)v4 count];
  v21 = v19 >= v20;
  v36 = 0u;
  v37 = 0u;
  if (v19 >= v20)
  {
    selfCopy = v4;
  }

  else
  {
    selfCopy = self;
  }

  if (!v21)
  {
    self = v4;
  }

  v38 = 0uLL;
  v39 = 0uLL;
  v23 = [(NSSet *)selfCopy countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v37;
    while (2)
    {
      v26 = 0;
      do
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(selfCopy);
        }

        if ([(NSSet *)self containsObject:*(*(&v36 + 1) + 8 * v26)])
        {
          LOBYTE(v23) = 1;
          return v23;
        }

        ++v26;
      }

      while (v24 != v26);
      v23 = [(NSSet *)selfCopy countByEnumeratingWithState:&v36 objects:v35 count:16];
      v24 = v23;
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  return v23;
}

- (BOOL)isEqualToSet:(NSSet *)otherSet
{
  v4 = otherSet;
  v46 = *MEMORY[0x1E69E9840];
  if (!otherSet)
  {
    goto LABEL_17;
  }

  if ((_NSIsNSSet(otherSet) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
  {
    goto LABEL_15;
  }

  if (++__checkForAndForgiveClientSin_cnt_0 <= 0x64)
  {
    v7 = __CFExceptionProem(self, a2);
    CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
  }

  v14 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v15 = [(NSSet *)v4 countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v43;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v4);
        }

        [v14 addObject:*(*(&v42 + 1) + 8 * i)];
      }

      v16 = [(NSSet *)v4 countByEnumeratingWithState:&v42 objects:v41 count:16];
    }

    while (v16);
  }

  v4 = v14;
  if (v4)
  {
LABEL_15:
    if ((_NSIsNSSet(v4) & 1) == 0)
    {
      v29 = _os_log_pack_size();
      v32 = v36 - ((MEMORY[0x1EEE9AC00](v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = _os_log_pack_fill(v32, v29, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v36[0]);
      *v33 = 136315138;
      *(v33 + 4) = "[NSSet isEqualToSet:]";
      v34 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSSet isEqualToSet:]");
      v35 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v34) osLogPack:0 size:v32, v29];
      objc_exception_throw(v35);
    }

    v19 = 0;
  }

  else
  {
LABEL_17:
    v19 = 1;
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  result = v4 == self;
  if (v4 == self)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19;
  }

  if ((v21 & 1) == 0)
  {
    v22 = [(NSSet *)self count];
    if ([(NSSet *)v4 count]== v22)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v23 = [(NSSet *)self countByEnumeratingWithState:&v37 objects:v36 count:16];
      if (!v23)
      {
        return 1;
      }

      v24 = v23;
      v25 = *v38;
LABEL_27:
      v26 = 0;
      while (1)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(self);
        }

        v27 = *(*(&v37 + 1) + 8 * v26);
        v28 = [(NSSet *)v4 countForObject:v27];
        if (v28 != [(NSSet *)self countForObject:v27])
        {
          break;
        }

        if (v24 == ++v26)
        {
          v24 = [(NSSet *)self countByEnumeratingWithState:&v37 objects:v36 count:16];
          result = 1;
          if (v24)
          {
            goto LABEL_27;
          }

          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else if (equal)
  {
    v6 = _NSIsNSSet(equal);
    if (v6)
    {

      LOBYTE(v6) = [(NSSet *)self isEqualToSet:equal];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isSubsetOfOrderedSet:(id)set
{
  v24 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v15 = _os_log_pack_size();
    v16 = _os_log_pack_fill(v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v19[0]);
    *v16 = 136315138;
    *(v16 + 4) = "[NSSet isSubsetOfOrderedSet:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSSet isSubsetOfOrderedSet:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v6 = [(NSSet *)self count];
  if (v6 > [set count])
  {
    return 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(NSSet *)self countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(self);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [set countForObject:v12];
        if (v13 < [(NSSet *)self countForObject:v12])
        {
          v14 = 0;
          return set && v14;
        }
      }

      v9 = [(NSSet *)self countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
  return set && v14;
}

- (BOOL)isSubsetOfSet:(NSSet *)otherSet
{
  v4 = otherSet;
  v44 = *MEMORY[0x1E69E9840];
  if (otherSet)
  {
    if ((_NSIsNSSet(otherSet) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
    {
      goto LABEL_15;
    }

    if (++__checkForAndForgiveClientSin_cnt_0 <= 0x64)
    {
      v7 = __CFExceptionProem(self, a2);
      CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
    }

    v14 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v15 = [(NSSet *)v4 countByEnumeratingWithState:&v40 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v4);
          }

          [v14 addObject:*(*(&v40 + 1) + 8 * i)];
        }

        v16 = [(NSSet *)v4 countByEnumeratingWithState:&v40 objects:v39 count:16];
      }

      while (v16);
    }

    v4 = v14;
    if (v4)
    {
LABEL_15:
      if ((_NSIsNSSet(v4) & 1) == 0)
      {
        v27 = _os_log_pack_size();
        v30 = v34 - ((MEMORY[0x1EEE9AC00](v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
        v31 = _os_log_pack_fill(v30, v27, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v34[0]);
        *v31 = 136315138;
        *(v31 + 4) = "[NSSet isSubsetOfSet:]";
        v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSSet isSubsetOfSet:]");
        v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
        objc_exception_throw(v33);
      }
    }
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v19 = [(NSSet *)self count];
  if (v19 > [(NSSet *)v4 count])
  {
    return 0;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = [(NSSet *)self countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
LABEL_22:
    v24 = 0;
    while (1)
    {
      if (*v36 != v23)
      {
        objc_enumerationMutation(self);
      }

      v25 = *(*(&v35 + 1) + 8 * v24);
      v26 = [(NSSet *)v4 countForObject:v25];
      if (v26 < [(NSSet *)self countForObject:v25])
      {
        return 0;
      }

      if (v22 == ++v24)
      {
        v22 = [(NSSet *)self countByEnumeratingWithState:&v35 objects:v34 count:16];
        if (v22)
        {
          goto LABEL_22;
        }

        return v4 != 0;
      }
    }
  }

  return v4 != 0;
}

- (void)makeObjectsPerformSelector:(SEL)aSelector
{
  v15 = *MEMORY[0x1E69E9840];
  if (!aSelector)
  {
    [self doesNotRecognizeSelector:?];
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(NSSet *)self countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(self);
        }

        [*(*(&v11 + 1) + 8 * i) performSelector:aSelector];
      }

      v7 = [(NSSet *)self countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (void)makeObjectsPerformSelector:(SEL)aSelector withObject:(id)argument
{
  v17 = *MEMORY[0x1E69E9840];
  if (!aSelector)
  {
    [self doesNotRecognizeSelector:?];
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(NSSet *)self countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(self);
        }

        [*(*(&v13 + 1) + 8 * i) performSelector:aSelector withObject:argument];
      }

      v9 = [(NSSet *)self countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }
}

- (id)members:(id)members notFoundMarker:(id)marker
{
  v43 = *MEMORY[0x1E69E9840];
  if (!marker)
  {
    v27 = _os_log_pack_size();
    v30 = &v36 - ((MEMORY[0x1EEE9AC00](v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill(v30, v27, 0, &dword_1830E6000, "*** %s: marker cannot be nil", v36);
    *v31 = 136315138;
    *(v31 + 4) = "[NSSet members:notFoundMarker:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: marker cannot be nil", "[NSSet members:notFoundMarker:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
    objc_exception_throw(v33);
  }

  v8 = [members count];
  if (v8 >> 60)
  {
    v34 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8);
    v35 = [NSException exceptionWithName:@"NSGenericException" reason:v34 userInfo:0];
    CFRelease(v34);
    objc_exception_throw(v35);
  }

  if (v8 <= 1)
  {
    v8 = 1;
  }

  v11 = MEMORY[0x1EEE9AC00](v8, v9, v10);
  v13 = &v36 - v12;
  v37 = 0;
  if (v14 >= 0x101)
  {
    v13 = _CFCreateArrayStorage(v11, 0, &v37);
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = [members countByEnumeratingWithState:&v39 objects:v38 count:16];
  v17 = v13;
  if (v16)
  {
    v18 = *v40;
    v17 = v13;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(members);
        }

        v20 = [(NSSet *)self member:*(*(&v39 + 1) + 8 * i)];
        if (v20)
        {
          markerCopy = v20;
        }

        else
        {
          markerCopy = marker;
        }

        *v17 = markerCopy;
        v17 += 8;
      }

      v16 = [members countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v16);
  }

  if (v15)
  {
    if ((v17 - v13) >> 3 >= 1)
    {
      v22 = v15;
      v23 = (v17 - v13) >> 3;
      do
      {
        v24 = *v22++;
        --v23;
      }

      while (v23);
    }

    v25 = [[NSArray alloc] _initByAdoptingBuffer:v15 count:(v17 - v13) >> 3 size:(v17 - v13) >> 3];
  }

  else
  {
    v25 = [[NSArray alloc] initWithObjects:v13 count:(v17 - v13) >> 3];
  }

  return v25;
}

- (id)objectWithOptions:(unint64_t)options passingTest:(id)test
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v9 = _os_log_pack_size();
    v12 = v16 - ((MEMORY[0x1EEE9AC00](v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill(v12, v9, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v16[0]);
    *v13 = 136315138;
    *(v13 + 4) = "[NSSet objectWithOptions:passingTest:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSSet objectWithOptions:passingTest:]");
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v9];
    objc_exception_throw(v15);
  }

  optionsCopy = options;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
  }

  v18[0] = 0;
  v17 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__NSSet_objectWithOptions_passingTest___block_invoke;
  v16[3] = &unk_1E6DCFFE8;
  v16[4] = test;
  v16[5] = &v17;
  v16[6] = v18;
  __NSSetEnumerate(self, optionsCopy & 0xFD, v16);
  return v18[0];
}

uint64_t __39__NSSet_objectWithOptions_passingTest___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    **(a1 + 48) = a2;
    *a3 = 1;
  }

  if (**(a1 + 40) == 1)
  {
    *a3 = 1;
  }

  return result;
}

- (id)objectPassingTest:(id)test
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSSet objectPassingTest:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSSet objectPassingTest:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  return [(NSSet *)self objectWithOptions:0 passingTest:test];
}

- (NSSet)objectsWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v23 = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v10 = _os_log_pack_size();
    v13 = v17 - ((MEMORY[0x1EEE9AC00](v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v10, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v17[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSSet objectsWithOptions:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSSet objectsWithOptions:passingTest:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v10];
    objc_exception_throw(v16);
  }

  v6 = opts;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
  }

  v8 = +[(NSSet *)NSMutableSet];
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v18 = 850045857;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __40__NSSet_objectsWithOptions_passingTest___block_invoke;
  v17[3] = &unk_1E6A55E98;
  v17[5] = predicate;
  v17[6] = &v18;
  v17[4] = v8;
  __NSSetEnumerate(self, v6 & 0xFD, v17);
  return [NSSet setWithSet:v8];
}

uint64_t __40__NSSet_objectsWithOptions_passingTest___block_invoke(uint64_t a1, uint64_t a2)
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

- (NSSet)objectsPassingTest:(void *)predicate
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSSet objectsPassingTest:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSSet objectsPassingTest:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  return [(NSSet *)self objectsWithOptions:0 passingTest:predicate];
}

- (id)sortedArrayWithOptions:(unint64_t)options usingComparator:(id)comparator
{
  v40[1] = *MEMORY[0x1E69E9840];
  if (!comparator)
  {
    v28 = _os_log_pack_size();
    v31 = &v38[-1] - ((MEMORY[0x1EEE9AC00](v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = _os_log_pack_fill(v31, v28, 0, &dword_1830E6000, "*** %s: comparator cannot be nil", v37);
    *v32 = 136315138;
    *(v32 + 4) = "[NSSet sortedArrayWithOptions:usingComparator:]";
    v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSSet sortedArrayWithOptions:usingComparator:]");
    v34 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v31, v28];
    objc_exception_throw(v34);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
  }

  v8 = [(NSSet *)self count];
  if (v8)
  {
    v11 = v8;
    if (v8 >> 60)
    {
      v35 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8);
      v36 = [NSException exceptionWithName:@"NSGenericException" reason:v35 userInfo:0];
      CFRelease(v35);
      objc_exception_throw(v36);
    }

    MEMORY[0x1EEE9AC00](v8, v9, v10);
    v13 = &v38[-1] - v12;
    v40[0] = 0;
    if (v11 >= 0x101)
    {
      v13 = _CFCreateArrayStorage(v11, 0, v40);
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v39 = 0;
    v16 = _CFCreateArrayStorage(v11, 0, &v39);
    v17 = [(NSSet *)self getObjects:v13 count:v11];
    MEMORY[0x1EEE9AC00](v17, v18, v19);
    v21 = &v38[-1] - v20;
    v22 = &v38[-1] - v20;
    if (v11 > 0x1000)
    {
      v22 = malloc_type_malloc(8 * v11, 0x100004000313F17uLL);
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __48__NSSet_sortedArrayWithOptions_usingComparator___block_invoke;
    v38[3] = &unk_1E6D7D7A0;
    v38[4] = comparator;
    v38[5] = v13;
    CFSortIndexes(v22, v11, options, v38);
    for (i = 0; i != v11; ++i)
    {
      v16[i] = *&v13[8 * *&v22[8 * i]];
    }

    if (v21 != v22)
    {
      free(v22);
    }

    v24 = 0;
    if (v11 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v11;
    }

    do
    {
      v26 = v16[v24++];
    }

    while (v25 != v24);
    v27 = [[NSArray alloc] _initByAdoptingBuffer:v16 count:v11 size:v11];
    free(v14);
    return v27;
  }

  else
  {

    return +[NSArray array];
  }
}

- (id)sortedArrayUsingComparator:(id)comparator
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!comparator)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: comparator cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSSet sortedArrayUsingComparator:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSSet sortedArrayUsingComparator:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  return [(NSSet *)self sortedArrayWithOptions:0 usingComparator:comparator];
}

- (void)__applyValues:(void *)values context:(void *)context
{
  v19 = *MEMORY[0x1E69E9840];
  if (!values)
  {
    v11 = __CFExceptionProem(self, a2);
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: function pointer is NULL", v11);
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12), 0];
    objc_exception_throw(v13);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSSet *)self countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(self);
        }

        (values)(*(*(&v15 + 1) + 8 * v10++), context);
      }

      while (v8 != v10);
      v8 = [(NSSet *)self countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v8);
  }
}

- (BOOL)__getValue:(id *)value forObj:(id)obj
{
  v5 = [(NSSet *)self member:obj];
  if (value && v5)
  {
    *value = v5;
  }

  return v5 != 0;
}

+ (NSSet)allocWithZone:(_NSZone *)zone
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSSet == self)
  {

    return __NSSetImmutablePlaceholder();
  }

  else if (NSMutableSet == self)
  {

    return __NSSetMutablePlaceholder();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___NSSet;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, zone);
  }
}

- (NSSet)initWithObject:(id)object
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = object;
  return [(NSSet *)self initWithObjects:v4 count:1];
}

- (NSSet)initWithObjects:(id)firstObj
{
  va_start(va, firstObj);
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = firstObj;
  Class = object_getClass(self);
  if (firstObj)
  {
    v8 = 0;
    va_copy(v21, va);
    do
    {
      v9 = v21;
      v21 += 8;
      ++v8;
    }

    while (*v9);
    if (Class == NSSet)
    {
      va_copy(v22, va);
      return __NSSetI_new(&v23, va, v8, 0);
    }

    if (v8 >> 60)
    {
      v10 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8);
      v11 = [NSException exceptionWithName:@"NSGenericException" reason:v10 userInfo:0];
      CFRelease(v10);
      objc_exception_throw(v11);
    }
  }

  else
  {
    if (Class == NSSet)
    {
      return __NSSet0__;
    }

    v8 = 0;
  }

  if (v8 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8;
  }

  v13 = MEMORY[0x1EEE9AC00](v12, v6, v7);
  v15 = (&v21 - v14);
  v21 = 0;
  if (v8 >= 0x101)
  {
    v15 = _CFCreateArrayStorage(v13, 0, &v21);
    va_copy(v22, va);
    *v15 = firstObj;
    v16 = v15;
  }

  else
  {
    v16 = 0;
    if (!v8)
    {
      goto LABEL_19;
    }

    va_copy(v22, va);
    *v15 = firstObj;
    if (v8 == 1)
    {
      goto LABEL_19;
    }
  }

  for (i = 1; i != v8; ++i)
  {
    v18 = v22;
    v22 += 8;
    v15[i] = *v18;
  }

LABEL_19:
  v19 = [(NSSet *)self initWithObjects:v21 count:v22, v23, v24];
  free(v16);
  return v19;
}

- (NSSet)initWithArray:(id)array range:(_NSRange)range copyItems:(BOOL)items
{
  itemsCopy = items;
  length = range.length;
  location = range.location;
  v50 = *MEMORY[0x1E69E9840];
  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v33 = _os_log_pack_size();
    v36 = &v49 - ((MEMORY[0x1EEE9AC00](v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = _os_log_pack_fill(v36, v33, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v49);
    *v37 = 136315138;
    *(v37 + 4) = "[NSSet initWithArray:range:copyItems:]";
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSSet initWithArray:range:copyItems:]");
    v39 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v36, v33];
    objc_exception_throw(v39);
  }

  v10 = [array count];
  v13 = v10;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v10 < location + length)
  {
    if (!v10)
    {
      v23 = _os_log_pack_size();
      v26 = &v49 - ((MEMORY[0x1EEE9AC00](v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = _os_log_pack_fill(v26, v23, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty set", v49, v50, v51);
      v28 = __os_log_helper_1_2_3_8_32_8_0_8_0(v27, "[NSSet initWithArray:range:copyItems:]", location, length);
      v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty set", v28, "[NSSet initWithArray:range:copyItems:]", location, length);
      v30 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v29) osLogPack:0 size:v26, v23];
      objc_exception_throw(v30);
    }

    v40 = _os_log_pack_size();
    v43 = &v49 - ((MEMORY[0x1EEE9AC00](v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = _os_log_pack_fill(v43, v40, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v49, v50, v51, v52);
    v45 = v13 - 1;
    v46 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v44, "[NSSet initWithArray:range:copyItems:]", location, length, v45);
    v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v46, "[NSSet initWithArray:range:copyItems:]", location, length, v45);
    v48 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v47) osLogPack:0 size:v43, v40];
    objc_exception_throw(v48);
  }

  if (length >> 60)
  {
    v31 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v32 = [NSException exceptionWithName:@"NSGenericException" reason:v31 userInfo:0];
    CFRelease(v31);
    objc_exception_throw(v32);
  }

  if (length <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = length;
  }

  v15 = MEMORY[0x1EEE9AC00](v14, v11, v12);
  v17 = (&v49 - v16);
  v49 = 0;
  if (length >= 0x101)
  {
    v17 = _CFCreateArrayStorage(v15, 0, &v49);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [array getObjects:v17 range:{location, length, v49, v50}];
  if (!length)
  {
    itemsCopy = 0;
  }

  if (itemsCopy)
  {
    v19 = v17;
    v20 = length;
    do
    {
      *v19 = [*v19 copyWithZone:0];
      ++v19;
      --v20;
    }

    while (v20);
  }

  v21 = [(NSSet *)self initWithObjects:v17 count:length];
  if (itemsCopy)
  {
    do
    {

      --length;
    }

    while (length);
  }

  free(v18);
  return v21;
}

- (NSSet)initWithArray:(id)array copyItems:(BOOL)items
{
  itemsCopy = items;
  v7 = [array count];

  return [(NSSet *)self initWithArray:array range:0 copyItems:v7, itemsCopy];
}

- (NSSet)initWithArray:(NSArray *)array
{
  v5 = [(NSArray *)array count];

  return [(NSSet *)self initWithArray:array range:0 copyItems:v5, 0];
}

- (NSSet)initWithOrderedSet:(id)set range:(_NSRange)range copyItems:(BOOL)items
{
  itemsCopy = items;
  length = range.length;
  location = range.location;
  v50 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v33 = _os_log_pack_size();
    v36 = &v49 - ((MEMORY[0x1EEE9AC00](v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = _os_log_pack_fill(v36, v33, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v49);
    *v37 = 136315138;
    *(v37 + 4) = "[NSSet initWithOrderedSet:range:copyItems:]";
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSSet initWithOrderedSet:range:copyItems:]");
    v39 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v36, v33];
    objc_exception_throw(v39);
  }

  v10 = [set count];
  v13 = v10;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v10 < location + length)
  {
    if (!v10)
    {
      v23 = _os_log_pack_size();
      v26 = &v49 - ((MEMORY[0x1EEE9AC00](v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = _os_log_pack_fill(v26, v23, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty set", v49, v50, v51);
      v28 = __os_log_helper_1_2_3_8_32_8_0_8_0(v27, "[NSSet initWithOrderedSet:range:copyItems:]", location, length);
      v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty set", v28, "[NSSet initWithOrderedSet:range:copyItems:]", location, length);
      v30 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v29) osLogPack:0 size:v26, v23];
      objc_exception_throw(v30);
    }

    v40 = _os_log_pack_size();
    v43 = &v49 - ((MEMORY[0x1EEE9AC00](v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = _os_log_pack_fill(v43, v40, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v49, v50, v51, v52);
    v45 = v13 - 1;
    v46 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v44, "[NSSet initWithOrderedSet:range:copyItems:]", location, length, v45);
    v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v46, "[NSSet initWithOrderedSet:range:copyItems:]", location, length, v45);
    v48 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v47) osLogPack:0 size:v43, v40];
    objc_exception_throw(v48);
  }

  if (length >> 60)
  {
    v31 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v32 = [NSException exceptionWithName:@"NSGenericException" reason:v31 userInfo:0];
    CFRelease(v31);
    objc_exception_throw(v32);
  }

  if (length <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = length;
  }

  v15 = MEMORY[0x1EEE9AC00](v14, v11, v12);
  v17 = (&v49 - v16);
  v49 = 0;
  if (length >= 0x101)
  {
    v17 = _CFCreateArrayStorage(v15, 0, &v49);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [set getObjects:v17 range:{location, length, v49, v50}];
  if (!length)
  {
    itemsCopy = 0;
  }

  if (itemsCopy)
  {
    v19 = v17;
    v20 = length;
    do
    {
      *v19 = [*v19 copyWithZone:0];
      ++v19;
      --v20;
    }

    while (v20);
  }

  v21 = [(NSSet *)self initWithObjects:v17 count:length];
  if (itemsCopy)
  {
    do
    {

      --length;
    }

    while (length);
  }

  free(v18);
  return v21;
}

- (NSSet)initWithOrderedSet:(id)set copyItems:(BOOL)items
{
  itemsCopy = items;
  v7 = [set count];

  return [(NSSet *)self initWithOrderedSet:set range:0 copyItems:v7, itemsCopy];
}

- (NSSet)initWithOrderedSet:(id)set
{
  v5 = [set count];

  return [(NSSet *)self initWithOrderedSet:set range:0 copyItems:v5, 0];
}

- (NSSet)initWithSet:(NSSet *)set copyItems:(BOOL)flag
{
  v4 = flag;
  v5 = set;
  v45 = *MEMORY[0x1E69E9840];
  if (set)
  {
    if ((_NSIsNSSet(set) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
    {
      goto LABEL_15;
    }

    if (++__checkForAndForgiveClientSin_cnt_0 <= 0x64)
    {
      v8 = __CFExceptionProem(self, a2);
      CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v9, v10, v11, v12, v13, v14, v8);
    }

    v15 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v16 = [(NSSet *)v5 countByEnumeratingWithState:&v41 objects:v40 count:16];
    if (v16)
    {
      v17 = *v42;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(v5);
          }

          [v15 addObject:*(*(&v41 + 1) + 8 * i)];
        }

        v16 = [(NSSet *)v5 countByEnumeratingWithState:&v41 objects:v40 count:16];
      }

      while (v16);
    }

    v5 = v15;
    if (v5)
    {
LABEL_15:
      if ((_NSIsNSSet(v5) & 1) == 0)
      {
        v33 = _os_log_pack_size();
        v36 = v40 - ((MEMORY[0x1EEE9AC00](v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
        v37 = _os_log_pack_fill(v36, v33, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v40[0]);
        *v37 = 136315138;
        *(v37 + 4) = "[NSSet initWithSet:copyItems:]";
        v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSSet initWithSet:copyItems:]");
        v39 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v36, v33];
        objc_exception_throw(v39);
      }
    }
  }

  v19 = [(NSSet *)v5 count];
  v22 = v19;
  if (v19 >> 60)
  {
    v31 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v19);
    v32 = [NSException exceptionWithName:@"NSGenericException" reason:v31 userInfo:0];
    CFRelease(v31);
    objc_exception_throw(v32);
  }

  if (v19 <= 1)
  {
    v19 = 1;
  }

  v23 = MEMORY[0x1EEE9AC00](v19, v20, v21);
  v25 = (v40 - v24);
  v40[0] = 0;
  if (v22 >= 0x101)
  {
    v25 = _CFCreateArrayStorage(v23, 0, v40);
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  [(NSSet *)v5 getObjects:v25 count:v22, v40[0]];
  if (!v22)
  {
    v4 = 0;
  }

  if (v4)
  {
    v27 = v25;
    v28 = v22;
    do
    {
      *v27 = [*v27 copyWithZone:0];
      ++v27;
      --v28;
    }

    while (v28);
  }

  v29 = [(NSSet *)self initWithObjects:v25 count:v22];
  if (v4)
  {
    do
    {

      --v22;
    }

    while (v22);
  }

  free(v26);
  return v29;
}

+ (NSSet)setWithObjects:(id *)objects count:(NSUInteger)cnt
{
  v4 = [[self alloc] initWithObjects:objects count:cnt];

  return v4;
}

+ (NSSet)setWithObject:(id)object
{
  Set = __createSet([self alloc], object);

  return Set;
}

+ (id)newSetWithObjects:(const void *)objects count:(unint64_t)count
{
  v22 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v12 = _os_log_pack_size();
    v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v21, v22);
    *v18 = 136315394;
    *(v18 + 4) = "+[NSSet newSetWithObjects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = count;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "+[NSSet newSetWithObjects:count:]", count);
    goto LABEL_26;
  }

  if (count >> 61)
  {
    v12 = _os_log_pack_size();
    v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v21, v22);
    *v20 = 136315394;
    *(v20 + 4) = "+[NSSet newSetWithObjects:count:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = count;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "+[NSSet newSetWithObjects:count:]", count);
    goto LABEL_26;
  }

  if (count)
  {
    v6 = 0;
    while (objects[v6])
    {
      if (count == ++v6)
      {
        goto LABEL_8;
      }
    }

    v11 = v6;
    v12 = _os_log_pack_size();
    v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]", v21, v22);
    *v14 = 136315394;
    *(v14 + 4) = "+[NSSet newSetWithObjects:count:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = v11;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "+[NSSet newSetWithObjects:count:]", v11);
LABEL_26:
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v16);
  }

LABEL_8:
  if (NSSet == self)
  {
    if (count == 1)
    {
      v9 = *objects;

      return __NSSingleObjectSetI_new(v9, 1);
    }

    else if (count)
    {

      return __NSSetI_new(objects, 0, count, 1);
    }

    else
    {
      v8 = __NSSet0__;

      return v8;
    }
  }

  else
  {
    if (NSMutableSet != self)
    {
      v10 = __CFLookUpClass("NSSet");
      __CFRequireConcreteImplementation(v10, self, a2);
    }

    return __NSSetM_new(objects, count, 0);
  }
}

+ (NSSet)setWithObjects:(id)firstObj
{
  va_start(va, firstObj);
  v21[1] = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21[0] = firstObj;
  if (firstObj)
  {
    v5 = 0;
    va_copy(v19, va);
    do
    {
      v6 = v19;
      v19 += 8;
      ++v5;
    }

    while (*v6);
    if (NSSet == self)
    {
      va_copy(v20, va);
      v17 = __NSSetI_new(v21, va, v5, 0);
      return v17;
    }

    if (v5 >> 60)
    {
      v7 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5);
      v8 = [NSException exceptionWithName:@"NSGenericException" reason:v7 userInfo:0];
      CFRelease(v7);
      objc_exception_throw(v8);
    }

LABEL_9:
    if (v5 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v5;
    }

    v10 = MEMORY[0x1EEE9AC00](v9, a2, firstObj);
    v12 = (&v19 - v11);
    v19 = 0;
    if (v5 >= 0x101)
    {
      v12 = _CFCreateArrayStorage(v10, 0, &v19);
      va_copy(v20, va);
      *v12 = firstObj;
      v13 = v12;
    }

    else
    {
      v13 = 0;
      if (!v5)
      {
        goto LABEL_19;
      }

      va_copy(v20, va);
      *v12 = firstObj;
      if (v5 == 1)
      {
        goto LABEL_19;
      }
    }

    for (i = 1; i != v5; ++i)
    {
      v15 = v20;
      v20 += 8;
      v12[i] = *v15;
    }

LABEL_19:
    v16 = [self alloc];
    v17 = [v16 initWithObjects:v12 count:{v5, v19}];
    free(v13);
    return v17;
  }

  if (NSSet != self)
  {
    v5 = 0;
    goto LABEL_9;
  }

  return __NSSet0__;
}

+ (NSSet)setWithArray:(id)array range:(_NSRange)range copyItems:(BOOL)items
{
  v5 = [[self alloc] initWithArray:array range:range.location copyItems:{range.length, items}];

  return v5;
}

+ (NSSet)setWithArray:(id)array range:(_NSRange)range
{
  v4 = [[self alloc] initWithArray:array range:range.location copyItems:{range.length, 0}];

  return v4;
}

+ (NSSet)setWithArray:(id)array copyItems:(BOOL)items
{
  v4 = [[self alloc] initWithArray:array range:0 copyItems:{objc_msgSend(array, "count"), items}];

  return v4;
}

+ (NSSet)setWithArray:(NSArray *)array
{
  v3 = [[self alloc] initWithArray:array range:0 copyItems:{-[NSArray count](array, "count"), 0}];

  return v3;
}

+ (NSSet)setWithOrderedSet:(id)set range:(_NSRange)range copyItems:(BOOL)items
{
  v5 = [[self alloc] initWithOrderedSet:set range:range.location copyItems:{range.length, items}];

  return v5;
}

+ (NSSet)setWithOrderedSet:(id)set range:(_NSRange)range
{
  v4 = [[self alloc] initWithOrderedSet:set range:range.location copyItems:{range.length, 0}];

  return v4;
}

+ (NSSet)setWithOrderedSet:(id)set copyItems:(BOOL)items
{
  v4 = [[self alloc] initWithOrderedSet:set range:0 copyItems:{objc_msgSend(set, "count"), items}];

  return v4;
}

+ (NSSet)setWithOrderedSet:(id)set
{
  v3 = [[self alloc] initWithOrderedSet:set range:0 copyItems:{objc_msgSend(set, "count"), 0}];

  return v3;
}

+ (NSSet)setWithSet:(id)set copyItems:(BOOL)items
{
  v4 = [[self alloc] initWithSet:set copyItems:items];

  return v4;
}

+ (NSSet)setWithSet:(NSSet *)set
{
  v3 = [[self alloc] initWithSet:set copyItems:0];

  return v3;
}

- (NSSet)setByAddingObject:(id)anObject
{
  v28 = *MEMORY[0x1E69E9840];
  if (!anObject)
  {
    v18 = _os_log_pack_size();
    v21 = &v27 - ((MEMORY[0x1EEE9AC00](v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v21, v18, 0, &dword_1830E6000, "*** %s: object cannot be nil", v27);
    *v22 = 136315138;
    *(v22 + 4) = "[NSSet setByAddingObject:]";
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSSet setByAddingObject:]");
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v18];
    objc_exception_throw(v24);
  }

  if ([(NSSet *)self containsObject:?])
  {
    selfCopy = self;

    return selfCopy;
  }

  else
  {
    v7 = [(NSSet *)self count];
    v10 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      v25 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7 + 1);
      v26 = [NSException exceptionWithName:@"NSGenericException" reason:v25 userInfo:0];
      CFRelease(v25);
      objc_exception_throw(v26);
    }

    v11 = v7;
    if (v10 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v7 + 1;
    }

    v13 = MEMORY[0x1EEE9AC00](v12, v8, v9);
    v15 = &v27 - v14;
    v27 = 0;
    if (v10 >= 0x101)
    {
      v15 = _CFCreateArrayStorage(v13, 0, &v27);
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    [(NSSet *)self getObjects:v15 count:v11, v27, v28];
    *&v15[8 * v11] = anObject;
    v17 = [NSSet setWithObjects:v15 count:v10];
    free(v16);
    return v17;
  }
}

- (NSSet)setByAddingObjectsFromArray:(NSArray *)other
{
  v30 = *MEMORY[0x1E69E9840];
  if (other && (_NSIsNSArray(other) & 1) == 0)
  {
    v20 = _os_log_pack_size();
    v23 = &v29 - ((MEMORY[0x1EEE9AC00](v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill(v23, v20, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v29);
    *v24 = 136315138;
    *(v24 + 4) = "[NSSet setByAddingObjectsFromArray:]";
    v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSSet setByAddingObjectsFromArray:]");
    v26 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v23, v20];
    objc_exception_throw(v26);
  }

  v5 = [(NSArray *)other count];
  if (v5)
  {
    v6 = v5;
    v7 = [(NSSet *)self count];
    v10 = v7 + v6;
    if ((v7 + v6) >> 60)
    {
      v27 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7 + v6);
      v28 = [NSException exceptionWithName:@"NSGenericException" reason:v27 userInfo:0];
      CFRelease(v27);
      objc_exception_throw(v28);
    }

    v11 = v7;
    if (v10 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v7 + v6;
    }

    v13 = MEMORY[0x1EEE9AC00](v12, v8, v9);
    v15 = &v29 - v14;
    v29 = 0;
    if (v10 >= 0x101)
    {
      v15 = _CFCreateArrayStorage(v13, 0, &v29);
      v16 = v15;
      if (!v11)
      {
LABEL_16:
        [(NSArray *)other getObjects:&v15[8 * v11] range:0, v6, v29];
        v19 = [NSSet setWithObjects:v15 count:v10];
        free(v16);
        return v19;
      }
    }

    else
    {
      v16 = 0;
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    [(NSSet *)self getObjects:v15 count:v11, v29, v30];
    goto LABEL_16;
  }

  selfCopy = self;

  return selfCopy;
}

- (NSSet)setByAddingObjectsFromSet:(NSSet *)other
{
  v3 = other;
  v44 = *MEMORY[0x1E69E9840];
  if (other)
  {
    if ((_NSIsNSSet(other) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
    {
      goto LABEL_15;
    }

    if (++__checkForAndForgiveClientSin_cnt_0 <= 0x64)
    {
      v6 = __CFExceptionProem(self, a2);
      CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v7, v8, v9, v10, v11, v12, v6);
    }

    v13 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v14 = [(NSSet *)v3 countByEnumeratingWithState:&v40 objects:v39 count:16];
    if (v14)
    {
      v15 = *v41;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(v3);
          }

          [v13 addObject:*(*(&v40 + 1) + 8 * i)];
        }

        v14 = [(NSSet *)v3 countByEnumeratingWithState:&v40 objects:v39 count:16];
      }

      while (v14);
    }

    v3 = v13;
    if (v3)
    {
LABEL_15:
      if ((_NSIsNSSet(v3) & 1) == 0)
      {
        v32 = _os_log_pack_size();
        v35 = v39 - ((MEMORY[0x1EEE9AC00](v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
        v36 = _os_log_pack_fill(v35, v32, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v39[0]);
        *v36 = 136315138;
        *(v36 + 4) = "[NSSet setByAddingObjectsFromSet:]";
        v37 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSSet setByAddingObjectsFromSet:]");
        v38 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v37) osLogPack:0 size:v35, v32];
        objc_exception_throw(v38);
      }
    }
  }

  v17 = [(NSSet *)v3 count];
  if (v17)
  {
    v18 = [(NSSet *)self count];
    v21 = v18;
    v22 = v18 + v17;
    if ((v18 + v17) >> 60)
    {
      v30 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v18 + v17);
      v31 = [NSException exceptionWithName:@"NSGenericException" reason:v30 userInfo:0];
      CFRelease(v30);
      objc_exception_throw(v31);
    }

    if (v22 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v18 + v17;
    }

    v24 = MEMORY[0x1EEE9AC00](v23, v19, v20);
    v26 = v39 - v25;
    v39[0] = 0;
    if (v22 >= 0x101)
    {
      v26 = _CFCreateArrayStorage(v24, 0, v39);
      v27 = v26;
      if (!v21)
      {
LABEL_27:
        [(NSSet *)v3 getObjects:&v26[8 * v21] count:v17, v39[0]];
        v28 = [NSSet setWithObjects:v26 count:v22];
        free(v27);
        return v28;
      }
    }

    else
    {
      v27 = 0;
      if (!v21)
      {
        goto LABEL_27;
      }
    }

    [(NSSet *)self getObjects:v26 count:v21, v39[0]];
    goto LABEL_27;
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  ShouldCopy = __NSCollectionsShouldCopy();
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v7 = [NSSet allocWithZone:zone];

  return [(NSSet *)v7 initWithSet:self copyItems:ShouldCopy];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  v6 = [(NSSet *)NSMutableSet allocWithZone:zone];

  return [(NSSet *)v6 initWithSet:self copyItems:0];
}

- (NSUInteger)count
{
  OUTLINED_FUNCTION_0_16();
  v2 = __CFLookUpClass("NSSet");
  OUTLINED_FUNCTION_1_11(v2);
}

- (id)member:(id)object
{
  OUTLINED_FUNCTION_0_16();
  v3 = __CFLookUpClass("NSSet");
  OUTLINED_FUNCTION_1_11(v3);
}

- (NSEnumerator)objectEnumerator
{
  OUTLINED_FUNCTION_0_16();
  v2 = __CFLookUpClass("NSSet");
  OUTLINED_FUNCTION_1_11(v2);
}

- (NSSet)initWithObjects:(id *)objects count:(NSUInteger)cnt
{
  OUTLINED_FUNCTION_0_16();
  v4 = __CFLookUpClass("NSSet");
  OUTLINED_FUNCTION_1_11(v4);
}

@end