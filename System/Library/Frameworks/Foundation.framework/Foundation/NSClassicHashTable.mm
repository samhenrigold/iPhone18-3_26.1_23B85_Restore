@interface NSClassicHashTable
- (BOOL)isEqual:(id)equal;
- (id)allObjects;
- (id)copy;
- (id)description;
- (void)addObject:(id)object;
- (void)dealloc;
- (void)getItem:(const void *)item;
- (void)getKeys:(const void *)keys count:(unint64_t *)count;
- (void)insertItem:(const void *)item;
- (void)insertKnownAbsentItem:(const void *)item;
- (void)removeAllItems;
- (void)removeItem:(const void *)item;
@end

@implementation NSClassicHashTable

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  CFRelease(self->_ht);
  v3.receiver = self;
  v3.super_class = NSClassicHashTable;
  [(NSClassicHashTable *)&v3 dealloc];
}

- (void)removeAllItems
{
  ht = self->_ht;
  if ((*(ht + 18) & 0x3F) != 0)
  {
    __CFBasicHashDrain(ht, 0);
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if (equal)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      return CFBasicHashesAreEqual(self->_ht, *(equal + 6), v6, v7, v8, v9) != 0;
    }
  }

  return 0;
}

- (id)copy
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *&self->_callBacks.retain;
  *&callBacks.hash = *&self->_callBacks.hash;
  *&callBacks.retain = v4;
  callBacks.describe = self->_callBacks.describe;
  v5 = NSCreateHashTableWithZone(&callBacks, a2, v2);
  ht = self->_ht;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __26__NSClassicHashTable_copy__block_invoke;
  v8[3] = &unk_1E69F3E40;
  v8[4] = v5;
  CFBasicHashApply(ht, v8);
  return v5;
}

- (void)getItem:(const void *)item
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  CFBasicHashFindBucket(self->_ht, &v4, item);
  if (*(&v6 + 1))
  {
    return *(&v5 + 1);
  }

  else
  {
    return 0;
  }
}

- (void)insertItem:(const void *)item
{
  if (!item)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** NSHashInsert(): attempt to insert NULL pointer" userInfo:{0, v3, v4}]);
  }

  ht = self->_ht;

  CFBasicHashSetValue(ht, item, item);
}

- (void)addObject:(id)object
{
  if (!object)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** NSHashInsertKnownAbsent(): attempt to insert NULL pointer" userInfo:{0, v3, v4}]);
  }

  ht = self->_ht;

  CFBasicHashAddValue(ht, object, object);
}

- (void)insertKnownAbsentItem:(const void *)item
{
  v12 = *MEMORY[0x1E69E9840];
  if (!item)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    item = @"*** NSHashInsertKnownAbsent(): attempt to insert NULL pointer";
    goto LABEL_8;
  }

  v11 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  CFBasicHashFindBucket(self->_ht, v9, item);
  if (*(&v10 + 1))
  {
    item = [NSString stringWithFormat:@"*** NSHashInsertKnownAbsent(): item %p already in table", item];
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
LABEL_8:
    objc_exception_throw([v6 exceptionWithName:v7 reason:item userInfo:0]);
  }

  ht = self->_ht;

  CFBasicHashAddValue(ht, item, item);
}

- (void)removeItem:(const void *)item
{
  if (!item)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** NSHashRemove(): attempt to remove NULL pointer" userInfo:{0, v3, v4}]);
  }

  ht = self->_ht;

  CFBasicHashRemoveValue(ht, item);
}

- (id)description
{
  v18[4] = *MEMORY[0x1E69E9840];
  if (!CFBasicHashGetCount(self->_ht, a2, v2, v3, v4, v5))
  {
    return [NSString stringWithFormat:@"<NSHashTable: %p> {}", self];
  }

  v18[3] = 1;
  v7 = objc_allocWithZone(NSMutableString);
  v13 = [v7 initWithCapacity:{CFBasicHashGetCount(self->_ht, v8, v9, v10, v11, v12) << 6}];
  objc_msgSend(v13, "appendFormat:", @"<NSHashTable: %p> ("), self;
  describe = self->_callBacks.describe;
  v18[0] = self;
  v18[1] = describe;
  v18[2] = v13;
  ht = self->_ht;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __33__NSClassicHashTable_description__block_invoke;
  v17[3] = &__block_descriptor_40_e18_C64__0___qQQQQQQ_8l;
  v17[4] = v18;
  CFBasicHashApply(ht, v17);
  [v13 appendString:@""]);
  return v13;
}

uint64_t __33__NSClassicHashTable_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a1 + 32);
  if ((*(v3 + 24) & 1) == 0)
  {
    [*(v3 + 16) appendString:{@", "}];
  }

  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v4)
  {
    [v5 appendString:{v4(*v3, v2)}];
  }

  else
  {
    [v5 appendFormat:@"%p", v2];
  }

  *(v3 + 24) = 0;
  return 1;
}

- (id)allObjects
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
  v19[2] = __32__NSClassicHashTable_allObjects__block_invoke;
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

uint64_t __32__NSClassicHashTable_allObjects__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *v4 = v2;
  return 1;
}

- (void)getKeys:(const void *)keys count:(unint64_t *)count
{
  v13[4] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = keys;
  ht = self->_ht;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__NSClassicHashTable_getKeys_count___block_invoke;
  v12[3] = &unk_1E69F3E88;
  v12[4] = v13;
  CFBasicHashApply(ht, v12);
  if (count)
  {
    *count = CFBasicHashGetCount(self->_ht, v7, v8, v9, v10, v11);
  }

  _Block_object_dispose(v13, 8);
}

uint64_t __36__NSClassicHashTable_getKeys_count___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *v4 = v2;
  return 1;
}

@end