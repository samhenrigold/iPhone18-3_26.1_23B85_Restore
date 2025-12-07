@interface _BPSAbstractCombineLatest
- (_BPSAbstractCombineLatest)initWithDownstream:(id)downstream upstreamCount:(unint64_t)count;
- (int64_t)receiveInput:(id)input atIndex:(unint64_t)index;
- (void)cancel;
- (void)receiveCompletion:(id)completion atIndex:(unint64_t)index;
- (void)receiveSubscription:(id)subscription atIndex:(unint64_t)index;
- (void)requestDemand:(int64_t)demand;
@end

@implementation _BPSAbstractCombineLatest

- (_BPSAbstractCombineLatest)initWithDownstream:(id)downstream upstreamCount:(unint64_t)count
{
  downstreamCopy = downstream;
  v19.receiver = self;
  v19.super_class = _BPSAbstractCombineLatest;
  v8 = [(_BPSAbstractCombineLatest *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_downstream, downstream);
    v9->_upstreamCount = count;
    v9->_recursion = 0;
    v9->_finished = 0;
    v9->_errored = 0;
    v9->_cancelled = 0;
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    subscriptions = v9->_subscriptions;
    v9->_subscriptions = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    buffers = v9->_buffers;
    v9->_buffers = v12;

    v9->_demand = 0;
    v9->_lock._os_unfair_lock_opaque = 0;
    for (v9->_downstreamLock = 0; count; --count)
    {
      v14 = v9->_subscriptions;
      null = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v14 addObject:null];

      v16 = v9->_buffers;
      null2 = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v16 addObject:null2];
    }
  }

  return v9;
}

- (void)requestDemand:(int64_t)demand
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (demand <= 0)
  {
    [_BPSAbstractCombineLatest requestDemand:];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSAbstractCombineLatest *)selfCopy cancelled]|| [(_BPSAbstractCombineLatest *)selfCopy finished])
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
    subscriptions = [(_BPSAbstractCombineLatest *)selfCopy subscriptions];
    v6 = [subscriptions copy];

    [(_BPSAbstractCombineLatest *)selfCopy setDemand:[(_BPSAbstractCombineLatest *)selfCopy demand]+ demand];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          null = [MEMORY[0x1E695DFB0] null];
          v14 = [v12 isEqual:null];

          if ((v14 & 1) == 0)
          {
            [v12 requestDemand:demand];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)receiveSubscription:(id)subscription atIndex:(unint64_t)index
{
  subscriptionCopy = subscription;
  if ([(_BPSAbstractCombineLatest *)self upstreamCount]<= index)
  {
    [_BPSAbstractCombineLatest receiveSubscription:atIndex:];
  }

  os_unfair_lock_lock(&self->_lock);
  if (-[_BPSAbstractCombineLatest cancelled](self, "cancelled") || (-[_BPSAbstractCombineLatest subscriptions](self, "subscriptions"), v6 = objc_claimAutoreleasedReturnValue(), [v6 objectAtIndexedSubscript:index], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DFB0], "null"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, v6, (v9 & 1) == 0))
  {
    os_unfair_lock_unlock(&self->_lock);
    NSLog(&cfstr_ShouldCancelSu.isa);
    [subscriptionCopy cancel];
  }

  else
  {
    subscriptions = [(_BPSAbstractCombineLatest *)self subscriptions];
    [subscriptions setObject:subscriptionCopy atIndexedSubscript:index];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (int64_t)receiveInput:(id)input atIndex:(unint64_t)index
{
  v24 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  selfCopy = self;
  if ([(_BPSAbstractCombineLatest *)selfCopy upstreamCount]<= index)
  {
    [_BPSAbstractCombineLatest receiveInput:atIndex:];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSAbstractCombineLatest *)selfCopy cancelled]|| [(_BPSAbstractCombineLatest *)selfCopy finished])
  {
    goto LABEL_22;
  }

  if (!inputCopy)
  {
    [_BPSAbstractCombineLatest receiveInput:atIndex:];
  }

  buffers = [(_BPSAbstractCombineLatest *)selfCopy buffers];
  [buffers setObject:inputCopy atIndexedSubscript:index];

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v9 = [(_BPSAbstractCombineLatest *)selfCopy buffers:0];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v10) = 1;
          goto LABEL_17;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  if ([(_BPSAbstractCombineLatest *)selfCopy recursion]|| ([(_BPSAbstractCombineLatest *)selfCopy demand]< 1 ? (v13 = 1) : (v13 = v10), (v13 & 1) != 0))
  {
LABEL_22:
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
    [(_BPSAbstractCombineLatest *)selfCopy setDemand:[(_BPSAbstractCombineLatest *)selfCopy demand]- 1];
    buffers2 = [(_BPSAbstractCombineLatest *)selfCopy buffers];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v16 = [(_BPSAbstractCombineLatest *)selfCopy convertValues:buffers2];
    os_unfair_lock_lock(&selfCopy->_lock);
    [(_BPSAbstractCombineLatest *)selfCopy setRecursion:1];
    os_unfair_lock_unlock(&selfCopy->_lock);
    os_unfair_recursive_lock_lock_with_options();
    downstream = [(_BPSAbstractCombineLatest *)selfCopy downstream];
    v18 = [downstream receiveInput:v16];

    os_unfair_recursive_lock_unlock();
    os_unfair_lock_lock(&selfCopy->_lock);
    [(_BPSAbstractCombineLatest *)selfCopy setRecursion:0];
    if (v18 >= 1)
    {
      [(_BPSAbstractCombineLatest *)selfCopy setDemand:[(_BPSAbstractCombineLatest *)selfCopy demand]+ v18];
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  return 0;
}

- (void)receiveCompletion:(id)completion atIndex:(unint64_t)index
{
  v37 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  selfCopy = self;
  state = [completionCopy state];
  if (state == 1)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = v27;
      error = [completionCopy error];
      *buf = 138412802;
      v32 = v27;
      v33 = 2048;
      indexCopy = index;
      v35 = 2112;
      v36 = error;
      _os_log_error_impl(&dword_1C871B000, v16, OS_LOG_TYPE_ERROR, "%@ - Complete at index: %lud with error: %@", buf, 0x20u);
    }

    os_unfair_lock_lock(&selfCopy->_lock);
    [(_BPSAbstractCombineLatest *)selfCopy setFinished:1];
    [(_BPSAbstractCombineLatest *)selfCopy setErrored:1];
    v17 = MEMORY[0x1E695DEC8];
    subscriptions = [(_BPSAbstractCombineLatest *)selfCopy subscriptions];
    v19 = [v17 arrayWithArray:subscriptions];

    if ([v19 count])
    {
      v20 = 0;
      do
      {
        null = [MEMORY[0x1E695DFB0] null];
        subscriptions2 = [(_BPSAbstractCombineLatest *)selfCopy subscriptions];
        [subscriptions2 setObject:null atIndexedSubscript:v20];

        ++v20;
      }

      while ([v19 count] > v20);
    }

    if ([(_BPSAbstractCombineLatest *)selfCopy upstreamCount])
    {
      v23 = 0;
      do
      {
        null2 = [MEMORY[0x1E695DFB0] null];
        buffers = [(_BPSAbstractCombineLatest *)selfCopy buffers];
        [buffers setObject:null2 atIndexedSubscript:v23];

        ++v23;
      }

      while (v23 < [(_BPSAbstractCombineLatest *)selfCopy upstreamCount]);
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __55___BPSAbstractCombineLatest_receiveCompletion_atIndex___block_invoke;
    v30[3] = &__block_descriptor_40_e32_v32__0__BPSSubscription_8Q16_B24l;
    v30[4] = index;
    [v19 enumerateObjectsUsingBlock:v30];
    os_unfair_recursive_lock_lock_with_options();
    downstream = [(_BPSAbstractCombineLatest *)selfCopy downstream];
    [downstream receiveCompletion:completionCopy];

    os_unfair_recursive_lock_unlock();
  }

  else if (!state)
  {
    os_unfair_lock_lock(&selfCopy->_lock);
    if (-[_BPSAbstractCombineLatest finished](selfCopy, "finished") || (-[_BPSAbstractCombineLatest setFinishCount:](selfCopy, "setFinishCount:", -[_BPSAbstractCombineLatest finishCount](selfCopy, "finishCount") + 1), [MEMORY[0x1E695DFB0] null], v9 = objc_claimAutoreleasedReturnValue(), -[_BPSAbstractCombineLatest subscriptions](selfCopy, "subscriptions"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "setObject:atIndexedSubscript:", v9, index), v10, v9, v11 = -[_BPSAbstractCombineLatest finishCount](selfCopy, "finishCount"), v11 != -[_BPSAbstractCombineLatest upstreamCount](selfCopy, "upstreamCount")))
    {
      os_unfair_lock_unlock(&selfCopy->_lock);
    }

    else
    {
      [(_BPSAbstractCombineLatest *)selfCopy setFinished:1];
      if ([(_BPSAbstractCombineLatest *)selfCopy upstreamCount])
      {
        v12 = 0;
        do
        {
          null3 = [MEMORY[0x1E695DFB0] null];
          buffers2 = [(_BPSAbstractCombineLatest *)selfCopy buffers];
          [buffers2 setObject:null3 atIndexedSubscript:v12];

          ++v12;
        }

        while (v12 < [(_BPSAbstractCombineLatest *)selfCopy upstreamCount]);
      }

      os_unfair_lock_unlock(&selfCopy->_lock);
      os_unfair_recursive_lock_lock_with_options();
      downstream2 = [(_BPSAbstractCombineLatest *)selfCopy downstream];
      [downstream2 receiveCompletion:completionCopy];

      os_unfair_recursive_lock_unlock();
    }
  }
}

- (void)cancel
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_debug_impl(&dword_1C871B000, a2, OS_LOG_TYPE_DEBUG, "%@ - Cancel", &v4, 0xCu);
}

- (void)requestDemand:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)receiveSubscription:atIndex:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)receiveInput:atIndex:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)receiveInput:atIndex:.cold.2()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end