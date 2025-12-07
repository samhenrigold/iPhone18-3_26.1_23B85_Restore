@interface MCMLRUCache
- (MCMLRUCache)init;
- (MCMLRUCache)initWithName:(id)name maxCount:(unint64_t)count;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (void)removeAllObjects;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation MCMLRUCache

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  mruItems = [(MCMLRUCache *)self mruItems];
  v4 = [mruItems count];

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)removeAllObjects
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = container_log_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    name = [(MCMLRUCache *)self name];
    mruItems = [(MCMLRUCache *)self mruItems];
    v8 = 138412546;
    v9 = name;
    v10 = 2112;
    v11 = mruItems;
    _os_log_debug_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_DEBUG, "[%@] Evicting items from cache: %@", &v8, 0x16u);
  }

  storage = [(MCMLRUCache *)self storage];
  [storage removeAllObjects];

  mruItems2 = [(MCMLRUCache *)self mruItems];
  [mruItems2 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setObject:(id)object forKey:(id)key
{
  v51 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  mruItems = [(MCMLRUCache *)self mruItems];
  v9 = [mruItems count];
  storage = [(MCMLRUCache *)self storage];
  v11 = [storage count];

  if (v9 != v11)
  {
    v42 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    memset(buf, 0, sizeof(buf));
    v31 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    mruItems2 = [(MCMLRUCache *)self mruItems];
    v34 = [mruItems2 count];
    self = [(MCMLRUCache *)self storage];
    v43 = 134218240;
    v44 = v34;
    v45 = 2048;
    v46 = [(MCMLRUCache *)self count];
    _os_log_send_and_compose_impl(v32, &v42, buf, 80, &dword_1DF2C3000, v31, 16, "bug in MCMLRUCache implementation; %ld != %ld", &v43, 22);

    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  storage2 = [(MCMLRUCache *)self storage];
  removeFromHead = [storage2 objectForKey:keyCopy];

  if (removeFromHead)
  {
    [(MCMDoublyLinkedListNode *)removeFromHead setData:objectCopy];
    mruItems3 = [(MCMLRUCache *)self mruItems];
    [mruItems3 removeNodeAndAddToTail:removeFromHead];
  }

  else
  {
    maxCount = [(MCMLRUCache *)self maxCount];
    mruItems4 = [(MCMLRUCache *)self mruItems];
    v17 = [mruItems4 count];

    if (maxCount == v17)
    {
      mruItems5 = [(MCMLRUCache *)self mruItems];
      removeFromHead = [mruItems5 removeFromHead];

      v19 = container_log_handle_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        name = [(MCMLRUCache *)self name];
        storage3 = [(MCMLRUCache *)self storage];
        v29 = [(MCMDoublyLinkedListNode *)removeFromHead key];
        v30 = [storage3 objectForKeyedSubscript:v29];
        *buf = 138412546;
        *&buf[4] = name;
        *&buf[12] = 2112;
        *&buf[14] = v30;
        _os_log_debug_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_DEBUG, "[%@] Evicting from cache: %@", buf, 0x16u);
      }

      storage4 = [(MCMLRUCache *)self storage];
      v21 = [(MCMDoublyLinkedListNode *)removeFromHead key];
      [storage4 setObject:0 forKeyedSubscript:v21];

      [(MCMDoublyLinkedListNode *)removeFromHead setKey:keyCopy];
      [(MCMDoublyLinkedListNode *)removeFromHead setData:objectCopy];
    }

    else
    {
      removeFromHead = [[MCMDoublyLinkedListNode alloc] initWithKey:keyCopy data:objectCopy];
    }

    mruItems6 = [(MCMLRUCache *)self mruItems];
    [mruItems6 addToTail:removeFromHead];

    mruItems3 = [(MCMLRUCache *)self storage];
    [mruItems3 setObject:removeFromHead forKeyedSubscript:keyCopy];
  }

  mruItems7 = [(MCMLRUCache *)self mruItems];
  v24 = [mruItems7 count];
  storage5 = [(MCMLRUCache *)self storage];
  v26 = [storage5 count];

  if (v24 != v26)
  {
LABEL_16:
    v42 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    memset(buf, 0, sizeof(buf));
    v35 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    mruItems8 = [(MCMLRUCache *)self mruItems];
    v38 = [mruItems8 count];
    storage6 = [(MCMLRUCache *)self storage];
    v40 = [storage6 count];
    v43 = 134218240;
    v44 = v38;
    v45 = 2048;
    v46 = v40;
    LODWORD(v41) = 22;
    _os_log_send_and_compose_impl(v36, &v42, buf, 80, &dword_1DF2C3000, v35, 16, "bug in MCMLRUCache implementation; %ld != %ld", &v43, v41);

    _os_crash_msg();
    __break(1u);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)objectForKey:(id)key
{
  v41 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  mruItems = [(MCMLRUCache *)self mruItems];
  v6 = [mruItems count];
  storage = [(MCMLRUCache *)self storage];
  v8 = [storage count];

  if (v6 != v8)
  {
    v32 = 0;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    memset(buf, 0, sizeof(buf));
    v21 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    mruItems2 = [(MCMLRUCache *)self mruItems];
    v24 = [mruItems2 count];
    self = [(MCMLRUCache *)self storage];
    v33 = 134218240;
    v34 = v24;
    v35 = 2048;
    v36 = [(MCMLRUCache *)self count];
    _os_log_send_and_compose_impl(v22, &v32, buf, 80, &dword_1DF2C3000, v21, 16, "bug in MCMLRUCache implementation; %ld != %ld", &v33, 22);

    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  storage2 = [(MCMLRUCache *)self storage];
  v10 = [storage2 objectForKeyedSubscript:keyCopy];

  if (v10)
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      name = [(MCMLRUCache *)self name];
      data = [v10 data];
      *buf = 138412546;
      *&buf[4] = name;
      *&buf[12] = 2112;
      *&buf[14] = data;
      _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "[%@] Cache hit: %@", buf, 0x16u);
    }

    mruItems3 = [(MCMLRUCache *)self mruItems];
    [mruItems3 removeNodeAndAddToTail:v10];
  }

  data2 = [v10 data];
  mruItems4 = [(MCMLRUCache *)self mruItems];
  v15 = [mruItems4 count];
  storage3 = [(MCMLRUCache *)self storage];
  v17 = [storage3 count];

  if (v15 != v17)
  {
LABEL_14:
    v32 = 0;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    memset(buf, 0, sizeof(buf));
    v25 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    mruItems5 = [(MCMLRUCache *)self mruItems];
    v28 = [mruItems5 count];
    storage4 = [(MCMLRUCache *)self storage];
    v30 = [storage4 count];
    v33 = 134218240;
    v34 = v28;
    v35 = 2048;
    v36 = v30;
    LODWORD(v31) = 22;
    _os_log_send_and_compose_impl(v26, &v32, buf, 80, &dword_1DF2C3000, v25, 16, "bug in MCMLRUCache implementation; %ld != %ld", &v33, v31);

    _os_crash_msg();
    __break(1u);
  }

  os_unfair_lock_unlock(&self->_lock);

  return data2;
}

- (MCMLRUCache)initWithName:(id)name maxCount:(unint64_t)count
{
  v16 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = MCMLRUCache;
  v8 = [(MCMLRUCache *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_maxCount = count;
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:count];
    storage = v9->_storage;
    v9->_storage = v10;

    v12 = objc_opt_new();
    mruItems = v9->_mruItems;
    v9->_mruItems = v12;

    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (MCMLRUCache)init
{

  return [(MCMLRUCache *)self initWithName:@"default" maxCount:10];
}

@end