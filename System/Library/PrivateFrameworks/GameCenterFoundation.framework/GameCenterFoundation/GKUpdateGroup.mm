@interface GKUpdateGroup
+ (GKUpdateGroup)updateGroupWithName:(id)name;
+ (GKUpdateGroup)updateGroupWithName:(id)name taregetQueue:(id)queue;
+ (id)updateGroup;
+ (id)updateGroupForTargetQueue:(id)queue;
- (GKUpdateGroup)initWithName:(id)name targetQueue:(id)queue;
- (int64_t)updateCount;
- (void)applyUpdates;
- (void)cancelUpdates;
- (void)dealloc;
- (void)join:(id)join;
- (void)joinApplyUpdatesAndDo:(id)do;
- (void)performOnQueue:(id)queue block:(id)block;
@end

@implementation GKUpdateGroup

+ (id)updateGroup
{
  v2 = [objc_alloc(objc_opt_class()) initWithName:0 targetQueue:MEMORY[0x277D85CD0]];

  return v2;
}

+ (GKUpdateGroup)updateGroupWithName:(id)name
{
  v3 = [objc_alloc(objc_opt_class()) initWithName:name targetQueue:MEMORY[0x277D85CD0]];

  return v3;
}

+ (id)updateGroupForTargetQueue:(id)queue
{
  v3 = [objc_alloc(objc_opt_class()) initWithName:0 targetQueue:queue];

  return v3;
}

+ (GKUpdateGroup)updateGroupWithName:(id)name taregetQueue:(id)queue
{
  v4 = [objc_alloc(objc_opt_class()) initWithName:name targetQueue:queue];

  return v4;
}

- (GKUpdateGroup)initWithName:(id)name targetQueue:(id)queue
{
  v8.receiver = self;
  v8.super_class = GKUpdateGroup;
  v6 = [(GKUpdateGroup *)&v8 init];
  if (v6)
  {
    v6->_lock = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v6->_targetQueue = queue;
    dispatch_retain(queue);
    v6->_dispatchGroup = dispatch_group_create();
    v6->_notifiers = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!name)
    {
      name = [(GKUpdateGroup *)v6 description];
    }

    [(GKUpdateGroup *)v6 setName:name];
  }

  return v6;
}

- (void)dealloc
{
  dispatch_release(self->_targetQueue);

  dispatch_release(self->_dispatchGroup);
  v3.receiver = self;
  v3.super_class = GKUpdateGroup;
  [(GKUpdateGroup *)&v3 dealloc];
}

- (void)performOnQueue:(id)queue block:(id)block
{
  v7 = objc_alloc_init(GKUpdateGroupNotifier);
  [(NSMutableArray *)[(GKUpdateGroup *)self notifiers] addObject:v7];

  [(GKUpdateGroupNotifier *)v7 setGroup:self];
  v8 = _Block_copy(block);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__GKUpdateGroup_performOnQueue_block___block_invoke;
  v9[3] = &unk_2785DE160;
  v9[4] = v7;
  v9[5] = v8;
  dispatch_async(queue, v9);
}

void __38__GKUpdateGroup_performOnQueue_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 40);

  _Block_release(v2);
}

- (void)join:(id)join
{
  selfCopy = self;
  dispatchGroup = self->_dispatchGroup;
  targetQueue = self->_targetQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__GKUpdateGroup_join___block_invoke;
  v8[3] = &unk_2785DE160;
  v8[4] = self;
  v8[5] = join;
  dispatch_group_notify(dispatchGroup, targetQueue, v8);
}

void __22__GKUpdateGroup_join___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
}

- (void)joinApplyUpdatesAndDo:(id)do
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__GKUpdateGroup_joinApplyUpdatesAndDo___block_invoke;
  v3[3] = &unk_2785DE188;
  v3[4] = self;
  v3[5] = do;
  [(GKUpdateGroup *)self join:v3];
}

uint64_t __39__GKUpdateGroup_joinApplyUpdatesAndDo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) applyUpdates];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) error];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)applyUpdates
{
  v24 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_lock lock];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  notifiers = self->_notifiers;
  v4 = [(NSMutableArray *)notifiers countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(notifiers);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        [objc_msgSend(v8 "lock")];
        if (!self->_error)
        {
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          updateQueue = [v8 updateQueue];
          v10 = [updateQueue countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v15;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v15 != v12)
                {
                  objc_enumerationMutation(updateQueue);
                }

                (*(*(*(&v14 + 1) + 8 * j) + 16))();
              }

              v11 = [updateQueue countByEnumeratingWithState:&v14 objects:v22 count:16];
            }

            while (v11);
          }
        }

        [objc_msgSend(v8 "updateQueue")];
        [v8 setGroup:0];
        [objc_msgSend(v8 "lock")];
      }

      v5 = [(NSMutableArray *)notifiers countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_notifiers removeAllObjects];
  [(GKUpdateGroup *)self setError:0];
  [(NSLock *)self->_lock unlock];
}

- (void)cancelUpdates
{
  v14 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_lock lock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  notifiers = self->_notifiers;
  v4 = [(NSMutableArray *)notifiers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(notifiers);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [objc_msgSend(v8 "lock")];
        [objc_msgSend(v8 "updateQueue")];
        [v8 setGroup:0];
        [objc_msgSend(v8 "lock")];
      }

      v5 = [(NSMutableArray *)notifiers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_notifiers removeAllObjects];
  [(GKUpdateGroup *)self setError:0];
  [(NSLock *)self->_lock unlock];
}

- (int64_t)updateCount
{
  v16 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_lock lock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  notifiers = self->_notifiers;
  v4 = [(NSMutableArray *)notifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(notifiers);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [objc_msgSend(v9 "lock")];
        v6 += [objc_msgSend(v9 "updateQueue")];
        if ([v9 error])
        {
          ++v6;
        }

        [objc_msgSend(v9 "lock")];
      }

      v5 = [(NSMutableArray *)notifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [(NSLock *)self->_lock unlock];
  return v6;
}

@end