@interface NSClassicMapTable
- (BOOL)mapMember:(const void *)member originalKey:(const void *)key value:(const void *)value;
- (id)allKeys;
- (id)allValues;
- (id)copy;
- (id)description;
- (id)objectForKey:(id)key;
- (unint64_t)getKeys:(const void *)keys values:(const void *)values;
- (void)dealloc;
- (void)existingItemForSetItem:(const void *)item forAbsentKey:(const void *)key;
- (void)removeAllItems;
- (void)removeObjectForKey:(id)key;
- (void)setItem:(const void *)item forKnownAbsentKey:(const void *)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation NSClassicMapTable

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  CFRelease(self->_ht);
  v3.receiver = self;
  v3.super_class = NSClassicMapTable;
  [(NSClassicMapTable *)&v3 dealloc];
}

- (id)copy
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *&self->_keyCallBacks.retain;
  *&keyCallBacks.hash = *&self->_keyCallBacks.hash;
  *&keyCallBacks.retain = v5;
  *&keyCallBacks.describe = *&self->_keyCallBacks.describe;
  valueCallBacks = self->_valueCallBacks;
  v6 = NSCreateMapTableWithZone(&keyCallBacks, &valueCallBacks, v2, v3);
  ht = self->_ht;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __25__NSClassicMapTable_copy__block_invoke;
  v9[3] = &unk_1E69F3E40;
  v9[4] = v6;
  CFBasicHashApply(ht, v9);
  return v6;
}

- (void)removeAllItems
{
  ht = self->_ht;
  if ((*(ht + 18) & 0x3F) != 0)
  {
    __CFBasicHashDrain(ht, 0);
  }
}

- (BOOL)mapMember:(const void *)member originalKey:(const void *)key value:(const void *)value
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  CFBasicHashFindBucket(self->_ht, &v9, member);
  v7 = *(&v11 + 1);
  if (*(&v11 + 1))
  {
    if (value)
    {
      *value = *(&v10 + 1);
    }

    if (key)
    {
      *key = *(&v9 + 1);
    }
  }

  return v7 != 0;
}

- (id)objectForKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  CFBasicHashFindBucket(self->_ht, &v4, key);
  if (*(&v6 + 1))
  {
    return *(&v5 + 1);
  }

  else
  {
    return 0;
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  if (self->_keyCallBacks.notAKeyMarker == key)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** NSMapInsert(): attempt to insert notAKeyMarker" userInfo:{0, v4, v5}]);
  }

  ht = self->_ht;

  CFBasicHashSetValue(ht, key, object);
}

- (void)setItem:(const void *)item forKnownAbsentKey:(const void *)key
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_keyCallBacks.notAKeyMarker == key)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"*** NSMapInsertKnownAbsent(): attempt to insert notAKeyMarker";
    goto LABEL_8;
  }

  v13 = 0;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  CFBasicHashFindBucket(self->_ht, v11, key);
  if (*(&v12 + 1))
  {
    v10 = [NSString stringWithFormat:@"*** NSMapInsertKnownAbsent(): key %p already in table", key];
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
LABEL_8:
    objc_exception_throw([v8 exceptionWithName:v9 reason:v10 userInfo:0]);
  }

  ht = self->_ht;

  CFBasicHashAddValue(ht, key, item);
}

- (void)existingItemForSetItem:(const void *)item forAbsentKey:(const void *)key
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_keyCallBacks.notAKeyMarker == key)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** NSMapInsertIfAbsent(): attempt to insert notAKeyMarker" userInfo:0]);
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  CFBasicHashFindBucket(self->_ht, &v8, key);
  if (*(&v10 + 1))
  {
    return *(&v9 + 1);
  }

  CFBasicHashAddValue(self->_ht, key, item);
  return 0;
}

- (void)removeObjectForKey:(id)key
{
  if (self->_keyCallBacks.notAKeyMarker == key)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** NSMapRemove(): attempt to remove notAKeyMarker" userInfo:{0, v3, v4}]);
  }

  ht = self->_ht;

  CFBasicHashRemoveValue(ht, key);
}

- (id)description
{
  v18[8] = *MEMORY[0x1E69E9840];
  if (!CFBasicHashGetCount(self->_ht, a2, v2, v3, v4, v5))
  {
    return [NSString stringWithFormat:@"<NSMapTable: %p> {}", self];
  }

  v7 = objc_allocWithZone(NSMutableString);
  v13 = [v7 initWithCapacity:{CFBasicHashGetCount(self->_ht, v8, v9, v10, v11, v12) << 6}];
  [v13 appendFormat:@"<NSMapTable: %p> {", self];
  describe = self->_keyCallBacks.describe;
  v15 = self->_valueCallBacks.describe;
  ht = self->_ht;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __32__NSClassicMapTable_description__block_invoke;
  v18[3] = &__block_descriptor_64_e18_C64__0___qQQQQQQ_8ls32l8s56l8;
  v18[4] = self;
  v18[5] = describe;
  v18[6] = v15;
  v18[7] = v13;
  CFBasicHashApply(ht, v18);
  [v13 appendString:@"}"];
  return v13;
}

uint64_t __32__NSClassicMapTable_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  if (v6)
  {
    [v7 appendString:{v6(*(a1 + 32), v4)}];
  }

  else
  {
    [v7 appendFormat:@"%p", v4];
  }

  [*(a1 + 56) appendString:@" = "];
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  if (v8)
  {
    [v9 appendString:{v8(*(a1 + 32), v5)}];
  }

  else
  {
    [v9 appendFormat:@"%p", v5];
  }

  [*(a1 + 56) appendString:@";\n"];
  return 1;
}

- (id)allKeys
{
  v20[5] = *MEMORY[0x1E69E9840];
  Count = CFBasicHashGetCount(self->_ht, a2, v2, v3, v4, v5);
  v8 = Count;
  if (Count >> 60)
  {
    v17 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v17 userInfo:0];
    CFRelease(v17);
    objc_exception_throw(v18);
  }

  v20[4] = 0;
  v9 = _CFCreateArrayStorage();
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = v9;
  ht = self->_ht;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __28__NSClassicMapTable_allKeys__block_invoke;
  v19[3] = &unk_1E69F3E88;
  v19[4] = v20;
  CFBasicHashApply(ht, v19);
  if (v9)
  {
    if (v8)
    {
      v11 = v9;
      v12 = v8;
      do
      {
        v13 = *v11++;
        --v12;
      }

      while (v12);
    }

    v14 = [objc_alloc(MEMORY[0x1E695DEC8]) _initByAdoptingBuffer:v9 count:v8 size:v8];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:0 count:v8];
  }

  v15 = v14;
  _Block_object_dispose(v20, 8);
  return v15;
}

uint64_t __28__NSClassicMapTable_allKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *v4 = v2;
  return 1;
}

- (id)allValues
{
  v20[5] = *MEMORY[0x1E69E9840];
  Count = CFBasicHashGetCount(self->_ht, a2, v2, v3, v4, v5);
  v8 = Count;
  if (Count >> 60)
  {
    v17 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v17 userInfo:0];
    CFRelease(v17);
    objc_exception_throw(v18);
  }

  v20[4] = 0;
  v9 = _CFCreateArrayStorage();
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = v9;
  ht = self->_ht;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __30__NSClassicMapTable_allValues__block_invoke;
  v19[3] = &unk_1E69F3E88;
  v19[4] = v20;
  CFBasicHashApply(ht, v19);
  if (v9)
  {
    if (v8)
    {
      v11 = v9;
      v12 = v8;
      do
      {
        v13 = *v11++;
        --v12;
      }

      while (v12);
    }

    v14 = [objc_alloc(MEMORY[0x1E695DEC8]) _initByAdoptingBuffer:v9 count:v8 size:v8];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:0 count:v8];
  }

  v15 = v14;
  _Block_object_dispose(v20, 8);
  return v15;
}

uint64_t __30__NSClassicMapTable_allValues__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *v4 = v2;
  return 1;
}

- (unint64_t)getKeys:(const void *)keys values:(const void *)values
{
  v15[4] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = keys;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = values;
  ht = self->_ht;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __36__NSClassicMapTable_getKeys_values___block_invoke;
  v13[3] = &unk_1E69F4C88;
  v13[4] = v15;
  v13[5] = v14;
  CFBasicHashApply(ht, v13);
  Count = CFBasicHashGetCount(self->_ht, v6, v7, v8, v9, v10);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
  return Count;
}

uint64_t __36__NSClassicMapTable_getKeys_values___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *v4 = v2;
  v5 = *(a2 + 24);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 24);
  *(v6 + 24) = v7 + 1;
  *v7 = v5;
  return 1;
}

@end