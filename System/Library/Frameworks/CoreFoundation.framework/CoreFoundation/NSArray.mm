@interface NSArray
+ (NSArray)allocWithZone:(_NSZone *)zone;
+ (NSArray)array;
+ (NSArray)arrayWithArray:(NSArray *)array;
+ (NSArray)arrayWithArray:(id)array copyItems:(BOOL)items;
+ (NSArray)arrayWithArray:(id)array range:(_NSRange)range;
+ (NSArray)arrayWithArray:(id)array range:(_NSRange)range copyItems:(BOOL)items;
+ (NSArray)arrayWithObject:(id)anObject;
+ (NSArray)arrayWithObjects:(id *)objects count:(NSUInteger)cnt;
+ (NSArray)arrayWithObjects:(id)firstObj;
+ (NSArray)arrayWithOrderedSet:(id)set;
+ (NSArray)arrayWithOrderedSet:(id)set copyItems:(BOOL)items;
+ (NSArray)arrayWithOrderedSet:(id)set range:(_NSRange)range;
+ (NSArray)arrayWithOrderedSet:(id)set range:(_NSRange)range copyItems:(BOOL)items;
+ (NSArray)arrayWithSet:(id)set;
+ (NSArray)arrayWithSet:(id)set copyItems:(BOOL)items;
+ (id)newArrayWithObjects:(const void *)objects count:(unint64_t)count;
- (BOOL)containsObject:(id)anObject;
- (BOOL)containsObject:(id)object inRange:(_NSRange)range;
- (BOOL)containsObjectIdenticalTo:(id)to;
- (BOOL)containsObjectIdenticalTo:(id)to inRange:(_NSRange)range;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToArray:(NSArray *)otherArray;
- (NSArray)arrayByAddingObject:(id)anObject;
- (NSArray)arrayByAddingObjectsFromArray:(NSArray *)otherArray;
- (NSArray)initWithArray:(NSArray *)array;
- (NSArray)initWithArray:(NSArray *)array copyItems:(BOOL)flag;
- (NSArray)initWithArray:(id)array range:(_NSRange)range copyItems:(BOOL)items;
- (NSArray)initWithObject:(id)object;
- (NSArray)initWithObjects:(id)firstObj;
- (NSArray)initWithOrderedSet:(id)set;
- (NSArray)initWithOrderedSet:(id)set copyItems:(BOOL)items;
- (NSArray)initWithOrderedSet:(id)set range:(_NSRange)range copyItems:(BOOL)items;
- (NSArray)initWithSet:(id)set copyItems:(BOOL)items;
- (NSArray)objectsAtIndexes:(NSIndexSet *)indexes;
- (NSArray)sortedArrayUsingComparator:(NSComparator)cmptr;
- (NSArray)sortedArrayUsingFunction:(NSInteger (__cdecl *)comparator context:;
- (NSArray)sortedArrayUsingSelector:(SEL)comparator;
- (NSArray)sortedArrayWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr;
- (NSArray)subarrayWithRange:(NSRange)range;
- (NSEnumerator)objectEnumerator;
- (NSEnumerator)reverseObjectEnumerator;
- (NSIndexSet)indexesOfObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSIndexSet)indexesOfObjectsPassingTest:(void *)predicate;
- (NSIndexSet)indexesOfObjectsWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSString)componentsJoinedByString:(NSString *)separator;
- (NSString)description;
- (NSString)descriptionWithLocale:(id)locale;
- (NSString)descriptionWithLocale:(id)locale indent:(NSUInteger)level;
- (NSUInteger)indexOfObject:(id)anObject;
- (NSUInteger)indexOfObject:(id)anObject inRange:(NSRange)range;
- (NSUInteger)indexOfObject:(id)obj inSortedRange:(NSRange)r options:(NSBinarySearchingOptions)opts usingComparator:(NSComparator)cmp;
- (NSUInteger)indexOfObjectAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSUInteger)indexOfObjectIdenticalTo:(id)anObject;
- (NSUInteger)indexOfObjectIdenticalTo:(id)anObject inRange:(NSRange)range;
- (NSUInteger)indexOfObjectPassingTest:(void *)predicate;
- (NSUInteger)indexOfObjectWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (id)_initByAdoptingBuffer:(id *)buffer count:(unint64_t)count size:(unint64_t)size;
- (id)allObjects;
- (id)arrayByApplyingSelector:(SEL)selector;
- (id)arrayByExcludingObjectsInArray:(id)array;
- (id)arrayByExcludingToObjectsInArray:(id)array;
- (id)copyWithZone:(_NSZone *)zone;
- (id)firstObject;
- (id)firstObjectCommonWithArray:(NSArray *)otherArray;
- (id)indexesOfObject:(id)object;
- (id)indexesOfObject:(id)object inRange:(_NSRange)range;
- (id)indexesOfObjectIdenticalTo:(id)to;
- (id)indexesOfObjectIdenticalTo:(id)to inRange:(_NSRange)range;
- (id)lastObject;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectAtIndexedSubscript:(NSUInteger)idx;
- (id)objectAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test;
- (id)objectPassingTest:(id)test;
- (id)objectWithOptions:(unint64_t)options passingTest:(id)test;
- (id)objectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test;
- (id)objectsPassingTest:(id)test;
- (id)objectsWithOptions:(unint64_t)options passingTest:(id)test;
- (id)reversedArray;
- (id)sortedArrayFromRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)countForObject:(id)object;
- (unint64_t)countForObject:(id)object inRange:(_NSRange)range;
- (unint64_t)hash;
- (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)enumerateObjectsUsingBlock:(void *)block;
- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)getObjects:(id *)objects;
- (void)getObjects:(id *)objects range:(NSRange)range;
- (void)makeObjectsPerformSelector:(SEL)aSelector;
- (void)makeObjectsPerformSelector:(SEL)aSelector withObject:(id)argument;
@end

@implementation NSArray

+ (NSArray)array
{
  v2 = [[self alloc] initWithObjects:0 count:0];

  return v2;
}

- (id)firstObject
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  result = [(NSArray *)self count];
  if (result)
  {

    return [(NSArray *)self objectAtIndex:0];
  }

  return result;
}

- (NSEnumerator)reverseObjectEnumerator
{
  v2 = [[__NSArrayReverseEnumerator alloc] initWithObject:self];

  return v2;
}

- (unint64_t)hash
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  return [(NSArray *)self count];
}

- (id)lastObject
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  result = [(NSArray *)self count];
  if (result)
  {

    return [(NSArray *)self objectAtIndex:result - 1];
  }

  return result;
}

- (NSString)description
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  return [(NSArray *)self descriptionWithLocale:0 indent:0];
}

- (NSEnumerator)objectEnumerator
{
  v2 = [[__NSFastEnumerationEnumerator alloc] initWithObject:self];

  return v2;
}

- (id)allObjects
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  v4 = [(NSArray *)self count];
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
  [(NSArray *)self getObjects:v6 range:0, v5];
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

- (NSString)componentsJoinedByString:(NSString *)separator
{
  v4 = separator;
  v24 = *MEMORY[0x1E69E9840];
  if (separator && (_NSIsNSString(separator) & 1) == 0)
  {
    v15 = _os_log_pack_size();
    v16 = _os_log_pack_fill(v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15, 0, &dword_1830E6000, "*** %s: string argument is not an NSString", v19[0]);
    *v16 = 136315138;
    *(v16 + 4) = "[NSArray componentsJoinedByString:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: string argument is not an NSString", "[NSArray componentsJoinedByString:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  if (!v4)
  {
    v4 = &stru_1EF068AA8;
  }

  v6 = [(NSArray *)self count];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [(NSArray *)self countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      v12 = 0;
      v13 = v10 + 1;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(self);
        }

        CFStringAppend(Mutable, [*(*(&v20 + 1) + 8 * v12) description]);
        if (v13 < v6)
        {
          CFStringAppend(Mutable, v4);
        }

        ++v12;
        ++v13;
      }

      while (v9 != v12);
      v10 += v9;
      v9 = [(NSArray *)self countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v9);
  }

  return Mutable;
}

- (BOOL)containsObject:(id)object inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v26 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v21 = v9;
      v16 = _os_log_pack_size();
      v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v25, v26, v27, v28);
      v23 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[NSArray containsObject:inRange:]", location, length, --v21);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, "[NSArray containsObject:inRange:]", location, length, v21);
    }

    else
    {
      v16 = _os_log_pack_size();
      v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v25, v26, v27);
      v19 = __os_log_helper_1_2_3_8_32_8_0_8_0(v18, "[NSArray containsObject:inRange:]", location, length);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v19, "[NSArray containsObject:inRange:]", location, length);
    }

    v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v17, v16];
    objc_exception_throw(v24);
  }

  if (length)
  {
    v10 = [(NSArray *)self objectAtIndex:location];
    if (v10 == object)
    {
      return 1;
    }

    else
    {
      v11 = v10;
      v12 = location + 1;
      v13 = 1;
      v14 = 1;
      do
      {
        if ([object isEqual:v11])
        {
          break;
        }

        v14 = v13 < length;
        if (length == v13)
        {
          break;
        }

        v11 = [(NSArray *)self objectAtIndex:v12++];
        ++v13;
      }

      while (v11 != object);
    }
  }

  else
  {
    return 0;
  }

  return v14;
}

- (BOOL)containsObject:(id)anObject
{
  v16 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(self);
        }

        if (*(*(&v12 + 1) + 8 * i) == anObject || ([anObject isEqual:?] & 1) != 0)
        {
          LOBYTE(v6) = 1;
          return v6;
        }
      }

      v7 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v11 count:16];
      LOBYTE(v6) = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (BOOL)containsObjectIdenticalTo:(id)to inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v25 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v20 = v9;
      v15 = _os_log_pack_size();
      v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill(v16, v15, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v24, v25, v26, v27);
      v22 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v21, "[NSArray containsObjectIdenticalTo:inRange:]", location, length, --v20);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v22, "[NSArray containsObjectIdenticalTo:inRange:]", location, length, v20);
    }

    else
    {
      v15 = _os_log_pack_size();
      v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill(v16, v15, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v24, v25, v26);
      v18 = __os_log_helper_1_2_3_8_32_8_0_8_0(v17, "[NSArray containsObjectIdenticalTo:inRange:]", location, length);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v18, "[NSArray containsObjectIdenticalTo:inRange:]", location, length);
    }

    v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v16, v15];
    objc_exception_throw(v23);
  }

  if (!length)
  {
    return 0;
  }

  if ([(NSArray *)self objectAtIndex:location]== to)
  {
    return 1;
  }

  v10 = location + 1;
  v11 = -1;
  do
  {
    v12 = v11;
    if (-length == v11)
    {
      break;
    }

    v13 = [(NSArray *)self objectAtIndex:v10];
    v11 = v12 - 1;
    ++v10;
  }

  while (v13 != to);
  return -v12 < length;
}

- (BOOL)containsObjectIdenticalTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(self);
        }

        if (*(*(&v12 + 1) + 8 * v9) == to)
        {
          LOBYTE(v6) = 1;
          return v6;
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [(NSArray *)self countByEnumeratingWithState:&v12 objects:v11 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  countCopy = count;
  v25 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v14 = _os_log_pack_size();
    v17 = &v24 - ((MEMORY[0x1EEE9AC00](v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v17, v14, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v24, v25);
    *v18 = 136315394;
    *(v18 + 4) = "[NSArray countByEnumeratingWithState:objects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = countCopy;
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSArray countByEnumeratingWithState:objects:count:]", countCopy);
    goto LABEL_21;
  }

  if (count >> 61)
  {
    v14 = _os_log_pack_size();
    v17 = &v24 - ((MEMORY[0x1EEE9AC00](v14, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v17, v14, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v24, v25);
    *v22 = 136315394;
    *(v22 + 4) = "[NSArray countByEnumeratingWithState:objects:count:]";
    *(v22 + 12) = 2048;
    *(v22 + 14) = countCopy;
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSArray countByEnumeratingWithState:objects:count:]", countCopy);
LABEL_21:
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v17, v14];
    objc_exception_throw(v23);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  var0 = state->var0;
  if (state->var0 == -1)
  {
    return 0;
  }

  if (var0)
  {
    v11 = state->var3[0];
  }

  else
  {
    state->var2 = state->var3;
    v11 = [(NSArray *)self count];
    state->var3[0] = v11;
    var0 = state->var0;
  }

  state->var1 = objects;
  if (v11 - var0 < countCopy)
  {
    countCopy = v11 - var0;
  }

  if (countCopy)
  {
    [(NSArray *)self getObjects:objects range:?];
    var0 = state->var0;
  }

  v12 = var0 + countCopy;
  if (v11 <= var0 + countCopy)
  {
    v12 = -1;
  }

  state->var0 = v12;
  return countCopy;
}

- (unint64_t)countForObject:(id)object inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v24 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v14 = _os_log_pack_size();
      v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, v24, v25, v26);
      v20 = v10 - 1;
      v21 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v19, "[NSArray countForObject:inRange:]", location, length, v20);
      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v21, "[NSArray countForObject:inRange:]", location, length, v20);
    }

    else
    {
      v14 = _os_log_pack_size();
      v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v23, v24, v25);
      v17 = __os_log_helper_1_2_3_8_32_8_0_8_0(v16, "[NSArray countForObject:inRange:]", location, length);
      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v17, "[NSArray countForObject:inRange:]", location, length);
    }

    v22 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v15, v14];
    objc_exception_throw(v22);
  }

  for (i = 0; length; --length)
  {
    v12 = [(NSArray *)self objectAtIndex:location];
    if (v12 == object || [object isEqual:v12])
    {
      ++i;
    }

    ++location;
  }

  return i;
}

- (unint64_t)countForObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSArray *)self countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v14;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(self);
      }

      if (*(*(&v13 + 1) + 8 * i) == object || [object isEqual:?])
      {
        ++v8;
      }
    }

    v7 = [(NSArray *)self countByEnumeratingWithState:&v13 objects:v12 count:16];
  }

  while (v7);
  return v8;
}

- (NSString)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
  v41[1] = *MEMORY[0x1E69E9840];
  if (level >= 0x64)
  {
    v7 = 100;
  }

  else
  {
    v7 = level;
  }

  v8 = [(NSArray *)self count];
  v11 = v8;
  if (v8 >> 60)
  {
    v28 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8);
    v29 = [NSException exceptionWithName:@"NSGenericException" reason:v28 userInfo:0];
    CFRelease(v28);
    objc_exception_throw(v29);
  }

  if (v8 <= 1)
  {
    v8 = 1;
  }

  v12 = MEMORY[0x1EEE9AC00](v8, v9, v10);
  v14 = (&v30 - v13);
  v41[0] = 0;
  if (v11 >= 0x101)
  {
    v14 = _CFCreateArrayStorage(v12, 0, v41);
    v34 = v14;
  }

  else
  {
    v34 = 0;
  }

  [(NSArray *)self getObjects:v14 range:0, v11];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = -1;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v36 = __40__NSArray_descriptionWithLocale_indent___block_invoke;
  v37 = &unk_1E6DCFD88;
  v38 = v39;
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v33 = &__kCFAllocatorSystemDefault;
  v31 = objc_autoreleasePoolPush();
  v32 = level;
  if (v11)
  {
    v16 = v14;
    v17 = v11;
    do
    {
      v18 = *v16;
      if (_NSIsNSString(*v16))
      {
        _stringRepresentation = [v18 _stringRepresentation];
      }

      else if ((_NSIsNSDictionary(v18) & 1) != 0 || _NSIsNSArray(v18))
      {
        _stringRepresentation = [v18 descriptionWithLocale:locale indent:v7 + 1];
      }

      else if (_NSIsNSData(v18))
      {
        _stringRepresentation = [v18 description];
      }

      else
      {
        v21 = [v18 description];
        _stringRepresentation = v36(v35, v21);
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

  v22 = CFStringCreateMutable(v33, 0);
  if (v32)
  {
    do
    {
      CFStringAppend(v22, @"    ");
      --v7;
    }

    while (v7);
  }

  CFStringAppend(Mutable, v22);
  CFStringAppend(Mutable, @"(\n");
  v23 = 1;
  v24 = v11;
  while (v24)
  {
    CFStringAppend(Mutable, v22);
    CFStringAppend(Mutable, @"    ");
    CFStringAppend(Mutable, *v14);
    if (v23 >= v11)
    {
      v25 = @"\n";
    }

    else
    {
      v25 = @",\n";
    }

    --v24;
    ++v14;
    ++v23;
    CFStringAppend(Mutable, v25);
  }

  CFStringAppend(Mutable, v22);
  CFStringAppend(Mutable, @""));
  CFRelease(v22);
  objc_autoreleasePoolPop(v31);
  v26 = Mutable;
  _Block_object_dispose(v39, 8);
  free(v34);
  return v26;
}

void *__40__NSArray_descriptionWithLocale_indent___block_invoke(uint64_t a1, void *a2)
{
  if (*(*(*(a1 + 32) + 8) + 24) == -1)
  {
    *(*(*(a1 + 32) + 8) + 24) = objc_lookUpClass("NSString") != 0;
  }

  if (!_CFExecutableLinkedOnOrAfter(6uLL) || !*(*(*(a1 + 32) + 8) + 24))
  {
    return a2;
  }

  return [a2 _stringRepresentation];
}

- (NSString)descriptionWithLocale:(id)locale
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  return [(NSArray *)self descriptionWithLocale:locale indent:0];
}

- (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!s)
  {
    v11 = _os_log_pack_size();
    v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: index set cannot be nil", v18[0]);
    *v13 = 136315138;
    *(v13 + 4) = "[NSArray enumerateObjectsAtIndexes:options:usingBlock:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSArray enumerateObjectsAtIndexes:options:usingBlock:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet(s) & 1) == 0)
  {
    v11 = _os_log_pack_size();
    v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v18[0]);
    *v15 = 136315138;
    *(v15 + 4) = "[NSArray enumerateObjectsAtIndexes:options:usingBlock:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSArray enumerateObjectsAtIndexes:options:usingBlock:]");
    goto LABEL_14;
  }

  if (!block)
  {
    v11 = _os_log_pack_size();
    v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: block cannot be nil", v18[0]);
    *v16 = 136315138;
    *(v16 + 4) = "[NSArray enumerateObjectsAtIndexes:options:usingBlock:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSArray enumerateObjectsAtIndexes:options:usingBlock:]");
LABEL_14:
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v11];
    objc_exception_throw(v17);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xEFFFFFFFFFFFFFFELL;
  }

  __NSArrayParameterCheckIterate(self, a2, block, opts | 0x1000000000000000, s);

  __NSArrayEnumerate(self, block, opts | 0x1000000000000000, s);
}

- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill(v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9, 0, &dword_1830E6000, "*** %s: block cannot be nil", v13[0]);
    *v10 = 136315138;
    *(v10 + 4) = "[NSArray enumerateObjectsWithOptions:usingBlock:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSArray enumerateObjectsWithOptions:usingBlock:]");
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v12);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  if ((opts & 2) != 0)
  {
    opts &= ~1uLL;
  }

  __NSArrayParameterCheckIterate(self, a2, block, opts, 0);

  __NSArrayEnumerate(self, block, opts, 0);
}

- (void)enumerateObjectsUsingBlock:(void *)block
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, 0, &dword_1830E6000, "*** %s: block cannot be nil", v10[0]);
    *v7 = 136315138;
    *(v7 + 4) = "[NSArray enumerateObjectsUsingBlock:]";
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSArray enumerateObjectsUsingBlock:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  [(NSArray *)self enumerateObjectsWithOptions:0 usingBlock:block];
}

- (id)firstObjectCommonWithArray:(NSArray *)otherArray
{
  v22 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
    if (!otherArray)
    {
      goto LABEL_4;
    }
  }

  else if (!otherArray)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(otherArray) & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = _os_log_pack_fill(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v17[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSArray firstObjectCommonWithArray:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSArray firstObjectCommonWithArray:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13];
    objc_exception_throw(v16);
  }

LABEL_4:
  v6 = [NSSet setWithArray:otherArray];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(NSArray *)self countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v19;
LABEL_6:
  v10 = 0;
  while (1)
  {
    if (*v19 != v9)
    {
      objc_enumerationMutation(self);
    }

    v11 = *(*(&v18 + 1) + 8 * v10);
    if ([(NSSet *)v6 containsObject:v11])
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [(NSArray *)self countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v8)
      {
        goto LABEL_6;
      }

      return 0;
    }
  }
}

- (void)getObjects:(id *)objects range:(NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = objects;
  v26 = *MEMORY[0x1E69E9840];
  if (!objects && range.length)
  {
    v10 = _os_log_pack_size();
    v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v25, v26);
    *v12 = 136315394;
    *(v12 + 4) = "[NSArray getObjects:range:]";
    *(v12 + 12) = 2048;
    *(v12 + 14) = length;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSArray getObjects:range:]", length);
    goto LABEL_13;
  }

  if (range.length >> 61)
  {
    v10 = _os_log_pack_size();
    v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v25, v26);
    *v14 = 136315394;
    *(v14 + 4) = "[NSArray getObjects:range:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = length;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSArray getObjects:range:]", length);
LABEL_13:
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v10];
    objc_exception_throw(v15);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v21 = v9;
      v16 = _os_log_pack_size();
      v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v25, v26, v27, v28);
      v23 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[NSArray getObjects:range:]", location, length, --v21);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, "[NSArray getObjects:range:]", location, length, v21);
    }

    else
    {
      v16 = _os_log_pack_size();
      v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v25, v26, v27);
      v19 = __os_log_helper_1_2_3_8_32_8_0_8_0(v18, "[NSArray getObjects:range:]", location, length);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v19, "[NSArray getObjects:range:]", location, length);
    }

    v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v17, v16];
    objc_exception_throw(v24);
  }

  for (; length; --length)
  {
    *v7++ = [(NSArray *)self objectAtIndex:location++];
  }
}

- (void)getObjects:(id *)objects
{
  v21 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)self count];
  if (!objects && v6)
  {
    v8 = v6;
    v9 = _os_log_pack_size();
    v12 = &v20 - ((MEMORY[0x1EEE9AC00](v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill(v12, v9, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v20, v21);
    *v13 = 136315394;
    *(v13 + 4) = "[NSArray getObjects:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = v8;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSArray getObjects:]", v8);
    goto LABEL_11;
  }

  if (v6 >> 61)
  {
    v15 = v6;
    v9 = _os_log_pack_size();
    v12 = &v20 - ((MEMORY[0x1EEE9AC00](v9, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v12, v9, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v20, v21);
    *v18 = 136315394;
    *(v18 + 4) = "[NSArray getObjects:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = v15;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSArray getObjects:]", v15);
LABEL_11:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v9];
    objc_exception_throw(v19);
  }

  v7 = [(NSArray *)self count];

  [(NSArray *)self getObjects:objects range:0, v7];
}

- (NSUInteger)indexOfObject:(id)anObject inRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v25 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v15 = _os_log_pack_size();
      v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = _os_log_pack_fill(v16, v15, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v24, v25, v26, v27);
      v21 = v10 - 1;
      v22 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v20, "[NSArray indexOfObject:inRange:]", location, length, v21);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v22, "[NSArray indexOfObject:inRange:]", location, length, v21);
    }

    else
    {
      v15 = _os_log_pack_size();
      v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill(v16, v15, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v24, v25, v26);
      v18 = __os_log_helper_1_2_3_8_32_8_0_8_0(v17, "[NSArray indexOfObject:inRange:]", location, length);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v18, "[NSArray indexOfObject:inRange:]", location, length);
    }

    v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v16, v15];
    objc_exception_throw(v23);
  }

  if (!length)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = 0;
  for (i = location; ; ++i)
  {
    v13 = [(NSArray *)self objectAtIndex:i];
    if (v13 == anObject)
    {
      break;
    }

    if ([anObject isEqual:v13])
    {
      return i;
    }

    ++v11;
    if (!--length)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v11 + location;
}

- (NSUInteger)indexOfObject:(id)anObject
{
  v18 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSArray *)self countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v15;
LABEL_5:
  v10 = 0;
  v11 = v8;
  v8 += v7;
  while (1)
  {
    if (*v15 != v9)
    {
      objc_enumerationMutation(self);
    }

    if (*(*(&v14 + 1) + 8 * v10) == anObject || ([anObject isEqual:?] & 1) != 0)
    {
      return v11;
    }

    ++v11;
    if (v7 == ++v10)
    {
      v7 = [(NSArray *)self countByEnumeratingWithState:&v14 objects:v13 count:16];
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      if (v7)
      {
        goto LABEL_5;
      }

      return v11;
    }
  }
}

- (NSUInteger)indexOfObjectIdenticalTo:(id)anObject inRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v21 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v16 = v9;
      v11 = _os_log_pack_size();
      v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v20, v21, v22, v23);
      v18 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v17, "[NSArray indexOfObjectIdenticalTo:inRange:]", location, length, --v16);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v18, "[NSArray indexOfObjectIdenticalTo:inRange:]", location, length, v16);
    }

    else
    {
      v11 = _os_log_pack_size();
      v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v20, v21, v22);
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v13, "[NSArray indexOfObjectIdenticalTo:inRange:]", location, length);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v14, "[NSArray indexOfObjectIdenticalTo:inRange:]", location, length);
    }

    v19 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v12, v11];
    objc_exception_throw(v19);
  }

  if (!length)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  while ([(NSArray *)self objectAtIndex:location]!= anObject)
  {
    ++location;
    if (!--length)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return location;
}

- (NSUInteger)indexOfObjectIdenticalTo:(id)anObject
{
  v18 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSArray *)self countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v15;
LABEL_5:
  v10 = 0;
  v11 = v8;
  v8 += v7;
  while (1)
  {
    if (*v15 != v9)
    {
      objc_enumerationMutation(self);
    }

    if (*(*(&v14 + 1) + 8 * v10) == anObject)
    {
      return v11;
    }

    ++v11;
    if (v7 == ++v10)
    {
      v7 = [(NSArray *)self countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v7)
      {
        goto LABEL_5;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }
}

- (id)indexesOfObject:(id)object inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v26 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v17 = v9;
      v12 = _os_log_pack_size();
      v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v21, v22, v23, v24);
      v19 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v18, "[NSArray indexesOfObject:inRange:]", location, length, --v17);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v19, "[NSArray indexesOfObject:inRange:]", location, length, v17);
    }

    else
    {
      v12 = _os_log_pack_size();
      v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v21, v22, v23);
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v14, "[NSArray indexesOfObject:inRange:]", location, length);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v15, "[NSArray indexesOfObject:inRange:]", location, length);
    }

    v20 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v13, v12];
    objc_exception_throw(v20);
  }

  v10 = [(objc_class *)__CFLookUpClass("NSIndexSet") indexSetWithIndexesInRange:location, length];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __35__NSArray_indexesOfObject_inRange___block_invoke;
  v24 = &unk_1E6DCFDB0;
  objectCopy = object;
  return [(NSArray *)self indexesOfObjectsAtIndexes:v10 options:0 passingTest:&v21];
}

uint64_t __35__NSArray_indexesOfObject_inRange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2 == a2)
  {
    return 1;
  }

  else
  {
    return [v2 isEqual:a2];
  }
}

- (id)indexesOfObject:(id)object
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__NSArray_indexesOfObject___block_invoke;
  v7[3] = &unk_1E6DCFDB0;
  v7[4] = object;
  return [(NSArray *)self indexesOfObjectsWithOptions:0 passingTest:v7];
}

uint64_t __27__NSArray_indexesOfObject___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2 == a2)
  {
    return 1;
  }

  else
  {
    return [v2 isEqual:a2];
  }
}

- (id)indexesOfObjectIdenticalTo:(id)to inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v26 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v17 = v9;
      v12 = _os_log_pack_size();
      v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v21, v22, v23, v24);
      v19 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v18, "[NSArray indexesOfObjectIdenticalTo:inRange:]", location, length, --v17);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v19, "[NSArray indexesOfObjectIdenticalTo:inRange:]", location, length, v17);
    }

    else
    {
      v12 = _os_log_pack_size();
      v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v21, v22, v23);
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v14, "[NSArray indexesOfObjectIdenticalTo:inRange:]", location, length);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v15, "[NSArray indexesOfObjectIdenticalTo:inRange:]", location, length);
    }

    v20 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v13, v12];
    objc_exception_throw(v20);
  }

  v10 = [(objc_class *)__CFLookUpClass("NSIndexSet") indexSetWithIndexesInRange:location, length];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __46__NSArray_indexesOfObjectIdenticalTo_inRange___block_invoke;
  v24 = &unk_1E6DCFDB0;
  toCopy = to;
  return [(NSArray *)self indexesOfObjectsAtIndexes:v10 options:0 passingTest:&v21];
}

- (id)indexesOfObjectIdenticalTo:(id)to
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__NSArray_indexesOfObjectIdenticalTo___block_invoke;
  v7[3] = &unk_1E6DCFDB0;
  v7[4] = to;
  return [(NSArray *)self indexesOfObjectsWithOptions:0 passingTest:v7];
}

- (NSUInteger)indexOfObject:(id)obj inSortedRange:(NSRange)r options:(NSBinarySearchingOptions)opts usingComparator:(NSComparator)cmp
{
  selfCopy = self;
  v52 = *MEMORY[0x1E69E9840];
  if (!obj)
  {
    v36 = _os_log_pack_size();
    v37 = &v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill(v37, v36, 0, &dword_1830E6000, "*** %s: object cannot be nil", v49);
    *v38 = 136315138;
    *(v38 + 4) = "[NSArray indexOfObject:inSortedRange:options:usingComparator:]";
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSArray indexOfObject:inSortedRange:options:usingComparator:]");
    goto LABEL_55;
  }

  if (!cmp)
  {
    v36 = _os_log_pack_size();
    v37 = &v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill(v37, v36, 0, &dword_1830E6000, "*** %s: comparator cannot be nil", v49);
    *v40 = 136315138;
    *(v40 + 4) = "[NSArray indexOfObject:inSortedRange:options:usingComparator:]";
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSArray indexOfObject:inSortedRange:options:usingComparator:]");
LABEL_55:
    v41 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v39) osLogPack:0 size:v37, v36];
    objc_exception_throw(v41);
  }

  length = r.length;
  location = r.location;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(selfCopy, v6, __CFTSANTagMutableArray);
  }

  v13 = [(objc_class *)selfCopy count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || (v14 = location + length, v13 < location + length))
  {
    if (v13)
    {
      v42 = v13;
      v31 = _os_log_pack_size();
      v32 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      v43 = _os_log_pack_fill(v32, v31, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v49, v50, selfCopy, v52);
      v44 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v43, "[NSArray indexOfObject:inSortedRange:options:usingComparator:]", location, length, --v42);
      v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v44, "[NSArray indexOfObject:inSortedRange:options:usingComparator:]", location, length, v42);
    }

    else
    {
      v31 = _os_log_pack_size();
      v32 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = _os_log_pack_fill(v32, v31, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v49, v50, selfCopy);
      v34 = __os_log_helper_1_2_3_8_32_8_0_8_0(v33, "[NSArray indexOfObject:inSortedRange:options:usingComparator:]", location, length);
      v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v34, "[NSArray indexOfObject:inSortedRange:options:usingComparator:]", location, length);
    }

    v45 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v35) osLogPack:0 size:v32, v31];
    objc_exception_throw(v45);
  }

  if ((opts & 0x300) == 0x300)
  {
    v46 = __CFExceptionProem(selfCopy, a2);
    v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: both NSBinarySearchingFirstEqual and NSBinarySearchingLastEqual options cannot be specified", v46);
    v48 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v47), 0];
    objc_exception_throw(v48);
  }

  if (!length)
  {
    v28 = (opts & 0x400) == 0;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_40;
  }

  v50 = opts & 0x200;
  if (length < 0x101)
  {
    goto LABEL_15;
  }

  v15 = v14 - 1;
  v16 = (*(cmp + 2))(cmp, [(objc_class *)selfCopy objectAtIndex:v14 - 1], obj);
  if (v16 < 0)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_44:
    if ((opts & 0x400) != 0)
    {
      return location + length;
    }

    else
    {
      return v15;
    }
  }

  if (!(v16 | opts & 0x100))
  {
    goto LABEL_44;
  }

  v17 = (*(cmp + 2))(cmp, obj, [(objc_class *)selfCopy objectAtIndex:location]);
  if (v17 < 0)
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_50:
    v28 = (opts & 0x400) == 0;
LABEL_40:
    if (v28)
    {
      return v29;
    }

    else
    {
      return location;
    }
  }

  if (!(v17 | v50))
  {
    v29 = location;
    goto LABEL_50;
  }

LABEL_15:
  v49 = opts;
  v18 = flsl(length);
  v19 = 0;
  v20 = 0;
  v21 = 2 << v18;
  do
  {
    v22 = location + v21 / 2;
    if (v22 < v14)
    {
      v19 = (*(cmp + 2))(cmp, [(objc_class *)selfCopy objectAtIndex:location + v21 / 2], obj);
      if (!(v19 | opts & 0x300))
      {
        return v22;
      }

      if (v19)
      {
        v23 = 1;
      }

      else
      {
        v23 = v50 == 0;
      }

      v20 |= v19 == 0;
      v24 = !v23 || v19 <= -1;
      if (v24)
      {
        location += v21 / 2;
      }
    }

    v24 = v21 <= 1;
    v21 /= 2;
  }

  while (!v24);
  LODWORD(v25) = v50 != 0;
  if (v19)
  {
    LODWORD(v25) = 0;
  }

  if (v19 < 0)
  {
    v25 = 1;
  }

  else
  {
    v25 = v25;
  }

  v26 = location + v25;
  v27 = location + (v19 >> 63);
  if ((v20 & 1) == 0)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((v49 & 0x400) != 0)
  {
    return v26;
  }

  else
  {
    return v27;
  }
}

- (NSUInteger)indexOfObjectAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!s)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: index set cannot be nil", v19[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSArray indexOfObjectAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSArray indexOfObjectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet(s) & 1) == 0)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v19[0]);
    *v16 = 136315138;
    *(v16 + 4) = "[NSArray indexOfObjectAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSArray indexOfObjectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if (!predicate)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v19[0]);
    *v17 = 136315138;
    *(v17 + 4) = "[NSArray indexOfObjectAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray indexOfObjectAtIndexes:options:passingTest:]");
LABEL_14:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xCFFFFFFFFFFFFFFELL;
  }

  __NSArrayParameterCheckIterate(self, a2, predicate, opts | 0x3000000000000000, s);

  return __NSArrayGetIndexPassingTest(self, predicate, opts | 0x3000000000000000, s);
}

- (NSUInteger)indexOfObjectWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSArray indexOfObjectWithOptions:passingTest:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray indexOfObjectWithOptions:passingTest:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xDFFFFFFFFFFFFFFELL;
  }

  __NSArrayParameterCheckIterate(self, a2, predicate, opts | 0x2000000000000000, 0);

  return __NSArrayGetIndexPassingTest(self, predicate, opts | 0x2000000000000000, 0);
}

- (NSUInteger)indexOfObjectPassingTest:(void *)predicate
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSArray indexOfObjectPassingTest:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray indexOfObjectPassingTest:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  return [(NSArray *)self indexOfObjectWithOptions:0 passingTest:predicate];
}

- (NSIndexSet)indexesOfObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!s)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: index set cannot be nil", v19[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSArray indexesOfObjectsAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSArray indexesOfObjectsAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet(s) & 1) == 0)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v19[0]);
    *v16 = 136315138;
    *(v16 + 4) = "[NSArray indexesOfObjectsAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSArray indexesOfObjectsAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if (!predicate)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v19[0]);
    *v17 = 136315138;
    *(v17 + 4) = "[NSArray indexesOfObjectsAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray indexesOfObjectsAtIndexes:options:passingTest:]");
LABEL_14:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xAFFFFFFFFFFFFFFELL;
  }

  __NSArrayParameterCheckIterate(self, a2, predicate, opts | 0x5000000000000000, s);

  return __NSArrayGetIndexesPassingTest(self, predicate, opts | 0x5000000000000000, s);
}

- (NSIndexSet)indexesOfObjectsWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSArray indexesOfObjectsWithOptions:passingTest:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray indexesOfObjectsWithOptions:passingTest:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xBFFFFFFFFFFFFFFELL;
  }

  __NSArrayParameterCheckIterate(self, a2, predicate, opts | 0x4000000000000000, 0);

  return __NSArrayGetIndexesPassingTest(self, predicate, opts | 0x4000000000000000, 0);
}

- (NSIndexSet)indexesOfObjectsPassingTest:(void *)predicate
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSArray indexesOfObjectsPassingTest:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray indexesOfObjectsPassingTest:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  return [(NSArray *)self indexesOfObjectsWithOptions:0 passingTest:predicate];
}

- (BOOL)isEqualToArray:(NSArray *)otherArray
{
  v4 = MEMORY[0x1EEE9AC00](self, a2, otherArray);
  v6 = v5;
  v7 = v4;
  v25[256] = *MEMORY[0x1E69E9840];
  if (v5 && (_NSIsNSArray(v5) & 1) == 0)
  {
    v15 = _os_log_pack_size();
    v18 = &v24[-((MEMORY[0x1EEE9AC00](v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v19 = _os_log_pack_fill(v18, v15, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v23);
    *v19 = 136315138;
    *(v19 + 4) = "[NSArray isEqualToArray:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSArray isEqualToArray:]");
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v15];
    objc_exception_throw(v21);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(v7, v3, __CFTSANTagMutableArray);
  }

  LOBYTE(v8) = v6 == v7;
  if (v6 != v7 && v6)
  {
    v9 = [v7 count];
    if ([v6 count] == v9)
    {
      if (v9)
      {
        v10 = 0;
        if (v9 >= 0x100)
        {
          v11 = 256;
        }

        else
        {
          v11 = v9;
        }

        while (1)
        {
          [v7 getObjects:v25 range:{v10, v11}];
          [v6 getObjects:v24 range:{v10, v11}];
          if (v11)
          {
            break;
          }

LABEL_17:
          v10 += v11;
          if (v9 < v10 + v11)
          {
            v11 = v9 - v10;
          }

          if (v9 <= v10)
          {
            goto LABEL_20;
          }
        }

        v12 = v24;
        v13 = v25;
        v14 = v11;
        while (1)
        {
          if (*v13 != *v12)
          {
            v8 = [*v13 isEqual:?];
            if (!v8)
            {
              break;
            }
          }

          ++v12;
          ++v13;
          if (!--v14)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_20:
        LOBYTE(v8) = 1;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else if (equal)
  {
    v6 = _NSIsNSArray(equal);
    if (v6)
    {

      LOBYTE(v6) = [(NSArray *)self isEqualToArray:equal];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)makeObjectsPerformSelector:(SEL)aSelector
{
  v23 = *MEMORY[0x1E69E9840];
  if (!aSelector)
  {
    [self doesNotRecognizeSelector:?];
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)self count];
  if (v6 > 0x80)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = [(NSArray *)self countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v15)
    {
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(self);
          }

          [*(*(&v19 + 1) + 8 * i) performSelector:aSelector];
        }

        v15 = [(NSArray *)self countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v9 = v6;
    v10 = MEMORY[0x1EEE9AC00](v6, v7, v8);
    v12 = &v18[-v11];
    if (v10)
    {
      v13 = 0;
      do
      {
        v12[v13] = [(NSArray *)self objectAtIndex:v13];
        ++v13;
      }

      while (v9 != v13);
      do
      {
        v14 = *v12++;
        [v14 performSelector:aSelector];
        --v9;
      }

      while (v9);
    }
  }
}

- (void)makeObjectsPerformSelector:(SEL)aSelector withObject:(id)argument
{
  v25 = *MEMORY[0x1E69E9840];
  if (!aSelector)
  {
    [self doesNotRecognizeSelector:?];
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = [(NSArray *)self count];
  if (v8 > 0x80)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = [(NSArray *)self countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v17)
    {
      v18 = *v22;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(self);
          }

          [*(*(&v21 + 1) + 8 * i) performSelector:aSelector withObject:argument];
        }

        v17 = [(NSArray *)self countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v11 = v8;
    v12 = MEMORY[0x1EEE9AC00](v8, v9, v10);
    v14 = &v20[-v13];
    if (v12)
    {
      v15 = 0;
      do
      {
        v14[v15] = [(NSArray *)self objectAtIndex:v15];
        ++v15;
      }

      while (v11 != v15);
      do
      {
        v16 = *v14++;
        [v16 performSelector:aSelector withObject:argument];
        --v11;
      }

      while (v11);
    }
  }
}

- (id)objectAtIndexedSubscript:(NSUInteger)idx
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  return [(NSArray *)self objectAtIndex:idx];
}

- (NSArray)objectsAtIndexes:(NSIndexSet *)indexes
{
  v68[1] = *MEMORY[0x1E69E9840];
  if (!indexes)
  {
    v20 = _os_log_pack_size();
    v23 = &v59 - ((MEMORY[0x1EEE9AC00](v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill(v23, v20, 0, &dword_1830E6000, "*** %s: index set cannot be nil", v59);
    *v24 = 136315138;
    *(v24 + 4) = "[NSArray objectsAtIndexes:]";
    v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSArray objectsAtIndexes:]");
    v26 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v23, v20];
    objc_exception_throw(v26);
  }

  if ((_NSIsNSIndexSet(indexes) & 1) == 0)
  {
    v27 = _os_log_pack_size();
    v30 = &v59 - ((MEMORY[0x1EEE9AC00](v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill(v30, v27, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v59);
    *v31 = 136315138;
    *(v31 + 4) = "[NSArray objectsAtIndexes:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSArray objectsAtIndexes:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
    objc_exception_throw(v33);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  if ((_NSIsNSIndexSet(indexes) & 1) == 0)
  {
    v34 = _os_log_pack_size();
    v37 = &v59 - ((MEMORY[0x1EEE9AC00](v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v59);
    *v38 = 136315138;
    *(v38 + 4) = "[NSArray objectsAtIndexes:]";
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSArray objectsAtIndexes:]");
    v40 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v39) osLogPack:0 size:v37, v34];
    objc_exception_throw(v40);
  }

  v6 = [(NSArray *)self count];
  v7 = [0 count];
  lastIndex = [(NSIndexSet *)indexes lastIndex];
  v9 = lastIndex;
  if ((lastIndex & 0x8000000000000000) != 0)
  {
    v10 = v7 + v6;
    goto LABEL_23;
  }

  if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v7 + v6;
    if (v10 <= lastIndex)
    {
LABEL_23:
      if (!v10)
      {
        v41 = _os_log_pack_size();
        v44 = &v59 - ((MEMORY[0x1EEE9AC00](v41, v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
        v45 = _os_log_pack_fill(v44, v41, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds for empty array", v59, v60);
        *v45 = 136315394;
        *(v45 + 4) = "[NSArray objectsAtIndexes:]";
        *(v45 + 12) = 2048;
        *(v45 + 14) = v9;
        v46 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty array", "[NSArray objectsAtIndexes:]", v9);
        v47 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v46) osLogPack:0 size:v44, v41];
        objc_exception_throw(v47);
      }

      v48 = _os_log_pack_size();
      v51 = &v59 - ((MEMORY[0x1EEE9AC00](v48, v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = _os_log_pack_fill(v51, v48, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds [0 .. %lu]", v59, v60, v61);
      v53 = v10 - 1;
      v54 = __os_log_helper_1_2_3_8_32_8_0_8_0(v52, "[NSArray objectsAtIndexes:]", v9, v53);
      v55 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v54, "[NSArray objectsAtIndexes:]", v9, v53);
      v56 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v55) osLogPack:0 size:v51, v48];
      objc_exception_throw(v56);
    }
  }

  v11 = [(NSIndexSet *)indexes count];
  v12 = v11;
  if (v11 >> 60)
  {
    v57 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v11);
    v58 = [NSException exceptionWithName:@"NSGenericException" reason:v57 userInfo:0];
    CFRelease(v57);
    objc_exception_throw(v58);
  }

  v68[0] = 0;
  if (v11 <= 1)
  {
    v11 = 1;
  }

  v13 = _CFCreateArrayStorage(v11, 0, v68);
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x2020000000;
  v67[3] = 0;
  v60 = MEMORY[0x1E69E9820];
  v61 = 3221225472;
  v62 = __28__NSArray_objectsAtIndexes___block_invoke;
  v63 = &unk_1E6DCFDD8;
  v65 = v67;
  v66 = v13;
  selfCopy = self;
  [(NSIndexSet *)indexes __forwardEnumerateRanges:&v60];
  if (v13)
  {
    if (v12)
    {
      v14 = v13;
      v15 = v12;
      do
      {
        v16 = *v14++;
        --v15;
      }

      while (v15);
    }

    v17 = [[NSArray alloc] _initByAdoptingBuffer:v13 count:v12 size:v12];
  }

  else
  {
    v17 = [[NSArray alloc] initWithObjects:0 count:v12];
  }

  v18 = v17;
  _Block_object_dispose(v67, 8);
  return v18;
}

void *__28__NSArray_objectsAtIndexes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) getObjects:*(a1 + 48) + 8 * *(*(*(a1 + 40) + 8) + 24) range:{a2, a3}];
  *(*(*(a1 + 40) + 8) + 24) += a3;
  return result;
}

- (id)objectAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!indexes)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: index set cannot be nil", v19[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSArray objectAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSArray objectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet(indexes) & 1) == 0)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v19[0]);
    *v16 = 136315138;
    *(v16 + 4) = "[NSArray objectAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSArray objectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if (!test)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v19[0]);
    *v17 = 136315138;
    *(v17 + 4) = "[NSArray objectAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray objectAtIndexes:options:passingTest:]");
LABEL_14:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  v10 = [(NSArray *)self indexOfObjectAtIndexes:indexes options:options passingTest:test];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(NSArray *)self objectAtIndex:v10];
}

- (id)objectWithOptions:(unint64_t)options passingTest:(id)test
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSArray objectWithOptions:passingTest:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray objectWithOptions:passingTest:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = [(NSArray *)self indexOfObjectWithOptions:options passingTest:test];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(NSArray *)self objectAtIndex:v8];
}

- (id)objectPassingTest:(id)test
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSArray objectPassingTest:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray objectPassingTest:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  return [(NSArray *)self objectWithOptions:0 passingTest:test];
}

- (id)objectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!indexes)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: index set cannot be nil", v19[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSArray objectsAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSArray objectsAtIndexes:options:passingTest:]");
    goto LABEL_12;
  }

  if ((_NSIsNSIndexSet(indexes) & 1) == 0)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v19[0]);
    *v16 = 136315138;
    *(v16 + 4) = "[NSArray objectsAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSArray objectsAtIndexes:options:passingTest:]");
    goto LABEL_12;
  }

  if (!test)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v19[0]);
    *v17 = 136315138;
    *(v17 + 4) = "[NSArray objectsAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray objectsAtIndexes:options:passingTest:]");
LABEL_12:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  v10 = [(NSArray *)self indexesOfObjectsAtIndexes:indexes options:options passingTest:test];

  return [(NSArray *)self objectsAtIndexes:v10];
}

- (id)objectsWithOptions:(unint64_t)options passingTest:(id)test
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSArray objectsWithOptions:passingTest:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray objectsWithOptions:passingTest:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = [(NSArray *)self indexesOfObjectsWithOptions:options passingTest:test];

  return [(NSArray *)self objectsAtIndexes:v8];
}

- (id)objectsPassingTest:(id)test
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSArray objectsPassingTest:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSArray objectsPassingTest:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  return [(NSArray *)self objectsWithOptions:0 passingTest:test];
}

- (id)reversedArray
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  v4 = [[__NSArrayReversed alloc] initWithArray:self];

  return v4;
}

- (id)sortedArrayFromRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator
{
  v58[1] = *MEMORY[0x1E69E9840];
  if (!comparator)
  {
    v33 = _os_log_pack_size();
    v36 = &v50 - ((MEMORY[0x1EEE9AC00](v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = _os_log_pack_fill(v36, v33, 0, &dword_1830E6000, "*** %s: comparator cannot be nil", v50);
    *v37 = 136315138;
    *(v37 + 4) = "[NSArray sortedArrayFromRange:options:usingComparator:]";
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSArray sortedArrayFromRange:options:usingComparator:]");
    v39 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v36, v33];
    objc_exception_throw(v39);
  }

  length = range.length;
  location = range.location;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  v11 = [(NSArray *)self count];
  if (length && (v14 = v11) != 0)
  {
    if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
    {
      v40 = _os_log_pack_size();
      v43 = &v50 - ((MEMORY[0x1EEE9AC00](v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = _os_log_pack_fill(v43, v40, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v50, v51, v52, v53);
      v45 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v44, "[NSArray sortedArrayFromRange:options:usingComparator:]", location, length, v14 - 1);
      v46 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v45, "[NSArray sortedArrayFromRange:options:usingComparator:]", location, length, v14 - 1);
      v47 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v46) osLogPack:0 size:v43, v40];
      objc_exception_throw(v47);
    }

    if (v11 == 1)
    {
      selfCopy = self;

      return selfCopy;
    }

    else if (length == 1)
    {
      v17 = [(NSArray *)self objectAtIndex:location];

      return [NSArray arrayWithObject:v17];
    }

    else
    {
      if (length >> 60)
      {
        v48 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
        v49 = [NSException exceptionWithName:@"NSGenericException" reason:v48 userInfo:0];
        CFRelease(v48);
        objc_exception_throw(v49);
      }

      MEMORY[0x1EEE9AC00](v11, v12, v13);
      v19 = &v50 - v18;
      v58[0] = 0;
      if (length >= 0x101)
      {
        v19 = _CFCreateArrayStorage(length, 0, v58);
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v57 = 0;
      v21 = _CFCreateArrayStorage(length, 0, &v57);
      v22 = [(NSArray *)self getObjects:v19 range:location, length];
      MEMORY[0x1EEE9AC00](v22, v23, v24);
      v26 = &v50 - v25;
      v27 = &v50 - v25;
      if (length > 0x1000)
      {
        v27 = malloc_type_malloc(8 * length, 0x100004000313F17uLL);
      }

      v51 = MEMORY[0x1E69E9820];
      v52 = 3221225472;
      v53 = __56__NSArray_sortedArrayFromRange_options_usingComparator___block_invoke;
      v54 = &unk_1E6D7D7A0;
      comparatorCopy = comparator;
      v56 = v19;
      CFSortIndexes(v27, length, options, &v51);
      for (i = 0; i != length; ++i)
      {
        v21[i] = *&v19[8 * *&v27[8 * i]];
      }

      if (v26 != v27)
      {
        free(v27);
      }

      v29 = 0;
      if (length <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = length;
      }

      do
      {
        v31 = v21[v29++];
      }

      while (v30 != v29);
      v32 = [[NSArray alloc] _initByAdoptingBuffer:v21 count:length size:length];
      free(v20);
      return v32;
    }
  }

  else
  {

    return +[NSArray array];
  }
}

- (NSArray)sortedArrayWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!cmptr)
  {
    v10 = _os_log_pack_size();
    v13 = v17 - ((MEMORY[0x1EEE9AC00](v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v10, 0, &dword_1830E6000, "*** %s: comparator cannot be nil", v17[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSArray sortedArrayWithOptions:usingComparator:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSArray sortedArrayWithOptions:usingComparator:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v10];
    objc_exception_throw(v16);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = [(NSArray *)self count];

  return [(NSArray *)self sortedArrayFromRange:0 options:v8 usingComparator:opts, cmptr];
}

- (NSArray)sortedArrayUsingComparator:(NSComparator)cmptr
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!cmptr)
  {
    v8 = _os_log_pack_size();
    v11 = v15 - ((MEMORY[0x1EEE9AC00](v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v11, v8, 0, &dword_1830E6000, "*** %s: comparator cannot be nil", v15[0]);
    *v12 = 136315138;
    *(v12 + 4) = "[NSArray sortedArrayUsingComparator:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSArray sortedArrayUsingComparator:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v8];
    objc_exception_throw(v14);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)self count];

  return [(NSArray *)self sortedArrayFromRange:0 options:v6 usingComparator:0, cmptr];
}

- (NSArray)sortedArrayUsingFunction:(NSInteger (__cdecl *)comparator context:
{
  v11[6] = *MEMORY[0x1E69E9840];
  if (!comparator)
  {
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: function pointer cannot be NULL", context, "[NSArray sortedArrayUsingFunction:context:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9), 0];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__NSArray_sortedArrayUsingFunction_context___block_invoke;
  v11[3] = &__block_descriptor_48_e11_q24__0_8_16l;
  v11[4] = comparator;
  v11[5] = context;
  return [(NSArray *)self sortedArrayWithOptions:0 usingComparator:v11];
}

- (NSArray)sortedArrayUsingSelector:(SEL)comparator
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (!comparator)
  {
    [self doesNotRecognizeSelector:?];
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__NSArray_sortedArrayUsingSelector___block_invoke;
  v7[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v7[4] = comparator;
  return [(NSArray *)self sortedArrayWithOptions:0 usingComparator:v7];
}

- (NSArray)subarrayWithRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v33 = *MEMORY[0x1E69E9840];
  v7 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v7 < location + length)
  {
    if (!v7)
    {
      v13 = _os_log_pack_size();
      v16 = &v32 - ((MEMORY[0x1EEE9AC00](v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill(v16, v13, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v32, v33, v34);
      v18 = __os_log_helper_1_2_3_8_32_8_0_8_0(v17, "[NSArray subarrayWithRange:]", location, length);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v18, "[NSArray subarrayWithRange:]", location, length);
      v20 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v16, v13];
      objc_exception_throw(v20);
    }

    v23 = v7;
    v24 = _os_log_pack_size();
    v27 = &v32 - ((MEMORY[0x1EEE9AC00](v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = _os_log_pack_fill(v27, v24, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v32, v33, v34, v35);
    v29 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v28, "[NSArray subarrayWithRange:]", location, length, --v23);
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v29, "[NSArray subarrayWithRange:]", location, length, v23);
    v31 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v27, v24];
    objc_exception_throw(v31);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
    if (length)
    {
      goto LABEL_6;
    }
  }

  else if (length)
  {
LABEL_6:
    if (length >> 60)
    {
      v21 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
      v22 = [NSException exceptionWithName:@"NSGenericException" reason:v21 userInfo:0];
      CFRelease(v21);
      objc_exception_throw(v22);
    }

    v32 = 0;
    v8 = _CFCreateArrayStorage(length, 0, &v32);
    [(NSArray *)self getObjects:v8 range:location, length];
    if (v8)
    {
      for (i = 0; i != length; ++i)
      {
        v10 = v8[i];
      }

      v11 = [[NSArray alloc] _initByAdoptingBuffer:v8 count:length size:length];
    }

    else
    {
      v11 = [[NSArray alloc] initWithObjects:0 count:length];
    }

    return v11;
  }

  return +[NSArray array];
}

+ (NSArray)allocWithZone:(_NSZone *)zone
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSArray == self)
  {

    return __NSArrayImmutablePlaceholder();
  }

  else if (NSMutableArray == self)
  {

    return __NSArrayMutablePlaceholder();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___NSArray;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, zone);
  }
}

- (NSArray)initWithArray:(NSArray *)array
{
  v5 = [(NSArray *)array count];

  return [(NSArray *)self initWithArray:array range:0 copyItems:v5, 0];
}

- (NSArray)initWithArray:(NSArray *)array copyItems:(BOOL)flag
{
  v4 = flag;
  v7 = [(NSArray *)array count];

  return [(NSArray *)self initWithArray:array range:0 copyItems:v7, v4];
}

- (NSArray)initWithArray:(id)array range:(_NSRange)range copyItems:(BOOL)items
{
  itemsCopy = items;
  length = range.length;
  location = range.location;
  v54 = *MEMORY[0x1E69E9840];
  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v37 = _os_log_pack_size();
    v40 = &v53 - ((MEMORY[0x1EEE9AC00](v37, v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = _os_log_pack_fill(v40, v37, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v53);
    *v41 = 136315138;
    *(v41 + 4) = "[NSArray initWithArray:range:copyItems:]";
    v42 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSArray initWithArray:range:copyItems:]");
    v43 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v42) osLogPack:0 size:v40, v37];
    objc_exception_throw(v43);
  }

  v10 = [array count];
  v13 = v10;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v10 < location + length)
  {
    if (!v10)
    {
      v27 = _os_log_pack_size();
      v30 = &v53 - ((MEMORY[0x1EEE9AC00](v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = _os_log_pack_fill(v30, v27, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v53, v54, v55);
      v32 = __os_log_helper_1_2_3_8_32_8_0_8_0(v31, "[NSArray initWithArray:range:copyItems:]", location, length);
      v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v32, "[NSArray initWithArray:range:copyItems:]", location, length);
      v34 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v30, v27];
      objc_exception_throw(v34);
    }

    v44 = _os_log_pack_size();
    v47 = &v53 - ((MEMORY[0x1EEE9AC00](v44, v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = _os_log_pack_fill(v47, v44, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v53, v54, v55, v56);
    v49 = v13 - 1;
    v50 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v48, "[NSArray initWithArray:range:copyItems:]", location, length, v49);
    v51 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v50, "[NSArray initWithArray:range:copyItems:]", location, length, v49);
    v52 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v51) osLogPack:0 size:v47, v44];
    objc_exception_throw(v52);
  }

  if (length >> 60)
  {
    v35 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v36 = [NSException exceptionWithName:@"NSGenericException" reason:v35 userInfo:0];
    CFRelease(v35);
    objc_exception_throw(v36);
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
  v17 = (&v53 - v16);
  v53 = 0;
  if (length >= 0x101)
  {
    v17 = _CFCreateArrayStorage(v15, 0, &v53);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [array getObjects:v17 range:{location, length, v53, v54}];
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

  if (v18)
  {
    if (length)
    {
      v21 = length;
      v22 = v18;
      do
      {
        if ((*v22 & 0x8000000000000000) == 0)
        {
          v23 = *v22;
        }

        ++v22;
        --v21;
      }

      while (v21);
    }

    v24 = [(NSArray *)self _initByAdoptingBuffer:v18 count:length size:length];
  }

  else
  {
    v24 = [(NSArray *)self initWithObjects:v17 count:length];
  }

  v25 = v24;
  if (itemsCopy)
  {
    do
    {

      --length;
    }

    while (length);
  }

  return v25;
}

- (NSArray)initWithObject:(id)object
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = object;
  return [(NSArray *)self initWithObjects:v4 count:1];
}

- (NSArray)initWithObjects:(id)firstObj
{
  va_start(va, firstObj);
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = firstObj;
  v5 = __NSArrayImmutablePlaceholder();
  if (firstObj)
  {
    v8 = 0;
    va_copy(v22, va);
    do
    {
      v9 = v22;
      v22 += 8;
      ++v8;
    }

    while (*v9);
    if (v5 == self)
    {
      va_copy(v22, va);
      return __NSArrayI_new(&v23, va, v8, 0);
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
    if (v5 == self)
    {
      return &__NSArray0__struct;
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
  v19 = [(NSArray *)self initWithObjects:v21 count:v22, v23, v24];
  free(v16);
  return v19;
}

- (NSArray)initWithSet:(id)set copyItems:(BOOL)items
{
  itemsCopy = items;
  v33 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSSet(set) & 1) == 0)
  {
    v25 = _os_log_pack_size();
    v28 = &v32 - ((MEMORY[0x1EEE9AC00](v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = _os_log_pack_fill(v28, v25, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v32);
    *v29 = 136315138;
    *(v29 + 4) = "[NSArray initWithSet:copyItems:]";
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSArray initWithSet:copyItems:]");
    v31 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v28, v25];
    objc_exception_throw(v31);
  }

  v7 = [set count];
  v10 = v7;
  if (v7 >> 60)
  {
    v23 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7);
    v24 = [NSException exceptionWithName:@"NSGenericException" reason:v23 userInfo:0];
    CFRelease(v23);
    objc_exception_throw(v24);
  }

  if (v7 <= 1)
  {
    v7 = 1;
  }

  v11 = MEMORY[0x1EEE9AC00](v7, v8, v9);
  v13 = (&v32 - v12);
  v32 = 0;
  if (v10 >= 0x101)
  {
    v13 = _CFCreateArrayStorage(v11, 0, &v32);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  [set getObjects:v13 count:{v10, v32, v33}];
  if (!v10)
  {
    itemsCopy = 0;
  }

  if (itemsCopy)
  {
    v15 = v13;
    v16 = v10;
    do
    {
      *v15 = [*v15 copyWithZone:0];
      ++v15;
      --v16;
    }

    while (v16);
  }

  if (v14)
  {
    if (v10)
    {
      v17 = v10;
      v18 = v14;
      do
      {
        if ((*v18 & 0x8000000000000000) == 0)
        {
          v19 = *v18;
        }

        ++v18;
        --v17;
      }

      while (v17);
    }

    v20 = [(NSArray *)self _initByAdoptingBuffer:v14 count:v10 size:v10];
  }

  else
  {
    v20 = [(NSArray *)self initWithObjects:v13 count:v10];
  }

  v21 = v20;
  if (itemsCopy)
  {
    do
    {

      --v10;
    }

    while (v10);
  }

  return v21;
}

- (NSArray)initWithOrderedSet:(id)set range:(_NSRange)range copyItems:(BOOL)items
{
  itemsCopy = items;
  length = range.length;
  location = range.location;
  v54 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v37 = _os_log_pack_size();
    v40 = &v53 - ((MEMORY[0x1EEE9AC00](v37, v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = _os_log_pack_fill(v40, v37, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v53);
    *v41 = 136315138;
    *(v41 + 4) = "[NSArray initWithOrderedSet:range:copyItems:]";
    v42 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSArray initWithOrderedSet:range:copyItems:]");
    v43 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v42) osLogPack:0 size:v40, v37];
    objc_exception_throw(v43);
  }

  v10 = [set count];
  v13 = v10;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v10 < location + length)
  {
    if (!v10)
    {
      v27 = _os_log_pack_size();
      v30 = &v53 - ((MEMORY[0x1EEE9AC00](v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = _os_log_pack_fill(v30, v27, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v53, v54, v55);
      v32 = __os_log_helper_1_2_3_8_32_8_0_8_0(v31, "[NSArray initWithOrderedSet:range:copyItems:]", location, length);
      v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v32, "[NSArray initWithOrderedSet:range:copyItems:]", location, length);
      v34 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v30, v27];
      objc_exception_throw(v34);
    }

    v44 = _os_log_pack_size();
    v47 = &v53 - ((MEMORY[0x1EEE9AC00](v44, v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = _os_log_pack_fill(v47, v44, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v53, v54, v55, v56);
    v49 = v13 - 1;
    v50 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v48, "[NSArray initWithOrderedSet:range:copyItems:]", location, length, v49);
    v51 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v50, "[NSArray initWithOrderedSet:range:copyItems:]", location, length, v49);
    v52 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v51) osLogPack:0 size:v47, v44];
    objc_exception_throw(v52);
  }

  if (length >> 60)
  {
    v35 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v36 = [NSException exceptionWithName:@"NSGenericException" reason:v35 userInfo:0];
    CFRelease(v35);
    objc_exception_throw(v36);
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
  v17 = (&v53 - v16);
  v53 = 0;
  if (length >= 0x101)
  {
    v17 = _CFCreateArrayStorage(v15, 0, &v53);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [set getObjects:v17 range:{location, length, v53, v54}];
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

  if (v18)
  {
    if (length)
    {
      v21 = length;
      v22 = v18;
      do
      {
        if ((*v22 & 0x8000000000000000) == 0)
        {
          v23 = *v22;
        }

        ++v22;
        --v21;
      }

      while (v21);
    }

    v24 = [(NSArray *)self _initByAdoptingBuffer:v18 count:length size:length];
  }

  else
  {
    v24 = [(NSArray *)self initWithObjects:v17 count:length];
  }

  v25 = v24;
  if (itemsCopy)
  {
    do
    {

      --length;
    }

    while (length);
  }

  return v25;
}

- (NSArray)initWithOrderedSet:(id)set copyItems:(BOOL)items
{
  itemsCopy = items;
  v7 = [set count];

  return [(NSArray *)self initWithOrderedSet:set range:0 copyItems:v7, itemsCopy];
}

- (NSArray)initWithOrderedSet:(id)set
{
  v5 = [set count];

  return [(NSArray *)self initWithOrderedSet:set range:0 copyItems:v5, 0];
}

- (id)_initByAdoptingBuffer:(id *)buffer count:(unint64_t)count size:(unint64_t)size
{
  countCopy = count;
  v7 = [(NSArray *)self initWithObjects:buffer count:count, size];
  if (countCopy)
  {
    bufferCopy = buffer;
    do
    {
      v9 = *bufferCopy++;

      --countCopy;
    }

    while (countCopy);
  }

  free(buffer);
  return v7;
}

+ (NSArray)arrayWithObject:(id)anObject
{
  Array = __createArray([self alloc], anObject);

  return Array;
}

+ (NSArray)arrayWithObjects:(id *)objects count:(NSUInteger)cnt
{
  v4 = [[self alloc] initWithObjects:objects count:cnt];

  return v4;
}

+ (id)newArrayWithObjects:(const void *)objects count:(unint64_t)count
{
  v21 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v11 = _os_log_pack_size();
    v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v20, v21);
    *v17 = 136315394;
    *(v17 + 4) = "+[NSArray newArrayWithObjects:count:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = count;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "+[NSArray newArrayWithObjects:count:]", count);
    goto LABEL_26;
  }

  if (count >> 61)
  {
    v11 = _os_log_pack_size();
    v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v20, v21);
    *v19 = 136315394;
    *(v19 + 4) = "+[NSArray newArrayWithObjects:count:]";
    *(v19 + 12) = 2048;
    *(v19 + 14) = count;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "+[NSArray newArrayWithObjects:count:]", count);
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

    v10 = v6;
    v11 = _os_log_pack_size();
    v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]", v20, v21);
    *v13 = 136315394;
    *(v13 + 4) = "+[NSArray newArrayWithObjects:count:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = v10;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "+[NSArray newArrayWithObjects:count:]", v10);
LABEL_26:
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v11];
    objc_exception_throw(v15);
  }

LABEL_8:
  if (NSArray == self)
  {
    if (count == 1)
    {
      v8 = *objects;

      return __NSSingleObjectArrayI_new(v8, 1);
    }

    else if (count)
    {

      return __NSArrayI_new(objects, 0, count, 1);
    }

    else
    {

      return &__NSArray0__struct;
    }
  }

  else
  {
    if (NSMutableArray != self)
    {
      v9 = __CFLookUpClass("NSArray");
      __CFRequireConcreteImplementation(v9, self, a2);
    }

    return __NSArrayM_new(objects, count, 1);
  }
}

+ (NSArray)arrayWithObjects:(id)firstObj
{
  va_start(va, firstObj);
  v22[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22[0] = firstObj;
  if (firstObj)
  {
    v5 = 0;
    va_copy(v21, va);
    do
    {
      v6 = v21;
      v21 += 8;
      ++v5;
    }

    while (*v6);
    if (__NSPlaceholderArray == self)
    {
      va_copy(v21, va);
      v17 = __NSArrayI_new(v22, va, v5, 0);
      goto LABEL_21;
    }

    if (v5 >> 60)
    {
      v7 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5);
      v8 = [NSException exceptionWithName:@"NSGenericException" reason:v7 userInfo:0];
      CFRelease(v7);
      objc_exception_throw(v8);
    }
  }

  else
  {
    if (__NSPlaceholderArray == self)
    {
      return &__NSArray0__struct;
    }

    v5 = 0;
  }

  if (v5 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5;
  }

  v10 = MEMORY[0x1EEE9AC00](v9, a2, firstObj);
  v12 = (&v20 - v11);
  v20 = 0;
  if (v5 >= 0x101)
  {
    v12 = _CFCreateArrayStorage(v10, 0, &v20);
    va_copy(v21, va);
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

    va_copy(v21, va);
    *v12 = firstObj;
    if (v5 == 1)
    {
      goto LABEL_19;
    }
  }

  for (i = 1; i != v5; ++i)
  {
    v15 = v21;
    v21 += 8;
    v12[i] = *v15;
  }

LABEL_19:
  v16 = [self alloc];
  v17 = [v16 initWithObjects:v12 count:{v5, v20}];
  free(v13);
LABEL_21:
  v18 = v17;
  return v17;
}

+ (NSArray)arrayWithArray:(id)array range:(_NSRange)range copyItems:(BOOL)items
{
  v5 = [[self alloc] initWithArray:array range:range.location copyItems:{range.length, items}];

  return v5;
}

+ (NSArray)arrayWithArray:(id)array range:(_NSRange)range
{
  v4 = [[self alloc] initWithArray:array range:range.location copyItems:{range.length, 0}];

  return v4;
}

+ (NSArray)arrayWithArray:(id)array copyItems:(BOOL)items
{
  v4 = [[self alloc] initWithArray:array range:0 copyItems:{objc_msgSend(array, "count"), items}];

  return v4;
}

+ (NSArray)arrayWithArray:(NSArray *)array
{
  v3 = [[self alloc] initWithArray:array range:0 copyItems:{-[NSArray count](array, "count"), 0}];

  return v3;
}

+ (NSArray)arrayWithOrderedSet:(id)set range:(_NSRange)range copyItems:(BOOL)items
{
  v5 = [[self alloc] initWithOrderedSet:set range:range.location copyItems:{range.length, items}];

  return v5;
}

+ (NSArray)arrayWithOrderedSet:(id)set range:(_NSRange)range
{
  v4 = [[self alloc] initWithOrderedSet:set range:range.location copyItems:{range.length, 0}];

  return v4;
}

+ (NSArray)arrayWithOrderedSet:(id)set copyItems:(BOOL)items
{
  v4 = [[self alloc] initWithOrderedSet:set range:0 copyItems:{objc_msgSend(set, "count"), items}];

  return v4;
}

+ (NSArray)arrayWithOrderedSet:(id)set
{
  v3 = [[self alloc] initWithOrderedSet:set range:0 copyItems:{objc_msgSend(set, "count"), 0}];

  return v3;
}

+ (NSArray)arrayWithSet:(id)set copyItems:(BOOL)items
{
  v4 = [[self alloc] initWithSet:set copyItems:items];

  return v4;
}

+ (NSArray)arrayWithSet:(id)set
{
  v3 = [[self alloc] initWithSet:set copyItems:0];

  return v3;
}

- (NSArray)arrayByAddingObject:(id)anObject
{
  v25 = *MEMORY[0x1E69E9840];
  if (!anObject)
  {
    v15 = _os_log_pack_size();
    v18 = &v24 - ((MEMORY[0x1EEE9AC00](v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v18, v15, 0, &dword_1830E6000, "*** %s: object cannot be nil", v24);
    *v19 = 136315138;
    *(v19 + 4) = "[NSArray arrayByAddingObject:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSArray arrayByAddingObject:]");
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v15];
    objc_exception_throw(v21);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)self count];
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    v22 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6 + 1);
    v23 = [NSException exceptionWithName:@"NSGenericException" reason:v22 userInfo:0];
    CFRelease(v22);
    objc_exception_throw(v23);
  }

  v8 = v6;
  v24 = 0;
  if (v7 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 + 1;
  }

  v10 = _CFCreateArrayStorage(v9, 0, &v24);
  [(NSArray *)self getObjects:v10 range:0, v8, v24, v25];
  v10[v8] = anObject;
  if (v7)
  {
    v11 = v10;
    v12 = v7;
    do
    {
      v13 = *v11++;
      --v12;
    }

    while (v12);
  }

  return [[NSArray alloc] _initByAdoptingBuffer:v10 count:v7 size:v7];
}

- (NSArray)arrayByAddingObjectsFromArray:(NSArray *)otherArray
{
  v29 = *MEMORY[0x1E69E9840];
  if (otherArray && (_NSIsNSArray(otherArray) & 1) == 0)
  {
    v19 = _os_log_pack_size();
    v22 = &v28 - ((MEMORY[0x1EEE9AC00](v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v22, v19, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v28);
    *v23 = 136315138;
    *(v23 + 4) = "[NSArray arrayByAddingObjectsFromArray:]";
    v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSArray arrayByAddingObjectsFromArray:]");
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v22, v19];
    objc_exception_throw(v25);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)otherArray count];
  if (v6)
  {
    v7 = v6;
    v8 = [(NSArray *)self count];
    v9 = v8 + v7;
    if ((v8 + v7) >> 60)
    {
      v26 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8 + v7);
      v27 = [NSException exceptionWithName:@"NSGenericException" reason:v26 userInfo:0];
      CFRelease(v26);
      objc_exception_throw(v27);
    }

    v10 = v8;
    v28 = 0;
    if (v9 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8 + v7;
    }

    v12 = _CFCreateArrayStorage(v11, 0, &v28);
    if (v10)
    {
      [(NSArray *)self getObjects:v12 range:0, v10, v28, v29];
    }

    [(NSArray *)otherArray getObjects:&v12[v10] range:0, v7, v28];
    if (v12)
    {
      if (v9)
      {
        v13 = v12;
        v14 = v9;
        do
        {
          v15 = *v13++;
          --v14;
        }

        while (v14);
      }

      v16 = [[NSArray alloc] _initByAdoptingBuffer:v12 count:v9 size:v9];
    }

    else
    {
      v16 = [[NSArray alloc] initWithObjects:0 count:v9];
    }

    return v16;
  }

  else
  {
    selfCopy = self;

    return selfCopy;
  }
}

- (id)arrayByApplyingSelector:(SEL)selector
{
  v32 = *MEMORY[0x1E69E9840];
  if (!selector)
  {
    [self doesNotRecognizeSelector:?];
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)self count];
  if (v6 >> 60)
  {
    v23 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v24 = [NSException exceptionWithName:@"NSGenericException" reason:v23 userInfo:0];
    CFRelease(v23);
    objc_exception_throw(v24);
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v9 = MEMORY[0x1EEE9AC00](v6, v7, v8);
  v11 = &v25 - v10;
  v26 = 0;
  if (v12 >= 0x101)
  {
    v11 = _CFCreateArrayStorage(v9, 0, &v26);
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = 0;
  v15 = [(NSArray *)self countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v15)
  {
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(self);
        }

        v18 = [*(*(&v28 + 1) + 8 * i) performSelector:selector];
        if (v18)
        {
          *&v11[8 * v14++] = v18;
        }
      }

      v15 = [(NSArray *)self countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v15);
    if (v13)
    {
      if (v14 >= 1)
      {
        for (j = 0; j != v14; ++j)
        {
          v20 = *&v13[8 * j];
        }
      }

      goto LABEL_26;
    }

LABEL_27:
    v21 = [[NSArray alloc] initWithObjects:v11 count:v14];
    return v21;
  }

  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_26:
  v21 = [[NSArray alloc] _initByAdoptingBuffer:v13 count:v14 size:v14];
  return v21;
}

- (id)arrayByExcludingObjectsInArray:(id)array
{
  v40 = *MEMORY[0x1E69E9840];
  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v26 = _os_log_pack_size();
    v29 = &v33 - ((MEMORY[0x1EEE9AC00](v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = _os_log_pack_fill(v29, v26, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v33);
    *v30 = 136315138;
    *(v30 + 4) = "[NSArray arrayByExcludingObjectsInArray:]";
    v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSArray arrayByExcludingObjectsInArray:]");
    v32 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v26];
    objc_exception_throw(v32);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)self count];
  if (v6 >> 60)
  {
    v24 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v25 = [NSException exceptionWithName:@"NSGenericException" reason:v24 userInfo:0];
    CFRelease(v24);
    objc_exception_throw(v25);
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v9 = MEMORY[0x1EEE9AC00](v6, v7, v8);
  v11 = &v33 - v10;
  v34 = 0;
  if (v12 >= 0x101)
  {
    v11 = _CFCreateArrayStorage(v9, 0, &v34);
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = [NSSet setWithArray:array];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = 0;
  v16 = [(NSArray *)self countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v16)
  {
    v17 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(self);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        if (![(NSSet *)v14 containsObject:v19])
        {
          *&v11[8 * v15++] = v19;
        }
      }

      v16 = [(NSArray *)self countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v16);
    if (v13)
    {
      if (v15 >= 1)
      {
        for (j = 0; j != v15; ++j)
        {
          v21 = *&v13[8 * j];
        }
      }

      goto LABEL_26;
    }

LABEL_27:
    v22 = [[NSArray alloc] initWithObjects:v11 count:v15];
    return v22;
  }

  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_26:
  v22 = [[NSArray alloc] _initByAdoptingBuffer:v13 count:v15 size:v15];
  return v22;
}

- (id)arrayByExcludingToObjectsInArray:(id)array
{
  v40 = *MEMORY[0x1E69E9840];
  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v26 = _os_log_pack_size();
    v29 = &v33 - ((MEMORY[0x1EEE9AC00](v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = _os_log_pack_fill(v29, v26, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v33);
    *v30 = 136315138;
    *(v30 + 4) = "[NSArray arrayByExcludingToObjectsInArray:]";
    v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSArray arrayByExcludingToObjectsInArray:]");
    v32 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v26];
    objc_exception_throw(v32);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)self count];
  if (v6 >> 60)
  {
    v24 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v25 = [NSException exceptionWithName:@"NSGenericException" reason:v24 userInfo:0];
    CFRelease(v24);
    objc_exception_throw(v25);
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v9 = MEMORY[0x1EEE9AC00](v6, v7, v8);
  v11 = &v33 - v10;
  v34 = 0;
  if (v12 >= 0x101)
  {
    v11 = _CFCreateArrayStorage(v9, 0, &v34);
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = [NSSet setWithArray:array];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = 0;
  v16 = [(NSArray *)self countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v16)
  {
    v17 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(self);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        if ([(NSSet *)v14 containsObject:v19])
        {
          *&v11[8 * v15++] = v19;
        }
      }

      v16 = [(NSArray *)self countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v16);
    if (v13)
    {
      if (v15 >= 1)
      {
        for (j = 0; j != v15; ++j)
        {
          v21 = *&v13[8 * j];
        }
      }

      goto LABEL_26;
    }

LABEL_27:
    v22 = [[NSArray alloc] initWithObjects:v11 count:v15];
    return v22;
  }

  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_26:
  v22 = [[NSArray alloc] _initByAdoptingBuffer:v13 count:v15 size:v15];
  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  ShouldCopy = __NSCollectionsShouldCopy();
  v7 = [NSArray allocWithZone:zone];
  v8 = [(NSArray *)self count];

  return [(NSArray *)v7 initWithArray:self range:0 copyItems:v8, ShouldCopy];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [(NSArray *)NSMutableArray allocWithZone:zone];
  v7 = [(NSArray *)self count];

  return [(NSArray *)v6 initWithArray:self range:0 copyItems:v7, 0];
}

@end