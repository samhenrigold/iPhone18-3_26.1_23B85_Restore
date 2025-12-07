@interface NSMutableSet
+ (NSMutableSet)setWithCapacity:(NSUInteger)numItems;
- (NSMutableSet)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)setByAddingObjectsFromArray:(id)array;
- (id)setByAddingObjectsFromSet:(id)set;
- (void)addObject:(id)object;
- (void)addObjects:(const void *)objects count:(unint64_t)count;
- (void)addObjectsFromArray:(NSArray *)array;
- (void)addObjectsFromArray:(id)array range:(_NSRange)range;
- (void)addObjectsFromOrderedSet:(id)set;
- (void)addObjectsFromOrderedSet:(id)set range:(_NSRange)range;
- (void)addObjectsFromSet:(id)set;
- (void)intersectOrderedSet:(id)set;
- (void)intersectSet:(NSSet *)otherSet;
- (void)minusOrderedSet:(id)set;
- (void)minusSet:(NSSet *)otherSet;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
- (void)removeObjectsInArray:(id)array;
- (void)removeObjectsInArray:(id)array range:(_NSRange)range;
- (void)removeObjectsInOrderedSet:(id)set;
- (void)removeObjectsInOrderedSet:(id)set range:(_NSRange)range;
- (void)removeObjectsInSet:(id)set;
- (void)removeObjectsPassingTest:(id)test;
- (void)removeObjectsWithOptions:(unint64_t)options passingTest:(id)test;
- (void)replaceObject:(id)object;
- (void)setArray:(id)array;
- (void)setObject:(id)object;
- (void)setOrderedSet:(id)set;
- (void)setSet:(NSSet *)otherSet;
- (void)unionOrderedSet:(id)set;
- (void)unionSet:(NSSet *)otherSet;
@end

@implementation NSMutableSet

- (void)addObjects:(const void *)objects count:(unint64_t)count
{
  v21 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableSet);
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
    *(v16 + 4) = "[NSMutableSet addObjects:count:]";
    *(v16 + 12) = 2048;
    *(v16 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableSet addObjects:count:]", count);
    goto LABEL_16;
  }

LABEL_4:
  if (count >> 61)
  {
    v14 = _os_log_pack_size();
    v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v20, v21);
    *v18 = 136315394;
    *(v18 + 4) = "[NSMutableSet addObjects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableSet addObjects:count:]", count);
LABEL_16:
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
        *(v11 + 4) = "[NSMutableSet addObjects:count:]";
        *(v11 + 12) = 2048;
        *(v11 + 14) = v8;
        v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableSet addObjects:count:]", v8);
        v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
        objc_exception_throw(v13);
      }

      ++v8;
    }

    while (count != v8);
    do
    {
      v9 = *objects++;
      [(NSMutableSet *)self addObject:v9];
      --count;
    }

    while (count);
  }
}

- (void)addObjectsFromArray:(id)array range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v44 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableSet);
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
    *(v31 + 4) = "[NSMutableSet addObjectsFromArray:range:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableSet addObjectsFromArray:range:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
    objc_exception_throw(v33);
  }

LABEL_4:
  v9 = [array count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v17 = _os_log_pack_size();
      v20 = &v43 - ((MEMORY[0x1EEE9AC00](v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill(v20, v17, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty set", v43, v44, v45);
      v22 = __os_log_helper_1_2_3_8_32_8_0_8_0(v21, "[NSMutableSet addObjectsFromArray:range:]", location, length);
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty set", v22, "[NSMutableSet addObjectsFromArray:range:]", location, length);
      v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v20, v17];
      objc_exception_throw(v24);
    }

    v34 = v9;
    v35 = _os_log_pack_size();
    v38 = &v43 - ((MEMORY[0x1EEE9AC00](v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = _os_log_pack_fill(v38, v35, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v43, v44, v45, v46);
    v40 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v39, "[NSMutableSet addObjectsFromArray:range:]", location, length, --v34);
    v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v40, "[NSMutableSet addObjectsFromArray:range:]", location, length, v34);
    v42 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v38, v35];
    objc_exception_throw(v42);
  }

  if (length >> 60)
  {
    v25 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v26 = [NSException exceptionWithName:@"NSGenericException" reason:v25 userInfo:0];
    CFRelease(v25);
    objc_exception_throw(v26);
  }

  if (length <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = length;
  }

  v13 = MEMORY[0x1EEE9AC00](v12, v10, v11);
  v15 = &v43 - v14;
  v43 = 0;
  if (length >= 0x101)
  {
    v15 = _CFCreateArrayStorage(v13, 0, &v43);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  [array getObjects:v15 range:{location, length, v43}];
  [(NSMutableSet *)self addObjects:v15 count:length];
  free(v16);
}

- (void)addObjectsFromArray:(NSArray *)array
{
  allObjects = array;
  v27 = *MEMORY[0x1E69E9840];
  if (array)
  {
    objc_lookUpClass("NSArray");
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableSet addObjectsFromArray:]");
      v7 = _CFAutoreleasePoolAddObject(0, v6);
      CFLog(3, @"%@", v8, v9, v10, v11, v12, v13, v7);
      objc_lookUpClass("NSSet");
      if (objc_opt_isKindOfClass())
      {
        allObjects = [(NSArray *)allObjects allObjects];
      }
    }
  }

  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (!allObjects)
    {
      goto LABEL_8;
    }
  }

  else if (!allObjects)
  {
    goto LABEL_8;
  }

  if ((_NSIsNSArray(allObjects) & 1) == 0)
  {
    v18 = _os_log_pack_size();
    v19 = _os_log_pack_fill(v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v18, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v22[0]);
    *v19 = 136315138;
    *(v19 + 4) = "[NSMutableSet addObjectsFromArray:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableSet addObjectsFromArray:]");
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v18];
    objc_exception_throw(v21);
  }

LABEL_8:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [(NSArray *)allObjects countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(allObjects);
        }

        [(NSMutableSet *)self addObject:*(*(&v23 + 1) + 8 * i)];
      }

      v15 = [(NSArray *)allObjects countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v15);
  }
}

- (void)addObjectsFromOrderedSet:(id)set range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v44 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableSet);
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
    *(v31 + 4) = "[NSMutableSet addObjectsFromOrderedSet:range:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet addObjectsFromOrderedSet:range:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
    objc_exception_throw(v33);
  }

LABEL_4:
  v9 = [set count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (!v9)
    {
      v17 = _os_log_pack_size();
      v20 = &v43 - ((MEMORY[0x1EEE9AC00](v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill(v20, v17, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty set", v43, v44, v45);
      v22 = __os_log_helper_1_2_3_8_32_8_0_8_0(v21, "[NSMutableSet addObjectsFromOrderedSet:range:]", location, length);
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty set", v22, "[NSMutableSet addObjectsFromOrderedSet:range:]", location, length);
      v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v20, v17];
      objc_exception_throw(v24);
    }

    v34 = v9;
    v35 = _os_log_pack_size();
    v38 = &v43 - ((MEMORY[0x1EEE9AC00](v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = _os_log_pack_fill(v38, v35, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v43, v44, v45, v46);
    v40 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v39, "[NSMutableSet addObjectsFromOrderedSet:range:]", location, length, --v34);
    v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v40, "[NSMutableSet addObjectsFromOrderedSet:range:]", location, length, v34);
    v42 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v38, v35];
    objc_exception_throw(v42);
  }

  if (length >> 60)
  {
    v25 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", length);
    v26 = [NSException exceptionWithName:@"NSGenericException" reason:v25 userInfo:0];
    CFRelease(v25);
    objc_exception_throw(v26);
  }

  if (length <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = length;
  }

  v13 = MEMORY[0x1EEE9AC00](v12, v10, v11);
  v15 = &v43 - v14;
  v43 = 0;
  if (length >= 0x101)
  {
    v15 = _CFCreateArrayStorage(v13, 0, &v43);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  [set getObjects:v15 range:{location, length, v43}];
  [(NSMutableSet *)self addObjects:v15 count:length];
  free(v16);
}

- (void)addObjectsFromOrderedSet:(id)set
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSMutableSet addObjectsFromOrderedSet:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet addObjectsFromOrderedSet:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

LABEL_4:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [set countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(set);
        }

        [(NSMutableSet *)self addObject:*(*(&v15 + 1) + 8 * i)];
      }

      v7 = [set countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addObjectsFromSet:(id)set
{
  v40 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (!set)
    {
      goto LABEL_17;
    }
  }

  else if (!set)
  {
    goto LABEL_17;
  }

  if ((_NSIsNSSet(set) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
  {
    goto LABEL_16;
  }

  if (++__checkForAndForgiveClientSin_cnt <= 0x64)
  {
    v7 = __CFExceptionProem(self, a2);
    CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
  }

  v14 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = [set countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(set);
        }

        [v14 addObject:*(*(&v36 + 1) + 8 * i)];
      }

      v16 = [set countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v16);
  }

  set = v14;
  if (set)
  {
LABEL_16:
    if ((_NSIsNSSet(set) & 1) == 0)
    {
      v23 = _os_log_pack_size();
      v26 = v30 - ((MEMORY[0x1EEE9AC00](v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = _os_log_pack_fill(v26, v23, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v30[0]);
      *v27 = 136315138;
      *(v27 + 4) = "[NSMutableSet addObjectsFromSet:]";
      v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableSet addObjectsFromSet:]");
      v29 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v26, v23];
      objc_exception_throw(v29);
    }
  }

LABEL_17:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = [set countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(set);
        }

        [(NSMutableSet *)self addObject:*(*(&v31 + 1) + 8 * j)];
      }

      v20 = [set countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v20);
  }
}

- (void)intersectOrderedSet:(id)set
{
  v48 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v26 = _os_log_pack_size();
    v29 = &v36 - ((MEMORY[0x1EEE9AC00](v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = _os_log_pack_fill(v29, v26, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v36);
    *v30 = 136315138;
    *(v30 + 4) = "[NSMutableSet intersectOrderedSet:]";
    v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet intersectOrderedSet:]");
    v32 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v26];
    objc_exception_throw(v32);
  }

LABEL_4:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = [(NSSet *)self countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v45;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(self);
        }

        v9 += [(NSSet *)self countForObject:*(*(&v44 + 1) + 8 * i)];
      }

      v8 = [(NSSet *)self countByEnumeratingWithState:&v44 objects:v43 count:16];
    }

    while (v8);
    if (v9 >> 60)
    {
      v33 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v9);
      v34 = [NSException exceptionWithName:@"NSGenericException" reason:v33 userInfo:0];
      CFRelease(v33);
      objc_exception_throw(v34);
    }

    if (v9 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v9;
    }

    v15 = MEMORY[0x1EEE9AC00](v14, v12, v13);
    v17 = &v36 - v16;
    v37 = 0;
    if (v9 >= 0x101)
    {
      v17 = _CFCreateArrayStorage(v15, 0, &v37);
      v36 = v17;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, v6, v7);
    v17 = &v35;
    v36 = 0;
    v37 = 0;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v18 = [(NSSet *)self countByEnumeratingWithState:&v39 objects:v38 count:16, v36, v37];
  v19 = v17;
  if (v18)
  {
    v20 = *v40;
    v19 = v17;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(self);
        }

        v22 = *(*(&v39 + 1) + 8 * j);
        v23 = [set countForObject:v22];
        v24 = [(NSSet *)self countForObject:v22];
        v25 = v24 - v23;
        if (v24 > v23)
        {
          do
          {
            *v19 = v22;
            v19 += 8;
            --v25;
          }

          while (v25);
        }
      }

      v18 = [(NSSet *)self countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v18);
  }

  while (v17 < v19)
  {
    [(NSMutableSet *)self removeObject:*v17];
    v17 += 8;
  }

  free(v36);
}

- (void)intersectSet:(NSSet *)otherSet
{
  v62 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (!otherSet)
    {
      goto LABEL_17;
    }
  }

  else if (!otherSet)
  {
    goto LABEL_17;
  }

  if ((_NSIsNSSet(otherSet) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
  {
    goto LABEL_16;
  }

  if (++__checkForAndForgiveClientSin_cnt <= 0x64)
  {
    v7 = __CFExceptionProem(self, a2);
    CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
  }

  v14 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v15 = [(NSSet *)otherSet countByEnumeratingWithState:&v58 objects:v57 count:16];
  if (v15)
  {
    v16 = *v59;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v59 != v16)
        {
          objc_enumerationMutation(otherSet);
        }

        [v14 addObject:*(*(&v58 + 1) + 8 * i)];
      }

      v15 = [(NSSet *)otherSet countByEnumeratingWithState:&v58 objects:v57 count:16];
    }

    while (v15);
  }

  otherSet = v14;
  if (otherSet)
  {
LABEL_16:
    if ((_NSIsNSSet(otherSet) & 1) == 0)
    {
      v36 = _os_log_pack_size();
      v39 = &v45 - ((MEMORY[0x1EEE9AC00](v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
      v40 = _os_log_pack_fill(v39, v36, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v45);
      *v40 = 136315138;
      *(v40 + 4) = "[NSMutableSet intersectSet:]";
      v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableSet intersectSet:]");
      v42 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v39, v36];
      objc_exception_throw(v42);
    }
  }

LABEL_17:
  if (otherSet != self)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v18 = 0;
    v21 = [(NSSet *)self countByEnumeratingWithState:&v53 objects:v52 count:16];
    if (v21)
    {
      v22 = *v54;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v54 != v22)
          {
            objc_enumerationMutation(self);
          }

          v18 += [(NSSet *)self countForObject:*(*(&v53 + 1) + 8 * j)];
        }

        v21 = [(NSSet *)self countByEnumeratingWithState:&v53 objects:v52 count:16];
      }

      while (v21);
      if (v18 >> 60)
      {
        v43 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v18);
        v44 = [NSException exceptionWithName:@"NSGenericException" reason:v43 userInfo:0];
        CFRelease(v43);
        objc_exception_throw(v44);
      }
    }

    if (v18 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v18;
    }

    v25 = MEMORY[0x1EEE9AC00](v24, v19, v20);
    v27 = (&v45 - v26);
    v57[0] = 0;
    if (v18 >= 0x101)
    {
      v27 = _CFCreateArrayStorage(v25, 0, v57);
      v46 = v27;
    }

    else
    {
      v46 = 0;
    }

    v45 = &v45;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v28 = [(NSSet *)self countByEnumeratingWithState:&v48 objects:v47 count:16];
    v29 = v27;
    if (v28)
    {
      v30 = *v49;
      v29 = v27;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v49 != v30)
          {
            objc_enumerationMutation(self);
          }

          v32 = *(*(&v48 + 1) + 8 * k);
          v33 = [(NSSet *)otherSet countForObject:v32];
          v34 = [(NSSet *)self countForObject:v32];
          v35 = v34 - v33;
          if (v34 > v33)
          {
            do
            {
              *v29++ = v32;
              --v35;
            }

            while (v35);
          }
        }

        v28 = [(NSSet *)self countByEnumeratingWithState:&v48 objects:v47 count:16];
      }

      while (v28);
    }

    while (v27 < v29)
    {
      [(NSMutableSet *)self removeObject:*v27++];
    }

    free(v46);
  }
}

- (void)minusOrderedSet:(id)set
{
  v22 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v13 = _os_log_pack_size();
    v14 = _os_log_pack_fill(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v17[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSMutableSet minusOrderedSet:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet minusOrderedSet:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13];
    objc_exception_throw(v16);
  }

LABEL_4:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [set countByEnumeratingWithState:&v18 objects:v17 count:16];
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
          objc_enumerationMutation(set);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [set countForObject:v10];
        if (v11)
        {
          v12 = v11;
          do
          {
            --v12;
            [(NSMutableSet *)self removeObject:v10];
          }

          while (v12);
        }
      }

      v7 = [set countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)minusSet:(NSSet *)otherSet
{
  v43 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (!otherSet)
    {
      goto LABEL_17;
    }
  }

  else if (!otherSet)
  {
    goto LABEL_17;
  }

  if ((_NSIsNSSet(otherSet) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
  {
    goto LABEL_16;
  }

  if (++__checkForAndForgiveClientSin_cnt <= 0x64)
  {
    v7 = __CFExceptionProem(self, a2);
    CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
  }

  v14 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = [(NSSet *)otherSet countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(otherSet);
        }

        [v14 addObject:*(*(&v39 + 1) + 8 * i)];
      }

      v16 = [(NSSet *)otherSet countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v16);
  }

  otherSet = v14;
  if (otherSet)
  {
LABEL_16:
    if ((_NSIsNSSet(otherSet) & 1) == 0)
    {
      v26 = _os_log_pack_size();
      v29 = v33 - ((MEMORY[0x1EEE9AC00](v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = _os_log_pack_fill(v29, v26, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v33[0]);
      *v30 = 136315138;
      *(v30 + 4) = "[NSMutableSet minusSet:]";
      v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableSet minusSet:]");
      v32 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v26];
      objc_exception_throw(v32);
    }
  }

LABEL_17:
  if (otherSet == self)
  {
    [(NSMutableSet *)self removeAllObjects];
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = [(NSSet *)otherSet countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(otherSet);
          }

          v23 = *(*(&v34 + 1) + 8 * j);
          v24 = [(NSSet *)otherSet countForObject:v23];
          if (v24)
          {
            v25 = v24;
            do
            {
              --v25;
              [(NSMutableSet *)self removeObject:v23];
            }

            while (v25);
          }
        }

        v20 = [(NSSet *)otherSet countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v20);
    }
  }
}

- (void)removeAllObjects
{
  v16[1] = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableSet);
  }

  v4 = [(NSSet *)self count];
  v7 = v4;
  if (v4 >> 60)
  {
    v14 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v4);
    v15 = [NSException exceptionWithName:@"NSGenericException" reason:v14 userInfo:0];
    CFRelease(v14);
    objc_exception_throw(v15);
  }

  if (v4 <= 1)
  {
    v4 = 1;
  }

  v8 = MEMORY[0x1EEE9AC00](v4, v5, v6);
  v10 = v16 - v9;
  v16[0] = 0;
  if (v7 >= 0x101)
  {
    v10 = _CFCreateArrayStorage(v8, 0, v16);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  [(NSSet *)self getObjects:v10 count:v7, v16[0]];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v13 = [(NSSet *)self countForObject:*&v10[8 * i]]+ 1;
      while (--v13)
      {
        [(NSMutableSet *)self removeObject:*&v10[8 * i]];
      }
    }
  }

  free(v11);
}

- (void)removeObjectsInArray:(id)array range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v24 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableSet);
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
    v15 = _os_log_pack_size();
    v16 = _os_log_pack_fill(&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v23);
    *v16 = 136315138;
    *(v16 + 4) = "[NSMutableSet removeObjectsInArray:range:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableSet removeObjectsInArray:range:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15];
    objc_exception_throw(v18);
  }

LABEL_4:
  v9 = [array count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v19 = v9;
      v10 = _os_log_pack_size();
      v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, v24, v25, v26);
      v21 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v20, "[NSMutableSet removeObjectsInArray:range:]", location, length, --v19);
      v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v21, "[NSMutableSet removeObjectsInArray:range:]", location, length, v19);
    }

    else
    {
      v10 = _os_log_pack_size();
      v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty set", v23, v24, v25);
      v13 = __os_log_helper_1_2_3_8_32_8_0_8_0(v12, "[NSMutableSet removeObjectsInArray:range:]", location, length);
      v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty set", v13, "[NSMutableSet removeObjectsInArray:range:]", location, length);
    }

    v22 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v11, v10];
    objc_exception_throw(v22);
  }

  for (; length; --length)
  {
    -[NSMutableSet removeObject:](self, "removeObject:", [array objectAtIndex:location++]);
  }
}

- (void)removeObjectsInArray:(id)array
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSMutableSet removeObjectsInArray:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableSet removeObjectsInArray:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

LABEL_4:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [array countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(array);
        }

        [(NSMutableSet *)self removeObject:*(*(&v15 + 1) + 8 * i)];
      }

      v7 = [array countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)removeObjectsInOrderedSet:(id)set range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v24 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableSet);
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
    v15 = _os_log_pack_size();
    v16 = _os_log_pack_fill(&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v23);
    *v16 = 136315138;
    *(v16 + 4) = "[NSMutableSet removeObjectsInOrderedSet:range:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet removeObjectsInOrderedSet:range:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15];
    objc_exception_throw(v18);
  }

LABEL_4:
  v9 = [set count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v9 < location + length)
  {
    if (v9)
    {
      v19 = v9;
      v10 = _os_log_pack_size();
      v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, v24, v25, v26);
      v21 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v20, "[NSMutableSet removeObjectsInOrderedSet:range:]", location, length, --v19);
      v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v21, "[NSMutableSet removeObjectsInOrderedSet:range:]", location, length, v19);
    }

    else
    {
      v10 = _os_log_pack_size();
      v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty set", v23, v24, v25);
      v13 = __os_log_helper_1_2_3_8_32_8_0_8_0(v12, "[NSMutableSet removeObjectsInOrderedSet:range:]", location, length);
      v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty set", v13, "[NSMutableSet removeObjectsInOrderedSet:range:]", location, length);
    }

    v22 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v11, v10];
    objc_exception_throw(v22);
  }

  for (; length; --length)
  {
    -[NSMutableSet removeObject:](self, "removeObject:", [set objectAtIndex:location++]);
  }
}

- (void)removeObjectsInOrderedSet:(id)set
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSMutableSet removeObjectsInOrderedSet:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet removeObjectsInOrderedSet:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

LABEL_4:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [set countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(set);
        }

        [(NSMutableSet *)self removeObject:*(*(&v15 + 1) + 8 * i)];
      }

      v7 = [set countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)removeObjectsInSet:(id)set
{
  v40 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (!set)
    {
      goto LABEL_17;
    }
  }

  else if (!set)
  {
    goto LABEL_17;
  }

  if ((_NSIsNSSet(set) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
  {
    goto LABEL_16;
  }

  if (++__checkForAndForgiveClientSin_cnt <= 0x64)
  {
    v7 = __CFExceptionProem(self, a2);
    CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
  }

  v14 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = [set countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(set);
        }

        [v14 addObject:*(*(&v36 + 1) + 8 * i)];
      }

      v16 = [set countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v16);
  }

  set = v14;
  if (set)
  {
LABEL_16:
    if ((_NSIsNSSet(set) & 1) == 0)
    {
      v23 = _os_log_pack_size();
      v26 = v30 - ((MEMORY[0x1EEE9AC00](v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = _os_log_pack_fill(v26, v23, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v30[0]);
      *v27 = 136315138;
      *(v27 + 4) = "[NSMutableSet removeObjectsInSet:]";
      v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableSet removeObjectsInSet:]");
      v29 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v26, v23];
      objc_exception_throw(v29);
    }
  }

LABEL_17:
  if (set == self)
  {
    [(NSMutableSet *)self removeAllObjects];
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = [set countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(set);
          }

          [(NSMutableSet *)self removeObject:*(*(&v31 + 1) + 8 * j)];
        }

        v20 = [set countByEnumeratingWithState:&v31 objects:v30 count:16];
      }

      while (v20);
    }
  }
}

- (void)removeObjectsWithOptions:(unint64_t)options passingTest:(id)test
{
  optionsCopy = options;
  v32 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (test)
    {
      goto LABEL_3;
    }

LABEL_12:
    v13 = _os_log_pack_size();
    v16 = &v21[-1] - ((MEMORY[0x1EEE9AC00](v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v16, v13, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v20);
    *v17 = 136315138;
    *(v17 + 4) = "[NSMutableSet removeObjectsWithOptions:passingTest:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableSet removeObjectsWithOptions:passingTest:]");
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v16, v13];
    objc_exception_throw(v19);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableSet);
  if (!test)
  {
    goto LABEL_12;
  }

LABEL_3:
  v8 = +[(NSSet *)NSMutableSet];
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v31 = 0;
  v27 = 850045857;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __53__NSMutableSet_removeObjectsWithOptions_passingTest___block_invoke;
  v21[3] = &unk_1E6A55E98;
  v21[5] = test;
  v21[6] = &v27;
  v21[4] = v8;
  __NSSetEnumerate(self, optionsCopy & 0xFD, v21);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [(NSSet *)v8 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(NSMutableSet *)self removeObject:*(*(&v23 + 1) + 8 * i)];
      }

      v10 = [(NSSet *)v8 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v10);
  }
}

uint64_t __53__NSMutableSet_removeObjectsWithOptions_passingTest___block_invoke(uint64_t a1, uint64_t a2)
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

- (void)removeObjectsPassingTest:(id)test
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v3 = _os_log_pack_size();
    v4 = _os_log_pack_fill(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v7[0]);
    *v4 = 136315138;
    *(v4 + 4) = "[NSMutableSet removeObjectsPassingTest:]";
    v5 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableSet removeObjectsPassingTest:]");
    v6 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v5) osLogPack:0 size:v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3];
    objc_exception_throw(v6);
  }

  [(NSMutableSet *)self removeObjectsWithOptions:0 passingTest:test];
}

- (void)replaceObject:(id)object
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (object)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: object cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSMutableSet replaceObject:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableSet replaceObject:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (!object)
  {
    goto LABEL_10;
  }

LABEL_3:
  v6 = [(NSSet *)self member:object];
  if (v6 != object && v6)
  {
    [(NSMutableSet *)self removeObject:v6];

    [(NSMutableSet *)self addObject:object];
  }
}

- (void)setObject:(id)object
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: object cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSMutableSet setObject:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableSet setObject:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
  if (!object)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = [(NSSet *)self member:object];
  if (v6 != object)
  {
    if (v6)
    {
      [(NSMutableSet *)self removeObject:v6];
    }

    [(NSMutableSet *)self addObject:object];
  }
}

- (void)setArray:(id)array
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSMutableSet setArray:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableSet setArray:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

LABEL_4:
  [(NSMutableSet *)self removeAllObjects];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [array countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(array);
        }

        [(NSMutableSet *)self addObject:*(*(&v15 + 1) + 8 * i)];
      }

      v7 = [array countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setOrderedSet:(id)set
{
  v22 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v13 = _os_log_pack_size();
    v14 = _os_log_pack_fill(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v17[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSMutableSet setOrderedSet:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet setOrderedSet:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13];
    objc_exception_throw(v16);
  }

LABEL_4:
  [(NSMutableSet *)self removeAllObjects];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [set countByEnumeratingWithState:&v18 objects:v17 count:16];
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
          objc_enumerationMutation(set);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [set countForObject:v10];
        if (v11)
        {
          v12 = v11;
          do
          {
            --v12;
            [(NSMutableSet *)self addObject:v10];
          }

          while (v12);
        }
      }

      v7 = [set countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)setSet:(NSSet *)otherSet
{
  v43 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (!otherSet)
    {
      goto LABEL_17;
    }
  }

  else if (!otherSet)
  {
    goto LABEL_17;
  }

  if ((_NSIsNSSet(otherSet) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
  {
    goto LABEL_16;
  }

  if (++__checkForAndForgiveClientSin_cnt <= 0x64)
  {
    v7 = __CFExceptionProem(self, a2);
    CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
  }

  v14 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = [(NSSet *)otherSet countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(otherSet);
        }

        [v14 addObject:*(*(&v39 + 1) + 8 * i)];
      }

      v16 = [(NSSet *)otherSet countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v16);
  }

  otherSet = v14;
  if (otherSet)
  {
LABEL_16:
    if ((_NSIsNSSet(otherSet) & 1) == 0)
    {
      v26 = _os_log_pack_size();
      v29 = v33 - ((MEMORY[0x1EEE9AC00](v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = _os_log_pack_fill(v29, v26, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v33[0]);
      *v30 = 136315138;
      *(v30 + 4) = "[NSMutableSet setSet:]";
      v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableSet setSet:]");
      v32 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v31) osLogPack:0 size:v29, v26];
      objc_exception_throw(v32);
    }
  }

LABEL_17:
  if (otherSet != self)
  {
    [(NSMutableSet *)self removeAllObjects];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = [(NSSet *)otherSet countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(otherSet);
          }

          v23 = *(*(&v34 + 1) + 8 * j);
          v24 = [(NSSet *)otherSet countForObject:v23];
          if (v24)
          {
            v25 = v24;
            do
            {
              --v25;
              [(NSMutableSet *)self addObject:v23];
            }

            while (v25);
          }
        }

        v20 = [(NSSet *)otherSet countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v20);
    }
  }
}

- (void)unionOrderedSet:(id)set
{
  v22 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
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
    v13 = _os_log_pack_size();
    v14 = _os_log_pack_fill(v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, 0, &dword_1830E6000, "*** %s: ordered set argument is not an NSOrderedSet", v17[0]);
    *v14 = 136315138;
    *(v14 + 4) = "[NSMutableSet unionOrderedSet:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: ordered set argument is not an NSOrderedSet", "[NSMutableSet unionOrderedSet:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13];
    objc_exception_throw(v16);
  }

LABEL_4:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [set countByEnumeratingWithState:&v18 objects:v17 count:16];
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
          objc_enumerationMutation(set);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [set countForObject:v10];
        if (v11)
        {
          v12 = v11;
          do
          {
            --v12;
            [(NSMutableSet *)self addObject:v10];
          }

          while (v12);
        }
      }

      v7 = [set countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)unionSet:(NSSet *)otherSet
{
  v42 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
    if (!otherSet)
    {
      goto LABEL_17;
    }
  }

  else if (!otherSet)
  {
    goto LABEL_17;
  }

  if ((_NSIsNSSet(otherSet) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
  {
    goto LABEL_16;
  }

  if (++__checkForAndForgiveClientSin_cnt <= 0x64)
  {
    v7 = __CFExceptionProem(self, a2);
    CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v8, v9, v10, v11, v12, v13, v7);
  }

  v14 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = [(NSSet *)otherSet countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (v15)
  {
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(otherSet);
        }

        [v14 addObject:*(*(&v38 + 1) + 8 * i)];
      }

      v15 = [(NSSet *)otherSet countByEnumeratingWithState:&v38 objects:v37 count:16];
    }

    while (v15);
  }

  otherSet = v14;
  if (otherSet)
  {
LABEL_16:
    if ((_NSIsNSSet(otherSet) & 1) == 0)
    {
      v30 = _os_log_pack_size();
      v33 = v37 - ((MEMORY[0x1EEE9AC00](v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = _os_log_pack_fill(v33, v30, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v37[0]);
      *v34 = 136315138;
      *(v34 + 4) = "[NSMutableSet unionSet:]";
      v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableSet unionSet:]");
      v36 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v35) osLogPack:0 size:v33, v30];
      objc_exception_throw(v36);
    }
  }

LABEL_17:
  v18 = [(NSSet *)otherSet count];
  v21 = v18;
  if (v18 >> 60)
  {
    v28 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v18);
    v29 = [NSException exceptionWithName:@"NSGenericException" reason:v28 userInfo:0];
    CFRelease(v28);
    objc_exception_throw(v29);
  }

  if (v18 <= 1)
  {
    v18 = 1;
  }

  v22 = MEMORY[0x1EEE9AC00](v18, v19, v20);
  v24 = v37 - v23;
  v37[0] = 0;
  if (v21 >= 0x101)
  {
    v24 = _CFCreateArrayStorage(v22, 0, v37);
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  [(NSSet *)otherSet getObjects:v24 count:v21, v37[0]];
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      v27 = [(NSSet *)otherSet countForObject:*&v24[8 * j]]+ 1;
      while (--v27)
      {
        [(NSMutableSet *)self addObject:*&v24[8 * j]];
      }
    }
  }

  free(v25);
}

- (NSMutableSet)initWithObjects:(const void *)objects count:(unint64_t)count
{
  countCopy = count;
  objectsCopy = objects;
  v21 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v14 = _os_log_pack_size();
    v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v20, v21);
    *v16 = 136315394;
    *(v16 + 4) = "[NSMutableSet initWithObjects:count:]";
    *(v16 + 12) = 2048;
    *(v16 + 14) = countCopy;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableSet initWithObjects:count:]", countCopy);
    goto LABEL_17;
  }

  if (count >> 61)
  {
    v14 = _os_log_pack_size();
    v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v15, v14, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v20, v21);
    *v18 = 136315394;
    *(v18 + 4) = "[NSMutableSet initWithObjects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = countCopy;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableSet initWithObjects:count:]", countCopy);
LABEL_17:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v14];
    objc_exception_throw(v19);
  }

  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (!objects[i])
      {
        v10 = _os_log_pack_size();
        v11 = _os_log_pack_fill(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]", v20, v21);
        *v11 = 136315394;
        *(v11 + 4) = "[NSMutableSet initWithObjects:count:]";
        *(v11 + 12) = 2048;
        *(v11 + 14) = i;
        v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableSet initWithObjects:count:]", i);
        v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
        objc_exception_throw(v13);
      }
    }

    v7 = [(NSMutableSet *)self initWithCapacity:count];
    do
    {
      v8 = *objectsCopy++;
      [(NSMutableSet *)v7 addObject:v8];
      --countCopy;
    }

    while (countCopy);
    return v7;
  }

  else
  {

    return [(NSMutableSet *)self initWithCapacity:0];
  }
}

- (id)setByAddingObjectsFromArray:(id)array
{
  v28 = *MEMORY[0x1E69E9840];
  if (array && (_NSIsNSArray(array) & 1) == 0)
  {
    v20 = _os_log_pack_size();
    v23 = &v27 - ((MEMORY[0x1EEE9AC00](v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill(v23, v20, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v27);
    *v24 = 136315138;
    *(v24 + 4) = "[NSMutableSet setByAddingObjectsFromArray:]";
    v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableSet setByAddingObjectsFromArray:]");
    v26 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v23, v20];
    objc_exception_throw(v26);
  }

  v5 = [array count];
  v6 = [(NSSet *)self count];
  v9 = v6 + v5;
  if ((v6 + v5) >> 60)
  {
    v18 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6 + v5);
    v19 = [NSException exceptionWithName:@"NSGenericException" reason:v18 userInfo:0];
    CFRelease(v18);
    objc_exception_throw(v19);
  }

  v10 = v6;
  if (v9 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v6 + v5;
  }

  v12 = MEMORY[0x1EEE9AC00](v11, v7, v8);
  v14 = &v27 - v13;
  v27 = 0;
  if (v9 >= 0x101)
  {
    v14 = _CFCreateArrayStorage(v12, 0, &v27);
    v15 = v14;
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15 = 0;
  if (v10)
  {
LABEL_11:
    [(NSSet *)self getObjects:v14 count:v10, v27, v28];
  }

LABEL_12:
  if (v5)
  {
    [array getObjects:&v14[8 * v10] range:{0, v5}];
  }

  v16 = [NSSet setWithObjects:v14 count:v9, v27];
  free(v15);
  return v16;
}

- (id)setByAddingObjectsFromSet:(id)set
{
  setCopy = set;
  v44 = *MEMORY[0x1E69E9840];
  if (set)
  {
    if ((_NSIsNSSet(set) & 1) != 0 || _CFExecutableLinkedOnOrAfter(7uLL) || _CFExecutableLinkedOnOrAfter(0x3F2uLL))
    {
      goto LABEL_15;
    }

    if (++__checkForAndForgiveClientSin_cnt <= 0x64)
    {
      v6 = __CFExceptionProem(self, a2);
      CFLog(3, @"%@: This app appears to be calling this method with a non-set parameter.  Please wait while the system corrects this....  %s", v7, v8, v9, v10, v11, v12, v6);
    }

    v13 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v14 = [setCopy countByEnumeratingWithState:&v40 objects:v39 count:16];
    if (v14)
    {
      v15 = *v41;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(setCopy);
          }

          [v13 addObject:*(*(&v40 + 1) + 8 * i)];
        }

        v14 = [setCopy countByEnumeratingWithState:&v40 objects:v39 count:16];
      }

      while (v14);
    }

    setCopy = v13;
    if (setCopy)
    {
LABEL_15:
      if ((_NSIsNSSet(setCopy) & 1) == 0)
      {
        v32 = _os_log_pack_size();
        v35 = v39 - ((MEMORY[0x1EEE9AC00](v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
        v36 = _os_log_pack_fill(v35, v32, 0, &dword_1830E6000, "*** %s: set argument is not an NSSet", v39[0]);
        *v36 = 136315138;
        *(v36 + 4) = "[NSMutableSet setByAddingObjectsFromSet:]";
        v37 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: set argument is not an NSSet", "[NSMutableSet setByAddingObjectsFromSet:]");
        v38 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v37) osLogPack:0 size:v35, v32];
        objc_exception_throw(v38);
      }
    }
  }

  v17 = [setCopy count];
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
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v27 = 0;
  if (v21)
  {
LABEL_24:
    [(NSSet *)self getObjects:v26 count:v21, v39[0]];
  }

LABEL_25:
  if (v17)
  {
    [setCopy getObjects:&v26[8 * v21] count:v17];
  }

  v28 = [NSSet setWithObjects:v26 count:v22, v39[0]];
  free(v27);
  return v28;
}

+ (NSMutableSet)setWithCapacity:(NSUInteger)numItems
{
  v3 = [[self alloc] initWithCapacity:numItems];

  return v3;
}

- (void)addObject:(id)object
{
  v5 = __CFLookUpClass("NSMutableSet");

  __CFRequireConcreteImplementation(v5, self, a2);
}

- (void)removeObject:(id)object
{
  v5 = __CFLookUpClass("NSMutableSet");

  __CFRequireConcreteImplementation(v5, self, a2);
}

@end