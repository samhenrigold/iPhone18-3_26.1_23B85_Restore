@interface _PASLRUCache
- (_PASLRUCache)initWithCountLimit:(unint64_t)limit;
- (id)objectForKey:(id)key;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation _PASLRUCache

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2487;
  v28 = __Block_byref_object_dispose__2488;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2487;
  v22 = __Block_byref_object_dispose__2488;
  v23 = 0;
  lock = self->_lock;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __50___PASLRUCache_enumerateKeysAndObjectsUsingBlock___block_invoke;
  v17[3] = &unk_1E77F2128;
  v17[4] = &v24;
  v17[5] = &v18;
  [(_PASLock *)lock runWithLockAcquired:v17];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v19[5];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v30 count:16];
  if (v7)
  {
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = [v25[5] objectForKeyedSubscript:{v10, v12}];
      blockCopy[2](blockCopy, v10, v11, &v16);
      LOBYTE(v10) = v16;

      if (v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v30 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35___PASLRUCache_removeObjectForKey___block_invoke;
  v7[3] = &unk_1E77F20E0;
  v8 = keyCopy;
  v6 = keyCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33___PASLRUCache_setObject_forKey___block_invoke;
  v11[3] = &unk_1E77F20B8;
  v12 = keyCopy;
  v13 = objectCopy;
  selfCopy = self;
  v9 = objectCopy;
  v10 = keyCopy;
  [(_PASLock *)lock runWithLockAcquired:v11];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2487;
  v16 = __Block_byref_object_dispose__2488;
  v17 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29___PASLRUCache_objectForKey___block_invoke;
  v9[3] = &unk_1E77F2090;
  v11 = &v12;
  v6 = keyCopy;
  v10 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (_PASLRUCache)initWithCountLimit:(unint64_t)limit
{
  v11.receiver = self;
  v11.super_class = _PASLRUCache;
  v4 = [(_PASLRUCache *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_countLimit = limit;
    v6 = [_PASLock alloc];
    v7 = objc_opt_new();
    v8 = [(_PASLock *)v6 initWithGuardedData:v7];
    lock = v5->_lock;
    v5->_lock = v8;
  }

  return v5;
}

@end