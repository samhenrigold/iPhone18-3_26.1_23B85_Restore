@interface BKHIDEventSenderCache
- (BKHIDEventSenderCache)initWithQueue:(id)queue;
- (NSString)description;
- (id)senderInfoForSenderID:(unint64_t)d;
- (void)addSenderInfo:(id)info;
- (void)addSenderInfo:(id)info forSenderID:(unint64_t)d;
- (void)removeSenderInfo:(id)info;
- (void)serviceDidDisappear:(id)disappear;
- (void)sync;
@end

@implementation BKHIDEventSenderCache

- (void)removeSenderInfo:(id)info
{
  v28 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (!infoCopy)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"senders != ((void*)0)"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v17 = v10;
      v18 = 2114;
      v19 = v12;
      v20 = 2048;
      selfCopy = self;
      v22 = 2114;
      v23 = @"BKHIDEventSenderCache.m";
      v24 = 1024;
      v25 = 123;
      v26 = 2114;
      v27 = v9;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CDB9ACLL);
  }

  v6 = infoCopy;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_senderIDToSenderInfo copy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__BKHIDEventSenderCache_removeSenderInfo___block_invoke;
  v13[3] = &unk_2784F6BC0;
  v14 = v6;
  selfCopy2 = self;
  v8 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];

  os_unfair_lock_unlock(&self->_lock);
}

void __42__BKHIDEventSenderCache_removeSenderInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    v11 = 0x277CCA000uLL;
    do
    {
      v12 = 0;
      v25 = v9;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (*(*(&v26 + 1) + 8 * v12) == v6)
        {
          v13 = [v5 unsignedLongLongValue];
          v14 = BKLogHID();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_opt_class();
            *buf = 134218242;
            v31 = v13;
            v32 = 2114;
            v33 = v15;
            v16 = v10;
            v17 = v6;
            v18 = v7;
            v19 = a1;
            v20 = v5;
            v21 = v11;
            v22 = v15;
            _os_log_impl(&dword_223CBE000, v14, OS_LOG_TYPE_DEFAULT, "purge sender info for senderID:%llX -- %{public}@", buf, 0x16u);

            v11 = v21;
            v5 = v20;
            a1 = v19;
            v7 = v18;
            v6 = v17;
            v10 = v16;
            v9 = v25;
          }

          v23 = *(*(a1 + 40) + 24);
          v24 = [*(v11 + 2992) numberWithUnsignedLongLong:v13];
          [v23 removeObjectForKey:v24];
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v9);
  }
}

- (void)addSenderInfo:(id)info
{
  v32 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (!infoCopy)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"senders != ((void*)0)"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v21 = v12;
      v22 = 2114;
      v23 = v14;
      v24 = 2048;
      selfCopy = self;
      v26 = 2114;
      v27 = @"BKHIDEventSenderCache.m";
      v28 = 1024;
      v29 = 114;
      v30 = 2114;
      v31 = v11;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CDBDC4);
  }

  v6 = infoCopy;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [infoCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        -[BKHIDEventSenderCache addSenderInfo:forSenderID:](self, "addSenderInfo:forSenderID:", *(*(&v15 + 1) + 8 * v10), [*(*(&v15 + 1) + 8 * v10) senderID]);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)addSenderInfo:(id)info forSenderID:(unint64_t)d
{
  v13 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  v8 = [(NSMutableDictionary *)self->_senderIDToSenderInfo objectForKeyedSubscript:v7];

  v9 = BKLogHID();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *v12 = 134217984;
      *&v12[4] = d;
      _os_log_impl(&dword_223CBE000, v9, OS_LOG_TYPE_DEFAULT, "we already have a service for senderID:%llX", v12, 0xCu);
    }
  }

  else
  {
    if (v10)
    {
      *v12 = 134218242;
      *&v12[4] = d;
      *&v12[12] = 2114;
      *&v12[14] = objc_opt_class();
      v11 = *&v12[14];
      _os_log_impl(&dword_223CBE000, v9, OS_LOG_TYPE_DEFAULT, "cache sender info for senderID:%llX -- %{public}@", v12, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [infoCopy addDisappearanceObserver:self queue:self->_queue];
    }

    [(NSMutableDictionary *)self->_senderIDToSenderInfo setObject:infoCopy forKeyedSubscript:v7, *v12, *&v12[8], v13];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)senderInfoForSenderID:(unint64_t)d
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  senderIDToSenderInfo = self->_senderIDToSenderInfo;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  v7 = [(NSMutableDictionary *)senderIDToSenderInfo objectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);
  if (!v7)
  {
    v8 = BKLogHID();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      dCopy = d;
      _os_log_impl(&dword_223CBE000, v8, OS_LOG_TYPE_DEFAULT, "unknown senderID: 0x%llX", &v10, 0xCu);
    }

    v7 = +[BKHIDUnknownSender unknownSenderInfo];
  }

  return v7;
}

- (void)sync
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__BKHIDEventSenderCache_sync__block_invoke;
  block[3] = &unk_2784F6B98;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __29__BKHIDEventSenderCache_sync__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v2);
}

- (void)serviceDidDisappear:(id)disappear
{
  v8 = *MEMORY[0x277D85DE8];
  disappearCopy = disappear;
  v4 = MEMORY[0x277CBEA60];
  disappearCopy2 = disappear;
  v6 = [v4 arrayWithObjects:&disappearCopy count:1];

  [(BKHIDEventSenderCache *)self removeSenderInfo:v6, disappearCopy, v8];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_senderIDToSenderInfo withName:@"senderIDToSenderInfo"];
  build = [v3 build];

  return build;
}

- (BKHIDEventSenderCache)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = BKHIDEventSenderCache;
  v6 = [(BKHIDEventSenderCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    senderIDToSenderInfo = v7->_senderIDToSenderInfo;
    v7->_senderIDToSenderInfo = v8;
  }

  return v7;
}

@end