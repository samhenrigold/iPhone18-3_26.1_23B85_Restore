@interface NSDictionary
+ (NSDictionary)allocWithZone:(_NSZone *)zone;
+ (NSDictionary)dictionary;
+ (NSDictionary)dictionaryWithDictionary:(NSDictionary *)dict;
+ (NSDictionary)dictionaryWithDictionary:(id)dictionary copyItems:(BOOL)items;
+ (NSDictionary)dictionaryWithObject:(id)object forKey:(id)key;
+ (NSDictionary)dictionaryWithObjects:(NSArray *)objects forKeys:(NSArray *)keys;
+ (NSDictionary)dictionaryWithObjects:(id *)objects forKeys:(id *)keys count:(NSUInteger)cnt;
+ (NSDictionary)dictionaryWithObjectsAndKeys:(id)firstObject;
+ (id)newDictionaryWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
+ (id)sharedKeySetForKeys:(NSArray *)keys;
- (BOOL)__getValue:(id *)value forKey:(id)key;
- (BOOL)containsKey:(id)key;
- (BOOL)containsObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDictionary:(NSDictionary *)otherDictionary;
- (NSArray)allKeys;
- (NSArray)allKeysForObject:(id)anObject;
- (NSArray)allValues;
- (NSArray)keysSortedByValueUsingComparator:(NSComparator)cmptr;
- (NSArray)keysSortedByValueUsingSelector:(SEL)comparator;
- (NSArray)keysSortedByValueWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr;
- (NSArray)objectsForKeys:(NSArray *)keys notFoundMarker:(id)marker;
- (NSDictionary)initWithDictionary:(NSDictionary *)otherDictionary copyItems:(BOOL)flag;
- (NSDictionary)initWithObject:(id)object forKey:(id)key;
- (NSDictionary)initWithObjects:(NSArray *)objects forKeys:(NSArray *)keys;
- (NSDictionary)initWithObjects:(id *)objects forKeys:(id *)keys count:(NSUInteger)cnt;
- (NSDictionary)initWithObjectsAndKeys:(id)firstObject;
- (NSEnumerator)keyEnumerator;
- (NSEnumerator)objectEnumerator;
- (NSSet)keysOfEntriesPassingTest:(void *)predicate;
- (NSSet)keysOfEntriesWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSString)description;
- (NSString)descriptionWithLocale:(id)locale;
- (NSString)descriptionWithLocale:(id)locale indent:(NSUInteger)level;
- (NSUInteger)count;
- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(id *)buffer count:(NSUInteger)len;
- (id)_cfMutableCopy;
- (id)allObjects;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invertedDictionary;
- (id)keyOfEntryPassingTest:(id)test;
- (id)keyOfEntryWithOptions:(unint64_t)options passingTest:(id)test;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectForKey:(id)aKey;
- (id)objectForKeyedSubscript:(id)key;
- (unint64_t)countForKey:(id)key;
- (unint64_t)countForObject:(id)object;
- (unint64_t)hash;
- (void)__apply:(void *)__apply context:(void *)context;
- (void)enumerateKeysAndObjectsUsingBlock:(void *)block;
- (void)enumerateKeysAndObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)getKeys:(id *)keys;
- (void)getObjects:(id *)objects;
- (void)getObjects:(id *)objects andKeys:(id *)keys;
- (void)getObjects:(id *)objects andKeys:(id *)keys count:(NSUInteger)count;
@end

@implementation NSDictionary

- (NSArray)allValues
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = [(NSDictionary *)self count];
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
  [(NSDictionary *)self getObjects:v6 andKeys:0 count:v5];
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

+ (NSDictionary)dictionary
{
  v2 = [[self alloc] initWithObjects:0 forKeys:0 count:0];

  return v2;
}

- (NSArray)allKeys
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = [(NSDictionary *)self count];
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
  [(NSDictionary *)self getObjects:0 andKeys:v6 count:v5];
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
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  return [(NSDictionary *)self descriptionWithLocale:0 indent:0];
}

- (unint64_t)hash
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  return [(NSDictionary *)self count];
}

- (NSEnumerator)objectEnumerator
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = [(__NSFastEnumerationEnumerator *)[__NSDictionaryObjectEnumerator alloc] initWithObject:self];

  return v4;
}

- (id)_cfMutableCopy
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = objc_allocWithZone(NSMutableDictionary);

  return [v4 initWithDictionary:self copyItems:0];
}

- (NSArray)allKeysForObject:(id)anObject
{
  v35 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = [(NSDictionary *)self count];
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
  v11 = &v28 - v10;
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
  v14 = [(NSDictionary *)self countByEnumeratingWithState:&v31 objects:v30 count:16];
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
        v19 = [(NSDictionary *)self objectForKey:v18];
        if (v19 == anObject || [anObject isEqual:v19])
        {
          *v15 = v18;
          v15 += 8;
        }
      }

      v14 = [(NSDictionary *)self countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v14);
  }

  v20 = (v15 - v11) >> 3;
  if (v13)
  {
    if (v20 >= 1)
    {
      v21 = v13;
      v22 = (v15 - v11) >> 3;
      do
      {
        v23 = *v21++;
        --v22;
      }

      while (v22);
    }

    v24 = [[NSArray alloc] _initByAdoptingBuffer:v13 count:v20 size:v20];
  }

  else
  {
    v24 = [[NSArray alloc] initWithObjects:v11 count:(v15 - v11) >> 3];
  }

  return v24;
}

- (id)allObjects
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = [(NSDictionary *)self count];
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
  [(NSDictionary *)self getObjects:v6 andKeys:0 count:v5];
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

- (BOOL)containsKey:(id)key
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
    if (key)
    {
      return [(NSDictionary *)self objectForKey:key]!= 0;
    }
  }

  else if (key)
  {
    return [(NSDictionary *)self objectForKey:key]!= 0;
  }

  return 0;
}

- (BOOL)containsObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSDictionary *)self countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(self);
        }

        v10 = [(NSDictionary *)self objectForKey:*(*(&v13 + 1) + 8 * i)];
        if (v10 == object || ([object isEqual:v10] & 1) != 0)
        {
          LOBYTE(v6) = 1;
          return v6;
        }
      }

      v7 = [(NSDictionary *)self countByEnumeratingWithState:&v13 objects:v12 count:16];
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

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(id *)buffer count:(NSUInteger)len
{
  v26 = *MEMORY[0x1E69E9840];
  if (!buffer && len)
  {
    v19 = _os_log_pack_size();
    v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v25, v26);
    *v21 = 136315394;
    *(v21 + 4) = "[NSDictionary countByEnumeratingWithState:objects:count:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = len;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSDictionary countByEnumeratingWithState:objects:count:]", len);
    goto LABEL_28;
  }

  if (len >> 61)
  {
    v19 = _os_log_pack_size();
    v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v25, v26);
    *v23 = 136315394;
    *(v23 + 4) = "[NSDictionary countByEnumeratingWithState:objects:count:]";
    *(v23 + 12) = 2048;
    *(v23 + 14) = len;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSDictionary countByEnumeratingWithState:objects:count:]", len);
LABEL_28:
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v19];
    objc_exception_throw(v24);
  }

  v10 = state->state;
  if (state->state == -1)
  {
    return 0;
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableDictionary);
    v10 = state->state;
    if (state->state)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v10)
  {
LABEL_9:
    state->mutationsPtr = state->extra;
    state->extra[0] = [(NSDictionary *)self count];
    keyEnumerator = [(NSDictionary *)self keyEnumerator];
    state->extra[1] = keyEnumerator;
    if (keyEnumerator)
    {
      v11 = keyEnumerator;
      v10 = state->state;
      goto LABEL_11;
    }

    return 0;
  }

LABEL_7:
  v11 = state->extra[1];
LABEL_11:
  state->itemsPtr = buffer;
  v13 = state->extra[0];
  if (v13 - v10 >= len)
  {
    v14 = len;
  }

  else
  {
    v14 = v13 - v10;
  }

  if (v14)
  {
    v15 = 0;
    while (1)
    {
      nextObject = [(NSEnumerator *)v11 nextObject];
      if (!nextObject)
      {
        break;
      }

      buffer[v15++] = nextObject;
      if (v14 == v15)
      {
        v10 = state->state;
        goto LABEL_19;
      }
    }

    v17 = -1;
  }

  else
  {
LABEL_19:
    v17 = v10 + v14;
    if (v13 <= v17)
    {
      v17 = -1;
    }

    v15 = v14;
  }

  state->state = v17;
  return v15;
}

- (unint64_t)countForKey:(id)key
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  return [(NSDictionary *)self objectForKey:key]!= 0;
}

- (unint64_t)countForObject:(id)object
{
  v18 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSDictionary *)self countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v15;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(self);
      }

      v11 = [(NSDictionary *)self objectForKey:*(*(&v14 + 1) + 8 * i)];
      if (v11 == object || [object isEqual:v11])
      {
        ++v8;
      }
    }

    v7 = [(NSDictionary *)self countByEnumeratingWithState:&v14 objects:v13 count:16];
  }

  while (v7);
  return v8;
}

- (NSString)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
  v71 = locale;
  v79[1] = *MEMORY[0x1E69E9840];
  if (level >= 0x64)
  {
    v5 = 100;
  }

  else
  {
    v5 = level;
  }

  selfCopy = self;
  v6 = [(NSDictionary *)self count];
  v9 = v6;
  if (v6 >> 60)
  {
    v60 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v61 = [NSException exceptionWithName:@"NSGenericException" reason:v60 userInfo:0];
    CFRelease(v60);
    objc_exception_throw(v61);
  }

  v66 = level;
  if (v6 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6;
  }

  v11 = MEMORY[0x1EEE9AC00](v6, v7, v8);
  v15 = (&v63 - v14);
  v79[0] = 0;
  if (v9 > 0x100)
  {
    v15 = _CFCreateArrayStorage(v10, 0, v79);
    v78 = 0;
    v18 = _CFCreateArrayStorage(v10, 0, &v78);
    MEMORY[0x1EEE9AC00](v18, v24, v25);
    v22 = &v62;
    v75[0] = 0;
    v23 = _CFCreateArrayStorage(v10, 0, v75);
    v67 = v18;
    v68 = v15;
  }

  else
  {
    v16 = MEMORY[0x1EEE9AC00](v11, v12, v13);
    v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v78 = 0;
    MEMORY[0x1EEE9AC00](v16, v19, v20);
    v22 = &v63 - v21;
    v67 = 0;
    v68 = 0;
    v23 = 0;
    v75[0] = 0;
  }

  if (v9 >= 0x101)
  {
    v22 = v23;
  }

  v26 = [(NSDictionary *)selfCopy getObjects:0 andKeys:v22 count:v9];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (_NSIsNSString(*&v22[8 * i]))
      {
        v30 = objc_opt_respondsToSelector();
        if (v30)
        {
          continue;
        }
      }

      memmove(v15, v22, 8 * v9);
      goto LABEL_28;
    }

    v70 = &v63;
    MEMORY[0x1EEE9AC00](v30, v31, v32);
    v33 = v9;
    v35 = &v63 - v34;
    if (v9 <= 0x1000)
    {
      goto LABEL_22;
    }

    v36 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
  }

  else
  {
    v70 = &v63;
    MEMORY[0x1EEE9AC00](v26, v27, v28);
    v33 = 0;
    v35 = &v63 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
LABEL_22:
    v36 = v35;
  }

  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __45__NSDictionary_descriptionWithLocale_indent___block_invoke;
  v77[3] = &__block_descriptor_40_e11_q24__0q8q16l;
  v77[4] = v22;
  CFSortIndexes(v36, v33, 0, v77);
  v9 = v33;
  if (v33)
  {
    v38 = v36;
    v39 = v15;
    v40 = v33;
    do
    {
      v41 = *v38++;
      *v39++ = *&v22[8 * v41];
      --v40;
    }

    while (v40);
  }

  if (v35 != v36)
  {
    free(v36);
  }

LABEL_28:
  free(v23);
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v76 = -1;
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v70 = v74;
  v74[0] = __45__NSDictionary_descriptionWithLocale_indent___block_invoke_2;
  v74[1] = &unk_1E6DCFD88;
  v74[2] = v75;
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v65 = &__kCFAllocatorSystemDefault;
  v64 = objc_autoreleasePoolPush();
  v69 = v9;
  if (v9)
  {
    v43 = v15;
    v44 = v18;
    v45 = v69;
    do
    {
      v46 = *v43;
      v47 = [(NSDictionary *)selfCopy objectForKey:*v43];
      if (_NSIsNSString(v46))
      {
        _stringRepresentation = [(__CFString *)v46 _stringRepresentation];
      }

      else if ((_NSIsNSDictionary(v46) & 1) != 0 || _NSIsNSArray(v46))
      {
        _stringRepresentation = [(__CFString *)v46 descriptionWithLocale:v71 indent:v5 + 1];
      }

      else if (_NSIsNSData(v46))
      {
        _stringRepresentation = [(__CFString *)v46 description];
      }

      else
      {
        v53 = [(__CFString *)v46 description];
        _stringRepresentation = (v74[0])(v73, v53);
      }

      v49 = _stringRepresentation;
      if (_NSIsNSString(v47))
      {
        _stringRepresentation2 = [v47 _stringRepresentation];
      }

      else if ((_NSIsNSDictionary(v47) & 1) != 0 || _NSIsNSArray(v47))
      {
        _stringRepresentation2 = [v47 descriptionWithLocale:v71 indent:v5 + 1];
      }

      else if (_NSIsNSData(v47))
      {
        _stringRepresentation2 = [v47 description];
      }

      else
      {
        v54 = [v47 description];
        _stringRepresentation2 = (v74[0])(v73, v54);
      }

      if (v49)
      {
        v51 = v49;
      }

      else
      {
        v51 = @"(null)";
      }

      *v43++ = v51;
      if (_stringRepresentation2)
      {
        v52 = _stringRepresentation2;
      }

      else
      {
        v52 = @"(null)";
      }

      *v44++ = v52;
      --v45;
    }

    while (v45);
  }

  v55 = CFStringCreateMutable(v65, 0);
  v56 = v69;
  v57 = v55;
  if (v66)
  {
    do
    {
      CFStringAppend(v57, @"    ");
      --v5;
    }

    while (v5);
  }

  CFStringAppend(Mutable, v57);
  CFStringAppend(Mutable, @"{\n");
  for (; v56; --v56)
  {
    CFStringAppend(Mutable, v57);
    CFStringAppend(Mutable, @"    ");
    CFStringAppend(Mutable, *v15);
    CFStringAppend(Mutable, @" = ");
    CFStringAppend(Mutable, *v18);
    CFStringAppend(Mutable, @";\n");
    ++v18;
    ++v15;
  }

  CFStringAppend(Mutable, v57);
  CFStringAppend(Mutable, @"}");
  CFRelease(v57);
  objc_autoreleasePoolPop(v64);
  v58 = Mutable;
  _Block_object_dispose(v75, 8);
  free(v67);
  free(v68);
  return v58;
}

void *__45__NSDictionary_descriptionWithLocale_indent___block_invoke_2(uint64_t a1, void *a2)
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
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  return [(NSDictionary *)self descriptionWithLocale:locale indent:0];
}

- (void)enumerateKeysAndObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill(v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9, 0, &dword_1830E6000, "*** %s: block cannot be nil", v13[0]);
    *v10 = 136315138;
    *(v10 + 4) = "[NSDictionary enumerateKeysAndObjectsWithOptions:usingBlock:]";
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSDictionary enumerateKeysAndObjectsWithOptions:usingBlock:]");
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v12);
  }

  v6 = opts;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  __NSDictionaryParameterCheckIterate(self, a2, block);

  __NSDictionaryEnumerate(self, v6 & 0xFD, block);
}

- (void)enumerateKeysAndObjectsUsingBlock:(void *)block
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, 0, &dword_1830E6000, "*** %s: block cannot be nil", v10[0]);
    *v7 = 136315138;
    *(v7 + 4) = "[NSDictionary enumerateKeysAndObjectsUsingBlock:]";
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSDictionary enumerateKeysAndObjectsUsingBlock:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  [(NSDictionary *)self enumerateKeysAndObjectsWithOptions:0 usingBlock:block];
}

- (void)getObjects:(id *)objects andKeys:(id *)keys count:(NSUInteger)count
{
  v6 = count;
  v7 = keys;
  v8 = objects;
  v26 = *MEMORY[0x1E69E9840];
  v10 = count >> 61;
  if (objects && v10 || keys && v10)
  {
    v16 = _os_log_pack_size();
    v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v18 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous");
    *v18 = 136315394;
    *(v18 + 4) = "[NSDictionary getObjects:andKeys:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = v6;
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSDictionary getObjects:andKeys:count:]", v6);
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v17, v16];
    objc_exception_throw(v20);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableDictionary);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [(NSDictionary *)self countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
LABEL_9:
    v14 = 0;
    while (1)
    {
      if (*v23 != v13)
      {
        objc_enumerationMutation(self);
      }

      if (v6 == v14)
      {
        break;
      }

      v15 = *(*(&v22 + 1) + 8 * v14);
      if (v7)
      {
        *v7++ = v15;
      }

      if (v8)
      {
        *v8++ = [(NSDictionary *)self objectForKey:v15];
      }

      if (v12 == ++v14)
      {
        v12 = [(NSDictionary *)self countByEnumeratingWithState:&v22 objects:v21 count:16];
        v6 -= v14;
        if (v12)
        {
          goto LABEL_9;
        }

        return;
      }
    }
  }
}

- (void)getObjects:(id *)objects andKeys:(id *)keys
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  v8 = [(NSDictionary *)self count];
  v9 = v8 >> 61;
  if (objects && v9 || keys && v9)
  {
    v10 = v8;
    v11 = _os_log_pack_size();
    v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill(v12, v11, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous");
    *v13 = 136315394;
    *(v13 + 4) = "[NSDictionary getObjects:andKeys:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = v10;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSDictionary getObjects:andKeys:]", v10);
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v11];
    objc_exception_throw(v15);
  }

  [(NSDictionary *)self getObjects:objects andKeys:keys count:v8];
}

- (void)getKeys:(id *)keys
{
  v13 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = [(NSDictionary *)self count];
  if (keys && v6 >> 61)
  {
    v7 = v6;
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v12, v13);
    *v9 = 136315394;
    *(v9 + 4) = "[NSDictionary getKeys:]";
    *(v9 + 12) = 2048;
    *(v9 + 14) = v7;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSDictionary getKeys:]", v7);
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  [(NSDictionary *)self getObjects:0 andKeys:keys count:v6];
}

- (void)getObjects:(id *)objects
{
  v13 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = [(NSDictionary *)self count];
  if (objects && v6 >> 61)
  {
    v7 = v6;
    v8 = _os_log_pack_size();
    v9 = _os_log_pack_fill(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v12, v13);
    *v9 = 136315394;
    *(v9 + 4) = "[NSDictionary getObjects:]";
    *(v9 + 12) = 2048;
    *(v9 + 14) = v7;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSDictionary getObjects:]", v7);
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8];
    objc_exception_throw(v11);
  }

  [(NSDictionary *)self getObjects:objects andKeys:0 count:v6];
}

- (id)invertedDictionary
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  allKeys = [(NSDictionary *)self allKeys];
  allObjects = [(NSDictionary *)self allObjects];

  return [NSDictionary dictionaryWithObjects:allKeys forKeys:allObjects];
}

- (BOOL)isEqualToDictionary:(NSDictionary *)otherDictionary
{
  v26 = *MEMORY[0x1E69E9840];
  if (otherDictionary && (_NSIsNSDictionary(otherDictionary) & 1) == 0)
  {
    v16 = _os_log_pack_size();
    v17 = _os_log_pack_fill(v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16, 0, &dword_1830E6000, "*** %s: dictionary argument is not an NSDictionary", v21[0]);
    *v17 = 136315138;
    *(v17 + 4) = "[NSDictionary isEqualToDictionary:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: dictionary argument is not an NSDictionary", "[NSDictionary isEqualToDictionary:]");
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16];
    objc_exception_throw(v19);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  LOBYTE(v6) = otherDictionary == self;
  if (otherDictionary != self && otherDictionary)
  {
    v7 = [(NSDictionary *)self count];
    if ([(NSDictionary *)otherDictionary count]== v7)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = [(NSDictionary *)self countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (!v8)
      {
        LOBYTE(v6) = 1;
        return v6;
      }

      v9 = v8;
      v10 = *v23;
LABEL_10:
      v11 = 0;
      while (1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(self);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = [(NSDictionary *)otherDictionary objectForKey:v12];
        v14 = [(NSDictionary *)self objectForKey:v12];
        if (v13 && v14 == 0)
        {
          break;
        }

        if (v14)
        {
          if (!v13)
          {
            break;
          }

          v6 = [v14 isEqual:v13];
          if (!v6)
          {
            return v6;
          }
        }

        if (v9 == ++v11)
        {
          v9 = [(NSDictionary *)self countByEnumeratingWithState:&v22 objects:v21 count:16];
          LOBYTE(v6) = 1;
          if (v9)
          {
            goto LABEL_10;
          }

          return v6;
        }
      }
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else if (equal)
  {
    v6 = _NSIsNSDictionary(equal);
    if (v6)
    {

      LOBYTE(v6) = [(NSDictionary *)self isEqualToDictionary:equal];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)keyOfEntryWithOptions:(unint64_t)options passingTest:(id)test
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v14[0]);
    *v11 = 136315138;
    *(v11 + 4) = "[NSDictionary keyOfEntryWithOptions:passingTest:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSDictionary keyOfEntryWithOptions:passingTest:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

  optionsCopy = options;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  __NSDictionaryParameterCheckIterate(self, a2, test);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__NSDictionary_keyOfEntryWithOptions_passingTest___block_invoke;
  v14[3] = &unk_1E6DCFE98;
  v14[4] = test;
  v14[5] = v15;
  v15[0] = 0;
  __NSDictionaryEnumerate(self, optionsCopy & 0xFD, v14);
  return v15[0];
}

uint64_t __50__NSDictionary_keyOfEntryWithOptions_passingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    **(a1 + 40) = a2;
    *a4 = 1;
  }

  return result;
}

- (id)keyOfEntryPassingTest:(id)test
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!test)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSDictionary keyOfEntryPassingTest:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSDictionary keyOfEntryPassingTest:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  return [(NSDictionary *)self keyOfEntryWithOptions:0 passingTest:test];
}

- (NSSet)keysOfEntriesWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v21 = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill(v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v15[0]);
    *v12 = 136315138;
    *(v12 + 4) = "[NSDictionary keysOfEntriesWithOptions:passingTest:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSDictionary keysOfEntriesWithOptions:passingTest:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v14);
  }

  v6 = opts;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  __NSDictionaryParameterCheckIterate(self, a2, predicate);
  v9 = +[(NSSet *)NSMutableSet];
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v16 = 850045857;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__NSDictionary_keysOfEntriesWithOptions_passingTest___block_invoke;
  v15[3] = &unk_1E6D82458;
  v15[5] = predicate;
  v15[6] = &v16;
  v15[4] = v9;
  __NSDictionaryEnumerate(self, v6 & 0xFD, v15);
  return [NSSet setWithSet:v9];
}

uint64_t __53__NSDictionary_keysOfEntriesWithOptions_passingTest___block_invoke(uint64_t a1, uint64_t a2)
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

- (NSSet)keysOfEntriesPassingTest:(void *)predicate
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!predicate)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: predicate cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSDictionary keysOfEntriesPassingTest:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSDictionary keysOfEntriesPassingTest:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  return [(NSDictionary *)self keysOfEntriesWithOptions:0 passingTest:predicate];
}

- (NSArray)keysSortedByValueWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr
{
  v51[1] = *MEMORY[0x1E69E9840];
  if (!cmptr)
  {
    v36 = _os_log_pack_size();
    v39 = &v46 - ((MEMORY[0x1EEE9AC00](v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill(v39, v36, 0, &dword_1830E6000, "*** %s: comparator cannot be nil", v46);
    *v40 = 136315138;
    *(v40 + 4) = "[NSDictionary keysSortedByValueWithOptions:usingComparator:]";
    v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSDictionary keysSortedByValueWithOptions:usingComparator:]");
    v42 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v39, v36];
    objc_exception_throw(v42);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  v8 = [(NSDictionary *)self count];
  if (v8)
  {
    v11 = v8;
    if (v8 >> 60)
    {
      v43 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8);
      v44 = [NSException exceptionWithName:@"NSGenericException" reason:v43 userInfo:0];
      CFRelease(v43);
      objc_exception_throw(v44);
    }

    v12 = MEMORY[0x1EEE9AC00](v8, v9, v10);
    v16 = &v46 - v15;
    v51[0] = 0;
    if (v11 > 0x100)
    {
      v16 = _CFCreateArrayStorage(v11, 0, v51);
      MEMORY[0x1EEE9AC00](v16, v21, v22);
      v18 = &v45;
      v50 = 0;
      v47 = v16;
      v19 = _CFCreateArrayStorage(v11, 0, &v50);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v12, v13, v14);
      v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = 0;
      v19 = 0;
      v50 = 0;
    }

    if (v11 >= 0x101)
    {
      v23 = v19;
    }

    else
    {
      v23 = v18;
    }

    v49 = 0;
    v24 = _CFCreateArrayStorage(v11, 0, &v49);
    v25 = [(NSDictionary *)self getObjects:v23 andKeys:v16 count:v11];
    MEMORY[0x1EEE9AC00](v25, v26, v27);
    v29 = &v46 - v28;
    v30 = &v46 - v28;
    if (v11 > 0x1000)
    {
      v30 = malloc_type_malloc(8 * v11, 0x100004000313F17uLL);
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __61__NSDictionary_keysSortedByValueWithOptions_usingComparator___block_invoke;
    v48[3] = &unk_1E6D7D7A0;
    v48[4] = cmptr;
    v48[5] = v23;
    CFSortIndexes(v30, v11, opts, v48);
    for (i = 0; i != v11; ++i)
    {
      v24[i] = *&v16[8 * *&v30[8 * i]];
    }

    if (v29 != v30)
    {
      free(v30);
    }

    v32 = 0;
    if (v11 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v11;
    }

    do
    {
      v34 = v24[v32++];
    }

    while (v33 != v32);
    v35 = [[NSArray alloc] _initByAdoptingBuffer:v24 count:v11 size:v11];
    free(v19);
    free(v47);
    return v35;
  }

  else
  {

    return +[NSArray array];
  }
}

- (NSArray)keysSortedByValueUsingComparator:(NSComparator)cmptr
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!cmptr)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: comparator cannot be nil", v11[0]);
    *v8 = 136315138;
    *(v8 + 4) = "[NSDictionary keysSortedByValueUsingComparator:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: comparator cannot be nil", "[NSDictionary keysSortedByValueUsingComparator:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  return [(NSDictionary *)self keysSortedByValueWithOptions:0 usingComparator:cmptr];
}

- (NSArray)keysSortedByValueUsingSelector:(SEL)comparator
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (!comparator)
  {
    [self doesNotRecognizeSelector:?];
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__NSDictionary_keysSortedByValueUsingSelector___block_invoke;
  v7[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v7[4] = comparator;
  return [(NSDictionary *)self keysSortedByValueWithOptions:0 usingComparator:v7];
}

- (id)objectForKeyedSubscript:(id)key
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  return [(NSDictionary *)self objectForKey:key];
}

- (NSArray)objectsForKeys:(NSArray *)keys notFoundMarker:(id)marker
{
  v43 = *MEMORY[0x1E69E9840];
  if (!marker)
  {
    v27 = _os_log_pack_size();
    v30 = &v36 - ((MEMORY[0x1EEE9AC00](v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill(v30, v27, 0, &dword_1830E6000, "*** %s: marker cannot be nil", v36);
    *v31 = 136315138;
    *(v31 + 4) = "[NSDictionary objectsForKeys:notFoundMarker:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: marker cannot be nil", "[NSDictionary objectsForKeys:notFoundMarker:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
    objc_exception_throw(v33);
  }

  v8 = [(NSArray *)keys count];
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
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = [(NSArray *)keys countByEnumeratingWithState:&v39 objects:v38 count:16];
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
          objc_enumerationMutation(keys);
        }

        v20 = [(NSDictionary *)self objectForKey:*(*(&v39 + 1) + 8 * i)];
        if (v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = marker;
        }

        *v17 = v21;
        v17 += 8;
      }

      v16 = [(NSArray *)keys countByEnumeratingWithState:&v39 objects:v38 count:16];
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

- (void)__apply:(void *)__apply context:(void *)context
{
  v7[6] = *MEMORY[0x1E69E9840];
  if (!__apply)
  {
    v4 = __CFExceptionProem(self, a2);
    v5 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: function pointer is NULL", v4);
    v6 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v5), 0];
    objc_exception_throw(v6);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__NSDictionary___apply_context___block_invoke;
  v7[3] = &__block_descriptor_48_e15_v32__0_8_16_B24l;
  v7[4] = __apply;
  v7[5] = context;
  [(NSDictionary *)self enumerateKeysAndObjectsWithOptions:0 usingBlock:v7];
}

- (BOOL)__getValue:(id *)value forKey:(id)key
{
  v5 = [(NSDictionary *)self objectForKey:key];
  if (value && v5)
  {
    *value = v5;
  }

  return v5 != 0;
}

+ (NSDictionary)allocWithZone:(_NSZone *)zone
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSDictionary == self)
  {

    return __NSDictionaryImmutablePlaceholder();
  }

  else if (NSMutableDictionary == self)
  {

    return __NSDictionaryMutablePlaceholder();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___NSDictionary;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, zone);
  }
}

- (NSDictionary)initWithDictionary:(NSDictionary *)otherDictionary copyItems:(BOOL)flag
{
  v4 = flag;
  v40[1] = *MEMORY[0x1E69E9840];
  if (otherDictionary && (_NSIsNSDictionary(otherDictionary) & 1) == 0)
  {
    v30 = _os_log_pack_size();
    v33 = &v38 - ((MEMORY[0x1EEE9AC00](v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = _os_log_pack_fill(v33, v30, 0, &dword_1830E6000, "*** %s: dictionary argument is not an NSDictionary", v38);
    *v34 = 136315138;
    *(v34 + 4) = "[NSDictionary initWithDictionary:copyItems:]";
    v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: dictionary argument is not an NSDictionary", "[NSDictionary initWithDictionary:copyItems:]");
    v36 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v35) osLogPack:0 size:v33, v30];
    objc_exception_throw(v36);
  }

  v7 = [(NSDictionary *)otherDictionary count];
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
    v11 = 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = MEMORY[0x1EEE9AC00](v7, v8, v9);
  v16 = (&v38 - v15);
  v40[0] = 0;
  if (v10 > 0x100)
  {
    v19 = _CFCreateArrayStorage(v11, 0, v40);
    MEMORY[0x1EEE9AC00](v19, v21, v22);
    v18 = &v37;
    v39 = 0;
    v20 = _CFCreateArrayStorage(v11, 0, &v39);
    v16 = v19;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v12, v13, v14);
    v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = 0;
    v20 = 0;
    v39 = 0;
  }

  if (v10 >= 0x101)
  {
    v18 = v20;
  }

  [(NSDictionary *)otherDictionary getObjects:v18 andKeys:v16 count:v10];
  if (!v10)
  {
    v4 = 0;
  }

  if (v4)
  {
    v23 = v16;
    v24 = v18;
    v25 = v10;
    do
    {
      *v23 = [*v23 copyWithZone:0];
      *v24 = [*v24 copyWithZone:0];
      ++v24;
      ++v23;
      --v25;
    }

    while (v25);
  }

  v26 = [(NSDictionary *)self initWithObjects:v18 forKeys:v16 count:v10];
  if (v4)
  {
    do
    {

      ++v16;
      --v10;
    }

    while (v10);
  }

  free(v20);
  free(v19);
  return v26;
}

- (NSDictionary)initWithObject:(id)object forKey:(id)key
{
  v6[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v6[0] = object;
  return [(NSDictionary *)self initWithObjects:v6 forKeys:&keyCopy count:1];
}

- (NSDictionary)initWithObjectsAndKeys:(id)firstObject
{
  va_start(va1, firstObject);
  va_start(va, firstObject);
  v37 = va_arg(va1, void);
  v36[1] = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36[0] = firstObject;
  v6 = objc_opt_class();
  if (firstObject)
  {
    v9 = 0;
    va_copy(v35, va);
    do
    {
      v10 = v35;
      v35 += 8;
      ++v9;
    }

    while (*v10);
    if (v9)
    {
      v29 = __CFExceptionProem(self, a2);
      v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: second object of each pair must be non-nil.  Or, did you forget to nil-terminate your parameter list?", v29);
      v31 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30), 0];
      objc_exception_throw(v31);
    }

    v11 = v9 >> 1;
    if (v6 != NSDictionary)
    {
      if (v9 >= 0x1FFFFFFFFFFFFFFFLL)
      {
        v12 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v9 >> 1);
        v13 = [NSException exceptionWithName:@"NSGenericException" reason:v12 userInfo:0];
        CFRelease(v12);
        objc_exception_throw(v13);
      }

LABEL_10:
      if (v11 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v11;
      }

      v15 = MEMORY[0x1EEE9AC00](v6, v7, v8);
      v34 = 0;
      if (v11 >= 0x101)
      {
        v21 = _CFCreateArrayStorage(v14, 0, &v34);
        v33 = 0;
        v22 = _CFCreateArrayStorage(v14, 0, &v33);
        va_copy(v35, va);
        *v22 = firstObject;
        v23 = v35;
        v35 += 8;
        *v21 = *v23;
        v18 = v21;
        v20 = v22;
      }

      else
      {
        MEMORY[0x1EEE9AC00](v15, v16, v17);
        v20 = (&v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
        v33 = 0;
        if (!v11)
        {
          v22 = 0;
          v21 = 0;
LABEL_24:
          v27 = [NSDictionary initWithObjects:"initWithObjects:forKeys:count:" forKeys:? count:?];
          free(v22);
          free(v21);
          return v27;
        }

        v21 = 0;
        v22 = 0;
        *v20 = firstObject;
        va_copy(v35, va1);
        *v18 = v37;
        if (v11 == 1)
        {
          goto LABEL_24;
        }
      }

      for (i = 1; i != v11; ++i)
      {
        v25 = v35;
        v35 += 8;
        v20[i] = *v25;
        v26 = v35;
        v35 += 8;
        v18[i] = *v26;
      }

      goto LABEL_24;
    }

    va_copy(v35, va);
    return __NSDictionaryI_new(v36, 0, va, v11, 1);
  }

  else
  {
    if (v6 != NSDictionary)
    {
      v11 = 0;
      goto LABEL_10;
    }

    return &__NSDictionary0__struct;
  }
}

- (NSDictionary)initWithObjects:(NSArray *)objects forKeys:(NSArray *)keys
{
  v51[1] = *MEMORY[0x1E69E9840];
  if (objects && (_NSIsNSArray(objects) & 1) == 0)
  {
    v34 = _os_log_pack_size();
    v37 = &v49 - ((MEMORY[0x1EEE9AC00](v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: objects argument is not an NSArray", v49);
    *v38 = 136315138;
    *(v38 + 4) = "[NSDictionary initWithObjects:forKeys:]";
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: objects argument is not an NSArray", "[NSDictionary initWithObjects:forKeys:]");
    v40 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v39) osLogPack:0 size:v37, v34];
    objc_exception_throw(v40);
  }

  if (keys && (_NSIsNSArray(keys) & 1) == 0)
  {
    v41 = _os_log_pack_size();
    v44 = &v49 - ((MEMORY[0x1EEE9AC00](v41, v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = _os_log_pack_fill(v44, v41, 0, &dword_1830E6000, "*** %s: keys argument is not an NSArray", v49);
    *v45 = 136315138;
    *(v45 + 4) = "[NSDictionary initWithObjects:forKeys:]";
    v46 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: keys argument is not an NSArray", "[NSDictionary initWithObjects:forKeys:]");
    v47 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v46) osLogPack:0 size:v44, v41];
    objc_exception_throw(v47);
  }

  v8 = [(NSArray *)objects count];
  v9 = [(NSArray *)keys count];
  if (v8 != v9)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of objects (%lu) differs from count of keys (%lu)", "[NSDictionary initWithObjects:forKeys:]", v8, v9);
  }

  v10 = [(NSArray *)keys count];
  v11 = [(NSArray *)objects count];
  if (v10 != v11)
  {
    v28 = v11;
    v29 = __CFExceptionProem(self, a2);
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: number of objects (%lu) not equal to number of keys (%lu)", v29, v28, v10);
    v31 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30), 0];
    objc_exception_throw(v31);
  }

  if (v10 >> 60)
  {
    v32 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v10);
    v33 = [NSException exceptionWithName:@"NSGenericException" reason:v32 userInfo:0];
    CFRelease(v32);
    objc_exception_throw(v33);
  }

  if (v10 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v10;
  }

  v15 = MEMORY[0x1EEE9AC00](v11, v12, v13);
  v19 = &v49 - v18;
  v51[0] = 0;
  if (v10 > 0x100)
  {
    v22 = _CFCreateArrayStorage(v14, 0, v51);
    MEMORY[0x1EEE9AC00](v22, v24, v25);
    v21 = &v48;
    v50 = 0;
    v23 = _CFCreateArrayStorage(v14, 0, &v50);
    v19 = v22;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v15, v16, v17);
    v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = 0;
    v23 = 0;
    v50 = 0;
  }

  if (v10 >= 0x101)
  {
    v21 = v23;
  }

  [(NSArray *)keys getObjects:v19 range:0, v10];
  [(NSArray *)objects getObjects:v21 range:0, v10];
  v26 = [(NSDictionary *)self initWithObjects:v21 forKeys:v19 count:v10];
  free(v23);
  free(v22);
  return v26;
}

+ (NSDictionary)dictionaryWithObject:(id)object forKey:(id)key
{
  Dictionary = __createDictionary([self alloc], object, key);

  return Dictionary;
}

+ (NSDictionary)dictionaryWithObjects:(id *)objects forKeys:(id *)keys count:(NSUInteger)cnt
{
  v5 = [[self alloc] initWithObjects:objects forKeys:keys count:cnt];

  return v5;
}

+ (NSDictionary)dictionaryWithObjectsAndKeys:(id)firstObject
{
  va_start(va1, firstObject);
  va_start(va, firstObject);
  v35 = va_arg(va1, void);
  v34[1] = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34[0] = firstObject;
  if (firstObject)
  {
    v5 = 0;
    va_copy(v33, va);
    do
    {
      v6 = v33;
      v33 += 8;
      ++v5;
    }

    while (*v6);
    if (v5)
    {
      v27 = __CFExceptionProem(self, a2);
      v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: second object of each pair must be non-nil.  Or, did you forget to nil-terminate your parameter list?", v27);
      v29 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28), 0];
      objc_exception_throw(v29);
    }

    v7 = v5 >> 1;
    if (NSDictionary == self)
    {
      va_copy(v33, va);
      v24 = __NSDictionaryI_new(v34, 0, va, v5 >> 1, 1);
LABEL_25:
      v25 = v24;
      return v24;
    }

    if (v5 >= 0x1FFFFFFFFFFFFFFFLL)
    {
      v8 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5 >> 1);
      v9 = [NSException exceptionWithName:@"NSGenericException" reason:v8 userInfo:0];
      CFRelease(v8);
      objc_exception_throw(v9);
    }

LABEL_10:
    if (v7 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7;
    }

    v11 = MEMORY[0x1EEE9AC00](self, a2, firstObject);
    v15 = (&v30 - v14);
    v32 = 0;
    if (v7 >= 0x101)
    {
      v18 = _CFCreateArrayStorage(v10, 0, &v32);
      v31 = 0;
      v19 = _CFCreateArrayStorage(v10, 0, &v31);
      va_copy(v33, va);
      *v19 = firstObject;
      v20 = v33;
      v33 += 8;
      *v18 = *v20;
      v15 = v18;
      v17 = v19;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v11, v12, v13);
      v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      v31 = 0;
      if (!v7)
      {
        v19 = 0;
        v18 = 0;
LABEL_24:
        v24 = [[self alloc] initWithObjects:v17 forKeys:v15 count:v7];
        free(v19);
        free(v18);
        goto LABEL_25;
      }

      v18 = 0;
      v19 = 0;
      *v17 = firstObject;
      va_copy(v33, va1);
      *v15 = v35;
      if (v7 == 1)
      {
        goto LABEL_24;
      }
    }

    for (i = 1; i != v7; ++i)
    {
      v22 = v33;
      v33 += 8;
      v17[i] = *v22;
      v23 = v33;
      v33 += 8;
      v15[i] = *v23;
    }

    goto LABEL_24;
  }

  if (NSDictionary != self)
  {
    v7 = 0;
    goto LABEL_10;
  }

  return &__NSDictionary0__struct;
}

+ (NSDictionary)dictionaryWithObjects:(NSArray *)objects forKeys:(NSArray *)keys
{
  v4 = [[self alloc] initWithObjects:objects forKeys:keys];

  return v4;
}

+ (id)newDictionaryWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v23 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    goto LABEL_33;
  }

  if (count >> 61)
  {
    v13 = _os_log_pack_size();
    v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v22, v23);
    *v19 = 136315394;
    *(v19 + 4) = "+[NSDictionary newDictionaryWithObjects:forKeys:count:]";
    *(v19 + 12) = 2048;
    *(v19 + 14) = count;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "+[NSDictionary newDictionaryWithObjects:forKeys:count:]", count);
    goto LABEL_30;
  }

  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (!objects[i])
      {
        goto LABEL_29;
      }
    }

    if (keys)
    {
      i = 0;
      while (keys[i])
      {
        if (count == ++i)
        {
          goto LABEL_12;
        }
      }

LABEL_29:
      v12 = i;
      v13 = _os_log_pack_size();
      v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]");
      *v15 = 136315394;
      *(v15 + 4) = "+[NSDictionary newDictionaryWithObjects:forKeys:count:]";
      *(v15 + 12) = 2048;
      *(v15 + 14) = v12;
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "+[NSDictionary newDictionaryWithObjects:forKeys:count:]", v12);
LABEL_30:
      v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
      objc_exception_throw(v17);
    }

LABEL_33:
    v13 = _os_log_pack_size();
    v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu");
    *v21 = 136315394;
    *(v21 + 4) = "+[NSDictionary newDictionaryWithObjects:forKeys:count:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = count;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "+[NSDictionary newDictionaryWithObjects:forKeys:count:]", count);
    goto LABEL_30;
  }

LABEL_12:
  if (NSDictionary == self)
  {
    if (count == 1)
    {
      v9 = *keys;
      v10 = *objects;

      return __NSSingleEntryDictionaryI_new(v9, v10, 4);
    }

    else if (count)
    {

      return __NSDictionaryI_new(keys, objects, 0, count, 5);
    }

    else
    {

      return &__NSDictionary0__struct;
    }
  }

  else
  {
    if (NSMutableDictionary != self)
    {
      v11 = __CFLookUpClass("NSDictionary");
      __CFRequireConcreteImplementation(v11, self, a2);
    }

    return __NSDictionaryM_new(keys, objects, count, 3uLL);
  }
}

+ (NSDictionary)dictionaryWithDictionary:(id)dictionary copyItems:(BOOL)items
{
  v4 = [[self alloc] initWithDictionary:dictionary copyItems:items];

  return v4;
}

+ (NSDictionary)dictionaryWithDictionary:(NSDictionary *)dict
{
  v3 = [[self alloc] initWithDictionary:dict copyItems:0];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  ShouldCopy = __NSCollectionsShouldCopy();
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v7 = [NSDictionary allocWithZone:zone];

  return [(NSDictionary *)v7 initWithDictionary:self copyItems:ShouldCopy];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = [(NSDictionary *)NSMutableDictionary allocWithZone:zone];

  return [(NSDictionary *)v6 initWithDictionary:self copyItems:0];
}

+ (id)sharedKeySetForKeys:(NSArray *)keys
{
  if (!keys)
  {
    v9 = __CFExceptionProem(self, a2);
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: keys cannot be nil", v9);
    goto LABEL_8;
  }

  if ((_NSIsNSArray(keys) & 1) == 0)
  {
    v10 = __CFExceptionProem(self, a2);
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: keys must be a kind of NSArray", v10);
LABEL_8:
    v8 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v7), 0];
    objc_exception_throw(v8);
  }

  return [NSSharedKeySet keySetWithKeys:keys];
}

- (NSUInteger)count
{
  OUTLINED_FUNCTION_0_12();
  v2 = __CFLookUpClass("NSDictionary");
  OUTLINED_FUNCTION_1_8(v2);
}

- (id)objectForKey:(id)aKey
{
  OUTLINED_FUNCTION_0_12();
  v3 = __CFLookUpClass("NSDictionary");
  OUTLINED_FUNCTION_1_8(v3);
}

- (NSEnumerator)keyEnumerator
{
  OUTLINED_FUNCTION_0_12();
  v2 = __CFLookUpClass("NSDictionary");
  OUTLINED_FUNCTION_1_8(v2);
}

- (NSDictionary)initWithObjects:(id *)objects forKeys:(id *)keys count:(NSUInteger)cnt
{
  OUTLINED_FUNCTION_0_12();
  v5 = __CFLookUpClass("NSDictionary");
  OUTLINED_FUNCTION_1_8(v5);
}

@end