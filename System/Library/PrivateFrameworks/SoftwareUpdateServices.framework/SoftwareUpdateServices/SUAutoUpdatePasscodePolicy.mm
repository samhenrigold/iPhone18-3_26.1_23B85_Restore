@interface SUAutoUpdatePasscodePolicy
+ (id)sharedInstance;
- (SUAutoUpdatePasscodePolicy)init;
- (id)_init;
- (id)description;
- (id)stringForCurrentPolicy;
- (unint64_t)currentPolicyType;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)setCurrentPolicyType:(unint64_t)type;
@end

@implementation SUAutoUpdatePasscodePolicy

- (SUAutoUpdatePasscodePolicy)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SUAutoUpdatePasscodePolicy.m" lineNumber:41 description:@"Please use the sharedInstance."];

  return 0;
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = SUAutoUpdatePasscodePolicy;
  v2 = [(SUAutoUpdatePasscodePolicy *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.softwareupdateservices.passcodePolicy", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_queue_create("com.apple.softwareupdateservices.passcodepolicy.observerCallout", 0);
    observerCalloutQueue = v2->_observerCalloutQueue;
    v2->_observerCalloutQueue = v5;

    v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    queue_observers = v2->_queue_observers;
    v2->_queue_observers = v7;

    [(SUAutoUpdatePasscodePolicy *)v2 setCurrentPolicyType:0];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[SUAutoUpdatePasscodePolicy sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

uint64_t __44__SUAutoUpdatePasscodePolicy_sharedInstance__block_invoke()
{
  v0 = [[SUAutoUpdatePasscodePolicy alloc] _init];
  v1 = sharedInstance___instance;
  sharedInstance___instance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (unint64_t)currentPolicyType
{
  BSDispatchQueueAssertNot();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__SUAutoUpdatePasscodePolicy_currentPolicyType__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)stringForCurrentPolicy
{
  currentPolicyType = [(SUAutoUpdatePasscodePolicy *)self currentPolicyType];
  if (currentPolicyType > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_279CAA9E0[currentPolicyType];
  }
}

- (void)setCurrentPolicyType:(unint64_t)type
{
  BSDispatchQueueAssertNot();
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SUAutoUpdatePasscodePolicy_setCurrentPolicyType___block_invoke;
  v6[3] = &unk_279CAA9C0;
  v6[4] = self;
  v6[5] = type;
  dispatch_sync(queue, v6);
}

void __51__SUAutoUpdatePasscodePolicy_setCurrentPolicyType___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _isValidPasscodePolicyType:*(a1 + 40)];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = +[SUKeybagInterface sharedInstance];
    if ([v4 hasPasscodeSet])
    {
    }

    else
    {
      v5 = *(a1 + 40);

      if (v5)
      {
        SULogInfo(@"%s: Tried to change passcode policy to %@, but passcode is not set, so override policy to not required", v6, v7, v8, v9, v10, v11, v12, "[SUAutoUpdatePasscodePolicy setCurrentPolicyType:]_block_invoke");
        v3 = 0;
      }
    }

    v13 = *(a1 + 32);
    if (*(v13 + 40) != v3)
    {
      *(v13 + 40) = v3;
      v14 = [*(*(a1 + 32) + 8) allObjects];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v28;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v27 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v19 passcodePolicyInterface:*(a1 + 32) passcodePolicyTypeChanged:v3];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v16);
      }
    }
  }

  else
  {
    [*(a1 + 32) currentPolicyType];
    SULogInfo(@"Invalid passcode policy type: %lu. Leaving policy as %@", v20, v21, v22, v23, v24, v25, v26, v3);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    [(SUAutoUpdatePasscodePolicy *)a2 addObserver:?];
  }

  BSDispatchQueueAssertNot();
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__SUAutoUpdatePasscodePolicy_addObserver___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(queue, v8);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    [(SUAutoUpdatePasscodePolicy *)a2 removeObserver:?];
  }

  BSDispatchQueueAssertNot();
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SUAutoUpdatePasscodePolicy_removeObserver___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(queue, v8);
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  currentPolicyType = [(SUAutoUpdatePasscodePolicy *)self currentPolicyType];
  if (currentPolicyType > 2)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_279CAA9E0[currentPolicyType];
  }

  return [v2 stringWithFormat:@"%@", v4];
}

- (void)addObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUAutoUpdatePasscodePolicy.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

- (void)removeObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUAutoUpdatePasscodePolicy.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

@end