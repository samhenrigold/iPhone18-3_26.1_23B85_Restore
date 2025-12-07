@interface CRInvocationChain
- (BOOL)_isEligibleForSelector:(SEL)selector;
- (BOOL)_respondsToSelector:(SEL)selector;
- (BOOL)isEligibleForSelector:(SEL)selector;
- (BOOL)respondsToSelector:(SEL)selector;
- (CRInvocationChain)init;
- (CRInvocationChainDelegate)delegate;
- (NSPointerArray)_chainedObjects;
- (id)_methodSignatureForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_accessChainedObjectsSafely:(id)safely;
- (void)_addChainedObject:(id)object;
- (void)_enumerateChainedObjectsUsingBlock:(id)block;
- (void)_forwardInvocation:(id)invocation;
- (void)addChainedObject:(id)object;
- (void)enumerateChainedObjectsUsingBlock:(id)block;
- (void)forwardInvocation:(id)invocation;
@end

@implementation CRInvocationChain

- (CRInvocationChain)init
{
  v7.receiver = self;
  v7.super_class = CRInvocationChain;
  v2 = [(CRInvocationChain *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.cards.CRInvocationChain.chainedObjectsAccessQueue", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    dispatch_queue_set_specific(*(v2 + 1), _CRInvocationChainRecursiveKey, *(v2 + 1), 0);
  }

  return v2;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__CRInvocationChain_forwardInvocation___block_invoke;
  v6[3] = &unk_278DA5800;
  v6[4] = self;
  v7 = invocationCopy;
  v5 = invocationCopy;
  [(CRInvocationChain *)self _accessChainedObjectsSafely:v6];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__CRInvocationChain_respondsToSelector___block_invoke;
  v5[3] = &unk_278DA5828;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = selector;
  [(CRInvocationChain *)self _accessChainedObjectsSafely:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__40__CRInvocationChain_respondsToSelector___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _respondsToSelector:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__CRInvocationChain_methodSignatureForSelector___block_invoke;
  v5[3] = &unk_278DA5828;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = selector;
  [(CRInvocationChain *)self _accessChainedObjectsSafely:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__CRInvocationChain_methodSignatureForSelector___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _methodSignatureForSelector:*(a1 + 48)];

  return MEMORY[0x2821F96F8]();
}

- (void)addChainedObject:(id)object
{
  objectCopy = object;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__CRInvocationChain_addChainedObject___block_invoke;
  v6[3] = &unk_278DA5800;
  v6[4] = self;
  v7 = objectCopy;
  v5 = objectCopy;
  [(CRInvocationChain *)self _accessChainedObjectsSafely:v6];
}

- (void)enumerateChainedObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CRInvocationChain_enumerateChainedObjectsUsingBlock___block_invoke;
  v6[3] = &unk_278DA5850;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  [(CRInvocationChain *)self _accessChainedObjectsSafely:v6];
}

- (BOOL)isEligibleForSelector:(SEL)selector
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__CRInvocationChain_isEligibleForSelector___block_invoke;
  v5[3] = &unk_278DA5828;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = selector;
  [(CRInvocationChain *)self _accessChainedObjectsSafely:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__43__CRInvocationChain_isEligibleForSelector___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isEligibleForSelector:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_accessChainedObjectsSafely:(id)safely
{
  safelyCopy = safely;
  if (safelyCopy)
  {
    specific = dispatch_get_specific(_CRInvocationChainRecursiveKey);
    chainedObjectsAccessQueue = self->_chainedObjectsAccessQueue;
    if (specific == chainedObjectsAccessQueue)
    {
      safelyCopy[2](safelyCopy);
    }

    else
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x3032000000;
      v14 = __Block_byref_object_copy_;
      v15 = __Block_byref_object_dispose_;
      v16 = 0;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __49__CRInvocationChain__accessChainedObjectsSafely___block_invoke;
      v8[3] = &unk_278DA5878;
      v9 = safelyCopy;
      v10 = &v11;
      dispatch_sync(chainedObjectsAccessQueue, v8);
      v7 = v12[5];
      if (v7)
      {
        objc_exception_throw(v7);
      }

      _Block_object_dispose(&v11, 8);
    }
  }
}

- (NSPointerArray)_chainedObjects
{
  chainedObjects = self->_chainedObjects;
  if (!chainedObjects)
  {
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    v5 = self->_chainedObjects;
    self->_chainedObjects = weakObjectsPointerArray;

    chainedObjects = self->_chainedObjects;
  }

  [(NSPointerArray *)chainedObjects addPointer:0];
  [(NSPointerArray *)self->_chainedObjects compact];
  v6 = self->_chainedObjects;

  return v6;
}

- (void)_forwardInvocation:(id)invocation
{
  v30 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  _chainedObjects = [(CRInvocationChain *)self _chainedObjects];
  v6 = NSStringFromSelector([invocationCopy selector]);
  v7 = CRLogContextCards;
  if (os_log_type_enabled(CRLogContextCards, OS_LOG_TYPE_DEBUG))
  {
    [(CRInvocationChain *)v6 _forwardInvocation:_chainedObjects, v7];
  }

  v19 = v6;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = _chainedObjects;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        delegate = [(CRInvocationChain *)self delegate];
        v15 = [delegate invocationChain:self shouldForwardInvocation:invocationCopy toTarget:v13];

        if ((objc_opt_respondsToSelector() & 1) != 0 && v15)
        {
          v18 = CRLogContextCards;
          v17 = v19;
          if (os_log_type_enabled(CRLogContextCards, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v26 = v19;
            v27 = 2112;
            v28 = v13;
            _os_log_impl(&dword_24327C000, v18, OS_LOG_TYPE_INFO, "Invoking invocation %@ with target: %@", buf, 0x16u);
          }

          [invocationCopy invokeWithTarget:v13];

          goto LABEL_18;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = CRLogContextCards;
  v17 = v19;
  if (os_log_type_enabled(CRLogContextCards, OS_LOG_TYPE_ERROR))
  {
    [(CRInvocationChain *)v19 _forwardInvocation:v16];
  }

  v20.receiver = self;
  v20.super_class = CRInvocationChain;
  [(CRInvocationChain *)&v20 forwardInvocation:invocationCopy];
LABEL_18:
}

- (BOOL)_respondsToSelector:(SEL)selector
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = CRInvocationChain;
  v5 = [(CRInvocationChain *)&v16 respondsToSelector:?];
  if ([(CRInvocationChain *)self _isEligibleForSelector:selector])
  {
    [(CRInvocationChain *)self _chainedObjects];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v15 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (objc_opt_respondsToSelector())
          {
            v5 = 1;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v5;
}

- (id)_methodSignatureForSelector:(SEL)selector
{
  v19 = *MEMORY[0x277D85DE8];
  [(CRInvocationChain *)self _chainedObjects];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) methodSignatureForSelector:selector];
        if (v10)
        {
          v11 = v10;

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13.receiver = self;
  v13.super_class = CRInvocationChain;
  v11 = [(CRInvocationChain *)&v13 methodSignatureForSelector:selector];
LABEL_11:

  return v11;
}

- (void)_addChainedObject:(id)object
{
  objectCopy = object;
  _chainedObjects = [(CRInvocationChain *)self _chainedObjects];
  [_chainedObjects addPointer:objectCopy];
}

- (void)_enumerateChainedObjectsUsingBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    [(CRInvocationChain *)self _chainedObjects];
    v14 = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9), &v14);
        if (v14)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (BOOL)_isEligibleForSelector:(SEL)selector
{
  _chainedObjects = [(CRInvocationChain *)self _chainedObjects];
  v4 = [_chainedObjects count] != 0;

  return v4;
}

- (CRInvocationChainDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __49__CRInvocationChain__accessChainedObjectsSafely___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_begin_catch(a1);
  v5 = *(*(a3 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_end_catch();
}

- (void)_forwardInvocation:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_24327C000, log, OS_LOG_TYPE_DEBUG, "Forwarding invocation %@ to candidates: %@", &v3, 0x16u);
}

- (void)_forwardInvocation:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24327C000, a2, OS_LOG_TYPE_ERROR, "No members of the chain were eligble for invocation %@", &v2, 0xCu);
}

@end