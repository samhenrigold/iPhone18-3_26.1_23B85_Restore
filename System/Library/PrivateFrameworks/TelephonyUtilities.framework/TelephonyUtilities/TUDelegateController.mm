@interface TUDelegateController
- (TUDelegateController)init;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)enumerateDelegatesUsingBlock:(id)block;
- (void)removeDelegate:(id)delegate;
@end

@implementation TUDelegateController

- (TUDelegateController)init
{
  v7.receiver = self;
  v7.super_class = TUDelegateController;
  v2 = [(TUDelegateController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_delegateLock._os_unfair_lock_opaque = 0;
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateToQueue = v3->_delegateToQueue;
    v3->_delegateToQueue = weakToStrongObjectsMapTable;
  }

  return v3;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  os_unfair_lock_lock(&self->_delegateLock);
  delegateToQueue = [(TUDelegateController *)self delegateToQueue];
  [delegateToQueue setObject:queueCopy forKey:delegateCopy];

  os_unfair_lock_unlock(&self->_delegateLock);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_delegateLock);
  delegateToQueue = [(TUDelegateController *)self delegateToQueue];
  [delegateToQueue removeObjectForKey:delegateCopy];

  os_unfair_lock_unlock(&self->_delegateLock);
}

- (void)enumerateDelegatesUsingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  os_unfair_lock_lock(&self->_delegateLock);
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  delegateToQueue = [(TUDelegateController *)self delegateToQueue];
  v6 = [delegateToQueue countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(delegateToQueue);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      delegateToQueue2 = [(TUDelegateController *)self delegateToQueue];
      v11 = [delegateToQueue2 objectForKey:v9];

      blockCopy[2](blockCopy, v9, v11, &v16);
      LOBYTE(v9) = v16;

      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [delegateToQueue countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  os_unfair_lock_unlock(&self->_delegateLock);
}

@end