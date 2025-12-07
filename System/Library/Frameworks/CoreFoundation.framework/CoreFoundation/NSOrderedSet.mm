@interface NSOrderedSet
+ (NSOrderedSet)allocWithZone:(_NSZone *)zone;
+ (NSOrderedSet)orderedSet;
+ (NSOrderedSet)orderedSetWithArray:(NSArray *)array;
+ (NSOrderedSet)orderedSetWithArray:(NSArray *)array range:(NSRange)range copyItems:(BOOL)flag;
+ (NSOrderedSet)orderedSetWithArray:(id)array copyItems:(BOOL)items;
+ (NSOrderedSet)orderedSetWithArray:(id)array range:(_NSRange)range;
+ (NSOrderedSet)orderedSetWithObject:(id)object;
+ (NSOrderedSet)orderedSetWithObjects:(id *)objects count:(NSUInteger)cnt;
+ (NSOrderedSet)orderedSetWithObjects:(id)firstObj;
+ (NSOrderedSet)orderedSetWithOrderedSet:(NSOrderedSet *)set;
+ (NSOrderedSet)orderedSetWithOrderedSet:(NSOrderedSet *)set range:(NSRange)range copyItems:(BOOL)flag;
+ (NSOrderedSet)orderedSetWithOrderedSet:(id)set copyItems:(BOOL)items;
+ (NSOrderedSet)orderedSetWithOrderedSet:(id)set range:(_NSRange)range;
+ (NSOrderedSet)orderedSetWithSet:(NSSet *)set;
+ (NSOrderedSet)orderedSetWithSet:(NSSet *)set copyItems:(BOOL)flag;
+ (id)newOrderedSetWithObjects:(const void *)objects count:(unint64_t)count;
- (BOOL)containsObject:(id)object;
- (BOOL)containsObject:(id)object inRange:(_NSRange)range;
- (BOOL)intersectsOrderedSet:(NSOrderedSet *)other;
- (BOOL)intersectsSet:(NSSet *)set;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOrderedSet:(NSOrderedSet *)other;
- (BOOL)isSubsetOfOrderedSet:(NSOrderedSet *)other;
- (BOOL)isSubsetOfSet:(NSSet *)set;
- (NSArray)array;
- (NSArray)objectsAtIndexes:(NSIndexSet *)indexes;
- (NSArray)sortedArrayUsingComparator:(NSComparator)cmptr;
- (NSArray)sortedArrayWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr;
- (NSEnumerator)objectEnumerator;
- (NSEnumerator)reverseObjectEnumerator;
- (NSIndexSet)indexesOfObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSIndexSet)indexesOfObjectsPassingTest:(void *)predicate;
- (NSIndexSet)indexesOfObjectsWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSOrderedSet)initWithArray:(NSArray *)array;
- (NSOrderedSet)initWithArray:(NSArray *)set copyItems:(BOOL)flag;
- (NSOrderedSet)initWithArray:(NSArray *)set range:(NSRange)range copyItems:(BOOL)flag;
- (NSOrderedSet)initWithObject:(id)object;
- (NSOrderedSet)initWithObjects:(id *)objects count:(NSUInteger)cnt;
- (NSOrderedSet)initWithObjects:(id)firstObj;
- (NSOrderedSet)initWithOrderedSet:(NSOrderedSet *)set;
- (NSOrderedSet)initWithOrderedSet:(NSOrderedSet *)set copyItems:(BOOL)flag;
- (NSOrderedSet)initWithOrderedSet:(NSOrderedSet *)set range:(NSRange)range copyItems:(BOOL)flag;
- (NSOrderedSet)initWithSet:(NSSet *)set copyItems:(BOOL)flag;
- (NSOrderedSet)reversedOrderedSet;
- (NSSet)set;
- (NSString)description;
- (NSString)descriptionWithLocale:(id)locale;
- (NSString)descriptionWithLocale:(id)locale indent:(NSUInteger)level;
- (NSUInteger)count;
- (NSUInteger)indexOfObject:(id)object;
- (NSUInteger)indexOfObject:(id)object inSortedRange:(NSRange)range options:(NSBinarySearchingOptions)opts usingComparator:(NSComparator)cmp;
- (NSUInteger)indexOfObjectAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSUInteger)indexOfObjectPassingTest:(void *)predicate;
- (NSUInteger)indexOfObjectWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (id)allObjects;
- (id)copyWithZone:(_NSZone *)zone;
- (id)firstObject;
- (id)lastObject;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectAtIndex:(NSUInteger)idx;
- (id)objectAtIndexedSubscript:(NSUInteger)idx;
- (id)objectAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test;
- (id)objectPassingTest:(id)test;
- (id)objectWithOptions:(unint64_t)options passingTest:(id)test;
- (id)objectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test;
- (id)objectsPassingTest:(id)test;
- (id)objectsWithOptions:(unint64_t)options passingTest:(id)test;
- (id)sortedArrayFromRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)countForObject:(id)object;
- (unint64_t)countForObject:(id)object inRange:(_NSRange)range;
- (unint64_t)hash;
- (unint64_t)indexOfObject:(id)object inRange:(_NSRange)range;
- (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)enumerateObjectsUsingBlock:(void *)block;
- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)getObjects:(id *)objects;
- (void)getObjects:(id *)objects range:(NSRange)range;
@end

@implementation NSOrderedSet

+ (NSOrderedSet)orderedSet
{
  v2 = [[self alloc] initWithObjects:0 count:0];

  return v2;
}

- (NSSet)set
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  v4 = [[__NSOrderedSetSetProxy alloc] initWithOrderedSet:self];

  return v4;
}

- (NSEnumerator)objectEnumerator
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  v4 = [[__NSFastEnumerationEnumerator alloc] initWithObject:self];

  return v4;
}

- (id)firstObject
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  result = [(NSOrderedSet *)self count];
  if (result)
  {

    return [(NSOrderedSet *)self objectAtIndex:0];
  }

  return result;
}

- (NSArray)array
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  v4 = [[__NSOrderedSetArrayProxy alloc] initWithOrderedSet:self];

  return v4;
}

- (id)lastObject
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  result = [(NSOrderedSet *)self count];
  if (result)
  {

    return [(NSOrderedSet *)self objectAtIndex:result - 1];
  }

  return result;
}

- (NSEnumerator)reverseObjectEnumerator
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  v4 = [[__NSOrderedSetReverseEnumerator alloc] initWithObject:self];

  return v4;
}

- (NSString)description
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self descriptionWithLocale:0 indent:0];
}

- (id)allObjects
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  v4 = [(NSOrderedSet *)self count];
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
  [(NSOrderedSet *)self getObjects:v6 range:0, v5];
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

- (BOOL)containsObject:(id)object inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v21 = *MEMORY[0x1E69E9840];
  v9 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v16 = v9;
      v11 = _os_log_pack_size();
      v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v20, v21, v22, v23);
      v18 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v17, "[NSOrderedSet containsObject:inRange:]", location, length, --v16);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v18, "[NSOrderedSet containsObject:inRange:]", location, length, v16);
    }

    else
    {
      v11 = _os_log_pack_size();
      v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v20, v21, v22);
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v13, "[NSOrderedSet containsObject:inRange:]", location, length);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v14, "[NSOrderedSet containsObject:inRange:]", location, length);
    }

    v19 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v12, v11];
    objc_exception_throw(v19);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self indexOfObject:object inRange:location, length]!= 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)containsObject:(id)object
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self indexOfObject:object]!= 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  countCopy = count;
  v26 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v15 = _os_log_pack_size();
    v18 = &v25 - ((MEMORY[0x1EEE9AC00](v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v18, v15, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v25, v26);
    *v19 = 136315394;
    *(v19 + 4) = "[NSOrderedSet countByEnumeratingWithState:objects:count:]";
    *(v19 + 12) = 2048;
    *(v19 + 14) = countCopy;
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSOrderedSet countByEnumeratingWithState:objects:count:]", countCopy);
    goto LABEL_21;
  }

  if (count >> 61)
  {
    v15 = _os_log_pack_size();
    v18 = &v25 - ((MEMORY[0x1EEE9AC00](v15, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v18, v15, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v25, v26);
    *v23 = 136315394;
    *(v23 + 4) = "[NSOrderedSet countByEnumeratingWithState:objects:count:]";
    *(v23 + 12) = 2048;
    *(v23 + 14) = countCopy;
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSOrderedSet countByEnumeratingWithState:objects:count:]", countCopy);
LABEL_21:
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v15];
    objc_exception_throw(v24);
  }

  var0 = state->var0;
  if (state->var0 == -1)
  {
    return 0;
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableOrderedSet);
    var0 = state->var0;
  }

  var3 = state->var3;
  if (var0)
  {
    v12 = *var3;
  }

  else
  {
    state->var2 = var3;
    v12 = [(NSOrderedSet *)self count];
    state->var3[0] = v12;
    var0 = state->var0;
  }

  state->var1 = objects;
  if (v12 - var0 < countCopy)
  {
    countCopy = v12 - var0;
  }

  if (countCopy)
  {
    [(NSOrderedSet *)self getObjects:objects range:?];
    var0 = state->var0;
  }

  v13 = var0 + countCopy;
  if (v12 <= var0 + countCopy)
  {
    v13 = -1;
  }

  state->var0 = v13;
  return countCopy;
}

- (unint64_t)countForObject:(id)object inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v21 = *MEMORY[0x1E69E9840];
  v9 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v16 = v9;
      v11 = _os_log_pack_size();
      v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v20, v21, v22, v23);
      v18 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v17, "[NSOrderedSet countForObject:inRange:]", location, length, --v16);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v18, "[NSOrderedSet countForObject:inRange:]", location, length, v16);
    }

    else
    {
      v11 = _os_log_pack_size();
      v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v20, v21, v22);
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v13, "[NSOrderedSet countForObject:inRange:]", location, length);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v14, "[NSOrderedSet countForObject:inRange:]", location, length);
    }

    v19 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v12, v11];
    objc_exception_throw(v19);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self indexOfObject:object inRange:location, length]!= 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)countForObject:(id)object
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self indexOfObject:object]!= 0x7FFFFFFFFFFFFFFFLL;
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
    *(v13 + 4) = "[NSOrderedSet enumerateObjectsAtIndexes:options:usingBlock:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSOrderedSet enumerateObjectsAtIndexes:options:usingBlock:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet(s) & 1) == 0)
  {
    v11 = _os_log_pack_size();
    v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v18[0]);
    *v15 = 136315138;
    *(v15 + 4) = "[NSOrderedSet enumerateObjectsAtIndexes:options:usingBlock:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSOrderedSet enumerateObjectsAtIndexes:options:usingBlock:]");
    goto LABEL_14;
  }

  if (!block)
  {
    v11 = _os_log_pack_size();
    v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: block cannot be nil", v18[0]);
    *v16 = 136315138;
    *(v16 + 4) = "[NSOrderedSet enumerateObjectsAtIndexes:options:usingBlock:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSOrderedSet enumerateObjectsAtIndexes:options:usingBlock:]");
LABEL_14:
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v11];
    objc_exception_throw(v17);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xEFFFFFFFFFFFFFFELL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, block, opts | 0x1000000000000000, s);

  __NSOrderedSetEnumerate(self, block, opts | 0x1000000000000000, s);
}

- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill(v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9, 0, &dword_1830E6000, "*** %s: block cannot be nil", v13[0]);
    *v10 = 136315138;
    *(v10 + 4) = "[NSOrderedSet enumerateObjectsWithOptions:usingBlock:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSOrderedSet enumerateObjectsWithOptions:usingBlock:]");
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v12);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  if ((opts & 2) != 0)
  {
    opts &= ~1uLL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, block, opts, 0);

  __NSOrderedSetEnumerate(self, block, opts, 0);
}

- (void)enumerateObjectsUsingBlock:(void *)block
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, 0, &dword_1830E6000, "*** %s: block cannot be nil", v10[0]);
    *v7 = 136315138;
    *(v7 + 4) = "[NSOrderedSet enumerateObjectsUsingBlock:]";
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSOrderedSet enumerateObjectsUsingBlock:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  [(NSOrderedSet *)self enumerateObjectsWithOptions:0 usingBlock:block];
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
    *(v12 + 4) = "[NSOrderedSet getObjects:range:]";
    *(v12 + 12) = 2048;
    *(v12 + 14) = length;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSOrderedSet getObjects:range:]", length);
    goto LABEL_14;
  }

  if (range.length >> 61)
  {
    v10 = _os_log_pack_size();
    v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v25, v26);
    *v14 = 136315394;
    *(v14 + 4) = "[NSOrderedSet getObjects:range:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = length;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSOrderedSet getObjects:range:]", length);
LABEL_14:
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v10];
    objc_exception_throw(v15);
  }

  v9 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v21 = v9;
      v16 = _os_log_pack_size();
      v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v25, v26, v27, v28);
      v23 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[NSOrderedSet getObjects:range:]", location, length, --v21);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, "[NSOrderedSet getObjects:range:]", location, length, v21);
    }

    else
    {
      v16 = _os_log_pack_size();
      v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v25, v26, v27);
      v19 = __os_log_helper_1_2_3_8_32_8_0_8_0(v18, "[NSOrderedSet getObjects:range:]", location, length);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v19, "[NSOrderedSet getObjects:range:]", location, length);
    }

    v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v17, v16];
    objc_exception_throw(v24);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!length)
    {
      return;
    }
  }

  else if (!length)
  {
    return;
  }

  do
  {
    *v7++ = [(NSOrderedSet *)self objectAtIndex:location++];
    --length;
  }

  while (length);
}

- (void)getObjects:(id *)objects
{
  v20 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)self count];
  if (!objects && v6)
  {
    v7 = v6;
    v8 = _os_log_pack_size();
    v11 = &v19 - ((MEMORY[0x1EEE9AC00](v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v11, v8, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v19, v20);
    *v12 = 136315394;
    *(v12 + 4) = "[NSOrderedSet getObjects:]";
    *(v12 + 12) = 2048;
    *(v12 + 14) = v7;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSOrderedSet getObjects:]", v7);
    goto LABEL_11;
  }

  if (v6 >> 61)
  {
    v14 = v6;
    v8 = _os_log_pack_size();
    v11 = &v19 - ((MEMORY[0x1EEE9AC00](v8, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v11, v8, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v19, v20);
    *v17 = 136315394;
    *(v17 + 4) = "[NSOrderedSet getObjects:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = v14;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSOrderedSet getObjects:]", v14);
LABEL_11:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v8];
    objc_exception_throw(v18);
  }

  [(NSOrderedSet *)self getObjects:objects range:0, v6];
}

- (unint64_t)indexOfObject:(id)object inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v22 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v9 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v17 = v9;
      v12 = _os_log_pack_size();
      v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v21, v22, v23, v24);
      v19 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v18, "[NSOrderedSet indexOfObject:inRange:]", location, length, --v17);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v19, "[NSOrderedSet indexOfObject:inRange:]", location, length, v17);
    }

    else
    {
      v12 = _os_log_pack_size();
      v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v21, v22, v23);
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v14, "[NSOrderedSet indexOfObject:inRange:]", location, length);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v15, "[NSOrderedSet indexOfObject:inRange:]", location, length);
    }

    v20 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v13, v12];
    objc_exception_throw(v20);
  }

  result = [(NSOrderedSet *)self indexOfObject:object];
  if (result - location >= length)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = result;
  }

  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v11;
  }

  return result;
}

- (NSUInteger)indexOfObject:(id)object inSortedRange:(NSRange)range options:(NSBinarySearchingOptions)opts usingComparator:(NSComparator)cmp
{
  selfCopy = self;
  v52 = *MEMORY[0x1E69E9840];
  if (!object)
  {
    v36 = _os_log_pack_size();
    v37 = &v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill(v37, v36, 0, &dword_1830E6000, "*** %s: object cannot be nil", v49);
    *v38 = 136315138;
    *(v38 + 4) = "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]";
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]");
    goto LABEL_55;
  }

  if (!cmp)
  {
    v36 = _os_log_pack_size();
    v37 = &v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill(v37, v36, 0, &dword_1830E6000, "*** %s: comparator cannot be nil", v49);
    *v40 = 136315138;
    *(v40 + 4) = "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]";
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]");
LABEL_55:
    v41 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v39) osLogPack:0 size:v37, v36];
    objc_exception_throw(v41);
  }

  length = range.length;
  location = range.location;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(selfCopy, v6, __CFTSANTagMutableOrderedSet);
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
      v44 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v43, "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]", location, length, --v42);
      v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v44, "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]", location, length, v42);
    }

    else
    {
      v31 = _os_log_pack_size();
      v32 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = _os_log_pack_fill(v32, v31, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v49, v50, selfCopy);
      v34 = __os_log_helper_1_2_3_8_32_8_0_8_0(v33, "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]", location, length);
      v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v34, "[NSOrderedSet indexOfObject:inSortedRange:options:usingComparator:]", location, length);
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
  v16 = (*(cmp + 2))(cmp, [(objc_class *)selfCopy objectAtIndex:v14 - 1], object);
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

  v17 = (*(cmp + 2))(cmp, object, [(objc_class *)selfCopy objectAtIndex:location]);
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
      v19 = (*(cmp + 2))(cmp, [(objc_class *)selfCopy objectAtIndex:location + v21 / 2], object);
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
    *(v14 + 4) = "[NSOrderedSet indexOfObjectAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSOrderedSet indexOfObjectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet(s) & 1) == 0)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v19[0]);
    *v16 = 136315138;
    *(v16 + 4) = "[NSOrderedSet indexOfObjectAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSOrderedSet indexOfObjectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if (!predicate)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v19[0]);
    *v17 = 136315138;
    *(v17 + 4) = "[NSOrderedSet indexOfObjectAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet indexOfObjectAtIndexes:options:passingTest:]");
LABEL_14:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xCFFFFFFFFFFFFFFELL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, predicate, opts | 0x3000000000000000, s);

  return __NSOrderedSetGetIndexPassingTest(self, predicate, opts | 0x3000000000000000, s);
}

- (NSUInteger)indexOfObjectWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSOrderedSet indexOfObjectWithOptions:passingTest:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet indexOfObjectWithOptions:passingTest:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xDFFFFFFFFFFFFFFELL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, predicate, opts | 0x2000000000000000, 0);

  return __NSOrderedSetGetIndexPassingTest(self, predicate, opts | 0x2000000000000000, 0);
}

- (NSUInteger)indexOfObjectPassingTest:(void *)predicate
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSOrderedSet indexOfObjectPassingTest:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet indexOfObjectPassingTest:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self indexOfObjectWithOptions:0 passingTest:predicate];
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
    *(v14 + 4) = "[NSOrderedSet indexesOfObjectsAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSOrderedSet indexesOfObjectsAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet(s) & 1) == 0)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v19[0]);
    *v16 = 136315138;
    *(v16 + 4) = "[NSOrderedSet indexesOfObjectsAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSOrderedSet indexesOfObjectsAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if (!predicate)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v19[0]);
    *v17 = 136315138;
    *(v17 + 4) = "[NSOrderedSet indexesOfObjectsAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet indexesOfObjectsAtIndexes:options:passingTest:]");
LABEL_14:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xAFFFFFFFFFFFFFFELL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, predicate, opts | 0x5000000000000000, s);

  return __NSOrderedSetGetIndexesPassingTest(self, predicate, opts | 0x5000000000000000, s);
}

- (NSIndexSet)indexesOfObjectsWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSOrderedSet indexesOfObjectsWithOptions:passingTest:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet indexesOfObjectsWithOptions:passingTest:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  if ((opts & 2) != 0)
  {
    opts &= 0xBFFFFFFFFFFFFFFELL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, predicate, opts | 0x4000000000000000, 0);

  return __NSOrderedSetGetIndexesPassingTest(self, predicate, opts | 0x4000000000000000, 0);
}

- (NSIndexSet)indexesOfObjectsPassingTest:(void *)predicate
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSOrderedSet indexesOfObjectsPassingTest:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet indexesOfObjectsPassingTest:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self indexesOfObjectsWithOptions:0 passingTest:predicate];
}

- (BOOL)intersectsOrderedSet:(NSOrderedSet *)other
{
  selfCopy2 = other;
  v24 = *MEMORY[0x1E69E9840];
  if (other && (_NSIsNSOrderedSet(other) & 1) == 0)
  {
    v14 = _os_log_pack_size();
    v15 = _os_log_pack_fill(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v19[0]);
    *v15 = 136315138;
    *(v15 + 4) = "[NSOrderedSet intersectsOrderedSet:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSOrderedSet intersectsOrderedSet:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14];
    objc_exception_throw(v17);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)self count];
  v7 = [(NSOrderedSet *)selfCopy2 count];
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
  v10 = [(NSOrderedSet *)selfCopy countByEnumeratingWithState:&v20 objects:v19 count:16];
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

        if ([(NSOrderedSet *)selfCopy2 containsObject:*(*(&v20 + 1) + 8 * v13)])
        {
          LOBYTE(v10) = 1;
          return v10;
        }

        ++v13;
      }

      while (v11 != v13);
      v10 = [(NSOrderedSet *)selfCopy countByEnumeratingWithState:&v20 objects:v19 count:16];
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

- (BOOL)intersectsSet:(NSSet *)set
{
  selfCopy2 = set;
  v24 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSSet(set) & 1) == 0)
  {
    v14 = _os_log_pack_size();
    v15 = _os_log_pack_fill(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v19[0]);
    *v15 = 136315138;
    *(v15 + 4) = "[NSOrderedSet intersectsSet:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSOrderedSet intersectsSet:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14];
    objc_exception_throw(v17);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)self count];
  v7 = [(NSOrderedSet *)selfCopy2 count];
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
  v10 = [(NSOrderedSet *)selfCopy countByEnumeratingWithState:&v20 objects:v19 count:16];
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

        if ([(NSOrderedSet *)selfCopy2 containsObject:*(*(&v20 + 1) + 8 * v13)])
        {
          LOBYTE(v10) = 1;
          return v10;
        }

        ++v13;
      }

      while (v11 != v13);
      v10 = [(NSOrderedSet *)selfCopy countByEnumeratingWithState:&v20 objects:v19 count:16];
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

- (BOOL)isSubsetOfOrderedSet:(NSOrderedSet *)other
{
  v22 = *MEMORY[0x1E69E9840];
  if (other && (_NSIsNSOrderedSet(other) & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = _os_log_pack_fill(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v17[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSOrderedSet isSubsetOfOrderedSet:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSOrderedSet isSubsetOfOrderedSet:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13];
    objc_exception_throw(v16);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)self count];
  if (v6 > [(NSOrderedSet *)other count])
  {
    return 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(NSOrderedSet *)self countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(self);
        }

        if (![(NSOrderedSet *)other countForObject:*(*(&v18 + 1) + 8 * i)])
        {
          v12 = 0;
          return other && v12;
        }
      }

      v9 = [(NSOrderedSet *)self countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
  return other && v12;
}

- (BOOL)isSubsetOfSet:(NSSet *)set
{
  v22 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSSet(set) & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = _os_log_pack_fill(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v17[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSOrderedSet isSubsetOfSet:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSOrderedSet isSubsetOfSet:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13];
    objc_exception_throw(v16);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)self count];
  if (v6 > [(NSSet *)set count])
  {
    return 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(NSOrderedSet *)self countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(self);
        }

        if (![(NSSet *)set countForObject:*(*(&v18 + 1) + 8 * i)])
        {
          v12 = 0;
          return set && v12;
        }
      }

      v9 = [(NSOrderedSet *)self countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
  return set && v12;
}

- (id)objectAtIndexedSubscript:(NSUInteger)idx
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self objectAtIndex:idx];
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
    *(v14 + 4) = "[NSOrderedSet objectAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSOrderedSet objectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if ((_NSIsNSIndexSet(indexes) & 1) == 0)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v19[0]);
    *v16 = 136315138;
    *(v16 + 4) = "[NSOrderedSet objectAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSOrderedSet objectAtIndexes:options:passingTest:]");
    goto LABEL_14;
  }

  if (!test)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v19[0]);
    *v17 = 136315138;
    *(v17 + 4) = "[NSOrderedSet objectAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet objectAtIndexes:options:passingTest:]");
LABEL_14:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  v10 = [(NSOrderedSet *)self indexOfObjectAtIndexes:indexes options:options passingTest:test];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(NSOrderedSet *)self objectAtIndex:v10];
}

- (id)objectWithOptions:(unint64_t)options passingTest:(id)test
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSOrderedSet objectWithOptions:passingTest:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet objectWithOptions:passingTest:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v8 = [(NSOrderedSet *)self indexOfObjectWithOptions:options passingTest:test];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(NSOrderedSet *)self objectAtIndex:v8];
}

- (id)objectPassingTest:(id)test
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSOrderedSet objectPassingTest:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet objectPassingTest:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self objectWithOptions:0 passingTest:test];
}

- (NSArray)objectsAtIndexes:(NSIndexSet *)indexes
{
  v64 = *MEMORY[0x1E69E9840];
  if (!indexes)
  {
    v24 = _os_log_pack_size();
    v27 = &v63 - ((MEMORY[0x1EEE9AC00](v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = _os_log_pack_fill(v27, v24, 0, &dword_1830E6000, "*** %s: index set cannot be nil", v63);
    *v28 = 136315138;
    *(v28 + 4) = "[NSOrderedSet objectsAtIndexes:]";
    v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSOrderedSet objectsAtIndexes:]");
    v30 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v29) osLogPack:0 size:v27, v24];
    objc_exception_throw(v30);
  }

  if ((_NSIsNSIndexSet(indexes) & 1) == 0)
  {
    v31 = _os_log_pack_size();
    v34 = &v63 - ((MEMORY[0x1EEE9AC00](v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill(v34, v31, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v63);
    *v35 = 136315138;
    *(v35 + 4) = "[NSOrderedSet objectsAtIndexes:]";
    v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSOrderedSet objectsAtIndexes:]");
    v37 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v34, v31];
    objc_exception_throw(v37);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  if ((_NSIsNSIndexSet(indexes) & 1) == 0)
  {
    v38 = _os_log_pack_size();
    v41 = &v63 - ((MEMORY[0x1EEE9AC00](v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = _os_log_pack_fill(v41, v38, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v63);
    *v42 = 136315138;
    *(v42 + 4) = "[NSOrderedSet objectsAtIndexes:]";
    v43 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSOrderedSet objectsAtIndexes:]");
    v44 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v43) osLogPack:0 size:v41, v38];
    objc_exception_throw(v44);
  }

  v6 = [(NSOrderedSet *)self count];
  v7 = [0 count];
  lastIndex = [(NSIndexSet *)indexes lastIndex];
  v9 = lastIndex;
  if ((lastIndex & 0x8000000000000000) != 0)
  {
    v10 = v7 + v6;
    goto LABEL_26;
  }

  if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v7 + v6;
    if (v10 <= lastIndex)
    {
LABEL_26:
      if (!v10)
      {
        v45 = _os_log_pack_size();
        v48 = &v63 - ((MEMORY[0x1EEE9AC00](v45, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
        v49 = _os_log_pack_fill(v48, v45, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds for empty ordered set", v63, v64);
        *v49 = 136315394;
        *(v49 + 4) = "[NSOrderedSet objectsAtIndexes:]";
        *(v49 + 12) = 2048;
        *(v49 + 14) = v9;
        v50 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty ordered set", "[NSOrderedSet objectsAtIndexes:]", v9);
        v51 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v50) osLogPack:0 size:v48, v45];
        objc_exception_throw(v51);
      }

      v52 = _os_log_pack_size();
      v55 = &v63 - ((MEMORY[0x1EEE9AC00](v52, v53, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
      v56 = _os_log_pack_fill(v55, v52, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds [0 .. %lu]", v63, v64, v65);
      v57 = v10 - 1;
      v58 = __os_log_helper_1_2_3_8_32_8_0_8_0(v56, "[NSOrderedSet objectsAtIndexes:]", v9, v57);
      v59 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v58, "[NSOrderedSet objectsAtIndexes:]", v9, v57);
      v60 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v59) osLogPack:0 size:v55, v52];
      objc_exception_throw(v60);
    }
  }

  v11 = [(NSIndexSet *)indexes count];
  v12 = v11;
  if (v11 >> 60)
  {
    v61 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v11);
    v62 = [NSException exceptionWithName:@"NSGenericException" reason:v61 userInfo:0];
    CFRelease(v61);
    objc_exception_throw(v62);
  }

  v63 = 0;
  if (v11 <= 1)
  {
    v11 = 1;
  }

  v13 = _CFCreateArrayStorage(v11, 0, &v63);
  v14 = 0;
  v15 = 0;
  while (v14 < [(NSIndexSet *)indexes rangeCount:v63])
  {
    v16 = [(NSIndexSet *)indexes rangeAtIndex:v14];
    v18 = v17;
    [(NSOrderedSet *)self getObjects:&v13[v15] range:v16, v17];
    v15 += v18;
    ++v14;
  }

  if (v13)
  {
    if (v12)
    {
      v19 = v13;
      v20 = v12;
      do
      {
        v21 = *v19++;
        --v20;
      }

      while (v20);
    }

    v22 = [[NSArray alloc] _initByAdoptingBuffer:v13 count:v12 size:v12];
  }

  else
  {
    v22 = [[NSArray alloc] initWithObjects:0 count:v12];
  }

  return v22;
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
    *(v14 + 4) = "[NSOrderedSet objectsAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSOrderedSet objectsAtIndexes:options:passingTest:]");
    goto LABEL_12;
  }

  if ((_NSIsNSIndexSet(indexes) & 1) == 0)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v19[0]);
    *v16 = 136315138;
    *(v16 + 4) = "[NSOrderedSet objectsAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSOrderedSet objectsAtIndexes:options:passingTest:]");
    goto LABEL_12;
  }

  if (!test)
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v19[0]);
    *v17 = 136315138;
    *(v17 + 4) = "[NSOrderedSet objectsAtIndexes:options:passingTest:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet objectsAtIndexes:options:passingTest:]");
LABEL_12:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  v10 = [(NSOrderedSet *)self objectsAtIndexes:[(NSOrderedSet *)self indexesOfObjectsAtIndexes:indexes options:options passingTest:test]];

  return [NSOrderedSet orderedSetWithArray:v10];
}

- (id)objectsWithOptions:(unint64_t)options passingTest:(id)test
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSOrderedSet objectsWithOptions:passingTest:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet objectsWithOptions:passingTest:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v8 = [(NSOrderedSet *)self objectsAtIndexes:[(NSOrderedSet *)self indexesOfObjectsWithOptions:options passingTest:test]];

  return [NSOrderedSet orderedSetWithArray:v8];
}

- (id)objectsPassingTest:(id)test
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSOrderedSet objectsPassingTest:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSOrderedSet objectsPassingTest:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self objectsWithOptions:0 passingTest:test];
}

- (NSOrderedSet)reversedOrderedSet
{
  v2 = [[__NSOrderedSetReversed alloc] initWithOrderedSet:self];

  return v2;
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
    *(v37 + 4) = "[NSOrderedSet sortedArrayFromRange:options:usingComparator:]";
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSOrderedSet sortedArrayFromRange:options:usingComparator:]");
    v39 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v36, v33];
    objc_exception_throw(v39);
  }

  length = range.length;
  location = range.location;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  v11 = [(NSOrderedSet *)self count];
  if (!length || (v14 = v11) == 0)
  {
    selfCopy = NSArray;
    goto LABEL_12;
  }

  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    v40 = _os_log_pack_size();
    v43 = &v50 - ((MEMORY[0x1EEE9AC00](v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = _os_log_pack_fill(v43, v40, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v50, v51, v52, v53);
    v45 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v44, "[NSOrderedSet sortedArrayFromRange:options:usingComparator:]", location, length, v14 - 1);
    v46 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v45, "[NSOrderedSet sortedArrayFromRange:options:usingComparator:]", location, length, v14 - 1);
    v47 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v46) osLogPack:0 size:v43, v40];
    objc_exception_throw(v47);
  }

  if (v11 == 1)
  {
    selfCopy = self;
LABEL_12:

    return [(NSOrderedSet *)selfCopy array];
  }

  if (length == 1)
  {
    v17 = [(NSOrderedSet *)self objectAtIndex:location];

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
    v22 = [(NSOrderedSet *)self getObjects:v19 range:location, length];
    MEMORY[0x1EEE9AC00](v22, v23, v24);
    v26 = &v50 - v25;
    v27 = &v50 - v25;
    if (length > 0x1000)
    {
      v27 = malloc_type_malloc(8 * length, 0x100004000313F17uLL);
    }

    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __61__NSOrderedSet_sortedArrayFromRange_options_usingComparator___block_invoke;
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

- (NSArray)sortedArrayWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!cmptr)
  {
    v10 = _os_log_pack_size();
    v13 = v17 - ((MEMORY[0x1EEE9AC00](v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v10, 0, &dword_1830E6000, "*** %s: comparator cannot be nil", v17[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSOrderedSet sortedArrayWithOptions:usingComparator:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSOrderedSet sortedArrayWithOptions:usingComparator:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v10];
    objc_exception_throw(v16);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v8 = [(NSOrderedSet *)self count];

  return [(NSOrderedSet *)self sortedArrayFromRange:0 options:v8 usingComparator:opts, cmptr];
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
    *(v12 + 4) = "[NSOrderedSet sortedArrayUsingComparator:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSOrderedSet sortedArrayUsingComparator:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v8];
    objc_exception_throw(v14);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)self count];

  return [(NSOrderedSet *)self sortedArrayFromRange:0 options:v6 usingComparator:0, cmptr];
}

- (NSString)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
  v35 = locale;
  v36[1] = *MEMORY[0x1E69E9840];
  if (level >= 0x64)
  {
    v6 = 100;
  }

  else
  {
    v6 = level;
  }

  v7 = [(NSOrderedSet *)self count];
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

  [(NSOrderedSet *)self getObjects:v13 range:0, v10];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v33 = &__kCFAllocatorSystemDefault;
  v34 = v14;
  v31 = objc_autoreleasePoolPush();
  v32 = level;
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
        _stringRepresentation = [v18 descriptionWithLocale:v35 indent:v6 + 1];
      }

      else if (objc_opt_respondsToSelector())
      {
        _stringRepresentation = [v18 descriptionWithLocale:v35];
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
  if (v32)
  {
    do
    {
      CFStringAppend(v22, @"    ");
      --v6;
    }

    while (v6);
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
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self descriptionWithLocale:locale indent:0];
}

- (unint64_t)hash
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  return [(NSOrderedSet *)self count];
}

- (BOOL)isEqualToOrderedSet:(NSOrderedSet *)other
{
  v4 = MEMORY[0x1EEE9AC00](self, a2, other);
  v6 = v5;
  v7 = v4;
  v25[256] = *MEMORY[0x1E69E9840];
  if (v5 && (_NSIsNSOrderedSet(v5) & 1) == 0)
  {
    v15 = _os_log_pack_size();
    v18 = &v24[-((MEMORY[0x1EEE9AC00](v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v19 = _os_log_pack_fill(v18, v15, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v23);
    *v19 = 136315138;
    *(v19 + 4) = "[NSOrderedSet isEqualToOrderedSet:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSOrderedSet isEqualToOrderedSet:]");
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v15];
    objc_exception_throw(v21);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(v7, v3, __CFTSANTagMutableOrderedSet);
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
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else if (equal)
  {
    v6 = _NSIsNSOrderedSet(equal);
    if (v6)
    {

      LOBYTE(v6) = [(NSOrderedSet *)self isEqualToOrderedSet:equal];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (NSOrderedSet)allocWithZone:(_NSZone *)zone
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSOrderedSet == self)
  {

    return __NSOrderedSetImmutablePlaceholder();
  }

  else if (NSMutableOrderedSet == self)
  {

    return __NSOrderedSetMutablePlaceholder();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___NSOrderedSet;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, zone);
  }
}

+ (id)newOrderedSetWithObjects:(const void *)objects count:(unint64_t)count
{
  v24 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v14 = _os_log_pack_size();
    v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v23, v24);
    *v20 = 136315394;
    *(v20 + 4) = "+[NSOrderedSet newOrderedSetWithObjects:count:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "+[NSOrderedSet newOrderedSetWithObjects:count:]", count);
    goto LABEL_18;
  }

  if (count >> 61)
  {
    v14 = _os_log_pack_size();
    v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v23, v24);
    *v22 = 136315394;
    *(v22 + 4) = "+[NSOrderedSet newOrderedSetWithObjects:count:]";
    *(v22 + 12) = 2048;
    *(v22 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "+[NSOrderedSet newOrderedSetWithObjects:count:]", count);
    goto LABEL_18;
  }

  if (count)
  {
    v10 = 0;
    while (objects[v10])
    {
      if (count == ++v10)
      {
        goto LABEL_8;
      }
    }

    v13 = v10;
    v14 = _os_log_pack_size();
    v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]", v23, v24);
    *v16 = 136315394;
    *(v16 + 4) = "+[NSOrderedSet newOrderedSetWithObjects:count:]";
    *(v16 + 12) = 2048;
    *(v16 + 14) = v13;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "+[NSOrderedSet newOrderedSetWithObjects:count:]", v13);
LABEL_18:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v14];
    objc_exception_throw(v18);
  }

LABEL_8:
  if (NSOrderedSet == self)
  {

    return __NSOrderedSetI_new(objects, count, 1);
  }

  else
  {
    if (NSMutableOrderedSet != self)
    {
      v12 = __CFLookUpClass("NSOrderedSet");
      __CFRequireConcreteImplementation(v12, self, a2);
    }

    return __NSOrderedSetM_new(objects, count, 1, count, v4, v5, v6, v7);
  }
}

- (NSOrderedSet)initWithArray:(NSArray *)set range:(NSRange)range copyItems:(BOOL)flag
{
  v5 = flag;
  length = range.length;
  location = range.location;
  v50 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSArray(set) & 1) == 0)
  {
    v33 = _os_log_pack_size();
    v36 = &v49 - ((MEMORY[0x1EEE9AC00](v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = _os_log_pack_fill(v36, v33, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v49);
    *v37 = 136315138;
    *(v37 + 4) = "[NSOrderedSet initWithArray:range:copyItems:]";
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSOrderedSet initWithArray:range:copyItems:]");
    v39 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v36, v33];
    objc_exception_throw(v39);
  }

  v10 = [(NSArray *)set count];
  v13 = v10;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v10 < location + length)
  {
    if (!v10)
    {
      v23 = _os_log_pack_size();
      v26 = &v49 - ((MEMORY[0x1EEE9AC00](v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = _os_log_pack_fill(v26, v23, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v49, v50, v51);
      v28 = __os_log_helper_1_2_3_8_32_8_0_8_0(v27, "[NSOrderedSet initWithArray:range:copyItems:]", location, length);
      v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v28, "[NSOrderedSet initWithArray:range:copyItems:]", location, length);
      v30 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v29) osLogPack:0 size:v26, v23];
      objc_exception_throw(v30);
    }

    v40 = _os_log_pack_size();
    v43 = &v49 - ((MEMORY[0x1EEE9AC00](v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = _os_log_pack_fill(v43, v40, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v49, v50, v51, v52);
    v45 = v13 - 1;
    v46 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v44, "[NSOrderedSet initWithArray:range:copyItems:]", location, length, v45);
    v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v46, "[NSOrderedSet initWithArray:range:copyItems:]", location, length, v45);
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

  [(NSArray *)set getObjects:v17 range:location, length, v49, v50];
  if (!length)
  {
    v5 = 0;
  }

  if (v5)
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

  v21 = [(NSOrderedSet *)self initWithObjects:v17 count:length];
  if (v5)
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

- (NSOrderedSet)initWithArray:(NSArray *)set copyItems:(BOOL)flag
{
  v4 = flag;
  v7 = [(NSArray *)set count];

  return [(NSOrderedSet *)self initWithArray:set range:0 copyItems:v7, v4];
}

- (NSOrderedSet)initWithArray:(NSArray *)array
{
  v5 = [(NSArray *)array count];

  return [(NSOrderedSet *)self initWithArray:array range:0 copyItems:v5, 0];
}

- (NSOrderedSet)initWithObject:(id)object
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = object;
  return [(NSOrderedSet *)self initWithObjects:v4 count:1];
}

- (NSOrderedSet)initWithObjects:(id)firstObj
{
  va_start(va, firstObj);
  v21 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v5 = 0;
  if (firstObj)
  {
    va_copy(v20, va);
    do
    {
      v6 = v20;
      v20 += 8;
      ++v5;
    }

    while (*v6);
    if (v5 >> 60)
    {
      v16 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5);
      v17 = [NSException exceptionWithName:@"NSGenericException" reason:v16 userInfo:0];
      CFRelease(v16);
      objc_exception_throw(v17);
    }
  }

  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = MEMORY[0x1EEE9AC00](v7, a2, firstObj);
  v10 = (&v18 - v9);
  v19 = 0;
  if (v5 >= 0x101)
  {
    v10 = _CFCreateArrayStorage(v8, 0, &v19);
    va_copy(v20, va);
    *v10 = firstObj;
    v11 = v10;
LABEL_13:
    for (i = 1; i != v5; ++i)
    {
      v13 = v20;
      v20 += 8;
      v10[i] = *v13;
    }

    goto LABEL_15;
  }

  v11 = 0;
  if (v5)
  {
    va_copy(v20, va);
    *v10 = firstObj;
    if (v5 != 1)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  v14 = [NSOrderedSet initWithObjects:"initWithObjects:count:" count:?];
  free(v11);
  return v14;
}

- (NSOrderedSet)initWithOrderedSet:(NSOrderedSet *)set range:(NSRange)range copyItems:(BOOL)flag
{
  v5 = flag;
  length = range.length;
  location = range.location;
  v50 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v33 = _os_log_pack_size();
    v36 = &v49 - ((MEMORY[0x1EEE9AC00](v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = _os_log_pack_fill(v36, v33, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v49);
    *v37 = 136315138;
    *(v37 + 4) = "[NSOrderedSet initWithOrderedSet:range:copyItems:]";
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSOrderedSet initWithOrderedSet:range:copyItems:]");
    v39 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v36, v33];
    objc_exception_throw(v39);
  }

  v10 = [(NSOrderedSet *)set count];
  v13 = v10;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v10 < location + length)
  {
    if (!v10)
    {
      v23 = _os_log_pack_size();
      v26 = &v49 - ((MEMORY[0x1EEE9AC00](v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = _os_log_pack_fill(v26, v23, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v49, v50, v51);
      v28 = __os_log_helper_1_2_3_8_32_8_0_8_0(v27, "[NSOrderedSet initWithOrderedSet:range:copyItems:]", location, length);
      v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v28, "[NSOrderedSet initWithOrderedSet:range:copyItems:]", location, length);
      v30 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v29) osLogPack:0 size:v26, v23];
      objc_exception_throw(v30);
    }

    v40 = _os_log_pack_size();
    v43 = &v49 - ((MEMORY[0x1EEE9AC00](v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = _os_log_pack_fill(v43, v40, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v49, v50, v51, v52);
    v45 = v13 - 1;
    v46 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v44, "[NSOrderedSet initWithOrderedSet:range:copyItems:]", location, length, v45);
    v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v46, "[NSOrderedSet initWithOrderedSet:range:copyItems:]", location, length, v45);
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

  [(NSOrderedSet *)set getObjects:v17 range:location, length, v49, v50];
  if (!length)
  {
    v5 = 0;
  }

  if (v5)
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

  v21 = [(NSOrderedSet *)self initWithObjects:v17 count:length];
  if (v5)
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

- (NSOrderedSet)initWithOrderedSet:(NSOrderedSet *)set copyItems:(BOOL)flag
{
  v4 = flag;
  v7 = [(NSOrderedSet *)set count];

  return [(NSOrderedSet *)self initWithOrderedSet:set range:0 copyItems:v7, v4];
}

- (NSOrderedSet)initWithOrderedSet:(NSOrderedSet *)set
{
  v5 = [(NSOrderedSet *)set count];

  return [(NSOrderedSet *)self initWithOrderedSet:set range:0 copyItems:v5, 0];
}

- (NSOrderedSet)initWithSet:(NSSet *)set copyItems:(BOOL)flag
{
  v4 = flag;
  v29 = *MEMORY[0x1E69E9840];
  if (set && (_NSIsNSSet(set) & 1) == 0)
  {
    v21 = _os_log_pack_size();
    v24 = &v28 - ((MEMORY[0x1EEE9AC00](v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = _os_log_pack_fill(v24, v21, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v28);
    *v25 = 136315138;
    *(v25 + 4) = "[NSOrderedSet initWithSet:copyItems:]";
    v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSOrderedSet initWithSet:copyItems:]");
    v27 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v26) osLogPack:0 size:v24, v21];
    objc_exception_throw(v27);
  }

  v7 = [(NSSet *)set count];
  v10 = v7;
  if (v7 >> 60)
  {
    v19 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7);
    v20 = [NSException exceptionWithName:@"NSGenericException" reason:v19 userInfo:0];
    CFRelease(v19);
    objc_exception_throw(v20);
  }

  if (v7 <= 1)
  {
    v7 = 1;
  }

  v11 = MEMORY[0x1EEE9AC00](v7, v8, v9);
  v13 = (&v28 - v12);
  v28 = 0;
  if (v10 >= 0x101)
  {
    v13 = _CFCreateArrayStorage(v11, 0, &v28);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  [(NSSet *)set getObjects:v13 count:v10, v28, v29];
  if (!v10)
  {
    v4 = 0;
  }

  if (v4)
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

  v17 = [(NSOrderedSet *)self initWithObjects:v13 count:v10];
  if (v4)
  {
    do
    {

      --v10;
    }

    while (v10);
  }

  free(v14);
  return v17;
}

+ (NSOrderedSet)orderedSetWithObjects:(id *)objects count:(NSUInteger)cnt
{
  v4 = [[self alloc] initWithObjects:objects count:cnt];

  return v4;
}

+ (NSOrderedSet)orderedSetWithObject:(id)object
{
  OrderedSet = __createOrderedSet([self alloc], object);

  return OrderedSet;
}

+ (NSOrderedSet)orderedSetWithObjects:(id)firstObj
{
  va_start(va, firstObj);
  v21 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v5 = 0;
  if (firstObj)
  {
    va_copy(v20, va);
    do
    {
      v6 = v20;
      v20 += 8;
      ++v5;
    }

    while (*v6);
    if (v5 >> 60)
    {
      v16 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5);
      v17 = [NSException exceptionWithName:@"NSGenericException" reason:v16 userInfo:0];
      CFRelease(v16);
      objc_exception_throw(v17);
    }
  }

  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = MEMORY[0x1EEE9AC00](v7, a2, firstObj);
  v10 = (&v18 - v9);
  v19 = 0;
  if (v5 >= 0x101)
  {
    v10 = _CFCreateArrayStorage(v8, 0, &v19);
    va_copy(v20, va);
    *v10 = firstObj;
    v11 = v10;
LABEL_13:
    for (i = 1; i != v5; ++i)
    {
      v13 = v20;
      v20 += 8;
      v10[i] = *v13;
    }

    goto LABEL_15;
  }

  v11 = 0;
  if (v5)
  {
    va_copy(v20, va);
    *v10 = firstObj;
    if (v5 != 1)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  v14 = [[self alloc] initWithObjects:v10 count:v5];
  free(v11);
  return v14;
}

+ (NSOrderedSet)orderedSetWithArray:(NSArray *)array range:(NSRange)range copyItems:(BOOL)flag
{
  v5 = [[self alloc] initWithArray:array range:range.location copyItems:{range.length, flag}];

  return v5;
}

+ (NSOrderedSet)orderedSetWithArray:(id)array range:(_NSRange)range
{
  v4 = [[self alloc] initWithArray:array range:range.location copyItems:{range.length, 0}];

  return v4;
}

+ (NSOrderedSet)orderedSetWithArray:(id)array copyItems:(BOOL)items
{
  v4 = [[self alloc] initWithArray:array range:0 copyItems:{objc_msgSend(array, "count"), items}];

  return v4;
}

+ (NSOrderedSet)orderedSetWithArray:(NSArray *)array
{
  v3 = [[self alloc] initWithArray:array range:0 copyItems:{-[NSArray count](array, "count"), 0}];

  return v3;
}

+ (NSOrderedSet)orderedSetWithOrderedSet:(NSOrderedSet *)set range:(NSRange)range copyItems:(BOOL)flag
{
  v5 = [[self alloc] initWithOrderedSet:set range:range.location copyItems:{range.length, flag}];

  return v5;
}

+ (NSOrderedSet)orderedSetWithOrderedSet:(id)set range:(_NSRange)range
{
  v4 = [[self alloc] initWithOrderedSet:set range:range.location copyItems:{range.length, 0}];

  return v4;
}

+ (NSOrderedSet)orderedSetWithOrderedSet:(id)set copyItems:(BOOL)items
{
  v4 = [[self alloc] initWithOrderedSet:set range:0 copyItems:{objc_msgSend(set, "count"), items}];

  return v4;
}

+ (NSOrderedSet)orderedSetWithOrderedSet:(NSOrderedSet *)set
{
  v3 = [[self alloc] initWithOrderedSet:set range:0 copyItems:{-[NSOrderedSet count](set, "count"), 0}];

  return v3;
}

+ (NSOrderedSet)orderedSetWithSet:(NSSet *)set copyItems:(BOOL)flag
{
  v4 = [[self alloc] initWithSet:set copyItems:flag];

  return v4;
}

+ (NSOrderedSet)orderedSetWithSet:(NSSet *)set
{
  v3 = [[self alloc] initWithSet:set copyItems:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [NSOrderedSet allocWithZone:zone];
  v7 = [(NSOrderedSet *)self count];

  return [(NSOrderedSet *)v6 initWithOrderedSet:self range:0 copyItems:v7, 0];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)NSMutableOrderedSet allocWithZone:zone];
  v7 = [(NSOrderedSet *)self count];

  return [(NSOrderedSet *)v6 initWithOrderedSet:self range:0 copyItems:v7, 0];
}

- (NSUInteger)count
{
  OUTLINED_FUNCTION_0_23();
  v2 = __CFLookUpClass("NSOrderedSet");
  OUTLINED_FUNCTION_1_16(v2);
}

- (NSUInteger)indexOfObject:(id)object
{
  OUTLINED_FUNCTION_0_23();
  v3 = __CFLookUpClass("NSOrderedSet");
  OUTLINED_FUNCTION_1_16(v3);
}

- (id)objectAtIndex:(NSUInteger)idx
{
  OUTLINED_FUNCTION_0_23();
  v3 = __CFLookUpClass("NSOrderedSet");
  OUTLINED_FUNCTION_1_16(v3);
}

- (NSOrderedSet)initWithObjects:(id *)objects count:(NSUInteger)cnt
{
  OUTLINED_FUNCTION_0_23();
  v4 = __CFLookUpClass("NSOrderedSet");
  OUTLINED_FUNCTION_1_16(v4);
}

@end