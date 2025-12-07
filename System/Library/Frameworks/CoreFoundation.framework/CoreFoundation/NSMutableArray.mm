@interface NSMutableArray
+ (NSMutableArray)arrayWithCapacity:(NSUInteger)numItems;
- (NSMutableArray)initWithCapacity:(NSUInteger)numItems;
- (NSMutableArray)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)arrayByAddingObjectsFromArray:(id)array;
- (id)sortedArrayFromRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator;
- (void)addObject:(id)anObject;
- (void)addObjects:(const void *)objects count:(unint64_t)count;
- (void)addObjectsFromArray:(NSArray *)otherArray;
- (void)addObjectsFromArray:(id)array range:(_NSRange)range;
- (void)addObjectsFromOrderedSet:(id)set;
- (void)addObjectsFromOrderedSet:(id)set range:(_NSRange)range;
- (void)addObjectsFromSet:(id)set;
- (void)exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2;
- (void)insertObject:(id)anObject atIndex:(NSUInteger)index;
- (void)insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes;
- (void)insertObjects:(const void *)objects count:(unint64_t)count atIndex:(unint64_t)index;
- (void)insertObjectsFromArray:(id)array atIndex:(unint64_t)index;
- (void)insertObjectsFromArray:(id)array range:(_NSRange)range atIndex:(unint64_t)index;
- (void)insertObjectsFromOrderedSet:(id)set atIndex:(unint64_t)index;
- (void)insertObjectsFromOrderedSet:(id)set range:(_NSRange)range atIndex:(unint64_t)index;
- (void)insertObjectsFromSet:(id)set atIndex:(unint64_t)index;
- (void)moveObjectsAtIndexes:(id)indexes toIndex:(unint64_t)index;
- (void)removeAllObjects;
- (void)removeFirstObject;
- (void)removeLastObject;
- (void)removeObject:(id)anObject;
- (void)removeObject:(id)anObject inRange:(NSRange)range;
- (void)removeObjectAtIndex:(NSUInteger)index;
- (void)removeObjectIdenticalTo:(id)anObject;
- (void)removeObjectIdenticalTo:(id)anObject inRange:(NSRange)range;
- (void)removeObjectsAtIndexes:(NSIndexSet *)indexes;
- (void)removeObjectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test;
- (void)removeObjectsInArray:(NSArray *)otherArray;
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
- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;
- (void)replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray *)objects;
- (void)replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray;
- (void)replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray range:(NSRange)otherRange;
- (void)replaceObjectsInRange:(_NSRange)range withObjects:(const void *)objects count:(unint64_t)count;
- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromOrderedSet:(id)set;
- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromOrderedSet:(id)set range:(_NSRange)a5;
- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromSet:(id)set;
- (void)setArray:(NSArray *)otherArray;
- (void)setObject:(id)obj atIndexedSubscript:(NSUInteger)idx;
- (void)setObject:(id)object atIndex:(unint64_t)index;
- (void)setOrderedSet:(id)set;
- (void)setSet:(id)set;
- (void)sortRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator;
- (void)sortUsingComparator:(NSComparator)cmptr;
- (void)sortUsingFunction:(NSInteger (__cdecl *)compare context:;
- (void)sortUsingFunction:(void *)function context:(void *)context range:(_NSRange)range;
- (void)sortUsingSelector:(SEL)comparator;
- (void)sortWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr;
@end

@implementation NSMutableArray

- (void)removeAllObjects
{
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableArray);
  }

  v4 = [(NSArray *)self count];
  if (v4)
  {
    v5 = v4 - 1;
    do
    {
      [(NSMutableArray *)self removeObjectAtIndex:v5--];
    }

    while (v5 != -1);
  }
}

- (void)addObject:(id)anObject
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (anObject)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: object cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSMutableArray addObject:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableArray addObject:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  if (!anObject)
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = [(NSArray *)self count];

  [(NSMutableArray *)self insertObject:anObject atIndex:v6];
}

- (void)addObjects:(const void *)objects count:(unint64_t)count
{
  v21 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
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
    *(v16 + 4) = "[NSMutableArray addObjects:count:]";
    *(v16 + 12) = 2048;
    *(v16 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableArray addObjects:count:]", count);
    goto LABEL_17;
  }

LABEL_4:
  if (count >> 61)
  {
    v14 = _os_log_pack_size();
    v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v20, v21);
    *v18 = 136315394;
    *(v18 + 4) = "[NSMutableArray addObjects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableArray addObjects:count:]", count);
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
        *(v11 + 4) = "[NSMutableArray addObjects:count:]";
        *(v11 + 12) = 2048;
        *(v11 + 14) = v8;
        v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableArray addObjects:count:]", v8);
        v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
        objc_exception_throw(v13);
      }

      ++v8;
    }

    while (count != v8);
  }

  v9 = [(NSArray *)self count];

  [(NSMutableArray *)self insertObjects:objects count:count atIndex:v9];
}

- (void)addObjectsFromArray:(id)array range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v25 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
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
    *(v17 + 4) = "[NSMutableArray addObjectsFromArray:range:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray addObjectsFromArray:range:]");
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
      v22 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v21, "[NSMutableArray addObjectsFromArray:range:]", location, length, --v20);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v22, "[NSMutableArray addObjectsFromArray:range:]", location, length, v20);
    }

    else
    {
      v11 = _os_log_pack_size();
      v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v24, v25, v26);
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v13, "[NSMutableArray addObjectsFromArray:range:]", location, length);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v14, "[NSMutableArray addObjectsFromArray:range:]", location, length);
    }

    v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v12, v11];
    objc_exception_throw(v23);
  }

  v10 = [(NSArray *)self count];

  [(NSMutableArray *)self insertObjectsFromArray:array range:location atIndex:length, v10];
}

- (void)addObjectsFromArray:(NSArray *)otherArray
{
  v4 = otherArray;
  v31 = *MEMORY[0x1E69E9840];
  if (otherArray)
  {
    if ((_NSIsNSArray(otherArray) & 1) == 0)
    {
      v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray addObjectsFromArray:]");
      v7 = _CFAutoreleasePoolAddObject(0, v6);
      CFLog(3, @"%@", v8, v9, v10, v11, v12, v13, v7);
      if (objc_opt_respondsToSelector())
      {
        v14 = +[(NSArray *)NSMutableArray];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v15 = [(NSArray *)v4 countByEnumeratingWithState:&v27 objects:v26 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v28;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v28 != v17)
              {
                objc_enumerationMutation(v4);
              }

              [(NSArray *)v14 addObject:*(*(&v27 + 1) + 8 * i)];
            }

            v16 = [(NSArray *)v4 countByEnumeratingWithState:&v27 objects:v26 count:16];
          }

          while (v16);
        }

        v4 = v14;
      }
    }
  }

  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else if (!v4)
  {
    goto LABEL_15;
  }

  if ((_NSIsNSArray(v4) & 1) == 0)
  {
    v19 = _os_log_pack_size();
    v22 = v26 - ((MEMORY[0x1EEE9AC00](v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v22, v19, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v26[0]);
    *v23 = 136315138;
    *(v23 + 4) = "[NSMutableArray addObjectsFromArray:]";
    v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray addObjectsFromArray:]");
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v22, v19];
    objc_exception_throw(v25);
  }

LABEL_15:
  [(NSMutableArray *)self insertObjectsFromArray:v4 range:0 atIndex:[(NSArray *)v4 count], [(NSArray *)self count]];
}

- (void)addObjectsFromOrderedSet:(id)set range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v25 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
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
    *(v17 + 4) = "[NSMutableArray addObjectsFromOrderedSet:range:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray addObjectsFromOrderedSet:range:]");
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
      v22 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v21, "[NSMutableArray addObjectsFromOrderedSet:range:]", location, length, --v20);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v22, "[NSMutableArray addObjectsFromOrderedSet:range:]", location, length, v20);
    }

    else
    {
      v11 = _os_log_pack_size();
      v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v24, v25, v26);
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v13, "[NSMutableArray addObjectsFromOrderedSet:range:]", location, length);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v14, "[NSMutableArray addObjectsFromOrderedSet:range:]", location, length);
    }

    v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v12, v11];
    objc_exception_throw(v23);
  }

  v10 = [(NSArray *)self count];

  [(NSMutableArray *)self insertObjectsFromOrderedSet:set range:location atIndex:length, v10];
}

- (void)addObjectsFromOrderedSet:(id)set
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
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
    *(v12 + 4) = "[NSMutableArray addObjectsFromOrderedSet:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray addObjectsFromOrderedSet:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v8];
    objc_exception_throw(v14);
  }

LABEL_4:
  v6 = [(NSArray *)self count];
  v7 = [set count];

  [(NSMutableArray *)self insertObjectsFromOrderedSet:set range:0 atIndex:v7, v6];
}

- (void)addObjectsFromSet:(id)set
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
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
    *(v8 + 4) = "[NSMutableArray addObjectsFromSet:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableArray addObjectsFromSet:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

LABEL_4:
  v6 = [(NSArray *)self count];

  [(NSMutableArray *)self insertObjectsFromSet:set atIndex:v6];
}

- (void)exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2
{
  v31 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = [(NSArray *)self count];
  if ((idx1 & 0x8000000000000000) != 0 || v8 <= idx1)
  {
    if (v8)
    {
      v21 = v8;
      v13 = _os_log_pack_size();
      v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v30, v31, v32);
      v23 = __os_log_helper_1_2_3_8_32_8_0_8_0(v22, "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]", idx1, --v21);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v23, "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]", idx1, v21);
    }

    else
    {
      v13 = _os_log_pack_size();
      v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v30, v31);
      *v15 = 136315394;
      *(v15 + 4) = "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]";
      *(v15 + 12) = 2048;
      *(v15 + 14) = idx1;
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]", idx1);
    }

    v24 = _CFAutoreleasePoolAddObject(0, v16);
    v25 = v14;
    v26 = v13;
LABEL_24:
    objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v24 userInfo:0 osLogPack:v25 size:v26]);
  }

  v9 = [(NSArray *)self count];
  if ((idx2 & 0x8000000000000000) != 0 || v9 <= idx2)
  {
    if (v9)
    {
      v27 = v9;
      v17 = _os_log_pack_size();
      v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = _os_log_pack_fill(v18, v17, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v30, v31, v32);
      v29 = __os_log_helper_1_2_3_8_32_8_0_8_0(v28, "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]", idx2, --v27);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v29, "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]", idx2, v27);
    }

    else
    {
      v17 = _os_log_pack_size();
      v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = _os_log_pack_fill(v18, v17, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v30, v31);
      *v19 = 136315394;
      *(v19 + 4) = "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]";
      *(v19 + 12) = 2048;
      *(v19 + 14) = idx2;
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray exchangeObjectAtIndex:withObjectAtIndex:]", idx2);
    }

    v24 = _CFAutoreleasePoolAddObject(0, v20);
    v25 = v18;
    v26 = v17;
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

    v30 = [(NSArray *)self objectAtIndex:idx2];
    v11 = [(NSArray *)self objectAtIndex:v10];
    v12 = v30;
    [(NSMutableArray *)self replaceObjectAtIndex:idx2 withObject:v11];
    [(NSMutableArray *)self replaceObjectAtIndex:v10 withObject:v30];
  }
}

- (void)insertObjects:(const void *)objects count:(unint64_t)count atIndex:(unint64_t)index
{
  v32 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
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
    v17 = _os_log_pack_size();
    v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v18, v17, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v31, v32);
    *v19 = 136315394;
    *(v19 + 4) = "[NSMutableArray insertObjects:count:atIndex:]";
    *(v19 + 12) = 2048;
    *(v19 + 14) = count;
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableArray insertObjects:count:atIndex:]", count);
    goto LABEL_19;
  }

LABEL_4:
  if (count >> 61)
  {
    v17 = _os_log_pack_size();
    v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v18, v17, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v31, v32);
    *v21 = 136315394;
    *(v21 + 4) = "[NSMutableArray insertObjects:count:atIndex:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = count;
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableArray insertObjects:count:atIndex:]", count);
LABEL_19:
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v17];
    objc_exception_throw(v22);
  }

  if (count)
  {
    v10 = 0;
    do
    {
      if (!objects[v10])
      {
        v13 = _os_log_pack_size();
        v14 = _os_log_pack_fill(&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]", v31, v32);
        *v14 = 136315394;
        *(v14 + 4) = "[NSMutableArray insertObjects:count:atIndex:]";
        *(v14 + 12) = 2048;
        *(v14 + 14) = v10;
        v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableArray insertObjects:count:atIndex:]", v10);
        v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13];
        objc_exception_throw(v16);
      }

      ++v10;
    }

    while (count != v10);
  }

  v11 = [(NSArray *)self count];
  if ((index & 0x8000000000000000) != 0 || v11 < index)
  {
    if (v11)
    {
      v27 = v11;
      v23 = _os_log_pack_size();
      v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = _os_log_pack_fill(v24, v23, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v31, v32, v33);
      v29 = __os_log_helper_1_2_3_8_32_8_0_8_0(v28, "[NSMutableArray insertObjects:count:atIndex:]", index, --v27);
      v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v29, "[NSMutableArray insertObjects:count:atIndex:]", index, v27);
    }

    else
    {
      v23 = _os_log_pack_size();
      v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = _os_log_pack_fill(v24, v23, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v31, v32);
      *v25 = 136315394;
      *(v25 + 4) = "[NSMutableArray insertObjects:count:atIndex:]";
      *(v25 + 12) = 2048;
      *(v25 + 14) = index;
      v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray insertObjects:count:atIndex:]", index);
    }

    v30 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v26) osLogPack:0 size:v24, v23];
    objc_exception_throw(v30);
  }

  for (; count; --count)
  {
    v12 = *objects++;
    [(NSMutableArray *)self insertObject:v12 atIndex:index++];
  }
}

- (void)insertObjectsFromArray:(id)array range:(_NSRange)range atIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  v63 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
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
    *(v41 + 4) = "[NSMutableArray insertObjectsFromArray:range:atIndex:]";
    v42 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray insertObjectsFromArray:range:atIndex:]");
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
      v24 = _os_log_pack_fill(v23, v20, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v62, v63, v64);
      v25 = __os_log_helper_1_2_3_8_32_8_0_8_0(v24, "[NSMutableArray insertObjectsFromArray:range:atIndex:]", location, length);
      v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v25, "[NSMutableArray insertObjectsFromArray:range:atIndex:]", location, length);
      v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v26) osLogPack:0 size:v23, v20];
      objc_exception_throw(v27);
    }

    v44 = v11;
    v45 = _os_log_pack_size();
    v48 = &v62 - ((MEMORY[0x1EEE9AC00](v45, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = _os_log_pack_fill(v48, v45, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v62, v63, v64, v65);
    v50 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v49, "[NSMutableArray insertObjectsFromArray:range:atIndex:]", location, length, --v44);
    v51 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v50, "[NSMutableArray insertObjectsFromArray:range:atIndex:]", location, length, v44);
    v52 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v51) osLogPack:0 size:v48, v45];
    objc_exception_throw(v52);
  }

  v12 = [(NSArray *)self count];
  if ((index & 0x8000000000000000) != 0 || v12 < index)
  {
    if (!v12)
    {
      v28 = _os_log_pack_size();
      v31 = &v62 - ((MEMORY[0x1EEE9AC00](v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = _os_log_pack_fill(v31, v28, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v62, v63);
      *v32 = 136315394;
      *(v32 + 4) = "[NSMutableArray insertObjectsFromArray:range:atIndex:]";
      *(v32 + 12) = 2048;
      *(v32 + 14) = index;
      v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray insertObjectsFromArray:range:atIndex:]", index);
      v34 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v31, v28];
      objc_exception_throw(v34);
    }

    v53 = v12;
    v54 = _os_log_pack_size();
    v57 = &v62 - ((MEMORY[0x1EEE9AC00](v54, v55, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = _os_log_pack_fill(v57, v54, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v62, v63, v64);
    v59 = __os_log_helper_1_2_3_8_32_8_0_8_0(v58, "[NSMutableArray insertObjectsFromArray:range:atIndex:]", index, --v53);
    v60 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v59, "[NSMutableArray insertObjectsFromArray:range:atIndex:]", index, v53);
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
  [(NSMutableArray *)self insertObjects:v18 count:length atIndex:index];
  free(v19);
}

- (void)insertObjectsFromArray:(id)array atIndex:(unint64_t)index
{
  v44 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
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
    *(v31 + 4) = "[NSMutableArray insertObjectsFromArray:atIndex:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray insertObjectsFromArray:atIndex:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
    objc_exception_throw(v33);
  }

LABEL_4:
  v8 = [(NSArray *)self count];
  v9 = v8;
  if ((index & 0x8000000000000000) != 0 || v8 < index)
  {
    if (!v8)
    {
      v18 = _os_log_pack_size();
      v21 = &v43 - ((MEMORY[0x1EEE9AC00](v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill(v21, v18, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v43, v44);
      *v22 = 136315394;
      *(v22 + 4) = "[NSMutableArray insertObjectsFromArray:atIndex:]";
      *(v22 + 12) = 2048;
      *(v22 + 14) = index;
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray insertObjectsFromArray:atIndex:]", index);
      v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v18];
      objc_exception_throw(v24);
    }

    v34 = _os_log_pack_size();
    v37 = &v43 - ((MEMORY[0x1EEE9AC00](v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v43, v44, v45);
    v39 = v9 - 1;
    v40 = __os_log_helper_1_2_3_8_32_8_0_8_0(v38, "[NSMutableArray insertObjectsFromArray:atIndex:]", index, v39);
    v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v40, "[NSMutableArray insertObjectsFromArray:atIndex:]", index, v39);
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
  [(NSMutableArray *)self insertObjects:v16 count:v13 atIndex:index];
  free(v17);
}

- (void)insertObjectsFromOrderedSet:(id)set range:(_NSRange)range atIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  v63 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
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
    *(v41 + 4) = "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]";
    v42 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]");
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
      v24 = _os_log_pack_fill(v23, v20, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v62, v63, v64);
      v25 = __os_log_helper_1_2_3_8_32_8_0_8_0(v24, "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]", location, length);
      v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v25, "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]", location, length);
      v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v26) osLogPack:0 size:v23, v20];
      objc_exception_throw(v27);
    }

    v44 = v11;
    v45 = _os_log_pack_size();
    v48 = &v62 - ((MEMORY[0x1EEE9AC00](v45, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = _os_log_pack_fill(v48, v45, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v62, v63, v64, v65);
    v50 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v49, "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]", location, length, --v44);
    v51 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v50, "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]", location, length, v44);
    v52 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v51) osLogPack:0 size:v48, v45];
    objc_exception_throw(v52);
  }

  v12 = [(NSArray *)self count];
  if ((index & 0x8000000000000000) != 0 || v12 < index)
  {
    if (!v12)
    {
      v28 = _os_log_pack_size();
      v31 = &v62 - ((MEMORY[0x1EEE9AC00](v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = _os_log_pack_fill(v31, v28, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v62, v63);
      *v32 = 136315394;
      *(v32 + 4) = "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]";
      *(v32 + 12) = 2048;
      *(v32 + 14) = index;
      v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]", index);
      v34 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v31, v28];
      objc_exception_throw(v34);
    }

    v53 = v12;
    v54 = _os_log_pack_size();
    v57 = &v62 - ((MEMORY[0x1EEE9AC00](v54, v55, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = _os_log_pack_fill(v57, v54, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v62, v63, v64);
    v59 = __os_log_helper_1_2_3_8_32_8_0_8_0(v58, "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]", index, --v53);
    v60 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v59, "[NSMutableArray insertObjectsFromOrderedSet:range:atIndex:]", index, v53);
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
  [(NSMutableArray *)self insertObjects:v18 count:length atIndex:index];
  free(v19);
}

- (void)insertObjectsFromOrderedSet:(id)set atIndex:(unint64_t)index
{
  v44 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
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
    *(v31 + 4) = "[NSMutableArray insertObjectsFromOrderedSet:atIndex:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray insertObjectsFromOrderedSet:atIndex:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
    objc_exception_throw(v33);
  }

LABEL_4:
  v8 = [(NSArray *)self count];
  v9 = v8;
  if ((index & 0x8000000000000000) != 0 || v8 < index)
  {
    if (!v8)
    {
      v18 = _os_log_pack_size();
      v21 = &v43 - ((MEMORY[0x1EEE9AC00](v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill(v21, v18, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v43, v44);
      *v22 = 136315394;
      *(v22 + 4) = "[NSMutableArray insertObjectsFromOrderedSet:atIndex:]";
      *(v22 + 12) = 2048;
      *(v22 + 14) = index;
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray insertObjectsFromOrderedSet:atIndex:]", index);
      v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v18];
      objc_exception_throw(v24);
    }

    v34 = _os_log_pack_size();
    v37 = &v43 - ((MEMORY[0x1EEE9AC00](v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v43, v44, v45);
    v39 = v9 - 1;
    v40 = __os_log_helper_1_2_3_8_32_8_0_8_0(v38, "[NSMutableArray insertObjectsFromOrderedSet:atIndex:]", index, v39);
    v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v40, "[NSMutableArray insertObjectsFromOrderedSet:atIndex:]", index, v39);
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
  [(NSMutableArray *)self insertObjects:v16 count:v13 atIndex:index];
  free(v17);
}

- (void)insertObjectsFromSet:(id)set atIndex:(unint64_t)index
{
  v44 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
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
    *(v31 + 4) = "[NSMutableArray insertObjectsFromSet:atIndex:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableArray insertObjectsFromSet:atIndex:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
    objc_exception_throw(v33);
  }

LABEL_4:
  v8 = [(NSArray *)self count];
  v9 = v8;
  if ((index & 0x8000000000000000) != 0 || v8 < index)
  {
    if (!v8)
    {
      v18 = _os_log_pack_size();
      v21 = &v43 - ((MEMORY[0x1EEE9AC00](v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill(v21, v18, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v43, v44);
      *v22 = 136315394;
      *(v22 + 4) = "[NSMutableArray insertObjectsFromSet:atIndex:]";
      *(v22 + 12) = 2048;
      *(v22 + 14) = index;
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray insertObjectsFromSet:atIndex:]", index);
      v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v18];
      objc_exception_throw(v24);
    }

    v34 = _os_log_pack_size();
    v37 = &v43 - ((MEMORY[0x1EEE9AC00](v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v43, v44, v45);
    v39 = v9 - 1;
    v40 = __os_log_helper_1_2_3_8_32_8_0_8_0(v38, "[NSMutableArray insertObjectsFromSet:atIndex:]", index, v39);
    v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v40, "[NSMutableArray insertObjectsFromSet:atIndex:]", index, v39);
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
  [(NSMutableArray *)self insertObjects:v16 count:v13 atIndex:index];
  free(v17);
}

- (void)insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes
{
  v67 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
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
    *(v63 + 4) = "[NSMutableArray insertObjects:atIndexes:]";
    v64 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray insertObjects:atIndexes:]");
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
    *(v31 + 4) = "[NSMutableArray insertObjects:atIndexes:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableArray insertObjects:atIndexes:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
    objc_exception_throw(v33);
  }

  if ((_NSIsNSIndexSet(indexes) & 1) == 0)
  {
    v34 = _os_log_pack_size();
    v37 = &v66 - ((MEMORY[0x1EEE9AC00](v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v66);
    *v38 = 136315138;
    *(v38 + 4) = "[NSMutableArray insertObjects:atIndexes:]";
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableArray insertObjects:atIndexes:]");
    v40 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v39) osLogPack:0 size:v37, v34];
    objc_exception_throw(v40);
  }

  v8 = [(NSArray *)self count];
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
        v46 = _os_log_pack_fill(v45, v42, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds for empty array", v66, v67);
        *v46 = 136315394;
        *(v46 + 4) = "[NSMutableArray insertObjects:atIndexes:]";
        *(v46 + 12) = 2048;
        *(v46 + 14) = v41;
        v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty array", "[NSMutableArray insertObjects:atIndexes:]", v41);
        v48 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v47) osLogPack:0 size:v45, v42];
        objc_exception_throw(v48);
      }

      v49 = _os_log_pack_size();
      v52 = &v66 - ((MEMORY[0x1EEE9AC00](v49, v50, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
      v53 = _os_log_pack_fill(v52, v49, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds [0 .. %lu]", v66, v67, v68);
      v54 = __os_log_helper_1_2_3_8_32_8_0_8_0(v53, "[NSMutableArray insertObjects:atIndexes:]", v41, v11 - 1);
      v55 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v54, "[NSMutableArray insertObjects:atIndexes:]", v41, v11 - 1);
      v56 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v55) osLogPack:0 size:v52, v49];
      objc_exception_throw(v56);
    }
  }

  v12 = [(NSArray *)objects count];
  v13 = [(NSIndexSet *)indexes count];
  if (v12 != v13)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of array (%lu) differs from count of index set (%lu)", "[NSMutableArray insertObjects:atIndexes:]", v12, v13);
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
    [(NSMutableArray *)self insertObjects:&v20[8 * v22] count:v25 atIndex:v24];
    v22 += v26;
  }

  free(v21);
}

- (void)moveObjectsAtIndexes:(id)indexes toIndex:(unint64_t)index
{
  v72 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
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
    *(v28 + 4) = "[NSMutableArray moveObjectsAtIndexes:toIndex:]";
    v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableArray moveObjectsAtIndexes:toIndex:]");
    v30 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v29) osLogPack:0 size:v27, v24];
    objc_exception_throw(v30);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
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
    *(v35 + 4) = "[NSMutableArray moveObjectsAtIndexes:toIndex:]";
    v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableArray moveObjectsAtIndexes:toIndex:]");
    v37 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v34, v31];
    objc_exception_throw(v37);
  }

  v8 = [(NSArray *)self count];
  v9 = [0 count];
  lastIndex = [indexes lastIndex];
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
        v43 = _os_log_pack_fill(v42, v39, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds for empty array", v71, v72);
        *v43 = 136315394;
        *(v43 + 4) = "[NSMutableArray moveObjectsAtIndexes:toIndex:]";
        *(v43 + 12) = 2048;
        *(v43 + 14) = v38;
        v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty array", "[NSMutableArray moveObjectsAtIndexes:toIndex:]", v38);
        v45 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v44) osLogPack:0 size:v42, v39];
        objc_exception_throw(v45);
      }

      v46 = _os_log_pack_size();
      v49 = &v71 - ((MEMORY[0x1EEE9AC00](v46, v47, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
      v50 = _os_log_pack_fill(v49, v46, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds [0 .. %lu]", v71, v72, v73);
      v51 = __os_log_helper_1_2_3_8_32_8_0_8_0(v50, "[NSMutableArray moveObjectsAtIndexes:toIndex:]", v38, v11 - 1);
      v52 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v51, "[NSMutableArray moveObjectsAtIndexes:toIndex:]", v38, v11 - 1);
      v53 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v52) osLogPack:0 size:v49, v46];
      objc_exception_throw(v53);
    }
  }

  v12 = [(NSArray *)self count];
  v13 = [indexes countOfIndexesInRange:{0, index}];
  v14 = v12 - v13;
  if ((index & 0x8000000000000000) != 0 || v14 < index)
  {
    if (v12 == v13)
    {
      v54 = _os_log_pack_size();
      v57 = &v71 - ((MEMORY[0x1EEE9AC00](v54, v55, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
      v58 = _os_log_pack_fill(v57, v54, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v71, v72);
      *v58 = 136315394;
      *(v58 + 4) = "[NSMutableArray moveObjectsAtIndexes:toIndex:]";
      *(v58 + 12) = 2048;
      *(v58 + 14) = index;
      v59 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray moveObjectsAtIndexes:toIndex:]", index);
      v60 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v59) osLogPack:0 size:v57, v54];
      objc_exception_throw(v60);
    }

    v63 = _os_log_pack_size();
    v66 = &v71 - ((MEMORY[0x1EEE9AC00](v63, v64, v65) + 15) & 0xFFFFFFFFFFFFFFF0);
    v67 = _os_log_pack_fill(v66, v63, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v71, v72, v73);
    v68 = __os_log_helper_1_2_3_8_32_8_0_8_0(v67, "[NSMutableArray moveObjectsAtIndexes:toIndex:]", index, v14 - 1);
    v69 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v68, "[NSMutableArray moveObjectsAtIndexes:toIndex:]", index, v14 - 1);
    v70 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v69) osLogPack:0 size:v66, v63];
    objc_exception_throw(v70);
  }

  v15 = [(NSArray *)self objectsAtIndexes:indexes];
  [(NSMutableArray *)self removeObjectsAtIndexes:indexes];
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
  [(NSMutableArray *)self insertObjects:v22 count:v19 atIndex:index];
  free(v23);
}

- (void)removeFirstObject
{
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableArray);
  }

  if ([(NSArray *)self count])
  {

    [(NSMutableArray *)self removeObjectAtIndex:0];
  }
}

- (void)removeLastObject
{
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableArray);
  }

  v4 = [(NSArray *)self count];
  if (_CFExecutableLinkedOnOrAfter(7uLL))
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  [(NSMutableArray *)self removeObjectAtIndex:v5];
  if (v4)
  {
LABEL_5:

    [(NSMutableArray *)self removeObjectAtIndex:v4 - 1];
  }
}

- (void)removeObjectsInRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v18 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  }

  v7 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v7 < location + length)
  {
    if (v7)
    {
      v13 = v7;
      v8 = _os_log_pack_size();
      v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v17, v18, v19, v20);
      v15 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v14, "[NSMutableArray removeObjectsInRange:]", location, length, --v13);
      v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v15, "[NSMutableArray removeObjectsInRange:]", location, length, v13);
    }

    else
    {
      v8 = _os_log_pack_size();
      v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v17, v18, v19);
      v11 = __os_log_helper_1_2_3_8_32_8_0_8_0(v10, "[NSMutableArray removeObjectsInRange:]", location, length);
      v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v11, "[NSMutableArray removeObjectsInRange:]", location, length);
    }

    v16 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v9, v8];
    objc_exception_throw(v16);
  }

  for (; length; --length)
  {
    [(NSMutableArray *)self removeObjectAtIndex:location];
  }
}

- (void)removeObject:(id)anObject inRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v20 = anObject;
  v21 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v8 < location + length)
  {
    if (v8)
    {
      v16 = v8;
      v11 = _os_log_pack_size();
      v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v20, v21, v22, v23);
      v18 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v17, "[NSMutableArray removeObject:inRange:]", location, length, --v16);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v18, "[NSMutableArray removeObject:inRange:]", location, length, v16);
    }

    else
    {
      v11 = _os_log_pack_size();
      v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v20, v21, v22);
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v13, "[NSMutableArray removeObject:inRange:]", location, length);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v14, "[NSMutableArray removeObject:inRange:]", location, length);
    }

    v19 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v12, v11];
    objc_exception_throw(v19);
  }

  v9 = v20;
  if (length)
  {
    v10 = length + location - 1;
    do
    {
      if (-[NSArray objectAtIndex:](self, "objectAtIndex:", v10) == v20 || [v20 isEqual:?])
      {
        [(NSMutableArray *)self removeObjectAtIndex:v10];
      }

      --v10;
      --length;
    }

    while (length);
  }
}

- (void)removeObject:(id)anObject
{
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  }

  v5 = [(NSArray *)self count];
  v6 = anObject;
  if (v5)
  {
    v7 = v5 - 1;
    do
    {
      if (-[NSArray objectAtIndex:](self, "objectAtIndex:", v7) == anObject || [anObject isEqual:?])
      {
        [(NSMutableArray *)self removeObjectAtIndex:v7];
      }

      --v7;
    }

    while (v7 != -1);
  }
}

- (void)removeObjectIdenticalTo:(id)anObject inRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v20 = anObject;
  v21 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v8 < location + length)
  {
    if (v8)
    {
      v16 = v8;
      v11 = _os_log_pack_size();
      v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v20, v21, v22, v23);
      v18 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v17, "[NSMutableArray removeObjectIdenticalTo:inRange:]", location, length, --v16);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v18, "[NSMutableArray removeObjectIdenticalTo:inRange:]", location, length, v16);
    }

    else
    {
      v11 = _os_log_pack_size();
      v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v20, v21, v22);
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v13, "[NSMutableArray removeObjectIdenticalTo:inRange:]", location, length);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v14, "[NSMutableArray removeObjectIdenticalTo:inRange:]", location, length);
    }

    v19 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v12, v11];
    objc_exception_throw(v19);
  }

  v9 = v20;
  if (length)
  {
    v10 = length + location - 1;
    do
    {
      if ([(NSArray *)self objectAtIndex:v10]== v20)
      {
        [(NSMutableArray *)self removeObjectAtIndex:v10];
      }

      --v10;
      --length;
    }

    while (length);
  }
}

- (void)removeObjectIdenticalTo:(id)anObject
{
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  }

  v5 = [(NSArray *)self count];
  v6 = anObject;
  if (v5)
  {
    v7 = v5 - 1;
    do
    {
      if ([(NSArray *)self objectAtIndex:v7]== anObject)
      {
        [(NSMutableArray *)self removeObjectAtIndex:v7];
      }

      --v7;
    }

    while (v7 != -1);
  }
}

- (void)removeObjectsAtIndexes:(NSIndexSet *)indexes
{
  v30 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
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
    *(v16 + 4) = "[NSMutableArray removeObjectsAtIndexes:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableArray removeObjectsAtIndexes:]");
    goto LABEL_14;
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
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
    *(v18 + 4) = "[NSMutableArray removeObjectsAtIndexes:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableArray removeObjectsAtIndexes:]");
LABEL_14:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v14];
    objc_exception_throw(v19);
  }

  v6 = [(NSArray *)self count];
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
        v27 = __os_log_helper_1_2_3_8_32_8_0_8_0(v25, "[NSMutableArray removeObjectsAtIndexes:]", v20, v26);
        v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v27, "[NSMutableArray removeObjectsAtIndexes:]", v20, v26);
      }

      else
      {
        v23 = _os_log_pack_fill(v22, v21, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds for empty array", v29, v30);
        *v23 = 136315394;
        *(v23 + 4) = "[NSMutableArray removeObjectsAtIndexes:]";
        *(v23 + 12) = 2048;
        *(v23 + 14) = v20;
        v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty array", "[NSMutableArray removeObjectsAtIndexes:]", v20);
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
      [(NSMutableArray *)self removeObjectsInRange:v12, v13];
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
  v42 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
  }

  v12 = [(NSArray *)self count];
  v13 = v12;
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v12 < v10 + v9)
  {
    if (v12)
    {
      v20 = _os_log_pack_size();
      v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = _os_log_pack_fill(v21, v20, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v41, v42, v43, v44);
      v35 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v34, "[NSMutableArray removeObjectsInRange:inArray:range:]", v10, v9, v13 - 1);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v35, "[NSMutableArray removeObjectsInRange:inArray:range:]", v10, v9, v13 - 1);
    }

    else
    {
      v20 = _os_log_pack_size();
      v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill(v21, v20, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v41, v42, v43);
      v23 = __os_log_helper_1_2_3_8_32_8_0_8_0(v22, "[NSMutableArray removeObjectsInRange:inArray:range:]", v10, v9);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v23, "[NSMutableArray removeObjectsInRange:inArray:range:]", v10, v9);
    }

    v36 = _CFAutoreleasePoolAddObject(0, v24);
    v37 = v21;
    v38 = v20;
LABEL_28:
    objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v36 userInfo:0 osLogPack:v37 size:v38]);
  }

  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v30 = _os_log_pack_size();
    v31 = _os_log_pack_fill(&v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v30, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v41);
    *v31 = 136315138;
    *(v31 + 4) = "[NSMutableArray removeObjectsInRange:inArray:range:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray removeObjectsInRange:inArray:range:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:&v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v30];
    objc_exception_throw(v33);
  }

  v14 = [array count];
  v15 = v14;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v14 < location + length)
  {
    if (v14)
    {
      v25 = _os_log_pack_size();
      v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v39 = _os_log_pack_fill(v26, v25, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v41, v42, v43, v44);
      v40 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v39, "[NSMutableArray removeObjectsInRange:inArray:range:]", location, length, v15 - 1);
      v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v40, "[NSMutableArray removeObjectsInRange:inArray:range:]", location, length, v15 - 1);
    }

    else
    {
      v25 = _os_log_pack_size();
      v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = _os_log_pack_fill(v26, v25, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v41, v42, v43);
      v28 = __os_log_helper_1_2_3_8_32_8_0_8_0(v27, "[NSMutableArray removeObjectsInRange:inArray:range:]", location, length);
      v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v28, "[NSMutableArray removeObjectsInRange:inArray:range:]", location, length);
    }

    v36 = _CFAutoreleasePoolAddObject(0, v29);
    v37 = v26;
    v38 = v25;
    goto LABEL_28;
  }

  v16 = _CFAutoreleasePoolPush();
  v17 = [NSSet setWithArray:array range:location copyItems:length, 0];
  if (v9)
  {
    v18 = v17;
    v19 = v9 - 1;
    do
    {
      if ([(NSSet *)v18 containsObject:[(NSArray *)self objectAtIndex:v10 + v19]])
      {
        [(NSMutableArray *)self removeObjectAtIndex:v19];
      }

      --v19;
    }

    while (v19 != -1);
  }

  _CFAutoreleasePoolPop(v16);
}

- (void)removeObjectsInRange:(_NSRange)range inArray:(id)array
{
  length = range.length;
  location = range.location;
  v32 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v25 = v9;
      v11 = _os_log_pack_size();
      v14 = &v31 - ((MEMORY[0x1EEE9AC00](v11, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v31, v32, v33, v34);
      v29 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v28, "[NSMutableArray removeObjectsInRange:inArray:]", location, length, --v25);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v29, "[NSMutableArray removeObjectsInRange:inArray:]", location, length, v25);
    }

    else
    {
      v11 = _os_log_pack_size();
      v14 = &v31 - ((MEMORY[0x1EEE9AC00](v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v31, v32, v33);
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSMutableArray removeObjectsInRange:inArray:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v16, "[NSMutableArray removeObjectsInRange:inArray:]", location, length);
    }

    v30 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v11];
    objc_exception_throw(v30);
  }

  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v18 = _os_log_pack_size();
    v21 = &v31 - ((MEMORY[0x1EEE9AC00](v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v21, v18, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v31);
    *v22 = 136315138;
    *(v22 + 4) = "[NSMutableArray removeObjectsInRange:inArray:]";
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray removeObjectsInRange:inArray:]");
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v18];
    objc_exception_throw(v24);
  }

  v10 = [array count];

  [(NSMutableArray *)self removeObjectsInRange:location inArray:length range:array, 0, v10];
}

- (void)removeObjectsInArray:(id)array range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v32 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
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
    v18 = _os_log_pack_size();
    v21 = &v31 - ((MEMORY[0x1EEE9AC00](v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v21, v18, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v31);
    *v22 = 136315138;
    *(v22 + 4) = "[NSMutableArray removeObjectsInArray:range:]";
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray removeObjectsInArray:range:]");
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v18];
    objc_exception_throw(v24);
  }

LABEL_4:
  v9 = [array count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v25 = v9;
      v11 = _os_log_pack_size();
      v14 = &v31 - ((MEMORY[0x1EEE9AC00](v11, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v31, v32, v33, v34);
      v29 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v28, "[NSMutableArray removeObjectsInArray:range:]", location, length, --v25);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v29, "[NSMutableArray removeObjectsInArray:range:]", location, length, v25);
    }

    else
    {
      v11 = _os_log_pack_size();
      v14 = &v31 - ((MEMORY[0x1EEE9AC00](v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v31, v32, v33);
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSMutableArray removeObjectsInArray:range:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v16, "[NSMutableArray removeObjectsInArray:range:]", location, length);
    }

    v30 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v11];
    objc_exception_throw(v30);
  }

  v10 = [(NSArray *)self count];

  [(NSMutableArray *)self removeObjectsInRange:0 inArray:v10 range:array, location, length];
}

- (void)removeObjectsInArray:(NSArray *)otherArray
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
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
    v8 = _os_log_pack_size();
    v11 = v15 - ((MEMORY[0x1EEE9AC00](v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v11, v8, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v15[0]);
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableArray removeObjectsInArray:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray removeObjectsInArray:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v8];
    objc_exception_throw(v14);
  }

LABEL_4:
  v6 = [(NSArray *)self count];
  v7 = [(NSArray *)otherArray count];

  [(NSMutableArray *)self removeObjectsInRange:0 inArray:v6 range:otherArray, 0, v7];
}

- (void)removeObjectsInRange:(_NSRange)range inOrderedSet:(id)set range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = range.length;
  v10 = range.location;
  v39 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
  }

  v12 = [(NSArray *)self count];
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v12 < v10 + v9)
  {
    if (v12)
    {
      v29 = v12;
      v15 = _os_log_pack_size();
      v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = _os_log_pack_fill(v16, v15, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v38, v39, v40, v41);
      v31 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v30, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", v10, v9, --v29);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v31, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", v10, v9, v29);
    }

    else
    {
      v15 = _os_log_pack_size();
      v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill(v16, v15, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v38, v39, v40);
      v18 = __os_log_helper_1_2_3_8_32_8_0_8_0(v17, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", v10, v9);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v18, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", v10, v9);
    }

    v32 = _CFAutoreleasePoolAddObject(0, v19);
    v33 = v16;
    v34 = v15;
LABEL_26:
    objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v32 userInfo:0 osLogPack:v33 size:v34]);
  }

  if (set && (_NSIsNSOrderedSet(set) & 1) == 0)
  {
    v25 = _os_log_pack_size();
    v26 = _os_log_pack_fill(&v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v38);
    *v26 = 136315138;
    *(v26 + 4) = "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]";
    v27 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]");
    v28 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v27) osLogPack:0 size:&v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25];
    objc_exception_throw(v28);
  }

  v13 = [set count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v13 < location + length)
  {
    if (v13)
    {
      v35 = v13;
      v20 = _os_log_pack_size();
      v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = _os_log_pack_fill(v21, v20, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v38, v39, v40, v41);
      v37 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v36, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", location, length, --v35);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v37, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", location, length, v35);
    }

    else
    {
      v20 = _os_log_pack_size();
      v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill(v21, v20, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v38, v39, v40);
      v23 = __os_log_helper_1_2_3_8_32_8_0_8_0(v22, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", location, length);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v23, "[NSMutableArray removeObjectsInRange:inOrderedSet:range:]", location, length);
    }

    v32 = _CFAutoreleasePoolAddObject(0, v24);
    v33 = v21;
    v34 = v20;
    goto LABEL_26;
  }

  if (v9)
  {
    v14 = v9 - 1;
    do
    {
      if ([set containsObject:-[NSArray objectAtIndex:](self inRange:{"objectAtIndex:", v10 + v14), location, length}])
      {
        [(NSMutableArray *)self removeObjectAtIndex:v14];
      }

      --v14;
    }

    while (v14 != -1);
  }
}

- (void)removeObjectsInRange:(_NSRange)range inOrderedSet:(id)set
{
  length = range.length;
  location = range.location;
  v32 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v25 = v9;
      v11 = _os_log_pack_size();
      v14 = &v31 - ((MEMORY[0x1EEE9AC00](v11, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v31, v32, v33, v34);
      v29 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v28, "[NSMutableArray removeObjectsInRange:inOrderedSet:]", location, length, --v25);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v29, "[NSMutableArray removeObjectsInRange:inOrderedSet:]", location, length, v25);
    }

    else
    {
      v11 = _os_log_pack_size();
      v14 = &v31 - ((MEMORY[0x1EEE9AC00](v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v31, v32, v33);
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSMutableArray removeObjectsInRange:inOrderedSet:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v16, "[NSMutableArray removeObjectsInRange:inOrderedSet:]", location, length);
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
    *(v22 + 4) = "[NSMutableArray removeObjectsInRange:inOrderedSet:]";
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray removeObjectsInRange:inOrderedSet:]");
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v18];
    objc_exception_throw(v24);
  }

  v10 = [set count];

  [(NSMutableArray *)self removeObjectsInRange:location inOrderedSet:length range:set, 0, v10];
}

- (void)removeObjectsInOrderedSet:(id)set range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v32 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
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
    *(v22 + 4) = "[NSMutableArray removeObjectsInOrderedSet:range:]";
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray removeObjectsInOrderedSet:range:]");
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
      v29 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v28, "[NSMutableArray removeObjectsInOrderedSet:range:]", location, length, --v25);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v29, "[NSMutableArray removeObjectsInOrderedSet:range:]", location, length, v25);
    }

    else
    {
      v11 = _os_log_pack_size();
      v14 = &v31 - ((MEMORY[0x1EEE9AC00](v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill(v14, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v31, v32, v33);
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[NSMutableArray removeObjectsInOrderedSet:range:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v16, "[NSMutableArray removeObjectsInOrderedSet:range:]", location, length);
    }

    v30 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v11];
    objc_exception_throw(v30);
  }

  v10 = [(NSArray *)self count];

  [(NSMutableArray *)self removeObjectsInRange:0 inOrderedSet:v10 range:set, location, length];
}

- (void)removeObjectsInOrderedSet:(id)set
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
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
    *(v12 + 4) = "[NSMutableArray removeObjectsInOrderedSet:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray removeObjectsInOrderedSet:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v8];
    objc_exception_throw(v14);
  }

LABEL_4:
  v6 = [(NSArray *)self count];
  v7 = [set count];

  [(NSMutableArray *)self removeObjectsInRange:0 inOrderedSet:v6 range:set, 0, v7];
}

- (void)removeObjectsInRange:(_NSRange)range inSet:(id)set
{
  length = range.length;
  location = range.location;
  v25 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v9 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v20 = v9;
      v11 = _os_log_pack_size();
      v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v24, v25, v26, v27);
      v22 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v21, "[NSMutableArray removeObjectsInRange:inSet:]", location, length, --v20);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v22, "[NSMutableArray removeObjectsInRange:inSet:]", location, length, v20);
    }

    else
    {
      v11 = _os_log_pack_size();
      v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v24, v25, v26);
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v13, "[NSMutableArray removeObjectsInRange:inSet:]", location, length);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v14, "[NSMutableArray removeObjectsInRange:inSet:]", location, length);
    }

    v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v12, v11];
    objc_exception_throw(v23);
  }

  if (set && (_NSIsNSSet(set) & 1) == 0)
  {
    v16 = _os_log_pack_size();
    v17 = _os_log_pack_fill(&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v24);
    *v17 = 136315138;
    *(v17 + 4) = "[NSMutableArray removeObjectsInRange:inSet:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableArray removeObjectsInRange:inSet:]");
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16];
    objc_exception_throw(v19);
  }

  if (length)
  {
    v10 = length - 1;
    do
    {
      if ([set containsObject:{-[NSArray objectAtIndex:](self, "objectAtIndex:", location + v10)}])
      {
        [(NSMutableArray *)self removeObjectAtIndex:v10];
      }

      --v10;
    }

    while (v10 != -1);
  }
}

- (void)removeObjectsInSet:(id)set
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
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
    v10 = v14 - ((MEMORY[0x1EEE9AC00](v7, v8, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = _os_log_pack_fill(v10, v7, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSMutableArray removeObjectsInSet:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableArray removeObjectsInSet:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v10, v7];
    objc_exception_throw(v13);
  }

LABEL_4:
  v6 = [(NSArray *)self count];

  [(NSMutableArray *)self removeObjectsInRange:0 inSet:v6, set];
}

- (void)removeObjectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test
{
  v23[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
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
    *(v18 + 4) = "[NSMutableArray removeObjectsAtIndexes:options:passingTest:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableArray removeObjectsAtIndexes:options:passingTest:]");
    goto LABEL_15;
  }

  __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
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
    *(v20 + 4) = "[NSMutableArray removeObjectsAtIndexes:options:passingTest:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableArray removeObjectsAtIndexes:options:passingTest:]");
    goto LABEL_15;
  }

  if (!test)
  {
    v16 = _os_log_pack_size();
    v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v23[0]);
    *v21 = 136315138;
    *(v21 + 4) = "[NSMutableArray removeObjectsAtIndexes:options:passingTest:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableArray removeObjectsAtIndexes:options:passingTest:]");
LABEL_15:
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v17, v16];
    objc_exception_throw(v22);
  }

  if ((options & 2) != 0)
  {
    options &= 0xAFFFFFFFFFFFFFFELL;
  }

  __NSArrayParameterCheckIterate(self, a2, test, options | 0x5000000000000000, indexes);
  IndexesPassingTest = __NSArrayGetIndexesPassingTest(self, test, options | 0x5000000000000000, indexes);
  rangeCount = [IndexesPassingTest rangeCount];
  if (rangeCount)
  {
    v13 = rangeCount - 1;
    do
    {
      v14 = [IndexesPassingTest rangeAtIndex:v13];
      [(NSMutableArray *)self removeObjectsInRange:v14, v15];
      --v13;
    }

    while (v13 != -1);
  }
}

- (void)removeObjectsWithOptions:(unint64_t)options passingTest:(id)test
{
  v18[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
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
    *(v15 + 4) = "[NSMutableArray removeObjectsWithOptions:passingTest:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableArray removeObjectsWithOptions:passingTest:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14];
    objc_exception_throw(v17);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  if (!test)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((options & 2) != 0)
  {
    options &= 0xBFFFFFFFFFFFFFFELL;
  }

  __NSArrayParameterCheckIterate(self, a2, test, options | 0x4000000000000000, 0);
  IndexesPassingTest = __NSArrayGetIndexesPassingTest(self, test, options | 0x4000000000000000, 0);
  rangeCount = [IndexesPassingTest rangeCount];
  if (rangeCount)
  {
    v11 = rangeCount - 1;
    do
    {
      v12 = [IndexesPassingTest rangeAtIndex:v11];
      [(NSMutableArray *)self removeObjectsInRange:v12, v13];
      --v11;
    }

    while (v11 != -1);
  }
}

- (void)removeObjectsPassingTest:(id)test
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v3 = _os_log_pack_size();
    v4 = _os_log_pack_fill(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v7[0]);
    *v4 = 136315138;
    *(v4 + 4) = "[NSMutableArray removeObjectsPassingTest:]";
    v5 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableArray removeObjectsPassingTest:]");
    v6 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v5) osLogPack:0 size:v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3];
    objc_exception_throw(v6);
  }

  [(NSMutableArray *)self removeObjectsWithOptions:0 passingTest:test];
}

- (void)replaceObject:(id)object inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  objectCopy = object;
  v25 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  if (!objectCopy)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill(&objectCopy - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, 0, &dword_1830E6000, "*** %s: object cannot be nil", 0);
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableArray replaceObject:inRange:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableArray replaceObject:inRange:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:&objectCopy - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v14);
  }

  v8 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v8 < location + length)
  {
    if (v8)
    {
      v20 = v8;
      v15 = _os_log_pack_size();
      v16 = &objectCopy - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill(v16, v15, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", objectCopy, v25, v26, v27);
      v22 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v21, "[NSMutableArray replaceObject:inRange:]", location, length, --v20);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v22, "[NSMutableArray replaceObject:inRange:]", location, length, v20);
    }

    else
    {
      v15 = _os_log_pack_size();
      v16 = &objectCopy - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = _os_log_pack_fill(v16, v15, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", objectCopy, v25, v26);
      v18 = __os_log_helper_1_2_3_8_32_8_0_8_0(v17, "[NSMutableArray replaceObject:inRange:]", location, length);
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v18, "[NSMutableArray replaceObject:inRange:]", location, length);
    }

    v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v16, v15];
    objc_exception_throw(v23);
  }

  v9 = objectCopy;
  if (length)
  {
    v10 = length + location - 1;
    do
    {
      if (-[NSArray objectAtIndex:](self, "objectAtIndex:", v10) != objectCopy && [objectCopy isEqual:?])
      {
        [(NSMutableArray *)self replaceObjectAtIndex:v10 withObject:objectCopy];
      }

      --v10;
      --length;
    }

    while (length);
  }
}

- (void)replaceObject:(id)object
{
  v12[0] = object;
  v12[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  }

  if (!v12[0])
  {
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill(v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8, 0, &dword_1830E6000, "*** %s: object cannot be nil", 0);
    *v9 = 136315138;
    *(v9 + 4) = "[NSMutableArray replaceObject:]";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableArray replaceObject:]");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  v5 = [(NSArray *)self count];
  v6 = v12[0];
  if (v5)
  {
    v7 = v5 - 1;
    do
    {
      if (-[NSArray objectAtIndex:](self, "objectAtIndex:", v7) != v12[0] && [v12[0] isEqual:?])
      {
        [(NSMutableArray *)self replaceObjectAtIndex:v7 withObject:v12[0]];
      }

      --v7;
    }

    while (v7 != -1);
  }
}

- (void)replaceObjectsInRange:(_NSRange)range withObjects:(const void *)objects count:(unint64_t)count
{
  length = range.length;
  location = range.location;
  v52 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
  }

  v11 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (v11)
    {
      v45 = v11;
      v34 = _os_log_pack_size();
      v37 = &v51 - ((MEMORY[0x1EEE9AC00](v34, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
      v48 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v51, v52, v53, v54);
      v49 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v48, "[NSMutableArray replaceObjectsInRange:withObjects:count:]", location, length, --v45);
      v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v49, "[NSMutableArray replaceObjectsInRange:withObjects:count:]", location, length, v45);
    }

    else
    {
      v34 = _os_log_pack_size();
      v37 = &v51 - ((MEMORY[0x1EEE9AC00](v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v51, v52, v53);
      v39 = __os_log_helper_1_2_3_8_32_8_0_8_0(v38, "[NSMutableArray replaceObjectsInRange:withObjects:count:]", location, length);
      v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v39, "[NSMutableArray replaceObjectsInRange:withObjects:count:]", location, length);
    }

    v50 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v37, v34];
    objc_exception_throw(v50);
  }

  if (!objects && count)
  {
    v28 = _os_log_pack_size();
    v31 = &v51 - ((MEMORY[0x1EEE9AC00](v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = _os_log_pack_fill(v31, v28, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v51, v52);
    *v32 = 136315394;
    *(v32 + 4) = "[NSMutableArray replaceObjectsInRange:withObjects:count:]";
    *(v32 + 12) = 2048;
    *(v32 + 14) = count;
    v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableArray replaceObjectsInRange:withObjects:count:]", count);
    goto LABEL_37;
  }

  if (count >> 61)
  {
    v28 = _os_log_pack_size();
    v31 = &v51 - ((MEMORY[0x1EEE9AC00](v28, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = _os_log_pack_fill(v31, v28, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v51, v52);
    *v43 = 136315394;
    *(v43 + 4) = "[NSMutableArray replaceObjectsInRange:withObjects:count:]";
    *(v43 + 12) = 2048;
    *(v43 + 14) = count;
    v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableArray replaceObjectsInRange:withObjects:count:]", count);
LABEL_37:
    v44 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v31, v28];
    objc_exception_throw(v44);
  }

  if (count)
  {
    v12 = 0;
    do
    {
      if (!objects[v12])
      {
        v21 = _os_log_pack_size();
        v24 = &v51 - ((MEMORY[0x1EEE9AC00](v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = _os_log_pack_fill(v24, v21, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]", v51, v52);
        *v25 = 136315394;
        *(v25 + 4) = "[NSMutableArray replaceObjectsInRange:withObjects:count:]";
        *(v25 + 12) = 2048;
        *(v25 + 14) = v12;
        v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableArray replaceObjectsInRange:withObjects:count:]", v12);
        v27 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v26) osLogPack:0 size:v24, v21];
        objc_exception_throw(v27);
      }

      ++v12;
    }

    while (count != v12);
    countCopy = count;
    objectsCopy = objects;
    do
    {
      if ((*objectsCopy & 0x8000000000000000) == 0)
      {
        v15 = *objectsCopy;
      }

      ++objectsCopy;
      --countCopy;
    }

    while (countCopy);
  }

  if (length >= count)
  {
    countCopy2 = count;
  }

  else
  {
    countCopy2 = length;
  }

  if (countCopy2)
  {
    v17 = location;
    objectsCopy2 = objects;
    v19 = countCopy2;
    do
    {
      v20 = *objectsCopy2++;
      [(NSMutableArray *)self replaceObjectAtIndex:v17++ withObject:v20];
      --v19;
    }

    while (v19);
  }

  if (length > count)
  {
    [(NSMutableArray *)self removeObjectsInRange:countCopy2 + location, length - countCopy2];
    goto LABEL_27;
  }

  if (length >= count)
  {
LABEL_27:
    if (!count)
    {
      return;
    }

    goto LABEL_28;
  }

  [(NSMutableArray *)self insertObjects:&objects[countCopy2] count:count - countCopy2 atIndex:countCopy2 + location];
  do
  {
LABEL_28:
    if ((*objects & 0x8000000000000000) == 0)
    {
    }

    ++objects;
    --count;
  }

  while (count);
}

- (void)replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray *)objects
{
  v67 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
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
    *(v63 + 4) = "[NSMutableArray replaceObjectsAtIndexes:withObjects:]";
    v64 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray replaceObjectsAtIndexes:withObjects:]");
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
    *(v31 + 4) = "[NSMutableArray replaceObjectsAtIndexes:withObjects:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set cannot be nil", "[NSMutableArray replaceObjectsAtIndexes:withObjects:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
    objc_exception_throw(v33);
  }

  if ((_NSIsNSIndexSet(indexes) & 1) == 0)
  {
    v34 = _os_log_pack_size();
    v37 = &v66 - ((MEMORY[0x1EEE9AC00](v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: index set argument is not an NSIndexSet", v66);
    *v38 = 136315138;
    *(v38 + 4) = "[NSMutableArray replaceObjectsAtIndexes:withObjects:]";
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index set argument is not an NSIndexSet", "[NSMutableArray replaceObjectsAtIndexes:withObjects:]");
    v40 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v39) osLogPack:0 size:v37, v34];
    objc_exception_throw(v40);
  }

  v8 = [(NSArray *)self count];
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
        v46 = _os_log_pack_fill(v45, v42, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds for empty array", v66, v67);
        *v46 = 136315394;
        *(v46 + 4) = "[NSMutableArray replaceObjectsAtIndexes:withObjects:]";
        *(v46 + 12) = 2048;
        *(v46 + 14) = v41;
        v47 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds for empty array", "[NSMutableArray replaceObjectsAtIndexes:withObjects:]", v41);
        v48 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v47) osLogPack:0 size:v45, v42];
        objc_exception_throw(v48);
      }

      v49 = _os_log_pack_size();
      v52 = &v66 - ((MEMORY[0x1EEE9AC00](v49, v50, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
      v53 = _os_log_pack_fill(v52, v49, 0, &dword_1830E6000, "*** %s: index %lu in index set beyond bounds [0 .. %lu]", v66, v67, v68);
      v54 = __os_log_helper_1_2_3_8_32_8_0_8_0(v53, "[NSMutableArray replaceObjectsAtIndexes:withObjects:]", v41, v11 - 1);
      v55 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu in index set beyond bounds [0 .. %lu]", v54, "[NSMutableArray replaceObjectsAtIndexes:withObjects:]", v41, v11 - 1);
      v56 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v55) osLogPack:0 size:v52, v49];
      objc_exception_throw(v56);
    }
  }

  v12 = [(NSArray *)objects count];
  v13 = [(NSIndexSet *)indexes count];
  if (v12 != v13)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of array (%lu) differs from count of index set (%lu)", "[NSMutableArray replaceObjectsAtIndexes:withObjects:]", v12, v13);
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
    [(NSMutableArray *)self replaceObjectsInRange:v24 withObjects:v25 count:&v20[8 * v22], v25];
    v22 += v26;
  }

  free(v21);
}

- (void)replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray range:(NSRange)otherRange
{
  length = otherRange.length;
  location = otherRange.location;
  v9 = range.length;
  v10 = range.location;
  v65 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
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
    v39 = _os_log_pack_size();
    v42 = &v64 - ((MEMORY[0x1EEE9AC00](v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = _os_log_pack_fill(v42, v39, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v64);
    *v43 = 136315138;
    *(v43 + 4) = "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]";
    v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]");
    v45 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v44) osLogPack:0 size:v42, v39];
    objc_exception_throw(v45);
  }

LABEL_4:
  v12 = [(NSArray *)otherArray count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v12 < location + length)
  {
    if (!v12)
    {
      v21 = _os_log_pack_size();
      v24 = &v64 - ((MEMORY[0x1EEE9AC00](v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = _os_log_pack_fill(v24, v21, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v64, v65, v66);
      v26 = __os_log_helper_1_2_3_8_32_8_0_8_0(v25, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", location, length);
      v27 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v26, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", location, length);
      v28 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v27) osLogPack:0 size:v24, v21];
      objc_exception_throw(v28);
    }

    v46 = v12;
    v47 = _os_log_pack_size();
    v50 = &v64 - ((MEMORY[0x1EEE9AC00](v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = _os_log_pack_fill(v50, v47, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v64, v65, v66, v67);
    v52 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v51, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", location, length, --v46);
    v53 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v52, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", location, length, v46);
    v54 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v53) osLogPack:0 size:v50, v47];
    objc_exception_throw(v54);
  }

  v13 = [(NSArray *)self count];
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v13 < v10 + v9)
  {
    if (!v13)
    {
      v29 = _os_log_pack_size();
      v32 = &v64 - ((MEMORY[0x1EEE9AC00](v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = _os_log_pack_fill(v32, v29, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v64, v65, v66);
      v34 = __os_log_helper_1_2_3_8_32_8_0_8_0(v33, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9);
      v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v34, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9);
      v36 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v35) osLogPack:0 size:v32, v29];
      objc_exception_throw(v36);
    }

    v55 = v13;
    v56 = _os_log_pack_size();
    v59 = &v64 - ((MEMORY[0x1EEE9AC00](v56, v57, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
    v60 = _os_log_pack_fill(v59, v56, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v64, v65, v66, v67);
    v61 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v60, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9, --v55);
    v62 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v61, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:range:]", v10, v9, v55);
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

  [(NSArray *)otherArray getObjects:v19 range:location, length, v64];
  [(NSMutableArray *)self replaceObjectsInRange:v10 withObjects:v9 count:v19, length];
  free(v20);
}

- (void)replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray
{
  length = range.length;
  location = range.location;
  v46 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
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
    v29 = _os_log_pack_size();
    v32 = &v45 - ((MEMORY[0x1EEE9AC00](v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = _os_log_pack_fill(v32, v29, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v45);
    *v33 = 136315138;
    *(v33 + 4) = "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:]";
    v34 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:]");
    v35 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v34) osLogPack:0 size:v32, v29];
    objc_exception_throw(v35);
  }

LABEL_4:
  v9 = [(NSArray *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v19 = _os_log_pack_size();
      v22 = &v45 - ((MEMORY[0x1EEE9AC00](v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill(v22, v19, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v45, v46, v47);
      v24 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:]", location, length);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v24, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:]", location, length);
      v26 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v22, v19];
      objc_exception_throw(v26);
    }

    v36 = _os_log_pack_size();
    v39 = &v45 - ((MEMORY[0x1EEE9AC00](v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill(v39, v36, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v45, v46, v47, v48);
    v41 = v10 - 1;
    v42 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v40, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:]", location, length, v41);
    v43 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v42, "[NSMutableArray replaceObjectsInRange:withObjectsFromArray:]", location, length, v41);
    v44 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v43) osLogPack:0 size:v39, v36];
    objc_exception_throw(v44);
  }

  v11 = [(NSArray *)otherArray count];
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

  [(NSArray *)otherArray getObjects:v17 range:0, v14, v45];
  [(NSMutableArray *)self replaceObjectsInRange:location withObjects:length count:v17, v14];
  free(v18);
}

- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromOrderedSet:(id)set range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = range.length;
  v10 = range.location;
  v65 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
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
    *(v43 + 4) = "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]";
    v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]");
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
      v25 = _os_log_pack_fill(v24, v21, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v64, v65, v66);
      v26 = __os_log_helper_1_2_3_8_32_8_0_8_0(v25, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length);
      v27 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v26, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length);
      v28 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v27) osLogPack:0 size:v24, v21];
      objc_exception_throw(v28);
    }

    v46 = v12;
    v47 = _os_log_pack_size();
    v50 = &v64 - ((MEMORY[0x1EEE9AC00](v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = _os_log_pack_fill(v50, v47, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v64, v65, v66, v67);
    v52 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v51, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length, --v46);
    v53 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v52, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", location, length, v46);
    v54 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v53) osLogPack:0 size:v50, v47];
    objc_exception_throw(v54);
  }

  v13 = [(NSArray *)self count];
  if ((v10 & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0 || v13 < v10 + v9)
  {
    if (!v13)
    {
      v29 = _os_log_pack_size();
      v32 = &v64 - ((MEMORY[0x1EEE9AC00](v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = _os_log_pack_fill(v32, v29, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v64, v65, v66);
      v34 = __os_log_helper_1_2_3_8_32_8_0_8_0(v33, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9);
      v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v34, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9);
      v36 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v35) osLogPack:0 size:v32, v29];
      objc_exception_throw(v36);
    }

    v55 = v13;
    v56 = _os_log_pack_size();
    v59 = &v64 - ((MEMORY[0x1EEE9AC00](v56, v57, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
    v60 = _os_log_pack_fill(v59, v56, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v64, v65, v66, v67);
    v61 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v60, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9, --v55);
    v62 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v61, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:range:]", v10, v9, v55);
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
  [(NSMutableArray *)self replaceObjectsInRange:v10 withObjects:v9 count:v19, length];
  free(v20);
}

- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromOrderedSet:(id)set
{
  length = range.length;
  location = range.location;
  v46 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
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
    *(v33 + 4) = "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:]";
    v34 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:]");
    v35 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v34) osLogPack:0 size:v32, v29];
    objc_exception_throw(v35);
  }

LABEL_4:
  v9 = [(NSArray *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v19 = _os_log_pack_size();
      v22 = &v45 - ((MEMORY[0x1EEE9AC00](v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill(v22, v19, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v45, v46, v47);
      v24 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v24, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length);
      v26 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v22, v19];
      objc_exception_throw(v26);
    }

    v36 = _os_log_pack_size();
    v39 = &v45 - ((MEMORY[0x1EEE9AC00](v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill(v39, v36, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v45, v46, v47, v48);
    v41 = v10 - 1;
    v42 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v40, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length, v41);
    v43 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v42, "[NSMutableArray replaceObjectsInRange:withObjectsFromOrderedSet:]", location, length, v41);
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
  [(NSMutableArray *)self replaceObjectsInRange:location withObjects:length count:v17, v14];
  free(v18);
}

- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromSet:(id)set
{
  length = range.length;
  location = range.location;
  v46 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
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
    *(v33 + 4) = "[NSMutableArray replaceObjectsInRange:withObjectsFromSet:]";
    v34 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableArray replaceObjectsInRange:withObjectsFromSet:]");
    v35 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v34) osLogPack:0 size:v32, v29];
    objc_exception_throw(v35);
  }

LABEL_4:
  v9 = [(NSArray *)self count];
  v10 = v9;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v19 = _os_log_pack_size();
      v22 = &v45 - ((MEMORY[0x1EEE9AC00](v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill(v22, v19, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v45, v46, v47);
      v24 = __os_log_helper_1_2_3_8_32_8_0_8_0(v23, "[NSMutableArray replaceObjectsInRange:withObjectsFromSet:]", location, length);
      v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v24, "[NSMutableArray replaceObjectsInRange:withObjectsFromSet:]", location, length);
      v26 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v22, v19];
      objc_exception_throw(v26);
    }

    v36 = _os_log_pack_size();
    v39 = &v45 - ((MEMORY[0x1EEE9AC00](v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill(v39, v36, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v45, v46, v47, v48);
    v41 = v10 - 1;
    v42 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v40, "[NSMutableArray replaceObjectsInRange:withObjectsFromSet:]", location, length, v41);
    v43 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v42, "[NSMutableArray replaceObjectsInRange:withObjectsFromSet:]", location, length, v41);
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
  [(NSMutableArray *)self replaceObjectsInRange:location withObjects:length count:v17, v14];
  free(v18);
}

- (void)setObject:(id)object atIndex:(unint64_t)index
{
  v22 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (object)
    {
      goto LABEL_3;
    }

LABEL_13:
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9, 0, &dword_1830E6000, "*** %s: object cannot be nil", v21);
    *v10 = 136315138;
    *(v10 + 4) = "[NSMutableArray setObject:atIndex:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableArray setObject:atIndex:]");
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v12);
  }

  if (!object)
  {
    goto LABEL_13;
  }

LABEL_3:
  v8 = [(NSArray *)self count];
  if ((index & 0x8000000000000000) != 0 || v8 < index)
  {
    if (v8)
    {
      v17 = v8;
      v13 = _os_log_pack_size();
      v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v21, v22, v23);
      v19 = __os_log_helper_1_2_3_8_32_8_0_8_0(v18, "[NSMutableArray setObject:atIndex:]", index, --v17);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v19, "[NSMutableArray setObject:atIndex:]", index, v17);
    }

    else
    {
      v13 = _os_log_pack_size();
      v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v21, v22);
      *v15 = 136315394;
      *(v15 + 4) = "[NSMutableArray setObject:atIndex:]";
      *(v15 + 12) = 2048;
      *(v15 + 14) = index;
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSMutableArray setObject:atIndex:]", index);
    }

    v20 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
    objc_exception_throw(v20);
  }

  if ([(NSArray *)self count]== index)
  {

    [(NSMutableArray *)self insertObject:object atIndex:index];
  }

  else
  {

    [(NSMutableArray *)self replaceObjectAtIndex:index withObject:object];
  }
}

- (void)setObject:(id)obj atIndexedSubscript:(NSUInteger)idx
{
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  [(NSMutableArray *)self setObject:obj atIndex:idx];
}

- (void)setArray:(NSArray *)otherArray
{
  v24[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
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
    v15 = _os_log_pack_size();
    v18 = v24 - ((MEMORY[0x1EEE9AC00](v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v18, v15, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v24[0]);
    *v19 = 136315138;
    *(v19 + 4) = "[NSMutableArray setArray:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray setArray:]");
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v15];
    objc_exception_throw(v21);
  }

LABEL_4:
  if (self != otherArray)
  {
    v6 = [(NSArray *)self count];
    v7 = [(NSArray *)otherArray count];
    v10 = v7;
    if (v7 >> 60)
    {
      v22 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7);
      v23 = [NSException exceptionWithName:@"NSGenericException" reason:v22 userInfo:0];
      CFRelease(v22);
      objc_exception_throw(v23);
    }

    if (v7 <= 1)
    {
      v7 = 1;
    }

    v11 = MEMORY[0x1EEE9AC00](v7, v8, v9);
    v13 = v24 - v12;
    v24[0] = 0;
    if (v10 >= 0x101)
    {
      v13 = _CFCreateArrayStorage(v11, 0, v24);
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    [(NSArray *)otherArray getObjects:v13 range:0, v10, v24[0]];
    [(NSMutableArray *)self replaceObjectsInRange:0 withObjects:v6 count:v13, v10];
    free(v14);
  }
}

- (id)sortedArrayFromRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSMutableArray;
  return [-[NSArray sortedArrayFromRange:options:usingComparator:](&v6 sortedArrayFromRange:range.location options:range.length usingComparator:{options, comparator), "copy"}];
}

- (void)setOrderedSet:(id)set
{
  v24[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
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
    v17 = _os_log_pack_size();
    v20 = v24 - ((MEMORY[0x1EEE9AC00](v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v20, v17, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v24[0]);
    *v21 = 136315138;
    *(v21 + 4) = "[NSMutableArray setOrderedSet:]";
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableArray setOrderedSet:]");
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v17];
    objc_exception_throw(v23);
  }

LABEL_4:
  v6 = [(NSArray *)self count];
  v7 = [set count];
  v10 = v7;
  if (v7 >> 60)
  {
    v15 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7);
    v16 = [NSException exceptionWithName:@"NSGenericException" reason:v15 userInfo:0];
    CFRelease(v15);
    objc_exception_throw(v16);
  }

  if (v7 <= 1)
  {
    v7 = 1;
  }

  v11 = MEMORY[0x1EEE9AC00](v7, v8, v9);
  v13 = v24 - v12;
  v24[0] = 0;
  if (v10 >= 0x101)
  {
    v13 = _CFCreateArrayStorage(v11, 0, v24);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  [set getObjects:v13 range:{0, v10, v24[0]}];
  [(NSMutableArray *)self replaceObjectsInRange:0 withObjects:v6 count:v13, v10];
  free(v14);
}

- (void)setSet:(id)set
{
  v24[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
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
    v17 = _os_log_pack_size();
    v20 = v24 - ((MEMORY[0x1EEE9AC00](v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v20, v17, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v24[0]);
    *v21 = 136315138;
    *(v21 + 4) = "[NSMutableArray setSet:]";
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableArray setSet:]");
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v17];
    objc_exception_throw(v23);
  }

LABEL_4:
  v6 = [(NSArray *)self count];
  v7 = [set count];
  v10 = v7;
  if (v7 >> 60)
  {
    v15 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7);
    v16 = [NSException exceptionWithName:@"NSGenericException" reason:v15 userInfo:0];
    CFRelease(v15);
    objc_exception_throw(v16);
  }

  if (v7 <= 1)
  {
    v7 = 1;
  }

  v11 = MEMORY[0x1EEE9AC00](v7, v8, v9);
  v13 = v24 - v12;
  v24[0] = 0;
  if (v10 >= 0x101)
  {
    v13 = _CFCreateArrayStorage(v11, 0, v24);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  [set getObjects:v13 count:{v10, v24[0]}];
  [(NSMutableArray *)self replaceObjectsInRange:0 withObjects:v6 count:v13, v10];
  free(v14);
}

- (void)sortRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator
{
  length = range.length;
  location = range.location;
  v64[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
    if (comparator)
    {
      goto LABEL_3;
    }

LABEL_27:
    v31 = _os_log_pack_size();
    v34 = &v56 - ((MEMORY[0x1EEE9AC00](v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill(v34, v31, 0, &dword_1830E6000, "*** %s: comparator cannot be nil", v56);
    *v35 = 136315138;
    *(v35 + 4) = "[NSMutableArray sortRange:options:usingComparator:]";
    v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSMutableArray sortRange:options:usingComparator:]");
    v37 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36) osLogPack:0 size:v34, v31];
    objc_exception_throw(v37);
  }

  if (!comparator)
  {
    goto LABEL_27;
  }

LABEL_3:
  v11 = [(NSArray *)self count];
  v14 = v11;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (!v11)
    {
      v38 = _os_log_pack_size();
      v41 = &v56 - ((MEMORY[0x1EEE9AC00](v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
      v42 = _os_log_pack_fill(v41, v38, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v56, v57, v58);
      v43 = __os_log_helper_1_2_3_8_32_8_0_8_0(v42, "[NSMutableArray sortRange:options:usingComparator:]", location, length);
      v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v43, "[NSMutableArray sortRange:options:usingComparator:]", location, length);
      v45 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v44) osLogPack:0 size:v41, v38];
      objc_exception_throw(v45);
    }

    v46 = _os_log_pack_size();
    v49 = &v56 - ((MEMORY[0x1EEE9AC00](v46, v47, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = _os_log_pack_fill(v49, v46, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v56, v57, v58, v59);
    v51 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v50, "[NSMutableArray sortRange:options:usingComparator:]", location, length, v14 - 1);
    v52 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v51, "[NSMutableArray sortRange:options:usingComparator:]", location, length, v14 - 1);
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

    v19 = [(NSArray *)self getObjects:v18 range:location, length, v56];
    MEMORY[0x1EEE9AC00](v19, v20, v21);
    v23 = &v56 - v22;
    v24 = &v56 - v22;
    if (length > 0x1000)
    {
      v24 = malloc_type_malloc(8 * length, 0x100004000313F17uLL);
    }

    v58 = MEMORY[0x1E69E9820];
    v59 = 3221225472;
    v60 = __52__NSMutableArray_sortRange_options_usingComparator___block_invoke;
    v61 = &unk_1E6D7D7A0;
    comparatorCopy = comparator;
    v63 = v18;
    CFSortIndexes(v24, length, options, &v58);
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
    [(NSMutableArray *)self replaceObjectsInRange:location withObjects:length count:?];
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
  [(NSMutableArray *)self _mutate];
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
    *(v13 + 4) = "[NSMutableArray sortWithOptions:usingComparator:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSMutableArray sortWithOptions:usingComparator:]");
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v9];
    objc_exception_throw(v15);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  if (!cmptr)
  {
    goto LABEL_8;
  }

LABEL_3:
  v8 = [(NSArray *)self count];
  if (v8 >= 2)
  {

    [(NSMutableArray *)self sortRange:0 options:v8 usingComparator:opts, cmptr];
  }
}

- (void)sortUsingComparator:(NSComparator)cmptr
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
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
    *(v11 + 4) = "[NSMutableArray sortUsingComparator:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSMutableArray sortUsingComparator:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v10, v7];
    objc_exception_throw(v13);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  if (!cmptr)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = [(NSArray *)self count];
  if (v6 >= 2)
  {

    [(NSMutableArray *)self sortRange:0 options:v6 usingComparator:0, cmptr];
  }
}

- (void)sortUsingFunction:(NSInteger (__cdecl *)compare context:
{
  v10[6] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (compare)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: function pointer cannot be NULL", "[NSMutableArray sortUsingFunction:context:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8), 0];
    objc_exception_throw(v9);
  }

  if (!compare)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__NSMutableArray_sortUsingFunction_context___block_invoke;
  v10[3] = &__block_descriptor_48_e11_q24__0_8_16l;
  v10[4] = compare;
  v10[5] = context;
  [(NSMutableArray *)self sortWithOptions:0 usingComparator:v10];
}

- (void)sortUsingFunction:(void *)function context:(void *)context range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v30 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
    if (function)
    {
      goto LABEL_3;
    }

LABEL_10:
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: function pointer cannot be NULL", "[NSMutableArray sortUsingFunction:context:range:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12), 0];
    objc_exception_throw(v13);
  }

  if (!function)
  {
    goto LABEL_10;
  }

LABEL_3:
  v11 = [(NSArray *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (v11)
    {
      v19 = v11;
      v14 = _os_log_pack_size();
      v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, v24, v25, v26);
      v21 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v20, "[NSMutableArray sortUsingFunction:context:range:]", location, length, --v19);
      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v21, "[NSMutableArray sortUsingFunction:context:range:]", location, length, v19);
    }

    else
    {
      v14 = _os_log_pack_size();
      v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v23, v24, v25);
      v17 = __os_log_helper_1_2_3_8_32_8_0_8_0(v16, "[NSMutableArray sortUsingFunction:context:range:]", location, length);
      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v17, "[NSMutableArray sortUsingFunction:context:range:]", location, length);
    }

    v22 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v15, v14];
    objc_exception_throw(v22);
  }

  if (length != 1)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __50__NSMutableArray_sortUsingFunction_context_range___block_invoke;
    v27 = &__block_descriptor_48_e11_q24__0_8_16l;
    functionCopy = function;
    contextCopy = context;
    [(NSMutableArray *)self sortRange:location options:length usingComparator:0, &v24];
  }
}

- (void)sortUsingSelector:(SEL)comparator
{
  v6[5] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
    if (comparator)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!comparator)
  {
LABEL_3:
    [self doesNotRecognizeSelector:0];
  }

LABEL_4:
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__NSMutableArray_sortUsingSelector___block_invoke;
  v6[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v6[4] = comparator;
  [(NSMutableArray *)self sortWithOptions:0 usingComparator:v6];
}

- (NSMutableArray)initWithObjects:(const void *)objects count:(unint64_t)count
{
  v20 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v13 = _os_log_pack_size();
    v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v19, v20);
    *v15 = 136315394;
    *(v15 + 4) = "[NSMutableArray initWithObjects:count:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = count;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableArray initWithObjects:count:]", count);
    goto LABEL_12;
  }

  if (count >> 61)
  {
    v13 = _os_log_pack_size();
    v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v19, v20);
    *v17 = 136315394;
    *(v17 + 4) = "[NSMutableArray initWithObjects:count:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = count;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableArray initWithObjects:count:]", count);
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
        *(v10 + 4) = "[NSMutableArray initWithObjects:count:]";
        *(v10 + 12) = 2048;
        *(v10 + 14) = i;
        v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableArray initWithObjects:count:]", i);
        v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
        objc_exception_throw(v12);
      }
    }
  }

  v7 = [(NSMutableArray *)self initWithCapacity:count];
  [(NSMutableArray *)v7 insertObjects:objects count:count atIndex:0];
  return v7;
}

- (id)arrayByAddingObjectsFromArray:(id)array
{
  v27 = *MEMORY[0x1E69E9840];
  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v19 = _os_log_pack_size();
    v22 = &v26 - ((MEMORY[0x1EEE9AC00](v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v22, v19, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v26);
    *v23 = 136315138;
    *(v23 + 4) = "[NSMutableArray arrayByAddingObjectsFromArray:]";
    v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableArray arrayByAddingObjectsFromArray:]");
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v22, v19];
    objc_exception_throw(v25);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v6 = [array count];
  v7 = [(NSArray *)self count];
  v8 = v7 + v6;
  if ((v7 + v6) >> 60)
  {
    v17 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v7 + v6);
    v18 = [NSException exceptionWithName:@"NSGenericException" reason:v17 userInfo:0];
    CFRelease(v17);
    objc_exception_throw(v18);
  }

  v9 = v7;
  v26 = 0;
  if (v8 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 + v6;
  }

  v11 = _CFCreateArrayStorage(v10, 0, &v26);
  if (v9)
  {
    [(NSArray *)self getObjects:v11 range:0, v9, v26, v27];
  }

  if (v6)
  {
    [array getObjects:&v11[v9] range:{0, v6}];
  }

  if (v11)
  {
    if (v8)
    {
      v12 = v11;
      v13 = v8;
      do
      {
        v14 = *v12++;
        --v13;
      }

      while (v13);
    }

    v15 = [[NSArray alloc] _initByAdoptingBuffer:v11 count:v8 size:v8];
  }

  else
  {
    v15 = [[NSArray alloc] initWithObjects:0 count:v8];
  }

  return v15;
}

+ (NSMutableArray)arrayWithCapacity:(NSUInteger)numItems
{
  v3 = [[self alloc] initWithCapacity:numItems];

  return v3;
}

- (void)insertObject:(id)anObject atIndex:(NSUInteger)index
{
  OUTLINED_FUNCTION_1_10();
  __CFLookUpClass("NSMutableArray");
  OUTLINED_FUNCTION_0_15();

  __CFRequireConcreteImplementation(v4, v5, v6);
}

- (void)removeObjectAtIndex:(NSUInteger)index
{
  OUTLINED_FUNCTION_1_10();
  __CFLookUpClass("NSMutableArray");
  OUTLINED_FUNCTION_0_15();

  __CFRequireConcreteImplementation(v3, v4, v5);
}

- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject
{
  OUTLINED_FUNCTION_1_10();
  __CFLookUpClass("NSMutableArray");
  OUTLINED_FUNCTION_0_15();

  __CFRequireConcreteImplementation(v4, v5, v6);
}

- (NSMutableArray)initWithCapacity:(NSUInteger)numItems
{
  OUTLINED_FUNCTION_1_10();
  __CFLookUpClass("NSMutableArray");
  OUTLINED_FUNCTION_0_15();
  __CFRequireConcreteImplementation(v3, v4, v5);
}

@end