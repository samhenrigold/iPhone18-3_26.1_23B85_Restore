@interface NSMutableOrderedSet
+ (NSMutableOrderedSet)orderedSetWithCapacity:(NSUInteger)numItems;
- (NSMutableOrderedSet)initWithCapacity:(NSUInteger)numItems;
- (NSMutableOrderedSet)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)sortedArrayFromRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator;
- (void)addObject:(id)object;
- (void)addObjects:(id *)objects count:(NSUInteger)count;
- (void)addObjectsFromArray:(NSArray *)array;
- (void)addObjectsFromArray:(id)array range:(_NSRange)range;
- (void)addObjectsFromOrderedSet:(id)set;
- (void)addObjectsFromOrderedSet:(id)set range:(_NSRange)range;
- (void)addObjectsFromSet:(id)set;
- (void)exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2;
- (void)insertObject:(id)object atIndex:(NSUInteger)idx;
- (void)insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes;
- (void)insertObjects:(const void *)objects count:(unint64_t)count atIndex:(unint64_t)index;
- (void)insertObjectsFromArray:(id)array atIndex:(unint64_t)index;
- (void)insertObjectsFromArray:(id)array range:(_NSRange)range atIndex:(unint64_t)index;
- (void)insertObjectsFromOrderedSet:(id)set atIndex:(unint64_t)index;
- (void)insertObjectsFromOrderedSet:(id)set range:(_NSRange)range atIndex:(unint64_t)index;
- (void)insertObjectsFromSet:(id)set atIndex:(unint64_t)index;
- (void)intersectOrderedSet:(NSOrderedSet *)other;
- (void)intersectSet:(NSSet *)other;
- (void)minusOrderedSet:(NSOrderedSet *)other;
- (void)minusSet:(NSSet *)other;
- (void)moveObjectsAtIndexes:(NSIndexSet *)indexes toIndex:(NSUInteger)idx;
- (void)removeAllObjects;
- (void)removeFirstObject;
- (void)removeLastObject;
- (void)removeObject:(id)object;
- (void)removeObject:(id)object inRange:(_NSRange)range;
- (void)removeObjectAtIndex:(NSUInteger)idx;
- (void)removeObjectsAtIndexes:(NSIndexSet *)indexes;
- (void)removeObjectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test;
- (void)removeObjectsInArray:(NSArray *)array;
- (void)removeObjectsInArray:(id)array range:(_NSRange)range;
- (void)removeObjectsInOrderedSet:(id)set;
- (void)removeObjectsInOrderedSet:(id)set range:(_NSRange)range;
- (void)removeObjectsInRange:(NSRange)range;
- (void)removeObjectsInRange:(_NSRange)range inArray:(id)array;
- (void)removeObjectsInRange:(_NSRange)range inArray:(id)array range:(_NSRange)a5;
- (void)removeObjectsInRange:(_NSRange)range inOrderedSet:(id)set;
- (void)removeObjectsInRange:(_NSRange)range inOrderedSet:(id)set range:(_NSRange)a5;
- (void)removeObjectsInRange:(_NSRange)range inSet:(id)set;
- (void)removeObjectsInSet:(id)set;
- (void)removeObjectsPassingTest:(id)test;
- (void)removeObjectsWithOptions:(unint64_t)options passingTest:(id)test;
- (void)replaceObject:(id)object;
- (void)replaceObject:(id)object inRange:(_NSRange)range;
- (void)replaceObjectAtIndex:(NSUInteger)idx withObject:(id)object;
- (void)replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray *)objects;
- (void)replaceObjectsInRange:(NSRange)range withObjects:(id *)objects count:(NSUInteger)count;
- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromArray:(id)array;
- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromArray:(id)array range:(_NSRange)a5;
- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromOrderedSet:(id)set;
- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromOrderedSet:(id)set range:(_NSRange)a5;
- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromSet:(id)set;
- (void)setArray:(id)array;
- (void)setObject:(id)obj atIndex:(NSUInteger)idx;
- (void)setObject:(id)object;
- (void)setOrderedSet:(id)set;
- (void)setSet:(id)set;
- (void)sortRange:(NSRange)range options:(NSSortOptions)opts usingComparator:(NSComparator)cmptr;
- (void)sortUsingComparator:(NSComparator)cmptr;
- (void)sortWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr;
- (void)unionOrderedSet:(NSOrderedSet *)other;
- (void)unionSet:(NSSet *)other;
@end

@implementation NSMutableOrderedSet

- (void)addObject:(id)object
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: object cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSMutableOrderedSet addObject:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableOrderedSet addObject:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  if (!object)
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = [(NSOrderedSet *)self count];

  [(NSMutableOrderedSet *)self insertObject:object atIndex:v6];
}

- (void)addObjects:(id *)objects count:(NSUInteger)count
{
  v21 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (objects)
    {
      goto LABEL_4;
    }
  }

  else if (objects)
  {
    goto LABEL_4;
  }

  if (count)
  {
    v14 = _os_log_pack_size();
    v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v20, v21);
    *v16 = 136315394;
    *(v16 + 4) = "[NSMutableOrderedSet addObjects:count:]";
    *(v16 + 12) = 2048;
    *(v16 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableOrderedSet addObjects:count:]", count);
    goto LABEL_17;
  }

LABEL_4:
  if (count >> 61)
  {
    v14 = _os_log_pack_size();
    v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v20, v21);
    *v18 = 136315394;
    *(v18 + 4) = "[NSMutableOrderedSet addObjects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableOrderedSet addObjects:count:]", count);
LABEL_17:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v14];
    objc_exception_throw(v19);
  }

  if (count)
  {
    v8 = 0;
    do
    {
      if (!objects[v8])
      {
        v10 = _os_log_pack_size();
        v11 = _os_log_pack_fill(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]", v20, v21);
        *v11 = 136315394;
        *(v11 + 4) = "[NSMutableOrderedSet addObjects:count:]";
        *(v11 + 12) = 2048;
        *(v11 + 14) = v8;
        v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableOrderedSet addObjects:count:]", v8);
        v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
        objc_exception_throw(v13);
      }

      ++v8;
    }

    while (count != v8);
  }

  v9 = [(NSOrderedSet *)self count];

  [(NSMutableOrderedSet *)self insertObjects:objects count:count atIndex:v9];
}

- (void)addObjectsFromArray:(id)array range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v25 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!array)
    {
      goto LABEL_4;
    }
  }

  else if (!array)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(array) & 1) == 0)
  {
    v16 = _os_log_pack_size();
    v17 = _os_log_pack_fill(&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v24);
    *v17 = 136315138;
    *(v17 + 4) = "[NSMutableOrderedSet addObjectsFromArray:range:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet addObjectsFromArray:range:]");
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16];
    objc_exception_throw(v19);
  }

LABEL_4:
  v9 = [array count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v20 = v9;
      v11 = _os_log_pack_size();
      v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v24, v25, v26, v27);
      v22 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v21, "[NSMutableOrderedSet addObjectsFromArray:range:]", location, length, --v20);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v22, "[NSMutableOrderedSet addObjectsFromArray:range:]", location, length, v20);
    }

    else
    {
      v11 = _os_log_pack_size();
      v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v24, v25, v26);
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v13, "[NSMutableOrderedSet addObjectsFromArray:range:]", location, length);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v14, "[NSMutableOrderedSet addObjectsFromArray:range:]", location, length);
    }

    v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v12, v11];
    objc_exception_throw(v23);
  }

  v10 = [(NSOrderedSet *)self count];

  [(NSMutableOrderedSet *)self insertObjectsFromArray:array range:location atIndex:length, v10];
}

- (void)addObjectsFromArray:(NSArray *)array
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!array)
    {
      goto LABEL_4;
    }
  }

  else if (!array)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(array) & 1) == 0)
  {
    v8 = _os_log_pack_size();
    v11 = v15 - ((MEMORY[0x1EEE9AC00](v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v11, v8, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v15[0]);
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableOrderedSet addObjectsFromArray:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet addObjectsFromArray:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v8];
    objc_exception_throw(v14);
  }

LABEL_4:
  v6 = [(NSOrderedSet *)self count];
  v7 = [(NSArray *)array count];

  [(NSMutableOrderedSet *)self insertObjectsFromArray:array range:0 atIndex:v7, v6];
}

- (void)addObjectsFromOrderedSet:(id)set range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v25 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v16 = _os_log_pack_size();
    v17 = _os_log_pack_fill(&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v24);
    *v17 = 136315138;
    *(v17 + 4) = "[NSMutableOrderedSet addObjectsFromOrderedSet:range:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet addObjectsFromOrderedSet:range:]");
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16];
    objc_exception_throw(v19);
  }

LABEL_4:
  v9 = [set count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v20 = v9;
      v11 = _os_log_pack_size();
      v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v24, v25, v26, v27);
      v22 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v21, "[NSMutableOrderedSet addObjectsFromOrderedSet:range:]", location, length, --v20);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v22, "[NSMutableOrderedSet addObjectsFromOrderedSet:range:]", location, length, v20);
    }

    else
    {
      v11 = _os_log_pack_size();
      v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v24, v25, v26);
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v13, "[NSMutableOrderedSet addObjectsFromOrderedSet:range:]", location, length);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v14, "[NSMutableOrderedSet addObjectsFromOrderedSet:range:]", location, length);
    }

    v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v12, v11];
    objc_exception_throw(v23);
  }

  v10 = [(NSOrderedSet *)self count];

  [(NSMutableOrderedSet *)self insertObjectsFromOrderedSet:set range:location atIndex:length, v10];
}

- (void)addObjectsFromOrderedSet:(id)set
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v8 = _os_log_pack_size();
    v11 = v15 - ((MEMORY[0x1EEE9AC00](v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v11, v8, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v15[0]);
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableOrderedSet addObjectsFromOrderedSet:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet addObjectsFromOrderedSet:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v8];
    objc_exception_throw(v14);
  }

LABEL_4:
  v6 = [(NSOrderedSet *)self count];
  v7 = [set count];

  [(NSMutableOrderedSet *)self insertObjectsFromOrderedSet:set range:0 atIndex:v7, v6];
}

- (void)addObjectsFromSet:(id)set
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(set) & 1) == 0)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSMutableOrderedSet addObjectsFromSet:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet addObjectsFromSet:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

LABEL_4:
  v6 = [(NSOrderedSet *)self count];

  [(NSMutableOrderedSet *)self insertObjectsFromSet:set atIndex:v6];
}

- (void)exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2
{
  v32 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v8 = [(NSOrderedSet *)self count];
  if ((idx1 & 0x8000000000000000) != 0 || v8 <= idx1)
  {
    if (v8)
    {
      v22 = v8;
      v14 = _os_log_pack_size();
      v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v31, v32, v33);
      v24 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]", idx1, --v22);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v24, "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]", idx1, v22);
    }

    else
    {
      v14 = _os_log_pack_size();
      v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v31, v32);
      *v16 = 136315394;
      *(v16 + 4) = "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]";
      *(v16 + 12) = 2048;
      *(v16 + 14) = idx1;
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]", idx1);
    }

    v25 = _CFAutoreleasePoolAddObject(0, v17);
    v26 = v15;
    v27 = v14;
LABEL_24:
    objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v25 userInfo:0 osLogPack:v26 size:v27]);
  }

  v9 = [(NSOrderedSet *)self count];
  if ((idx2 & 0x8000000000000000) != 0 || v9 <= idx2)
  {
    if (v9)
    {
      v28 = v9;
      v18 = _os_log_pack_size();
      v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = _os_log_pack_fill(v19, v18, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v31, v32, v33);
      v30 = __os_log_helper_1_2_3_8_32_8_0_8_0(v29, "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]", idx2, --v28);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v30, "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]", idx2, v28);
    }

    else
    {
      v18 = _os_log_pack_size();
      v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = _os_log_pack_fill(v19, v18, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v31, v32);
      *v20 = 136315394;
      *(v20 + 4) = "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]";
      *(v20 + 12) = 2048;
      *(v20 + 14) = idx2;
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet exchangeObjectAtIndex:withObjectAtIndex:]", idx2);
    }

    v25 = _CFAutoreleasePoolAddObject(0, v21);
    v26 = v19;
    v27 = v18;
    goto LABEL_24;
  }

  if (idx1 != idx2)
  {
    if (idx2 <= idx1)
    {
      v10 = idx1;
    }

    else
    {
      v10 = idx2;
    }

    if (idx2 >= idx1)
    {
      idx2 = idx1;
    }

    v11 = [(NSOrderedSet *)self objectAtIndex:idx2];
    v31 = [(NSOrderedSet *)self objectAtIndex:v10];
    v12 = v11;
    v13 = v31;
    [(NSMutableOrderedSet *)self removeObjectAtIndex:v10];
    [(NSMutableOrderedSet *)self replaceObjectAtIndex:idx2 withObject:v31];
    [(NSMutableOrderedSet *)self insertObject:v11 atIndex:v10];
  }
}

- (void)insertObjects:(const void *)objects count:(unint64_t)count atIndex:(unint64_t)index
{
  v34 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
    if (objects)
    {
      goto LABEL_4;
    }
  }

  else if (objects)
  {
    goto LABEL_4;
  }

  if (count)
  {
    v19 = _os_log_pack_size();
    v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v33, v34);
    *v21 = 136315394;
    *(v21 + 4) = "[NSMutableOrderedSet insertObjects:count:atIndex:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = count;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableOrderedSet insertObjects:count:atIndex:]", count);
    goto LABEL_20;
  }

LABEL_4:
  if (count >> 61)
  {
    v19 = _os_log_pack_size();
    v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v33, v34);
    *v23 = 136315394;
    *(v23 + 4) = "[NSMutableOrderedSet insertObjects:count:atIndex:]";
    *(v23 + 12) = 2048;
    *(v23 + 14) = count;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableOrderedSet insertObjects:count:atIndex:]", count);
LABEL_20:
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v19];
    objc_exception_throw(v24);
  }

  if (count)
  {
    v10 = 0;
    do
    {
      if (!objects[v10])
      {
        v15 = _os_log_pack_size();
        v16 = _os_log_pack_fill(&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]", v33, v34);
        *v16 = 136315394;
        *(v16 + 4) = "[NSMutableOrderedSet insertObjects:count:atIndex:]";
        *(v16 + 12) = 2048;
        *(v16 + 14) = v10;
        v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableOrderedSet insertObjects:count:atIndex:]", v10);
        v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15];
        objc_exception_throw(v18);
      }

      ++v10;
    }

    while (count != v10);
  }

  v11 = [(NSOrderedSet *)self count];
  if ((index & 0x8000000000000000) != 0 || v11 < index)
  {
    if (v11)
    {
      v29 = v11;
      v25 = _os_log_pack_size();
      v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = _os_log_pack_fill(v26, v25, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v33, v34, v35);
      v31 = __os_log_helper_1_2_3_8_32_8_0_8_0(v30, "[NSMutableOrderedSet insertObjects:count:atIndex:]", index, --v29);
      v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v31, "[NSMutableOrderedSet insertObjects:count:atIndex:]", index, v29);
    }

    else
    {
      v25 = _os_log_pack_size();
      v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = _os_log_pack_fill(v26, v25, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v33, v34);
      *v27 = 136315394;
      *(v27 + 4) = "[NSMutableOrderedSet insertObjects:count:atIndex:]";
      *(v27 + 12) = 2048;
      *(v27 + 14) = index;
      v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet insertObjects:count:atIndex:]", index);
    }

    v32 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v26, v25];
    objc_exception_throw(v32);
  }

  v12 = [(NSOrderedSet *)self count];
  if (count)
  {
    v13 = index - v12;
    do
    {
      v14 = *objects++;
      [(NSMutableOrderedSet *)self insertObject:v14 atIndex:v13 + [(NSOrderedSet *)self count]];
      --count;
    }

    while (count);
  }
}

- (void)insertObjectsFromArray:(id)array range:(_NSRange)range atIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  v63 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
    if (!array)
    {
      goto LABEL_4;
    }
  }

  else if (!array)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(array) & 1) == 0)
  {
    v37 = _os_log_pack_size();
    v40 = &v62 - ((MEMORY[0x1EEE9AC00](v37, v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = _os_log_pack_fill(v40, v37, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v62);
    *v41 = 136315138;
    *(v41 + 4) = "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]";
    v42 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]");
    v43 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v42) osLogPack:0 size:v40, v37];
    objc_exception_throw(v43);
  }

LABEL_4:
  v11 = [array count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (!v11)
    {
      v20 = _os_log_pack_size();
      v23 = &v62 - ((MEMORY[0x1EEE9AC00](v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = _os_log_pack_fill(v23, v20, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v62, v63, v64);
      v25 = __os_log_helper_1_2_3_8_32_8_0_8_0(v24, "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]", location, length);
      v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v25, "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]", location, length);
      v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v26) osLogPack:0 size:v23, v20];
      objc_exception_throw(v27);
    }

    v44 = v11;
    v45 = _os_log_pack_size();
    v48 = &v62 - ((MEMORY[0x1EEE9AC00](v45, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = _os_log_pack_fill(v48, v45, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v62, v63, v64, v65);
    v50 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v49, "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]", location, length, --v44);
    v51 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v50, "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]", location, length, v44);
    v52 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v51) osLogPack:0 size:v48, v45];
    objc_exception_throw(v52);
  }

  v12 = [(NSOrderedSet *)self count];
  if ((index & 0x8000000000000000) != 0 || v12 < index)
  {
    if (!v12)
    {
      v28 = _os_log_pack_size();
      v31 = &v62 - ((MEMORY[0x1EEE9AC00](v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = _os_log_pack_fill(v31, v28, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v62, v63);
      *v32 = 136315394;
      *(v32 + 4) = "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]";
      *(v32 + 12) = 2048;
      *(v32 + 14) = index;
      v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]", index);
      v34 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v31, v28];
      objc_exception_throw(v34);
    }

    v53 = v12;
    v54 = _os_log_pack_size();
    v57 = &v62 - ((MEMORY[0x1EEE9AC00](v54, v55, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = _os_log_pack_fill(v57, v54, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v62, v63, v64);
    v59 = __os_log_helper_1_2_3_8_32_8_0_8_0(v58, "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]", index, --v53);
    v60 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v59, "[NSMutableOrderedSet insertObjectsFromArray:range:atIndex:]", index, v53);
    v61 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v60) osLogPack:0 size:v57, v54];
    objc_exception_throw(v61);
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
    v15 = 1;
  }

  else
  {
    v15 = length;
  }

  v16 = MEMORY[0x1EEE9AC00](v15, v13, v14);
  v18 = &v62 - v17;
  v62 = 0;
  if (length >= 0x101)
  {
    v18 = _CFCreateArrayStorage(v16, 0, &v62);
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  [array getObjects:v18 range:{location, length, v62}];
  [(NSMutableOrderedSet *)self insertObjects:v18 count:length atIndex:index];
  free(v19);
}

- (void)insertObjectsFromArray:(id)array atIndex:(unint64_t)index
{
  v44 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!array)
    {
      goto LABEL_4;
    }
  }

  else if (!array)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(array) & 1) == 0)
  {
    v27 = _os_log_pack_size();
    v30 = &v43 - ((MEMORY[0x1EEE9AC00](v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill(v30, v27, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v43);
    *v31 = 136315138;
    *(v31 + 4) = "[NSMutableOrderedSet insertObjectsFromArray:atIndex:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet insertObjectsFromArray:atIndex:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
    objc_exception_throw(v33);
  }

LABEL_4:
  v8 = [(NSOrderedSet *)self count];
  v9 = v8;
  if ((index & 0x8000000000000000) != 0 || v8 < index)
  {
    if (!v8)
    {
      v18 = _os_log_pack_size();
      v21 = &v43 - ((MEMORY[0x1EEE9AC00](v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill(v21, v18, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v43, v44);
      *v22 = 136315394;
      *(v22 + 4) = "[NSMutableOrderedSet insertObjectsFromArray:atIndex:]";
      *(v22 + 12) = 2048;
      *(v22 + 14) = index;
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet insertObjectsFromArray:atIndex:]", index);
      v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v18];
      objc_exception_throw(v24);
    }

    v34 = _os_log_pack_size();
    v37 = &v43 - ((MEMORY[0x1EEE9AC00](v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v43, v44, v45);
    v39 = v9 - 1;
    v40 = __os_log_helper_1_2_3_8_32_8_0_8_0(v38, "[NSMutableOrderedSet insertObjectsFromArray:atIndex:]", index, v39);
    v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v40, "[NSMutableOrderedSet insertObjectsFromArray:atIndex:]", index, v39);
    v42 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v37, v34];
    objc_exception_throw(v42);
  }

  v10 = [array count];
  v13 = v10;
  if (v10 >> 60)
  {
    v25 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v10);
    v26 = [NSException exceptionWithName:@"NSGenericException" reason:v25 userInfo:0];
    CFRelease(v25);
    objc_exception_throw(v26);
  }

  if (v10 <= 1)
  {
    v10 = 1;
  }

  v14 = MEMORY[0x1EEE9AC00](v10, v11, v12);
  v16 = &v43 - v15;
  v43 = 0;
  if (v13 >= 0x101)
  {
    v16 = _CFCreateArrayStorage(v14, 0, &v43);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  [array getObjects:v16 range:{0, v13, v43}];
  [(NSMutableOrderedSet *)self insertObjects:v16 count:v13 atIndex:index];
  free(v17);
}

- (void)insertObjectsFromOrderedSet:(id)set range:(_NSRange)range atIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  v63 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v37 = _os_log_pack_size();
    v40 = &v62 - ((MEMORY[0x1EEE9AC00](v37, v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = _os_log_pack_fill(v40, v37, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v62);
    *v41 = 136315138;
    *(v41 + 4) = "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]";
    v42 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]");
    v43 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v42) osLogPack:0 size:v40, v37];
    objc_exception_throw(v43);
  }

LABEL_4:
  v11 = [set count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (!v11)
    {
      v20 = _os_log_pack_size();
      v23 = &v62 - ((MEMORY[0x1EEE9AC00](v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = _os_log_pack_fill(v23, v20, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v62, v63, v64);
      v25 = __os_log_helper_1_2_3_8_32_8_0_8_0(v24, "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]", location, length);
      v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v25, "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]", location, length);
      v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v26) osLogPack:0 size:v23, v20];
      objc_exception_throw(v27);
    }

    v44 = v11;
    v45 = _os_log_pack_size();
    v48 = &v62 - ((MEMORY[0x1EEE9AC00](v45, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = _os_log_pack_fill(v48, v45, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v62, v63, v64, v65);
    v50 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v49, "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]", location, length, --v44);
    v51 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v50, "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]", location, length, v44);
    v52 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v51) osLogPack:0 size:v48, v45];
    objc_exception_throw(v52);
  }

  v12 = [(NSOrderedSet *)self count];
  if ((index & 0x8000000000000000) != 0 || v12 < index)
  {
    if (!v12)
    {
      v28 = _os_log_pack_size();
      v31 = &v62 - ((MEMORY[0x1EEE9AC00](v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = _os_log_pack_fill(v31, v28, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v62, v63);
      *v32 = 136315394;
      *(v32 + 4) = "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]";
      *(v32 + 12) = 2048;
      *(v32 + 14) = index;
      v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]", index);
      v34 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v31, v28];
      objc_exception_throw(v34);
    }

    v53 = v12;
    v54 = _os_log_pack_size();
    v57 = &v62 - ((MEMORY[0x1EEE9AC00](v54, v55, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = _os_log_pack_fill(v57, v54, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v62, v63, v64);
    v59 = __os_log_helper_1_2_3_8_32_8_0_8_0(v58, "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]", index, --v53);
    v60 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v59, "[NSMutableOrderedSet insertObjectsFromOrderedSet:range:atIndex:]", index, v53);
    v61 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v60) osLogPack:0 size:v57, v54];
    objc_exception_throw(v61);
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
    v15 = 1;
  }

  else
  {
    v15 = length;
  }

  v16 = MEMORY[0x1EEE9AC00](v15, v13, v14);
  v18 = &v62 - v17;
  v62 = 0;
  if (length >= 0x101)
  {
    v18 = _CFCreateArrayStorage(v16, 0, &v62);
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  [set getObjects:v18 range:{location, length, v62}];
  [(NSMutableOrderedSet *)self insertObjects:v18 count:length atIndex:index];
  free(v19);
}

- (void)insertObjectsFromOrderedSet:(id)set atIndex:(unint64_t)index
{
  v44 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v27 = _os_log_pack_size();
    v30 = &v43 - ((MEMORY[0x1EEE9AC00](v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill(v30, v27, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v43);
    *v31 = 136315138;
    *(v31 + 4) = "[NSMutableOrderedSet insertObjectsFromOrderedSet:atIndex:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet insertObjectsFromOrderedSet:atIndex:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
    objc_exception_throw(v33);
  }

LABEL_4:
  v8 = [(NSOrderedSet *)self count];
  v9 = v8;
  if ((index & 0x8000000000000000) != 0 || v8 < index)
  {
    if (!v8)
    {
      v18 = _os_log_pack_size();
      v21 = &v43 - ((MEMORY[0x1EEE9AC00](v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill(v21, v18, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v43, v44);
      *v22 = 136315394;
      *(v22 + 4) = "[NSMutableOrderedSet insertObjectsFromOrderedSet:atIndex:]";
      *(v22 + 12) = 2048;
      *(v22 + 14) = index;
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet insertObjectsFromOrderedSet:atIndex:]", index);
      v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v18];
      objc_exception_throw(v24);
    }

    v34 = _os_log_pack_size();
    v37 = &v43 - ((MEMORY[0x1EEE9AC00](v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v43, v44, v45);
    v39 = v9 - 1;
    v40 = __os_log_helper_1_2_3_8_32_8_0_8_0(v38, "[NSMutableOrderedSet insertObjectsFromOrderedSet:atIndex:]", index, v39);
    v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v40, "[NSMutableOrderedSet insertObjectsFromOrderedSet:atIndex:]", index, v39);
    v42 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v37, v34];
    objc_exception_throw(v42);
  }

  v10 = [set count];
  v13 = v10;
  if (v10 >> 60)
  {
    v25 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v10);
    v26 = [NSException exceptionWithName:@"NSGenericException" reason:v25 userInfo:0];
    CFRelease(v25);
    objc_exception_throw(v26);
  }

  if (v10 <= 1)
  {
    v10 = 1;
  }

  v14 = MEMORY[0x1EEE9AC00](v10, v11, v12);
  v16 = &v43 - v15;
  v43 = 0;
  if (v13 >= 0x101)
  {
    v16 = _CFCreateArrayStorage(v14, 0, &v43);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  [set getObjects:v16 range:{0, v13, v43}];
  [(NSMutableOrderedSet *)self insertObjects:v16 count:v13 atIndex:index];
  free(v17);
}

- (void)insertObjectsFromSet:(id)set atIndex:(unint64_t)index
{
  v44 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(set) & 1) == 0)
  {
    v27 = _os_log_pack_size();
    v30 = &v43 - ((MEMORY[0x1EEE9AC00](v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill(v30, v27, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v43);
    *v31 = 136315138;
    *(v31 + 4) = "[NSMutableOrderedSet insertObjectsFromSet:atIndex:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet insertObjectsFromSet:atIndex:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
    objc_exception_throw(v33);
  }

LABEL_4:
  v8 = [(NSOrderedSet *)self count];
  v9 = v8;
  if ((index & 0x8000000000000000) != 0 || v8 < index)
  {
    if (!v8)
    {
      v18 = _os_log_pack_size();
      v21 = &v43 - ((MEMORY[0x1EEE9AC00](v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill(v21, v18, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v43, v44);
      *v22 = 136315394;
      *(v22 + 4) = "[NSMutableOrderedSet insertObjectsFromSet:atIndex:]";
      *(v22 + 12) = 2048;
      *(v22 + 14) = index;
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet insertObjectsFromSet:atIndex:]", index);
      v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v18];
      objc_exception_throw(v24);
    }

    v34 = _os_log_pack_size();
    v37 = &v43 - ((MEMORY[0x1EEE9AC00](v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v43, v44, v45);
    v39 = v9 - 1;
    v40 = __os_log_helper_1_2_3_8_32_8_0_8_0(v38, "[NSMutableOrderedSet insertObjectsFromSet:atIndex:]", index, v39);
    v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v40, "[NSMutableOrderedSet insertObjectsFromSet:atIndex:]", index, v39);
    v42 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v37, v34];
    objc_exception_throw(v42);
  }

  v10 = [set count];
  v13 = v10;
  if (v10 >> 60)
  {
    v25 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v10);
    v26 = [NSException exceptionWithName:@"NSGenericException" reason:v25 userInfo:0];
    CFRelease(v25);
    objc_exception_throw(v26);
  }

  if (v10 <= 1)
  {
    v10 = 1;
  }

  v14 = MEMORY[0x1EEE9AC00](v10, v11, v12);
  v16 = &v43 - v15;
  v43 = 0;
  if (v13 >= 0x101)
  {
    v16 = _CFCreateArrayStorage(v14, 0, &v43);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  [set getObjects:v16 count:{v13, v43}];
  [(NSMutableOrderedSet *)self insertObjects:v16 count:v13 atIndex:index];
  free(v17);
}

- (void)insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes
{
  v67 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!objects)
    {
      goto LABEL_4;
    }
  }

  else if (!objects)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(objects) & 1) == 0)
  {
    v59 = _os_log_pack_size();
    v62 = &v66 - ((MEMORY[0x1EEE9AC00](v59, v60, v61) + 15) & 0xFFFFFFFFFFFFFFF0);
    v63 = _os_log_pack_fill(v62, v59, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v66);
    *v63 = 136315138;
    *(v63 + 4) = "[NSMutableOrderedSet insertObjects:atIndexes:]";
    v64 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet insertObjects:atIndexes:]");
    v65 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v64) osLogPack:0 size:v62, v59];
    objc_exception_throw(v65);
  }

LABEL_4:
  if (!indexes)
  {
    v27 = _os_log_pack_size();
    v30 = &v66 - ((MEMORY[0x1EEE9AC00](v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill(v30, v27, 0, &dword_1830E6000, "*** %s: index set cannot be nil", v66);
    *v31 = 136315138;
    *(v31 + 4) = "[NSMutableOrderedSet insertObjects:atIndexes:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableOrderedSet insertObjects:atIndexes:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
    objc_exception_throw(v33);
  }

  if ((_NSIsNSIndexSet(indexes) & 1) == 0)
  {
    v34 = _os_log_pack_size();
    v37 = &v66 - ((MEMORY[0x1EEE9AC00](v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v66);
    *v38 = 136315138;
    *(v38 + 4) = "[NSMutableOrderedSet insertObjects:atIndexes:]";
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableOrderedSet insertObjects:atIndexes:]");
    v40 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v39) osLogPack:0 size:v37, v34];
    objc_exception_throw(v40);
  }

  v8 = [(NSOrderedSet *)self count];
  v9 = [(NSArray *)objects count];
  lastIndex = [(NSIndexSet *)indexes lastIndex];
  if ((lastIndex & 0x8000000000000000) != 0)
  {
    v41 = lastIndex;
    v11 = v9 + v8;
    goto LABEL_26;
  }

  if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v9 + v8;
    if (v11 <= lastIndex)
    {
      v41 = lastIndex;
LABEL_26:
      if (!v11)
      {
        v42 = _os_log_pack_size();
        v45 = &v66 - ((MEMORY[0x1EEE9AC00](v42, v43, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
        v46 = _os_log_pack_fill(v45, v42, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds for empty ordered set", v66, v67);
        *v46 = 136315394;
        *(v46 + 4) = "[NSMutableOrderedSet insertObjects:atIndexes:]";
        *(v46 + 12) = 2048;
        *(v46 + 14) = v41;
        v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty ordered set", "[NSMutableOrderedSet insertObjects:atIndexes:]", v41);
        v48 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v47) osLogPack:0 size:v45, v42];
        objc_exception_throw(v48);
      }

      v49 = _os_log_pack_size();
      v52 = &v66 - ((MEMORY[0x1EEE9AC00](v49, v50, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
      v53 = _os_log_pack_fill(v52, v49, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds [0 .. %lu]", v66, v67, v68);
      v54 = __os_log_helper_1_2_3_8_32_8_0_8_0(v53, "[NSMutableOrderedSet insertObjects:atIndexes:]", v41, v11 - 1);
      v55 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v54, "[NSMutableOrderedSet insertObjects:atIndexes:]", v41, v11 - 1);
      v56 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v55) osLogPack:0 size:v52, v49];
      objc_exception_throw(v56);
    }
  }

  v12 = [(NSArray *)objects count];
  v13 = [(NSIndexSet *)indexes count];
  if (v12 != v13)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of array (%lu) differs from count of index set (%lu)", "[NSMutableOrderedSet insertObjects:atIndexes:]", v12, v13);
  }

  v14 = [(NSArray *)objects count];
  v17 = v14;
  if (v14 >> 60)
  {
    v57 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v14);
    v58 = [NSException exceptionWithName:@"NSGenericException" reason:v57 userInfo:0];
    CFRelease(v57);
    objc_exception_throw(v58);
  }

  if (v14 <= 1)
  {
    v14 = 1;
  }

  v18 = MEMORY[0x1EEE9AC00](v14, v15, v16);
  v20 = &v66 - v19;
  v66 = 0;
  if (v17 >= 0x101)
  {
    v20 = _CFCreateArrayStorage(v18, 0, &v66);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  [(NSArray *)objects getObjects:v20 range:0, v17, v66];
  v22 = 0;
  for (i = 0; i < [(NSIndexSet *)indexes rangeCount]; ++i)
  {
    v24 = [(NSIndexSet *)indexes rangeAtIndex:i];
    v26 = v25;
    [(NSMutableOrderedSet *)self insertObjects:&v20[8 * v22] count:v25 atIndex:v24];
    v22 += v26;
  }

  free(v21);
}

- (void)intersectOrderedSet:(NSOrderedSet *)other
{
  v35 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!other)
    {
      goto LABEL_4;
    }
  }

  else if (!other)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(other) & 1) == 0)
  {
    v19 = _os_log_pack_size();
    v22 = &v28 - ((MEMORY[0x1EEE9AC00](v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v22, v19, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v28);
    *v23 = 136315138;
    *(v23 + 4) = "[NSMutableOrderedSet intersectOrderedSet:]";
    v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet intersectOrderedSet:]");
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v22, v19];
    objc_exception_throw(v25);
  }

LABEL_4:
  if (self != other)
  {
    v6 = [(NSOrderedSet *)self count];
    if (v6 >> 60)
    {
      v26 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
      v27 = [NSException exceptionWithName:@"NSGenericException" reason:v26 userInfo:0];
      CFRelease(v26);
      objc_exception_throw(v27);
    }

    if (v6 <= 1)
    {
      v6 = 1;
    }

    v9 = MEMORY[0x1EEE9AC00](v6, v7, v8);
    v11 = (&v28 - v10);
    v29 = 0;
    if (v12 >= 0x101)
    {
      v11 = _CFCreateArrayStorage(v9, 0, &v29);
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [(NSOrderedSet *)self countByEnumeratingWithState:&v31 objects:v30 count:16];
    v15 = v11;
    if (v14)
    {
      v16 = *v32;
      v15 = v11;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(self);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          if (![(NSOrderedSet *)other countForObject:v18])
          {
            *v15++ = v18;
          }
        }

        v14 = [(NSOrderedSet *)self countByEnumeratingWithState:&v31 objects:v30 count:16];
      }

      while (v14);
    }

    while (v11 < v15)
    {
      [(NSMutableOrderedSet *)self removeObject:*v11++];
    }

    free(v13);
  }
}

- (void)intersectSet:(NSSet *)other
{
  v35 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!other)
    {
      goto LABEL_4;
    }
  }

  else if (!other)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(other) & 1) == 0)
  {
    v21 = _os_log_pack_size();
    v24 = &v28 - ((MEMORY[0x1EEE9AC00](v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = _os_log_pack_fill(v24, v21, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v28);
    *v25 = 136315138;
    *(v25 + 4) = "[NSMutableOrderedSet intersectSet:]";
    v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet intersectSet:]");
    v27 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v26) osLogPack:0 size:v24, v21];
    objc_exception_throw(v27);
  }

LABEL_4:
  v6 = [(NSOrderedSet *)self count];
  if (v6 >> 60)
  {
    v19 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v20 = [NSException exceptionWithName:@"NSGenericException" reason:v19 userInfo:0];
    CFRelease(v19);
    objc_exception_throw(v20);
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v9 = MEMORY[0x1EEE9AC00](v6, v7, v8);
  v11 = (&v28 - v10);
  v29 = 0;
  if (v12 >= 0x101)
  {
    v11 = _CFCreateArrayStorage(v9, 0, &v29);
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = [(NSOrderedSet *)self countByEnumeratingWithState:&v31 objects:v30 count:16];
  v15 = v11;
  if (v14)
  {
    v16 = *v32;
    v15 = v11;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(self);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        if (![(NSSet *)other countForObject:v18])
        {
          *v15++ = v18;
        }
      }

      v14 = [(NSOrderedSet *)self countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v14);
  }

  while (v11 < v15)
  {
    [(NSMutableOrderedSet *)self removeObject:*v11++];
  }

  free(v13);
}

- (void)moveObjectsAtIndexes:(NSIndexSet *)indexes toIndex:(NSUInteger)idx
{
  v72 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (indexes)
    {
      goto LABEL_3;
    }

LABEL_17:
    v24 = _os_log_pack_size();
    v27 = &v71 - ((MEMORY[0x1EEE9AC00](v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = _os_log_pack_fill(v27, v24, 0, &dword_1830E6000, "*** %s: index set cannot be nil", v71);
    *v28 = 136315138;
    *(v28 + 4) = "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]";
    v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]");
    v30 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v29) osLogPack:0 size:v27, v24];
    objc_exception_throw(v30);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  if (!indexes)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((_NSIsNSIndexSet(indexes) & 1) == 0)
  {
    v31 = _os_log_pack_size();
    v34 = &v71 - ((MEMORY[0x1EEE9AC00](v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill(v34, v31, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v71);
    *v35 = 136315138;
    *(v35 + 4) = "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]";
    v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]");
    v37 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v34, v31];
    objc_exception_throw(v37);
  }

  v8 = [(NSOrderedSet *)self count];
  v9 = [0 count];
  lastIndex = [(NSIndexSet *)indexes lastIndex];
  if ((lastIndex & 0x8000000000000000) != 0)
  {
    v38 = lastIndex;
    v11 = v9 + v8;
    goto LABEL_21;
  }

  if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v9 + v8;
    if (v11 <= lastIndex)
    {
      v38 = lastIndex;
LABEL_21:
      if (!v11)
      {
        v39 = _os_log_pack_size();
        v42 = &v71 - ((MEMORY[0x1EEE9AC00](v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
        v43 = _os_log_pack_fill(v42, v39, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds for empty ordered set", v71, v72);
        *v43 = 136315394;
        *(v43 + 4) = "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]";
        *(v43 + 12) = 2048;
        *(v43 + 14) = v38;
        v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty ordered set", "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]", v38);
        v45 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v44) osLogPack:0 size:v42, v39];
        objc_exception_throw(v45);
      }

      v46 = _os_log_pack_size();
      v49 = &v71 - ((MEMORY[0x1EEE9AC00](v46, v47, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
      v50 = _os_log_pack_fill(v49, v46, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds [0 .. %lu]", v71, v72, v73);
      v51 = __os_log_helper_1_2_3_8_32_8_0_8_0(v50, "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]", v38, v11 - 1);
      v52 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v51, "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]", v38, v11 - 1);
      v53 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v52) osLogPack:0 size:v49, v46];
      objc_exception_throw(v53);
    }
  }

  v12 = [(NSOrderedSet *)self count];
  v13 = [(NSIndexSet *)indexes countOfIndexesInRange:0, idx];
  v14 = v12 - v13;
  if ((idx & 0x8000000000000000) != 0 || v14 < idx)
  {
    if (v12 == v13)
    {
      v54 = _os_log_pack_size();
      v57 = &v71 - ((MEMORY[0x1EEE9AC00](v54, v55, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
      v58 = _os_log_pack_fill(v57, v54, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v71, v72);
      *v58 = 136315394;
      *(v58 + 4) = "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]";
      *(v58 + 12) = 2048;
      *(v58 + 14) = idx;
      v59 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]", idx);
      v60 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v59) osLogPack:0 size:v57, v54];
      objc_exception_throw(v60);
    }

    v63 = _os_log_pack_size();
    v66 = &v71 - ((MEMORY[0x1EEE9AC00](v63, v64, v65) + 15) & 0xFFFFFFFFFFFFFFF0);
    v67 = _os_log_pack_fill(v66, v63, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v71, v72, v73);
    v68 = __os_log_helper_1_2_3_8_32_8_0_8_0(v67, "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]", idx, v14 - 1);
    v69 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v68, "[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:]", idx, v14 - 1);
    v70 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v69) osLogPack:0 size:v66, v63];
    objc_exception_throw(v70);
  }

  v15 = [(NSOrderedSet *)self objectsAtIndexes:indexes];
  [(NSMutableOrderedSet *)self removeObjectsAtIndexes:indexes];
  v16 = [(NSArray *)v15 count];
  v19 = v16;
  if (v16 >> 60)
  {
    v61 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v16);
    v62 = [NSException exceptionWithName:@"NSGenericException" reason:v61 userInfo:0];
    CFRelease(v61);
    objc_exception_throw(v62);
  }

  if (v16 <= 1)
  {
    v16 = 1;
  }

  v20 = MEMORY[0x1EEE9AC00](v16, v17, v18);
  v22 = &v71 - v21;
  v71 = 0;
  if (v19 >= 0x101)
  {
    v22 = _CFCreateArrayStorage(v20, 0, &v71);
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  [(NSArray *)v15 getObjects:v22 range:0, v19, v71];
  [(NSMutableOrderedSet *)self insertObjects:v22 count:v19 atIndex:idx];
  free(v23);
}

- (void)minusOrderedSet:(NSOrderedSet *)other
{
  v22 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!other)
    {
      goto LABEL_4;
    }
  }

  else if (!other)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(other) & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = _os_log_pack_fill(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v17[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSMutableOrderedSet minusOrderedSet:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet minusOrderedSet:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13];
    objc_exception_throw(v16);
  }

LABEL_4:
  if (self == other)
  {

    [(NSMutableOrderedSet *)self removeAllObjects];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(NSOrderedSet *)other countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(other);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [(NSOrderedSet *)other countForObject:v10];
          if (v11)
          {
            v12 = v11;
            do
            {
              --v12;
              [(NSMutableOrderedSet *)self removeObject:v10];
            }

            while (v12);
          }
        }

        v7 = [(NSOrderedSet *)other countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)minusSet:(NSSet *)other
{
  v22 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!other)
    {
      goto LABEL_4;
    }
  }

  else if (!other)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(other) & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = _os_log_pack_fill(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v17[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSMutableOrderedSet minusSet:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet minusSet:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13];
    objc_exception_throw(v16);
  }

LABEL_4:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(NSSet *)other countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(other);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(NSSet *)other countForObject:v10];
        if (v11)
        {
          v12 = v11;
          do
          {
            --v12;
            [(NSMutableOrderedSet *)self removeObject:v10];
          }

          while (v12);
        }
      }

      v7 = [(NSSet *)other countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)removeAllObjects
{
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  v4 = [(NSOrderedSet *)self count];
  if (v4)
  {
    v5 = v4 - 1;
    do
    {
      [(NSMutableOrderedSet *)self removeObjectAtIndex:v5--];
    }

    while (v5 != -1);
  }
}

- (void)removeFirstObject
{
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  if ([(NSOrderedSet *)self count])
  {

    [(NSMutableOrderedSet *)self removeObjectAtIndex:0];
  }
}

- (void)removeLastObject
{
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  v4 = [(NSOrderedSet *)self count];
  if (v4)
  {

    [(NSMutableOrderedSet *)self removeObjectAtIndex:v4 - 1];
  }
}

- (void)removeObjectsInRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v18 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v7 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v7 < location + length)
  {
    if (v7)
    {
      v13 = v7;
      v8 = _os_log_pack_size();
      v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v17, v18, v19, v20);
      v15 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v14, "[NSMutableOrderedSet removeObjectsInRange:]", location, length, --v13);
      v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v15, "[NSMutableOrderedSet removeObjectsInRange:]", location, length, v13);
    }

    else
    {
      v8 = _os_log_pack_size();
      v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v17, v18, v19);
      v11 = __os_log_helper_1_2_3_8_32_8_0_8_0(v10, "[NSMutableOrderedSet removeObjectsInRange:]", location, length);
      v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v11, "[NSMutableOrderedSet removeObjectsInRange:]", location, length);
    }

    v16 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v9, v8];
    objc_exception_throw(v16);
  }

  for (; length; --length)
  {
    [(NSMutableOrderedSet *)self removeObjectAtIndex:location];
  }
}

- (void)removeObject:(id)object inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v21 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v9 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v16 = v9;
      v11 = _os_log_pack_size();
      v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v20, v21, v22, v23);
      v18 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v17, "[NSMutableOrderedSet removeObject:inRange:]", location, length, --v16);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v18, "[NSMutableOrderedSet removeObject:inRange:]", location, length, v16);
    }

    else
    {
      v11 = _os_log_pack_size();
      v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v20, v21, v22);
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v13, "[NSMutableOrderedSet removeObject:inRange:]", location, length);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v14, "[NSMutableOrderedSet removeObject:inRange:]", location, length);
    }

    v19 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v12, v11];
    objc_exception_throw(v19);
  }

  v10 = [(NSOrderedSet *)self indexOfObject:object inRange:location, length];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(NSMutableOrderedSet *)self removeObjectAtIndex:v10];
  }
}

- (void)removeObject:(id)object
{
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  v6 = [(NSOrderedSet *)self indexOfObject:object];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(NSMutableOrderedSet *)self removeObjectAtIndex:v6];
  }
}

- (void)removeObjectsAtIndexes:(NSIndexSet *)indexes
{
  v30 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (indexes)
    {
      goto LABEL_3;
    }

LABEL_12:
    v14 = _os_log_pack_size();
    v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: index set cannot be nil", v29);
    *v16 = 136315138;
    *(v16 + 4) = "[NSMutableOrderedSet removeObjectsAtIndexes:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableOrderedSet removeObjectsAtIndexes:]");
    goto LABEL_14;
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  if (!indexes)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((_NSIsNSIndexSet(indexes) & 1) == 0)
  {
    v14 = _os_log_pack_size();
    v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v29);
    *v18 = 136315138;
    *(v18 + 4) = "[NSMutableOrderedSet removeObjectsAtIndexes:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableOrderedSet removeObjectsAtIndexes:]");
LABEL_14:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v14];
    objc_exception_throw(v19);
  }

  v6 = [(NSOrderedSet *)self count];
  v7 = [0 count];
  lastIndex = [(NSIndexSet *)indexes lastIndex];
  if ((lastIndex & 0x8000000000000000) != 0)
  {
    v20 = lastIndex;
    v9 = v7 + v6;
    goto LABEL_17;
  }

  if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7 + v6;
    if (v9 <= lastIndex)
    {
      v20 = lastIndex;
LABEL_17:
      v21 = _os_log_pack_size();
      v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v9)
      {
        v25 = _os_log_pack_fill(v22, v21, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds [0 .. %lu]", v29, v30, v31);
        v26 = v9 - 1;
        v27 = __os_log_helper_1_2_3_8_32_8_0_8_0(v25, "[NSMutableOrderedSet removeObjectsAtIndexes:]", v20, v26);
        v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v27, "[NSMutableOrderedSet removeObjectsAtIndexes:]", v20, v26);
      }

      else
      {
        v23 = _os_log_pack_fill(v22, v21, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds for empty ordered set", v29, v30);
        *v23 = 136315394;
        *(v23 + 4) = "[NSMutableOrderedSet removeObjectsAtIndexes:]";
        *(v23 + 12) = 2048;
        *(v23 + 14) = v20;
        v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty ordered set", "[NSMutableOrderedSet removeObjectsAtIndexes:]", v20);
      }

      v28 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v22, v21];
      objc_exception_throw(v28);
    }
  }

  rangeCount = [(NSIndexSet *)indexes rangeCount];
  if (rangeCount)
  {
    v11 = rangeCount - 1;
    do
    {
      v12 = [(NSIndexSet *)indexes rangeAtIndex:v11];
      [(NSMutableOrderedSet *)self removeObjectsInRange:v12, v13];
      --v11;
    }

    while (v11 != -1);
  }
}

- (void)removeObjectsInRange:(_NSRange)range inArray:(id)array range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = range.length;
  v10 = range.location;
  v39 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  v12 = [(NSOrderedSet *)self count];
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v12 < v10 + v9)
  {
    if (v12)
    {
      v29 = v12;
      v15 = _os_log_pack_size();
      v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = _os_log_pack_fill(v16, v15, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v38, v39, v40, v41);
      v31 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v30, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", v10, v9, --v29);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v31, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", v10, v9, v29);
    }

    else
    {
      v15 = _os_log_pack_size();
      v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill(v16, v15, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v38, v39, v40);
      v18 = __os_log_helper_1_2_3_8_32_8_0_8_0(v17, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", v10, v9);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v18, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", v10, v9);
    }

    v32 = _CFAutoreleasePoolAddObject(0, v19);
    v33 = v16;
    v34 = v15;
LABEL_25:
    objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v32 userInfo:0 osLogPack:v33 size:v34]);
  }

  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v25 = _os_log_pack_size();
    v26 = _os_log_pack_fill(&v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v38);
    *v26 = 136315138;
    *(v26 + 4) = "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]";
    v27 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]");
    v28 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v27) osLogPack:0 size:&v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25];
    objc_exception_throw(v28);
  }

  v13 = [array count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v13 < location + length)
  {
    if (v13)
    {
      v35 = v13;
      v20 = _os_log_pack_size();
      v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = _os_log_pack_fill(v21, v20, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v38, v39, v40, v41);
      v37 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v36, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", location, length, --v35);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v37, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", location, length, v35);
    }

    else
    {
      v20 = _os_log_pack_size();
      v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill(v21, v20, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v38, v39, v40);
      v23 = __os_log_helper_1_2_3_8_32_8_0_8_0(v22, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", location, length);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v23, "[NSMutableOrderedSet removeObjectsInRange:inArray:range:]", location, length);
    }

    v32 = _CFAutoreleasePoolAddObject(0, v24);
    v33 = v21;
    v34 = v20;
    goto LABEL_25;
  }

  for (; length; --length)
  {
    v14 = -[NSOrderedSet indexOfObject:inRange:](self, "indexOfObject:inRange:", [array objectAtIndex:location], v10, v9);
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableOrderedSet *)self removeObjectAtIndex:v14];
    }

    ++location;
  }
}

- (void)removeObjectsInRange:(_NSRange)range inArray:(id)array
{
  length = range.length;
  location = range.location;
  v37 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v9 = [(NSOrderedSet *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v16 = _os_log_pack_size();
      v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v29, v30, v31, v32);
      v26 = v10 - 1;
      v27 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v25, "[NSMutableOrderedSet removeObjectsInRange:inArray:]", location, length, v26);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v27, "[NSMutableOrderedSet removeObjectsInRange:inArray:]", location, length, v26);
    }

    else
    {
      v16 = _os_log_pack_size();
      v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v29, v30, v31);
      v19 = __os_log_helper_1_2_3_8_32_8_0_8_0(v18, "[NSMutableOrderedSet removeObjectsInRange:inArray:]", location, length);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v19, "[NSMutableOrderedSet removeObjectsInRange:inArray:]", location, length);
    }

    v28 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v17, v16];
    objc_exception_throw(v28);
  }

  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v21 = _os_log_pack_size();
    v22 = _os_log_pack_fill(&v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v29);
    *v22 = 136315138;
    *(v22 + 4) = "[NSMutableOrderedSet removeObjectsInRange:inArray:]";
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet removeObjectsInRange:inArray:]");
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:&v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21];
    objc_exception_throw(v24);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = [array countByEnumeratingWithState:&v33 objects:&v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(array);
        }

        v15 = [(NSOrderedSet *)self indexOfObject:*(*(&v33 + 1) + 8 * i) inRange:location, length];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableOrderedSet *)self removeObjectAtIndex:v15];
        }
      }

      v12 = [array countByEnumeratingWithState:&v33 objects:&v29 count:16];
    }

    while (v12);
  }
}

- (void)removeObjectsInArray:(id)array range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v25 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!array)
    {
      goto LABEL_4;
    }
  }

  else if (!array)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(array) & 1) == 0)
  {
    v16 = _os_log_pack_size();
    v17 = _os_log_pack_fill(&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v24);
    *v17 = 136315138;
    *(v17 + 4) = "[NSMutableOrderedSet removeObjectsInArray:range:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet removeObjectsInArray:range:]");
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16];
    objc_exception_throw(v19);
  }

LABEL_4:
  v9 = [array count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v20 = v9;
      v11 = _os_log_pack_size();
      v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v24, v25, v26, v27);
      v22 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v21, "[NSMutableOrderedSet removeObjectsInArray:range:]", location, length, --v20);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v22, "[NSMutableOrderedSet removeObjectsInArray:range:]", location, length, v20);
    }

    else
    {
      v11 = _os_log_pack_size();
      v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v24, v25, v26);
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v13, "[NSMutableOrderedSet removeObjectsInArray:range:]", location, length);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v14, "[NSMutableOrderedSet removeObjectsInArray:range:]", location, length);
    }

    v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v12, v11];
    objc_exception_throw(v23);
  }

  for (; length; --length)
  {
    v10 = -[NSOrderedSet indexOfObject:](self, "indexOfObject:", [array objectAtIndex:location]);
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableOrderedSet *)self removeObjectAtIndex:v10];
    }

    ++location;
  }
}

- (void)removeObjectsInArray:(NSArray *)array
{
  v20 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!array)
    {
      goto LABEL_4;
    }
  }

  else if (!array)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(array) & 1) == 0)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill(v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v15[0]);
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableOrderedSet removeObjectsInArray:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet removeObjectsInArray:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v14);
  }

LABEL_4:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSArray *)array countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(array);
        }

        v10 = [(NSOrderedSet *)self indexOfObject:*(*(&v16 + 1) + 8 * i)];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableOrderedSet *)self removeObjectAtIndex:v10];
        }
      }

      v7 = [(NSArray *)array countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)removeObjectsInRange:(_NSRange)range inOrderedSet:(id)set range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = range.length;
  v10 = range.location;
  v66 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  v12 = [(NSOrderedSet *)self count];
  v13 = v12;
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v12 < v10 + v9)
  {
    if (!v12)
    {
      v24 = _os_log_pack_size();
      v27 = &v65 - ((MEMORY[0x1EEE9AC00](v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = _os_log_pack_fill(v27, v24, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v65, v66, v67);
      v29 = __os_log_helper_1_2_3_8_32_8_0_8_0(v28, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", v10, v9);
      v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v29, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", v10, v9);
      v31 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v27, v24];
      objc_exception_throw(v31);
    }

    v49 = _os_log_pack_size();
    v52 = &v65 - ((MEMORY[0x1EEE9AC00](v49, v50, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = _os_log_pack_fill(v52, v49, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v65, v66, v67, v68);
    v54 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v53, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", v10, v9, v13 - 1);
    v55 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v54, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", v10, v9, v13 - 1);
    v56 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v55) osLogPack:0 size:v52, v49];
    objc_exception_throw(v56);
  }

  if (set && (_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v42 = _os_log_pack_size();
    v45 = &v65 - ((MEMORY[0x1EEE9AC00](v42, v43, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = _os_log_pack_fill(v45, v42, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v65);
    *v46 = 136315138;
    *(v46 + 4) = "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]";
    v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]");
    v48 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v47) osLogPack:0 size:v45, v42];
    objc_exception_throw(v48);
  }

  v14 = [set count];
  v17 = v14;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v14 < location + length)
  {
    if (!v14)
    {
      v32 = _os_log_pack_size();
      v35 = &v65 - ((MEMORY[0x1EEE9AC00](v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = _os_log_pack_fill(v35, v32, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v65, v66, v67);
      v37 = __os_log_helper_1_2_3_8_32_8_0_8_0(v36, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", location, length);
      v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v37, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", location, length);
      v39 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v35, v32];
      objc_exception_throw(v39);
    }

    v57 = _os_log_pack_size();
    v60 = &v65 - ((MEMORY[0x1EEE9AC00](v57, v58, v59) + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = _os_log_pack_fill(v60, v57, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v65, v66, v67, v68);
    v62 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v61, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", location, length, v17 - 1);
    v63 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v62, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:range:]", location, length, v17 - 1);
    v64 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v63) osLogPack:0 size:v60, v57];
    objc_exception_throw(v64);
  }

  if (length >> 60)
  {
    v40 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v41 = [NSException exceptionWithName:@"NSGenericException" reason:v40 userInfo:0];
    CFRelease(v40);
    objc_exception_throw(v41);
  }

  if (length <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = length;
  }

  v19 = MEMORY[0x1EEE9AC00](v18, v15, v16);
  v21 = (&v65 - v20);
  v65 = 0;
  if (length >= 0x101)
  {
    v21 = _CFCreateArrayStorage(v19, 0, &v65);
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  [set getObjects:v21 range:{location, length, v65}];
  for (; length; --length)
  {
    v23 = [(NSOrderedSet *)self indexOfObject:*v21 inRange:v10, v9];
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableOrderedSet *)self removeObjectAtIndex:v23];
    }

    ++v21;
  }

  free(v22);
}

- (void)removeObjectsInRange:(_NSRange)range inOrderedSet:(id)set
{
  length = range.length;
  location = range.location;
  v32 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v9 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v25 = v9;
      v11 = _os_log_pack_size();
      v14 = &v31 - ((MEMORY[0x1EEE9AC00](v11, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v31, v32, v33, v34);
      v29 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v28, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:]", location, length, --v25);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v29, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:]", location, length, v25);
    }

    else
    {
      v11 = _os_log_pack_size();
      v14 = &v31 - ((MEMORY[0x1EEE9AC00](v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v31, v32, v33);
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v16, "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:]", location, length);
    }

    v30 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v11];
    objc_exception_throw(v30);
  }

  if (set && (_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v18 = _os_log_pack_size();
    v21 = &v31 - ((MEMORY[0x1EEE9AC00](v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v21, v18, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v31);
    *v22 = 136315138;
    *(v22 + 4) = "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:]";
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet removeObjectsInRange:inOrderedSet:]");
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v18];
    objc_exception_throw(v24);
  }

  v10 = [set count];

  [(NSMutableOrderedSet *)self removeObjectsInRange:location inOrderedSet:length range:set, 0, v10];
}

- (void)removeObjectsInOrderedSet:(id)set range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v32 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v18 = _os_log_pack_size();
    v21 = &v31 - ((MEMORY[0x1EEE9AC00](v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v21, v18, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v31);
    *v22 = 136315138;
    *(v22 + 4) = "[NSMutableOrderedSet removeObjectsInOrderedSet:range:]";
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet removeObjectsInOrderedSet:range:]");
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v18];
    objc_exception_throw(v24);
  }

LABEL_4:
  v9 = [set count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v25 = v9;
      v11 = _os_log_pack_size();
      v14 = &v31 - ((MEMORY[0x1EEE9AC00](v11, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v31, v32, v33, v34);
      v29 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v28, "[NSMutableOrderedSet removeObjectsInOrderedSet:range:]", location, length, --v25);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v29, "[NSMutableOrderedSet removeObjectsInOrderedSet:range:]", location, length, v25);
    }

    else
    {
      v11 = _os_log_pack_size();
      v14 = &v31 - ((MEMORY[0x1EEE9AC00](v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v31, v32, v33);
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSMutableOrderedSet removeObjectsInOrderedSet:range:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v16, "[NSMutableOrderedSet removeObjectsInOrderedSet:range:]", location, length);
    }

    v30 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v11];
    objc_exception_throw(v30);
  }

  v10 = [(NSOrderedSet *)self count];

  [(NSMutableOrderedSet *)self removeObjectsInRange:0 inOrderedSet:v10 range:set, location, length];
}

- (void)removeObjectsInOrderedSet:(id)set
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v8 = _os_log_pack_size();
    v11 = v15 - ((MEMORY[0x1EEE9AC00](v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v11, v8, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v15[0]);
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableOrderedSet removeObjectsInOrderedSet:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet removeObjectsInOrderedSet:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v8];
    objc_exception_throw(v14);
  }

LABEL_4:
  v6 = [(NSOrderedSet *)self count];
  v7 = [set count];

  [(NSMutableOrderedSet *)self removeObjectsInRange:0 inOrderedSet:v6 range:set, 0, v7];
}

- (void)removeObjectsInRange:(_NSRange)range inSet:(id)set
{
  length = range.length;
  location = range.location;
  v37 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  }

  v9 = [(NSOrderedSet *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v16 = _os_log_pack_size();
      v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v29, v30, v31, v32);
      v26 = v10 - 1;
      v27 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v25, "[NSMutableOrderedSet removeObjectsInRange:inSet:]", location, length, v26);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v27, "[NSMutableOrderedSet removeObjectsInRange:inSet:]", location, length, v26);
    }

    else
    {
      v16 = _os_log_pack_size();
      v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v29, v30, v31);
      v19 = __os_log_helper_1_2_3_8_32_8_0_8_0(v18, "[NSMutableOrderedSet removeObjectsInRange:inSet:]", location, length);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v19, "[NSMutableOrderedSet removeObjectsInRange:inSet:]", location, length);
    }

    v28 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v17, v16];
    objc_exception_throw(v28);
  }

  if (set && (_NSIsNSSet(set) & 1) == 0)
  {
    v21 = _os_log_pack_size();
    v22 = _os_log_pack_fill(&v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v29);
    *v22 = 136315138;
    *(v22 + 4) = "[NSMutableOrderedSet removeObjectsInRange:inSet:]";
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet removeObjectsInRange:inSet:]");
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:&v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21];
    objc_exception_throw(v24);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = [set countByEnumeratingWithState:&v33 objects:&v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(set);
        }

        v15 = [(NSOrderedSet *)self indexOfObject:*(*(&v33 + 1) + 8 * i) inRange:location, length];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableOrderedSet *)self removeObjectAtIndex:v15];
        }
      }

      v12 = [set countByEnumeratingWithState:&v33 objects:&v29 count:16];
    }

    while (v12);
  }
}

- (void)removeObjectsInSet:(id)set
{
  v20 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(set) & 1) == 0)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill(v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v15[0]);
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableOrderedSet removeObjectsInSet:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet removeObjectsInSet:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v14);
  }

LABEL_4:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [set countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(set);
        }

        v10 = [(NSOrderedSet *)self indexOfObject:*(*(&v16 + 1) + 8 * i)];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableOrderedSet *)self removeObjectAtIndex:v10];
        }
      }

      v7 = [set countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)removeObjectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test
{
  v23[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (indexes)
    {
      goto LABEL_3;
    }

LABEL_12:
    v16 = _os_log_pack_size();
    v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: index set cannot be nil", v23[0]);
    *v18 = 136315138;
    *(v18 + 4) = "[NSMutableOrderedSet removeObjectsAtIndexes:options:passingTest:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableOrderedSet removeObjectsAtIndexes:options:passingTest:]");
    goto LABEL_15;
  }

  __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
  if (!indexes)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((_NSIsNSIndexSet(indexes) & 1) == 0)
  {
    v16 = _os_log_pack_size();
    v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v23[0]);
    *v20 = 136315138;
    *(v20 + 4) = "[NSMutableOrderedSet removeObjectsAtIndexes:options:passingTest:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableOrderedSet removeObjectsAtIndexes:options:passingTest:]");
    goto LABEL_15;
  }

  if (!test)
  {
    v16 = _os_log_pack_size();
    v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v23[0]);
    *v21 = 136315138;
    *(v21 + 4) = "[NSMutableOrderedSet removeObjectsAtIndexes:options:passingTest:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableOrderedSet removeObjectsAtIndexes:options:passingTest:]");
LABEL_15:
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v17, v16];
    objc_exception_throw(v22);
  }

  if ((options & 2) != 0)
  {
    options &= 0xAFFFFFFFFFFFFFFELL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, test, options | 0x5000000000000000, indexes);
  IndexesPassingTest = __NSOrderedSetGetIndexesPassingTest(self, test, options | 0x5000000000000000, indexes);
  rangeCount = [IndexesPassingTest rangeCount];
  if (rangeCount)
  {
    v13 = rangeCount - 1;
    do
    {
      v14 = [IndexesPassingTest rangeAtIndex:v13];
      [(NSMutableOrderedSet *)self removeObjectsInRange:v14, v15];
      --v13;
    }

    while (v13 != -1);
  }
}

- (void)removeObjectsWithOptions:(unint64_t)options passingTest:(id)test
{
  v18[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (test)
    {
      goto LABEL_3;
    }

LABEL_10:
    v14 = _os_log_pack_size();
    v15 = _os_log_pack_fill(v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v18[0]);
    *v15 = 136315138;
    *(v15 + 4) = "[NSMutableOrderedSet removeObjectsWithOptions:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableOrderedSet removeObjectsWithOptions:passingTest:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14];
    objc_exception_throw(v17);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  if (!test)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((options & 2) != 0)
  {
    options &= 0xBFFFFFFFFFFFFFFELL;
  }

  __NSOrderedSetParameterCheckIterate(self, a2, test, options | 0x4000000000000000, 0);
  IndexesPassingTest = __NSOrderedSetGetIndexesPassingTest(self, test, options | 0x4000000000000000, 0);
  rangeCount = [IndexesPassingTest rangeCount];
  if (rangeCount)
  {
    v11 = rangeCount - 1;
    do
    {
      v12 = [IndexesPassingTest rangeAtIndex:v11];
      [(NSMutableOrderedSet *)self removeObjectsInRange:v12, v13];
      --v11;
    }

    while (v11 != -1);
  }
}

- (void)removeObjectsPassingTest:(id)test
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v10[0]);
    *v7 = 136315138;
    *(v7 + 4) = "[NSMutableOrderedSet removeObjectsPassingTest:]";
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableOrderedSet removeObjectsPassingTest:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  [(NSMutableOrderedSet *)self removeObjectsWithOptions:0 passingTest:test];
}

- (void)replaceObject:(id)object inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v25 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (object)
    {
      goto LABEL_3;
    }

LABEL_11:
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, 0, &dword_1830E6000, "*** %s: object cannot be nil", v24);
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableOrderedSet replaceObject:inRange:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableOrderedSet replaceObject:inRange:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v14);
  }

  if (!object)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v20 = v9;
      v15 = _os_log_pack_size();
      v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill(v16, v15, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v24, v25, v26, v27);
      v22 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v21, "[NSMutableOrderedSet replaceObject:inRange:]", location, length, --v20);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v22, "[NSMutableOrderedSet replaceObject:inRange:]", location, length, v20);
    }

    else
    {
      v15 = _os_log_pack_size();
      v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill(v16, v15, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v24, v25, v26);
      v18 = __os_log_helper_1_2_3_8_32_8_0_8_0(v17, "[NSMutableOrderedSet replaceObject:inRange:]", location, length);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v18, "[NSMutableOrderedSet replaceObject:inRange:]", location, length);
    }

    v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v16, v15];
    objc_exception_throw(v23);
  }

  v10 = [(NSOrderedSet *)self indexOfObject:object inRange:location, length];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(NSMutableOrderedSet *)self replaceObjectAtIndex:v10 withObject:object];
  }
}

- (void)replaceObject:(id)object
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_8:
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: object cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSMutableOrderedSet replaceObject:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableOrderedSet replaceObject:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  if (!object)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = [(NSOrderedSet *)self indexOfObject:object];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(NSMutableOrderedSet *)self replaceObjectAtIndex:v6 withObject:object];
  }
}

- (void)replaceObjectsInRange:(NSRange)range withObjects:(id *)objects count:(NSUInteger)count
{
  length = range.length;
  location = range.location;
  v36 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
  }

  v11 = [(NSOrderedSet *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (v11)
    {
      v31 = v11;
      v24 = _os_log_pack_size();
      v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = _os_log_pack_fill(v25, v24, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v35, v36, v37, v38);
      v33 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v32, "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]", location, length, --v31);
      v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v33, "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]", location, length, v31);
    }

    else
    {
      v24 = _os_log_pack_size();
      v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = _os_log_pack_fill(v25, v24, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v35, v36, v37);
      v27 = __os_log_helper_1_2_3_8_32_8_0_8_0(v26, "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]", location, length);
      v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v27, "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]", location, length);
    }

    v34 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v25, v24];
    objc_exception_throw(v34);
  }

  if (!objects && count)
  {
    v20 = _os_log_pack_size();
    v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v21, v20, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v35, v36);
    *v22 = 136315394;
    *(v22 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]";
    *(v22 + 12) = 2048;
    *(v22 + 14) = count;
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]", count);
    goto LABEL_26;
  }

  if (count >> 61)
  {
    v20 = _os_log_pack_size();
    v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = _os_log_pack_fill(v21, v20, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v35, v36);
    *v29 = 136315394;
    *(v29 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]";
    *(v29 + 12) = 2048;
    *(v29 + 14) = count;
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]", count);
LABEL_26:
    v30 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v20];
    objc_exception_throw(v30);
  }

  if (count)
  {
    v12 = 0;
    do
    {
      if (!objects[v12])
      {
        v16 = _os_log_pack_size();
        v17 = _os_log_pack_fill(&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]", v35, v36);
        *v17 = 136315394;
        *(v17 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]";
        *(v17 + 12) = 2048;
        *(v17 + 14) = v12;
        v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableOrderedSet replaceObjectsInRange:withObjects:count:]", v12);
        v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16];
        objc_exception_throw(v19);
      }

      ++v12;
    }

    while (count != v12);
    v13 = 0;
    do
    {
      v14 = objects[v13++];
    }

    while (count != v13);
    [(NSMutableOrderedSet *)self removeObjectsInRange:location, length];
    [(NSMutableOrderedSet *)self insertObjects:objects count:count atIndex:location];
    do
    {
      v15 = *objects++;

      --count;
    }

    while (count);
  }

  else
  {
    [(NSMutableOrderedSet *)self removeObjectsInRange:location, length];

    [(NSMutableOrderedSet *)self insertObjects:objects count:0 atIndex:location];
  }
}

- (void)replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray *)objects
{
  v70 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!objects)
    {
      goto LABEL_4;
    }
  }

  else if (!objects)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(objects) & 1) == 0)
  {
    v62 = _os_log_pack_size();
    v65 = &v69 - ((MEMORY[0x1EEE9AC00](v62, v63, v64) + 15) & 0xFFFFFFFFFFFFFFF0);
    v66 = _os_log_pack_fill(v65, v62, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v69);
    *v66 = 136315138;
    *(v66 + 4) = "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]";
    v67 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]");
    v68 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v67) osLogPack:0 size:v65, v62];
    objc_exception_throw(v68);
  }

LABEL_4:
  if (!indexes)
  {
    v31 = _os_log_pack_size();
    v34 = &v69 - ((MEMORY[0x1EEE9AC00](v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill(v34, v31, 0, &dword_1830E6000, "*** %s: index set cannot be nil", v69);
    *v35 = 136315138;
    *(v35 + 4) = "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]";
    v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]");
    v37 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v34, v31];
    objc_exception_throw(v37);
  }

  if ((_NSIsNSIndexSet(indexes) & 1) == 0)
  {
    v38 = _os_log_pack_size();
    v41 = &v69 - ((MEMORY[0x1EEE9AC00](v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = _os_log_pack_fill(v41, v38, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v69);
    *v42 = 136315138;
    *(v42 + 4) = "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]";
    v43 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]");
    v44 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v43) osLogPack:0 size:v41, v38];
    objc_exception_throw(v44);
  }

  v8 = [(NSOrderedSet *)self count];
  v9 = [(NSArray *)objects count];
  lastIndex = [(NSIndexSet *)indexes lastIndex];
  v11 = lastIndex;
  if ((lastIndex & 0x8000000000000000) != 0)
  {
    v12 = v9 + v8;
    goto LABEL_28;
  }

  if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v9 + v8;
    if (v12 <= lastIndex)
    {
LABEL_28:
      if (!v12)
      {
        v45 = _os_log_pack_size();
        v48 = &v69 - ((MEMORY[0x1EEE9AC00](v45, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
        v49 = _os_log_pack_fill(v48, v45, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds for empty ordered set", v69, v70);
        *v49 = 136315394;
        *(v49 + 4) = "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]";
        *(v49 + 12) = 2048;
        *(v49 + 14) = v11;
        v50 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty ordered set", "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]", v11);
        v51 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v50) osLogPack:0 size:v48, v45];
        objc_exception_throw(v51);
      }

      v52 = _os_log_pack_size();
      v55 = &v69 - ((MEMORY[0x1EEE9AC00](v52, v53, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
      v56 = _os_log_pack_fill(v55, v52, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds [0 .. %lu]", v69, v70, v71);
      v57 = __os_log_helper_1_2_3_8_32_8_0_8_0(v56, "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]", v11, v12 - 1);
      v58 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v57, "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]", v11, v12 - 1);
      v59 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v58) osLogPack:0 size:v55, v52];
      objc_exception_throw(v59);
    }
  }

  v13 = [(NSArray *)objects count];
  v14 = [(NSIndexSet *)indexes count];
  if (v13 != v14)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of array (%lu) differs from count of index set (%lu)", "[NSMutableOrderedSet replaceObjectsAtIndexes:withObjects:]", v13, v14);
  }

  v15 = [(NSArray *)objects count];
  v18 = v15;
  if (v15 >> 60)
  {
    v60 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v15);
    v61 = [NSException exceptionWithName:@"NSGenericException" reason:v60 userInfo:0];
    CFRelease(v60);
    objc_exception_throw(v61);
  }

  if (v15 <= 1)
  {
    v15 = 1;
  }

  v19 = MEMORY[0x1EEE9AC00](v15, v16, v17);
  v21 = &v69 - v20;
  v69 = 0;
  if (v18 >= 0x101)
  {
    v21 = _CFCreateArrayStorage(v19, 0, &v69);
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  [(NSArray *)objects getObjects:v21 range:0, v18, v69];
  for (i = [(NSIndexSet *)indexes rangeCount]- 1; i != -1; --i)
  {
    v24 = [(NSIndexSet *)indexes rangeAtIndex:i];
    [(NSMutableOrderedSet *)self removeObjectsInRange:v24, v25];
  }

  v26 = 0;
  for (j = 0; j < [(NSIndexSet *)indexes rangeCount]; ++j)
  {
    v28 = [(NSIndexSet *)indexes rangeAtIndex:j];
    v30 = v29;
    [(NSMutableOrderedSet *)self insertObjects:&v21[8 * v26] count:v29 atIndex:v28];
    v26 += v30;
  }

  free(v22);
}

- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromArray:(id)array range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = range.length;
  v10 = range.location;
  v65 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
    if (!array)
    {
      goto LABEL_4;
    }
  }

  else if (!array)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(array) & 1) == 0)
  {
    v39 = _os_log_pack_size();
    v42 = &v64 - ((MEMORY[0x1EEE9AC00](v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = _os_log_pack_fill(v42, v39, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v64);
    *v43 = 136315138;
    *(v43 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]";
    v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]");
    v45 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v44) osLogPack:0 size:v42, v39];
    objc_exception_throw(v45);
  }

LABEL_4:
  v12 = [array count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v12 < location + length)
  {
    if (!v12)
    {
      v21 = _os_log_pack_size();
      v24 = &v64 - ((MEMORY[0x1EEE9AC00](v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = _os_log_pack_fill(v24, v21, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v64, v65, v66);
      v26 = __os_log_helper_1_2_3_8_32_8_0_8_0(v25, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", location, length);
      v27 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v26, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", location, length);
      v28 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v27) osLogPack:0 size:v24, v21];
      objc_exception_throw(v28);
    }

    v46 = v12;
    v47 = _os_log_pack_size();
    v50 = &v64 - ((MEMORY[0x1EEE9AC00](v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = _os_log_pack_fill(v50, v47, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v64, v65, v66, v67);
    v52 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v51, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", location, length, --v46);
    v53 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v52, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", location, length, v46);
    v54 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v53) osLogPack:0 size:v50, v47];
    objc_exception_throw(v54);
  }

  v13 = [(NSOrderedSet *)self count];
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v13 < v10 + v9)
  {
    if (!v13)
    {
      v29 = _os_log_pack_size();
      v32 = &v64 - ((MEMORY[0x1EEE9AC00](v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = _os_log_pack_fill(v32, v29, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v64, v65, v66);
      v34 = __os_log_helper_1_2_3_8_32_8_0_8_0(v33, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9);
      v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v34, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9);
      v36 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v35) osLogPack:0 size:v32, v29];
      objc_exception_throw(v36);
    }

    v55 = v13;
    v56 = _os_log_pack_size();
    v59 = &v64 - ((MEMORY[0x1EEE9AC00](v56, v57, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
    v60 = _os_log_pack_fill(v59, v56, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v64, v65, v66, v67);
    v61 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v60, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9, --v55);
    v62 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v61, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9, v55);
    v63 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v62) osLogPack:0 size:v59, v56];
    objc_exception_throw(v63);
  }

  if (length >> 60)
  {
    v37 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v38 = [NSException exceptionWithName:@"NSGenericException" reason:v37 userInfo:0];
    CFRelease(v37);
    objc_exception_throw(v38);
  }

  if (length <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = length;
  }

  v17 = MEMORY[0x1EEE9AC00](v16, v14, v15);
  v19 = &v64 - v18;
  v64 = 0;
  if (length >= 0x101)
  {
    v19 = _CFCreateArrayStorage(v17, 0, &v64);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  [array getObjects:v19 range:{location, length, v64}];
  [(NSMutableOrderedSet *)self replaceObjectsInRange:v10 withObjects:v9 count:v19, length];
  free(v20);
}

- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromArray:(id)array
{
  length = range.length;
  location = range.location;
  v46 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!array)
    {
      goto LABEL_4;
    }
  }

  else if (!array)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(array) & 1) == 0)
  {
    v29 = _os_log_pack_size();
    v32 = &v45 - ((MEMORY[0x1EEE9AC00](v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = _os_log_pack_fill(v32, v29, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v45);
    *v33 = 136315138;
    *(v33 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:]";
    v34 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:]");
    v35 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v34) osLogPack:0 size:v32, v29];
    objc_exception_throw(v35);
  }

LABEL_4:
  v9 = [(NSOrderedSet *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v19 = _os_log_pack_size();
      v22 = &v45 - ((MEMORY[0x1EEE9AC00](v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill(v22, v19, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v45, v46, v47);
      v24 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:]", location, length);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v24, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:]", location, length);
      v26 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v22, v19];
      objc_exception_throw(v26);
    }

    v36 = _os_log_pack_size();
    v39 = &v45 - ((MEMORY[0x1EEE9AC00](v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill(v39, v36, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v45, v46, v47, v48);
    v41 = v10 - 1;
    v42 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v40, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:]", location, length, v41);
    v43 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v42, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromArray:]", location, length, v41);
    v44 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v43) osLogPack:0 size:v39, v36];
    objc_exception_throw(v44);
  }

  v11 = [array count];
  v14 = v11;
  if (v11 >> 60)
  {
    v27 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v11);
    v28 = [NSException exceptionWithName:@"NSGenericException" reason:v27 userInfo:0];
    CFRelease(v27);
    objc_exception_throw(v28);
  }

  if (v11 <= 1)
  {
    v11 = 1;
  }

  v15 = MEMORY[0x1EEE9AC00](v11, v12, v13);
  v17 = &v45 - v16;
  v45 = 0;
  if (v14 >= 0x101)
  {
    v17 = _CFCreateArrayStorage(v15, 0, &v45);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [array getObjects:v17 range:{0, v14, v45}];
  [(NSMutableOrderedSet *)self replaceObjectsInRange:location withObjects:length count:v17, v14];
  free(v18);
}

- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromOrderedSet:(id)set range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = range.length;
  v10 = range.location;
  v65 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v39 = _os_log_pack_size();
    v42 = &v64 - ((MEMORY[0x1EEE9AC00](v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = _os_log_pack_fill(v42, v39, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v64);
    *v43 = 136315138;
    *(v43 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]";
    v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]");
    v45 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v44) osLogPack:0 size:v42, v39];
    objc_exception_throw(v45);
  }

LABEL_4:
  v12 = [set count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v12 < location + length)
  {
    if (!v12)
    {
      v21 = _os_log_pack_size();
      v24 = &v64 - ((MEMORY[0x1EEE9AC00](v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = _os_log_pack_fill(v24, v21, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v64, v65, v66);
      v26 = __os_log_helper_1_2_3_8_32_8_0_8_0(v25, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length);
      v27 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v26, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length);
      v28 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v27) osLogPack:0 size:v24, v21];
      objc_exception_throw(v28);
    }

    v46 = v12;
    v47 = _os_log_pack_size();
    v50 = &v64 - ((MEMORY[0x1EEE9AC00](v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = _os_log_pack_fill(v50, v47, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v64, v65, v66, v67);
    v52 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v51, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length, --v46);
    v53 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v52, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length, v46);
    v54 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v53) osLogPack:0 size:v50, v47];
    objc_exception_throw(v54);
  }

  v13 = [(NSOrderedSet *)self count];
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v13 < v10 + v9)
  {
    if (!v13)
    {
      v29 = _os_log_pack_size();
      v32 = &v64 - ((MEMORY[0x1EEE9AC00](v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = _os_log_pack_fill(v32, v29, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v64, v65, v66);
      v34 = __os_log_helper_1_2_3_8_32_8_0_8_0(v33, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9);
      v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v34, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9);
      v36 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v35) osLogPack:0 size:v32, v29];
      objc_exception_throw(v36);
    }

    v55 = v13;
    v56 = _os_log_pack_size();
    v59 = &v64 - ((MEMORY[0x1EEE9AC00](v56, v57, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
    v60 = _os_log_pack_fill(v59, v56, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v64, v65, v66, v67);
    v61 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v60, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9, --v55);
    v62 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v61, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9, v55);
    v63 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v62) osLogPack:0 size:v59, v56];
    objc_exception_throw(v63);
  }

  if (length >> 60)
  {
    v37 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v38 = [NSException exceptionWithName:@"NSGenericException" reason:v37 userInfo:0];
    CFRelease(v37);
    objc_exception_throw(v38);
  }

  if (length <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = length;
  }

  v17 = MEMORY[0x1EEE9AC00](v16, v14, v15);
  v19 = &v64 - v18;
  v64 = 0;
  if (length >= 0x101)
  {
    v19 = _CFCreateArrayStorage(v17, 0, &v64);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  [set getObjects:v19 range:{location, length, v64}];
  [(NSMutableOrderedSet *)self replaceObjectsInRange:v10 withObjects:v9 count:v19, length];
  free(v20);
}

- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromOrderedSet:(id)set
{
  length = range.length;
  location = range.location;
  v46 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v29 = _os_log_pack_size();
    v32 = &v45 - ((MEMORY[0x1EEE9AC00](v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = _os_log_pack_fill(v32, v29, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v45);
    *v33 = 136315138;
    *(v33 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:]";
    v34 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:]");
    v35 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v34) osLogPack:0 size:v32, v29];
    objc_exception_throw(v35);
  }

LABEL_4:
  v9 = [(NSOrderedSet *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v19 = _os_log_pack_size();
      v22 = &v45 - ((MEMORY[0x1EEE9AC00](v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill(v22, v19, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v45, v46, v47);
      v24 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v24, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length);
      v26 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v22, v19];
      objc_exception_throw(v26);
    }

    v36 = _os_log_pack_size();
    v39 = &v45 - ((MEMORY[0x1EEE9AC00](v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill(v39, v36, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v45, v46, v47, v48);
    v41 = v10 - 1;
    v42 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v40, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length, v41);
    v43 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v42, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length, v41);
    v44 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v43) osLogPack:0 size:v39, v36];
    objc_exception_throw(v44);
  }

  v11 = [set count];
  v14 = v11;
  if (v11 >> 60)
  {
    v27 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v11);
    v28 = [NSException exceptionWithName:@"NSGenericException" reason:v27 userInfo:0];
    CFRelease(v27);
    objc_exception_throw(v28);
  }

  if (v11 <= 1)
  {
    v11 = 1;
  }

  v15 = MEMORY[0x1EEE9AC00](v11, v12, v13);
  v17 = &v45 - v16;
  v45 = 0;
  if (v14 >= 0x101)
  {
    v17 = _CFCreateArrayStorage(v15, 0, &v45);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [set getObjects:v17 range:{0, v14, v45}];
  [(NSMutableOrderedSet *)self replaceObjectsInRange:location withObjects:length count:v17, v14];
  free(v18);
}

- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromSet:(id)set
{
  length = range.length;
  location = range.location;
  v46 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(set) & 1) == 0)
  {
    v29 = _os_log_pack_size();
    v32 = &v45 - ((MEMORY[0x1EEE9AC00](v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = _os_log_pack_fill(v32, v29, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v45);
    *v33 = 136315138;
    *(v33 + 4) = "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromSet:]";
    v34 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromSet:]");
    v35 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v34) osLogPack:0 size:v32, v29];
    objc_exception_throw(v35);
  }

LABEL_4:
  v9 = [(NSOrderedSet *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v19 = _os_log_pack_size();
      v22 = &v45 - ((MEMORY[0x1EEE9AC00](v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill(v22, v19, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v45, v46, v47);
      v24 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromSet:]", location, length);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v24, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromSet:]", location, length);
      v26 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v22, v19];
      objc_exception_throw(v26);
    }

    v36 = _os_log_pack_size();
    v39 = &v45 - ((MEMORY[0x1EEE9AC00](v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill(v39, v36, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v45, v46, v47, v48);
    v41 = v10 - 1;
    v42 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v40, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromSet:]", location, length, v41);
    v43 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v42, "[NSMutableOrderedSet replaceObjectsInRange:withObjectsFromSet:]", location, length, v41);
    v44 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v43) osLogPack:0 size:v39, v36];
    objc_exception_throw(v44);
  }

  v11 = [set count];
  v14 = v11;
  if (v11 >> 60)
  {
    v27 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v11);
    v28 = [NSException exceptionWithName:@"NSGenericException" reason:v27 userInfo:0];
    CFRelease(v27);
    objc_exception_throw(v28);
  }

  if (v11 <= 1)
  {
    v11 = 1;
  }

  v15 = MEMORY[0x1EEE9AC00](v11, v12, v13);
  v17 = &v45 - v16;
  v45 = 0;
  if (v14 >= 0x101)
  {
    v17 = _CFCreateArrayStorage(v15, 0, &v45);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [set getObjects:v17 count:{v14, v45}];
  [(NSMutableOrderedSet *)self replaceObjectsInRange:location withObjects:length count:v17, v14];
  free(v18);
}

- (void)setArray:(id)array
{
  v10[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!array)
    {
      goto LABEL_4;
    }
  }

  else if (!array)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(array) & 1) == 0)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v10[0]);
    *v7 = 136315138;
    *(v7 + 4) = "[NSMutableOrderedSet setArray:]";
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableOrderedSet setArray:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

LABEL_4:
  [(NSMutableOrderedSet *)self removeAllObjects];

  [(NSMutableOrderedSet *)self insertObjectsFromArray:array atIndex:0];
}

- (void)setObject:(id)obj atIndex:(NSUInteger)idx
{
  v22 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
    if (obj)
    {
      goto LABEL_3;
    }

LABEL_13:
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9, 0, &dword_1830E6000, "*** %s: object cannot be nil", v21);
    *v10 = 136315138;
    *(v10 + 4) = "[NSMutableOrderedSet setObject:atIndex:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableOrderedSet setObject:atIndex:]");
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v12);
  }

  if (!obj)
  {
    goto LABEL_13;
  }

LABEL_3:
  v8 = [(NSOrderedSet *)self count];
  if ((idx & 0x8000000000000000) != 0 || v8 < idx)
  {
    if (v8)
    {
      v17 = v8;
      v13 = _os_log_pack_size();
      v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v21, v22, v23);
      v19 = __os_log_helper_1_2_3_8_32_8_0_8_0(v18, "[NSMutableOrderedSet setObject:atIndex:]", idx, --v17);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v19, "[NSMutableOrderedSet setObject:atIndex:]", idx, v17);
    }

    else
    {
      v13 = _os_log_pack_size();
      v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v21, v22);
      *v15 = 136315394;
      *(v15 + 4) = "[NSMutableOrderedSet setObject:atIndex:]";
      *(v15 + 12) = 2048;
      *(v15 + 14) = idx;
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[NSMutableOrderedSet setObject:atIndex:]", idx);
    }

    v20 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
    objc_exception_throw(v20);
  }

  if ([(NSOrderedSet *)self count]== idx)
  {

    [(NSMutableOrderedSet *)self insertObject:obj atIndex:idx];
  }

  else
  {

    [(NSMutableOrderedSet *)self replaceObjectAtIndex:idx withObject:obj];
  }
}

- (void)setObject:(id)object
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill(v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8, 0, &dword_1830E6000, "*** %s: object cannot be nil", v12[0]);
    *v9 = 136315138;
    *(v9 + 4) = "[NSMutableOrderedSet setObject:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableOrderedSet setObject:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  if (!object)
  {
    goto LABEL_12;
  }

LABEL_3:
  v6 = [(NSOrderedSet *)self indexOfObject:object];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSOrderedSet *)self objectAtIndex:v6];
  }

  if (v7 != object)
  {

    [(NSMutableOrderedSet *)self replaceObjectAtIndex:v6 withObject:object];
  }
}

- (void)setOrderedSet:(id)set
{
  v10[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v10[0]);
    *v7 = 136315138;
    *(v7 + 4) = "[NSMutableOrderedSet setOrderedSet:]";
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet setOrderedSet:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

LABEL_4:
  if (self != set)
  {
    [(NSMutableOrderedSet *)self removeAllObjects];

    [(NSMutableOrderedSet *)self insertObjectsFromOrderedSet:set atIndex:0];
  }
}

- (void)setSet:(id)set
{
  v10[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!set)
    {
      goto LABEL_4;
    }
  }

  else if (!set)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(set) & 1) == 0)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v10[0]);
    *v7 = 136315138;
    *(v7 + 4) = "[NSMutableOrderedSet setSet:]";
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet setSet:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

LABEL_4:
  [(NSMutableOrderedSet *)self removeAllObjects];

  [(NSMutableOrderedSet *)self insertObjectsFromSet:set atIndex:0];
}

- (id)sortedArrayFromRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSMutableOrderedSet;
  return [-[NSOrderedSet sortedArrayFromRange:options:usingComparator:](&v6 sortedArrayFromRange:range.location options:range.length usingComparator:{options, comparator), "copy"}];
}

- (void)sortRange:(NSRange)range options:(NSSortOptions)opts usingComparator:(NSComparator)cmptr
{
  length = range.length;
  location = range.location;
  v64[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableOrderedSet);
    if (cmptr)
    {
      goto LABEL_3;
    }

LABEL_27:
    v31 = _os_log_pack_size();
    v34 = &v56 - ((MEMORY[0x1EEE9AC00](v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill(v34, v31, 0, &dword_1830E6000, "*** %s: comparator cannot be nil", v56);
    *v35 = 136315138;
    *(v35 + 4) = "[NSMutableOrderedSet sortRange:options:usingComparator:]";
    v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSMutableOrderedSet sortRange:options:usingComparator:]");
    v37 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v34, v31];
    objc_exception_throw(v37);
  }

  if (!cmptr)
  {
    goto LABEL_27;
  }

LABEL_3:
  v11 = [(NSOrderedSet *)self count];
  v14 = v11;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (!v11)
    {
      v38 = _os_log_pack_size();
      v41 = &v56 - ((MEMORY[0x1EEE9AC00](v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
      v42 = _os_log_pack_fill(v41, v38, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v56, v57, v58);
      v43 = __os_log_helper_1_2_3_8_32_8_0_8_0(v42, "[NSMutableOrderedSet sortRange:options:usingComparator:]", location, length);
      v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v43, "[NSMutableOrderedSet sortRange:options:usingComparator:]", location, length);
      v45 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v44) osLogPack:0 size:v41, v38];
      objc_exception_throw(v45);
    }

    v46 = _os_log_pack_size();
    v49 = &v56 - ((MEMORY[0x1EEE9AC00](v46, v47, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = _os_log_pack_fill(v49, v46, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v56, v57, v58, v59);
    v51 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v50, "[NSMutableOrderedSet sortRange:options:usingComparator:]", location, length, v14 - 1);
    v52 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v51, "[NSMutableOrderedSet sortRange:options:usingComparator:]", location, length, v14 - 1);
    v53 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v52) osLogPack:0 size:v49, v46];
    objc_exception_throw(v53);
  }

  if (length >= 2)
  {
    if (length >> 60)
    {
      v54 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
      v55 = [NSException exceptionWithName:@"NSGenericException" reason:v54 userInfo:0];
      CFRelease(v54);
      objc_exception_throw(v55);
    }

    if (length >= 0x101)
    {
      v15 = 1;
    }

    else
    {
      v15 = length;
    }

    v16 = 8 * v15;
    MEMORY[0x1EEE9AC00](v11, v12, v13);
    v18 = &v56 - v17;
    v64[0] = 0;
    if (length >= 0x101)
    {
      v18 = _CFCreateArrayStorage(length, 0, v64);
      v56 = v18;
    }

    else
    {
      v56 = 0;
    }

    v19 = [(NSOrderedSet *)self getObjects:v18 range:location, length, v56];
    MEMORY[0x1EEE9AC00](v19, v20, v21);
    v23 = &v56 - v22;
    v24 = &v56 - v22;
    if (length > 0x1000)
    {
      v24 = malloc_type_malloc(8 * length, 0x100004000313F17uLL);
    }

    v58 = MEMORY[0x1E69E9820];
    v59 = 3221225472;
    v60 = __57__NSMutableOrderedSet_sortRange_options_usingComparator___block_invoke;
    v61 = &unk_1E6D7D7A0;
    v62 = cmptr;
    v63 = v18;
    CFSortIndexes(v24, length, opts, &v58);
    MEMORY[0x1EEE9AC00](v25, v26, v27);
    v28 = 0;
    v57 = 0;
    if (length >= 0x101)
    {
      v28 = _CFCreateArrayStorage(length, 0, &v57);
    }

    v29 = 0;
    if (length >= 0x101)
    {
      v30 = v28;
    }

    else
    {
      v30 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    }

    do
    {
      *&v30[8 * v29] = *&v18[8 * *&v24[8 * v29]];
      ++v29;
    }

    while (length != v29);
    [(NSMutableOrderedSet *)self replaceObjectsInRange:location withObjects:length count:?];
    if (v23 != v24)
    {
      free(v24);
    }

    free(v28);
    free(v56);
  }
}

- (void)sortWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr
{
  v16[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (cmptr)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = _os_log_pack_size();
    v12 = v16 - ((MEMORY[0x1EEE9AC00](v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill(v12, v9, 0, &dword_1830E6000, "*** %s: comparator cannot be nil", v16[0]);
    *v13 = 136315138;
    *(v13 + 4) = "[NSMutableOrderedSet sortWithOptions:usingComparator:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSMutableOrderedSet sortWithOptions:usingComparator:]");
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v9];
    objc_exception_throw(v15);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableOrderedSet);
  if (!cmptr)
  {
    goto LABEL_8;
  }

LABEL_3:
  v8 = [(NSOrderedSet *)self count];
  if (v8 >= 2)
  {

    [(NSMutableOrderedSet *)self sortRange:0 options:v8 usingComparator:opts, cmptr];
  }
}

- (void)sortUsingComparator:(NSComparator)cmptr
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (cmptr)
    {
      goto LABEL_3;
    }

LABEL_8:
    v7 = _os_log_pack_size();
    v10 = v14 - ((MEMORY[0x1EEE9AC00](v7, v8, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = _os_log_pack_fill(v10, v7, 0, &dword_1830E6000, "*** %s: comparator cannot be nil", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSMutableOrderedSet sortUsingComparator:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSMutableOrderedSet sortUsingComparator:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v10, v7];
    objc_exception_throw(v13);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
  if (!cmptr)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = [(NSOrderedSet *)self count];
  if (v6 >= 2)
  {

    [(NSMutableOrderedSet *)self sortRange:0 options:v6 usingComparator:0, cmptr];
  }
}

- (void)unionOrderedSet:(NSOrderedSet *)other
{
  v25[1] = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!other)
    {
      goto LABEL_4;
    }
  }

  else if (!other)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSOrderedSet(other) & 1) == 0)
  {
    v18 = _os_log_pack_size();
    v21 = v25 - ((MEMORY[0x1EEE9AC00](v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v21, v18, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v25[0]);
    *v22 = 136315138;
    *(v22 + 4) = "[NSMutableOrderedSet unionOrderedSet:]";
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableOrderedSet unionOrderedSet:]");
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v18];
    objc_exception_throw(v24);
  }

LABEL_4:
  v6 = [(NSOrderedSet *)other count];
  v9 = v6;
  if (v6 >> 60)
  {
    v16 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v17 = [NSException exceptionWithName:@"NSGenericException" reason:v16 userInfo:0];
    CFRelease(v16);
    objc_exception_throw(v17);
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v10 = MEMORY[0x1EEE9AC00](v6, v7, v8);
  v12 = v25 - v11;
  v25[0] = 0;
  if (v9 >= 0x101)
  {
    v12 = _CFCreateArrayStorage(v10, 0, v25);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  [(NSOrderedSet *)other getObjects:v12 range:0, v9, v25[0]];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v15 = [(NSOrderedSet *)other countForObject:*&v12[8 * i]]+ 1;
      while (--v15)
      {
        [(NSMutableOrderedSet *)self addObject:*&v12[8 * i]];
      }
    }
  }

  free(v13);
}

- (void)unionSet:(NSSet *)other
{
  v22 = *MEMORY[0x1E69E9840];
  [(NSMutableOrderedSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableOrderedSet);
    if (!other)
    {
      goto LABEL_4;
    }
  }

  else if (!other)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSSet(other) & 1) == 0)
  {
    v13 = _os_log_pack_size();
    v14 = _os_log_pack_fill(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v17[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSMutableOrderedSet unionSet:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableOrderedSet unionSet:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13];
    objc_exception_throw(v16);
  }

LABEL_4:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(NSSet *)other countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(other);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(NSSet *)other countForObject:v10];
        if (v11)
        {
          v12 = v11;
          do
          {
            --v12;
            [(NSMutableOrderedSet *)self addObject:v10];
          }

          while (v12);
        }
      }

      v7 = [(NSSet *)other countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v7);
  }
}

+ (NSMutableOrderedSet)orderedSetWithCapacity:(NSUInteger)numItems
{
  v3 = [[self alloc] initWithCapacity:numItems];

  return v3;
}

- (NSMutableOrderedSet)initWithObjects:(const void *)objects count:(unint64_t)count
{
  v20 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v13 = _os_log_pack_size();
    v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v19, v20);
    *v15 = 136315394;
    *(v15 + 4) = "[NSMutableOrderedSet initWithObjects:count:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = count;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableOrderedSet initWithObjects:count:]", count);
    goto LABEL_12;
  }

  if (count >> 61)
  {
    v13 = _os_log_pack_size();
    v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v19, v20);
    *v17 = 136315394;
    *(v17 + 4) = "[NSMutableOrderedSet initWithObjects:count:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = count;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableOrderedSet initWithObjects:count:]", count);
LABEL_12:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
    objc_exception_throw(v18);
  }

  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (!objects[i])
      {
        v9 = _os_log_pack_size();
        v10 = _os_log_pack_fill(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]", v19, v20);
        *v10 = 136315394;
        *(v10 + 4) = "[NSMutableOrderedSet initWithObjects:count:]";
        *(v10 + 12) = 2048;
        *(v10 + 14) = i;
        v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableOrderedSet initWithObjects:count:]", i);
        v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
        objc_exception_throw(v12);
      }
    }
  }

  v7 = [(NSMutableOrderedSet *)self initWithCapacity:count];
  [(NSMutableOrderedSet *)v7 insertObjects:objects count:count atIndex:0];
  return v7;
}

- (void)insertObject:(id)object atIndex:(NSUInteger)idx
{
  OUTLINED_FUNCTION_1_2();
  __CFLookUpClass("NSMutableOrderedSet");
  OUTLINED_FUNCTION_0_2();

  __CFRequireConcreteImplementation(v4, v5, v6);
}

- (void)removeObjectAtIndex:(NSUInteger)idx
{
  OUTLINED_FUNCTION_1_2();
  __CFLookUpClass("NSMutableOrderedSet");
  OUTLINED_FUNCTION_0_2();

  __CFRequireConcreteImplementation(v3, v4, v5);
}

- (void)replaceObjectAtIndex:(NSUInteger)idx withObject:(id)object
{
  OUTLINED_FUNCTION_1_2();
  __CFLookUpClass("NSMutableOrderedSet");
  OUTLINED_FUNCTION_0_2();

  __CFRequireConcreteImplementation(v4, v5, v6);
}

- (NSMutableOrderedSet)initWithCapacity:(NSUInteger)numItems
{
  OUTLINED_FUNCTION_1_2();
  __CFLookUpClass("NSMutableOrderedSet");
  OUTLINED_FUNCTION_0_2();
  __CFRequireConcreteImplementation(v3, v4, v5);
}

@end