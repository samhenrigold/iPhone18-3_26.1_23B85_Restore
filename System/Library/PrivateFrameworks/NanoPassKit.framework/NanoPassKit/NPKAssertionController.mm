@interface NPKAssertionController
- (NPKAssertionController)initWithAssertionFactory:(id)factory invalidator:(id)invalidator;
- (void)_inQueue_releaseAssertionWithOwner:(id)owner;
- (void)_releaseAssertionFromOwnerObject:(id)object withDelay:(double)delay completion:(id)completion;
- (void)createAssertionForOwnerObject:(id)object withReason:(id)reason;
- (void)releaseAssertionFromOwnerObject:(id)object;
@end

@implementation NPKAssertionController

- (NPKAssertionController)initWithAssertionFactory:(id)factory invalidator:(id)invalidator
{
  factoryCopy = factory;
  invalidatorCopy = invalidator;
  v20.receiver = self;
  v20.super_class = NPKAssertionController;
  v8 = [(NPKAssertionController *)&v20 init];
  if (v8)
  {
    v9 = _Block_copy(factoryCopy);
    assertionFactory = v8->_assertionFactory;
    v8->_assertionFactory = v9;

    v11 = _Block_copy(invalidatorCopy);
    assertionInvalidator = v8->_assertionInvalidator;
    v8->_assertionInvalidator = v11;

    pk_weakPointerPersonalityToStrongObjectsMapTable = [MEMORY[0x277CCAB00] pk_weakPointerPersonalityToStrongObjectsMapTable];
    assertionMaps = v8->_assertionMaps;
    v8->_assertionMaps = pk_weakPointerPersonalityToStrongObjectsMapTable;

    v15 = dispatch_queue_create("com.apple.NanoPassbook.alert.assertionManager", 0);
    internalQueue = v8->_internalQueue;
    v8->_internalQueue = v15;

    v17 = objc_alloc_init(NPKSemaphoreQueue);
    semaphoreQueue = v8->_semaphoreQueue;
    v8->_semaphoreQueue = v17;
  }

  return v8;
}

- (void)createAssertionForOwnerObject:(id)object withReason:(id)reason
{
  objectCopy = object;
  reasonCopy = reason;
  semaphoreQueue = self->_semaphoreQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__NPKAssertionController_createAssertionForOwnerObject_withReason___block_invoke;
  v11[3] = &unk_279945880;
  v11[4] = self;
  v12 = reasonCopy;
  v13 = objectCopy;
  v9 = objectCopy;
  v10 = reasonCopy;
  [(NPKSemaphoreQueue *)semaphoreQueue dispatchSync:v11];
}

void __67__NPKAssertionController_createAssertionForOwnerObject_withReason___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = (*(*(*(a1 + 32) + 8) + 16))();
  if (v2)
  {
    v3 = [[NPKAssertionWrapper alloc] initWithAssertion:v2 invalidator:*(*(a1 + 32) + 16)];
    v4 = pk_General_log([*(a1 + 32) _inQueue_releaseAssertionWithOwner:*(a1 + 48)]);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = pk_General_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 48);
        v14 = 138412546;
        v15 = v3;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Obtained assertion:%@ for Owner:%@", &v14, 0x16u);
      }
    }

    [*(*(a1 + 32) + 24) setObject:v3 forKey:*(a1 + 48)];
  }

  else
  {
    v9 = pk_General_log(0);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (!v10)
    {
      goto LABEL_8;
    }

    v3 = pk_General_log(v11);
    if (os_log_type_enabled(&v3->super, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v12 = *(a1 + 48);
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_25B300000, &v3->super, OS_LOG_TYPE_ERROR, "Error: Attempted to create assertion for %@ with reason: %@, but received nil.", &v14, 0x16u);
    }
  }

LABEL_8:
}

- (void)releaseAssertionFromOwnerObject:(id)object
{
  objectCopy = object;
  semaphoreQueue = self->_semaphoreQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__NPKAssertionController_releaseAssertionFromOwnerObject___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  [(NPKSemaphoreQueue *)semaphoreQueue dispatchSync:v7];
}

- (void)_releaseAssertionFromOwnerObject:(id)object withDelay:(double)delay completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  completionCopy = completion;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__16;
  v32 = __Block_byref_object_dispose__16;
  v33 = 0;
  semaphoreQueue = self->_semaphoreQueue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __80__NPKAssertionController__releaseAssertionFromOwnerObject_withDelay_completion___block_invoke;
  v25[3] = &unk_279946940;
  v27 = &v28;
  v25[4] = self;
  v11 = objectCopy;
  v26 = v11;
  v12 = [(NPKSemaphoreQueue *)semaphoreQueue dispatchSync:v25];
  if (v29[5])
  {
    v13 = pk_General_log(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v16 = pk_General_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v29[5];
        *buf = 138412802;
        v35 = v17;
        v36 = 2112;
        v37 = v11;
        v38 = 2048;
        delayCopy = delay;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Scheduled to invalidate assertion:%@ for owner:%@ with delay:%f", buf, 0x20u);
      }
    }

    objc_initWeak(buf, self);
    v18 = dispatch_time(0, (delay * 1000000000.0));
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__NPKAssertionController__releaseAssertionFromOwnerObject_withDelay_completion___block_invoke_59;
    block[3] = &unk_279948E20;
    objc_copyWeak(&v24, buf);
    v21 = v11;
    v23 = &v28;
    v22 = completionCopy;
    dispatch_after(v18, internalQueue, block);

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v28, 8);
}

void __80__NPKAssertionController__releaseAssertionFromOwnerObject_withDelay_completion___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __80__NPKAssertionController__releaseAssertionFromOwnerObject_withDelay_completion___block_invoke_59(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained[5];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __80__NPKAssertionController__releaseAssertionFromOwnerObject_withDelay_completion___block_invoke_2;
  v17 = &unk_2799454E0;
  v18 = WeakRetained;
  v19 = *(a1 + 32);
  [v3 dispatchSync:&v14];
  v4 = [*(*(*(a1 + 48) + 8) + 40) invalidateAssertionExpected:{1, v14, v15, v16, v17, v18}];
  v5 = v4;
  v6 = pk_General_log(v4);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    if (v7)
    {
      v9 = pk_General_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412290;
        v21 = v10;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Invalidated assertion:%@", buf, 0xCu);
      }
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))();
    }
  }

  else if (v7)
  {
    v12 = pk_General_log(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Fail scheduled invalidation assertion:%@", buf, 0xCu);
    }
  }
}

- (void)_inQueue_releaseAssertionWithOwner:(id)owner
{
  v18 = *MEMORY[0x277D85DE8];
  ownerCopy = owner;
  v5 = [(NSMapTable *)self->_assertionMaps objectForKey:ownerCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 invalidateAssertionExpected:1];
    v8 = v7;
    v9 = pk_General_log(v7);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      if (v10)
      {
        v12 = pk_General_log(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412546;
          v15 = v6;
          v16 = 2112;
          v17 = ownerCopy;
          v13 = "Notice: Invalidated assertion:%@ for owner:%@";
LABEL_9:
          _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, v13, &v14, 0x16u);
          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else if (v10)
    {
      v12 = pk_General_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = v6;
        v16 = 2112;
        v17 = ownerCopy;
        v13 = "Notice: Fail scheduled invalidation assertion:%@ for owner:%@";
        goto LABEL_9;
      }

LABEL_10:
    }
  }
}

@end