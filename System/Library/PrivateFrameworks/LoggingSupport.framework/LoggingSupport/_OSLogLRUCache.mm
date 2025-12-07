@interface _OSLogLRUCache
- (_OSLogLRUCache)initWithName:(id)name maxCount:(unint64_t)count evictionHandler:(id)handler;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (void)dealloc;
- (void)evictAllEntries;
- (void)removeAllObjects;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation _OSLogLRUCache

- (void)dealloc
{
  [(_OSLogLRUCache *)self evictAllEntries];
  v3.receiver = self;
  v3.super_class = _OSLogLRUCache;
  [(_OSLogLRUCache *)&v3 dealloc];
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  mruItems = [(_OSLogLRUCache *)self mruItems];
  v4 = [mruItems count];

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)removeAllObjects
{
  os_unfair_lock_lock(&self->_lock);
  [(_OSLogLRUCache *)self evictAllEntries];
  storage = [(_OSLogLRUCache *)self storage];
  [storage removeAllObjects];

  mruItems = [(_OSLogLRUCache *)self mruItems];
  [mruItems removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)evictAllEntries
{
  v20 = *MEMORY[0x277D85DE8];
  evictionHandler = [(_OSLogLRUCache *)self evictionHandler];

  if (evictionHandler)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    storage = [(_OSLogLRUCache *)self storage];
    v5 = [storage countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v16;
      do
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(storage);
          }

          v11 = *(*(&v15 + 1) + 8 * v9);
          storage2 = [(_OSLogLRUCache *)self storage];
          v7 = [storage2 objectForKeyedSubscript:v11];

          data = [v7 data];
          evictionHandler2 = [(_OSLogLRUCache *)self evictionHandler];
          (evictionHandler2)[2](evictionHandler2, v11, data);

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [storage countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  v52 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  mruItems = [(_OSLogLRUCache *)self mruItems];
  v8 = [mruItems count];
  storage = [(_OSLogLRUCache *)self storage];
  v10 = [storage count];

  if (v8 != v10)
  {
    v42 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v29 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    mruItems2 = [(_OSLogLRUCache *)self mruItems];
    v32 = [mruItems2 count];
    self = [(_OSLogLRUCache *)self storage];
    v43 = 134218240;
    v44 = v32;
    v45 = 2048;
    v46 = [(_OSLogLRUCache *)self count];
    v40 = 22;
    _os_log_send_and_compose_impl(v30, &v42, &v47, 80, &dword_22E01A000, v29, 16, "bug in LRUCache implementation; %ld != %ld", &v43, v40);

    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  storage2 = [(_OSLogLRUCache *)self storage];
  removeFromHead = [storage2 objectForKey:keyCopy];

  if (removeFromHead)
  {
    [(OSLogDoublyLinkedListNode *)removeFromHead setData:objectCopy];
    mruItems3 = [(_OSLogLRUCache *)self mruItems];
    [mruItems3 removeNodeAndAddToTail:removeFromHead];
  }

  else
  {
    maxCount = [(_OSLogLRUCache *)self maxCount];
    mruItems4 = [(_OSLogLRUCache *)self mruItems];
    v16 = [mruItems4 count];

    if (maxCount == v16)
    {
      mruItems5 = [(_OSLogLRUCache *)self mruItems];
      removeFromHead = [mruItems5 removeFromHead];

      evictionHandler = [(_OSLogLRUCache *)self evictionHandler];

      if (evictionHandler)
      {
        v19 = [(OSLogDoublyLinkedListNode *)removeFromHead key];
        data = [(OSLogDoublyLinkedListNode *)removeFromHead data];
        evictionHandler2 = [(_OSLogLRUCache *)self evictionHandler];
        (evictionHandler2)[2](evictionHandler2, v19, data);
      }

      storage3 = [(_OSLogLRUCache *)self storage];
      v23 = [(OSLogDoublyLinkedListNode *)removeFromHead key];
      [storage3 setObject:0 forKeyedSubscript:v23];

      [(OSLogDoublyLinkedListNode *)removeFromHead setKey:keyCopy];
      [(OSLogDoublyLinkedListNode *)removeFromHead setData:objectCopy];
    }

    else
    {
      removeFromHead = [[OSLogDoublyLinkedListNode alloc] initWithKey:keyCopy data:objectCopy];
    }

    mruItems6 = [(_OSLogLRUCache *)self mruItems];
    [mruItems6 addToTail:removeFromHead];

    mruItems3 = [(_OSLogLRUCache *)self storage];
    [mruItems3 setObject:removeFromHead forKeyedSubscript:keyCopy];
  }

  mruItems7 = [(_OSLogLRUCache *)self mruItems];
  v26 = [mruItems7 count];
  storage4 = [(_OSLogLRUCache *)self storage];
  v28 = [storage4 count];

  if (v26 != v28)
  {
LABEL_18:
    v42 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v33 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    mruItems8 = [(_OSLogLRUCache *)self mruItems];
    v36 = [mruItems8 count];
    storage5 = [(_OSLogLRUCache *)self storage];
    v38 = [storage5 count];
    v43 = 134218240;
    v44 = v36;
    v45 = 2048;
    v46 = v38;
    LODWORD(v39) = 22;
    _os_log_send_and_compose_impl(v34, &v42, &v47, 80, &dword_22E01A000, v33, 16, "bug in LRUCache implementation; %ld != %ld", &v43, v39);

    _os_crash_msg();
    __break(1u);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)objectForKey:(id)key
{
  v40 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  mruItems = [(_OSLogLRUCache *)self mruItems];
  v6 = [mruItems count];
  storage = [(_OSLogLRUCache *)self storage];
  v8 = [storage count];

  if (v6 != v8)
  {
    v30 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v18 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    mruItems2 = [(_OSLogLRUCache *)self mruItems];
    v21 = [mruItems2 count];
    self = [(_OSLogLRUCache *)self storage];
    v31 = 134218240;
    v32 = v21;
    v33 = 2048;
    v34 = [(_OSLogLRUCache *)self count];
    v29 = 22;
    _os_log_send_and_compose_impl(v19, &v30, &v35, 80, &dword_22E01A000, v18, 16, "bug in LRUCache implementation; %ld != %ld", &v31, v29);

    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  storage2 = [(_OSLogLRUCache *)self storage];
  v10 = [storage2 objectForKeyedSubscript:keyCopy];

  if (v10)
  {
    mruItems3 = [(_OSLogLRUCache *)self mruItems];
    [mruItems3 removeNodeAndAddToTail:v10];
  }

  data = [v10 data];
  mruItems4 = [(_OSLogLRUCache *)self mruItems];
  v14 = [mruItems4 count];
  storage3 = [(_OSLogLRUCache *)self storage];
  v16 = [storage3 count];

  if (v14 != v16)
  {
LABEL_12:
    v30 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v22 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    mruItems5 = [(_OSLogLRUCache *)self mruItems];
    v25 = [mruItems5 count];
    storage4 = [(_OSLogLRUCache *)self storage];
    v27 = [storage4 count];
    v31 = 134218240;
    v32 = v25;
    v33 = 2048;
    v34 = v27;
    LODWORD(v28) = 22;
    _os_log_send_and_compose_impl(v23, &v30, &v35, 80, &dword_22E01A000, v22, 16, "bug in LRUCache implementation; %ld != %ld", &v31, v28);

    _os_crash_msg();
    __break(1u);
  }

  os_unfair_lock_unlock(&self->_lock);

  return data;
}

- (_OSLogLRUCache)initWithName:(id)name maxCount:(unint64_t)count evictionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = _OSLogLRUCache;
  v11 = [(_OSLogLRUCache *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v12->_maxCount = count;
    v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:count];
    storage = v12->_storage;
    v12->_storage = v13;

    v15 = objc_opt_new();
    mruItems = v12->_mruItems;
    v12->_mruItems = v15;

    v12->_lock._os_unfair_lock_opaque = 0;
    v17 = _Block_copy(handlerCopy);
    evictionHandler = v12->evictionHandler;
    v12->evictionHandler = v17;
  }

  return v12;
}

@end