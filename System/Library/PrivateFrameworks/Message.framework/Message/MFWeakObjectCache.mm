@interface MFWeakObjectCache
- (MFWeakObjectCache)initWithBlock:(id)block;
- (id)objectForKey:(id)key;
- (id)objectForKey:(id)key shouldGenerate:(BOOL)generate wasCached:(BOOL *)cached;
- (id)objectForKey:(id)key wasCached:(BOOL *)cached;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
@end

@implementation MFWeakObjectCache

- (MFWeakObjectCache)initWithBlock:(id)block
{
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = MFWeakObjectCache;
  v5 = [(MFWeakObjectCache *)&v14 init];
  v6 = v5;
  if (v5)
  {
    if (blockCopy)
    {
      v7 = [blockCopy copy];
      block = v6->_block;
      v6->_block = v7;

      v9 = objc_alloc_init(MEMORY[0x1E696AD10]);
      lock = v6->_lock;
      v6->_lock = v9;

      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      dictionary = v6->_dictionary;
      v6->_dictionary = v11;
    }

    else
    {
      dictionary = v5;
      v6 = 0;
    }
  }

  return v6;
}

- (id)objectForKey:(id)key
{
  v3 = [(MFWeakObjectCache *)self objectForKey:key shouldGenerate:1 wasCached:0];

  return v3;
}

- (id)objectForKey:(id)key wasCached:(BOOL *)cached
{
  v4 = [(MFWeakObjectCache *)self objectForKey:key shouldGenerate:1 wasCached:cached];

  return v4;
}

- (id)objectForKey:(id)key shouldGenerate:(BOOL)generate wasCached:(BOOL *)cached
{
  generateCopy = generate;
  keyCopy = key;
  v10 = [keyCopy copyWithZone:0];

  [(NSLock *)self->_lock lock];
  v11 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:v10];
  v12 = v11;
  if (v11)
  {
    reference = [v11 reference];
    if (reference)
    {
      v14 = v12;
      if (!cached)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    [(NSMutableDictionary *)self->_dictionary removeObjectForKey:v10];
  }

  if (!generateCopy)
  {
    v14 = 0;
    reference = 0;
    if (!cached)
    {
      goto LABEL_17;
    }

LABEL_13:
    v19 = 1;
LABEL_16:
    *cached = v19;
    goto LABEL_17;
  }

  reference = (*(self->_block + 2))();
  if (!reference)
  {
    v14 = 0;
    if (!cached)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v14 = [MEMORY[0x1E69AD788] weakReferenceWithObject:reference];
  if (!v14)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFWeakObjectCache.m" lineNumber:106 description:{@"couldn't create a weak reference for %@", reference}];
  }

  v15 = reference;
  selfCopy = self;
  v17 = v10;
  v18 = objc_alloc_init(_MFWeakObjectCacheRef);
  [(_MFWeakObjectCacheRef *)v18 setCache:selfCopy];
  [(_MFWeakObjectCacheRef *)v18 setKey:v17];
  objc_setAssociatedObject(v15, selfCopy, v18, 1);

  [(NSMutableDictionary *)self->_dictionary setObject:v14 forKeyedSubscript:v17];
  if (cached)
  {
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

LABEL_17:
  [(NSLock *)self->_lock unlock];

  return reference;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  [(NSLock *)self->_lock lock];
  v4 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:keyCopy];
  reference = [v4 reference];
  v6 = reference;
  if (reference)
  {
    _removeDestructionHandler(reference, self);
  }

  [(NSMutableDictionary *)self->_dictionary removeObjectForKey:keyCopy];
  [(NSLock *)self->_lock unlock];
}

- (void)removeAllObjects
{
  v14 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_dictionary allValues];
  v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        reference = [*(*(&v9 + 1) + 8 * v6) reference];
        v8 = reference;
        if (reference)
        {
          _removeDestructionHandler(reference, self);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [(NSMutableDictionary *)self->_dictionary removeAllObjects];
  [(NSLock *)self->_lock unlock];
}

@end