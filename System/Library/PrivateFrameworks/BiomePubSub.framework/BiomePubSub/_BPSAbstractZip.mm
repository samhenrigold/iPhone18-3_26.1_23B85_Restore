@interface _BPSAbstractZip
- (_BPSAbstractZip)initWithDownstream:(id)downstream upstreamCount:(int64_t)count;
- (int64_t)receiveInput:(id)input index:(int64_t)index;
- (void)cancel;
- (void)lockSendCompletion:(id)completion index:(int64_t)index;
- (void)receiveCompletion:(id)completion index:(int64_t)index;
- (void)receiveSubscription:(id)subscription index:(int64_t)index;
- (void)requestDemand:(int64_t)demand;
- (void)resolvePendingDemandAndUnlock;
@end

@implementation _BPSAbstractZip

- (_BPSAbstractZip)initWithDownstream:(id)downstream upstreamCount:(int64_t)count
{
  downstreamCopy = downstream;
  v23.receiver = self;
  v23.super_class = _BPSAbstractZip;
  v7 = [(_BPSAbstractZip *)&v23 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_downstream, downstream);
    v8->_upstreamCount = count;
    v9 = MEMORY[0x1E695E0F0];
    v10 = [MEMORY[0x1E695E0F0] mutableCopy];
    buffers = v8->_buffers;
    v8->_buffers = v10;

    v12 = [v9 mutableCopy];
    upstreamFinished = v8->_upstreamFinished;
    v8->_upstreamFinished = v12;

    v14 = [v9 mutableCopy];
    subscriptions = v8->_subscriptions;
    v8->_subscriptions = v14;

    v8->_lock._os_unfair_lock_opaque = 0;
    v8->_downstreamLock = 0;
    if (count >= 1)
    {
      v16 = MEMORY[0x1E695E110];
      do
      {
        v17 = v8->_subscriptions;
        null = [MEMORY[0x1E695DFB0] null];
        [(NSMutableArray *)v17 addObject:null];

        v19 = v8->_buffers;
        v20 = [v9 mutableCopy];
        [(NSMutableArray *)v19 addObject:v20];

        [(NSMutableArray *)v8->_upstreamFinished addObject:v16];
        --count;
      }

      while (count);
    }
  }

  return v8;
}

- (void)receiveSubscription:(id)subscription index:(int64_t)index
{
  v26 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  if ([(_BPSAbstractZip *)self upstreamCount]<= index)
  {
    [_BPSAbstractZip receiveSubscription:a2 index:self];
  }

  os_unfair_lock_lock(&self->_lock);
  if (-[_BPSAbstractZip cancelled](self, "cancelled") || -[_BPSAbstractZip errored](self, "errored") || -[_BPSAbstractZip finished](self, "finished") || (-[_BPSAbstractZip subscriptions](self, "subscriptions"), v8 = objc_claimAutoreleasedReturnValue(), [v8 objectAtIndexedSubscript:index], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DFB0], "null"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, v8, (v11 & 1) == 0))
  {
    os_unfair_lock_unlock(&self->_lock);
    [subscriptionCopy cancel];
  }

  else
  {
    subscriptions = [(_BPSAbstractZip *)self subscriptions];
    [subscriptions setObject:subscriptionCopy atIndexedSubscript:index];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    subscriptions2 = [(_BPSAbstractZip *)self subscriptions];
    v14 = [subscriptions2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(subscriptions2);
          }

          v18 = *(*(&v21 + 1) + 8 * v17);
          null = [MEMORY[0x1E695DFB0] null];
          LOBYTE(v18) = [v18 isEqual:null];

          if (v18)
          {

            [(_BPSAbstractZip *)self setRecursive:0];
            os_unfair_lock_unlock(&self->_lock);
            goto LABEL_17;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [subscriptions2 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    [(_BPSAbstractZip *)self setRecursive:1];
    os_unfair_lock_unlock(&self->_lock);
    os_unfair_recursive_lock_lock_with_options();
    downstream = [(_BPSAbstractZip *)self downstream];
    [downstream receiveSubscription:self];

    os_unfair_recursive_lock_unlock();
    os_unfair_lock_lock(&self->_lock);
    [(_BPSAbstractZip *)self setRecursive:0];
    [(_BPSAbstractZip *)self resolvePendingDemandAndUnlock];
  }

LABEL_17:
}

- (int64_t)receiveInput:(id)input index:(int64_t)index
{
  v56 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  selfCopy = self;
  if ([(_BPSAbstractZip *)selfCopy upstreamCount]<= index)
  {
    [_BPSAbstractZip receiveInput:a2 index:selfCopy];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSAbstractZip *)selfCopy cancelled]|| [(_BPSAbstractZip *)selfCopy errored]|| [(_BPSAbstractZip *)selfCopy finished])
  {
LABEL_37:
    os_unfair_lock_unlock(&selfCopy->_lock);
LABEL_38:
    v29 = 0;
  }

  else
  {
    buffers = [(_BPSAbstractZip *)selfCopy buffers];
    indexCopy = index;
    v10 = [buffers objectAtIndexedSubscript:index];
    [v10 addObject:inputCopy];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    buffers2 = [(_BPSAbstractZip *)selfCopy buffers];
    v12 = [buffers2 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v51;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v51 != v14)
          {
            objc_enumerationMutation(buffers2);
          }

          if (![*(*(&v50 + 1) + 8 * i) count])
          {

            if ([(_BPSAbstractZip *)selfCopy upstreamCount]>= 1)
            {
              v36 = 0;
              while (1)
              {
                upstreamFinished = [(_BPSAbstractZip *)selfCopy upstreamFinished];
                v38 = [upstreamFinished objectAtIndexedSubscript:v36];

                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && ([v38 BOOLValue])
                {
                  buffers3 = [(_BPSAbstractZip *)selfCopy buffers];
                  v40 = [buffers3 objectAtIndexedSubscript:v36];
                  v41 = [v40 count];

                  if (!v41)
                  {
                    [(_BPSAbstractZip *)selfCopy setFinished:1];
                    v43 = +[BPSCompletion success];
                    [(_BPSAbstractZip *)selfCopy lockSendCompletion:v43 index:indexCopy];

                    goto LABEL_38;
                  }
                }

                else
                {
                }

                if (++v36 >= [(_BPSAbstractZip *)selfCopy upstreamCount])
                {
                  goto LABEL_37;
                }
              }
            }

            goto LABEL_37;
          }
        }

        v13 = [buffers2 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v44 = inputCopy;

    v16 = MEMORY[0x1E695E0F0];
    v17 = [MEMORY[0x1E695E0F0] mutableCopy];
    v18 = [v16 mutableCopy];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    buffers4 = [(_BPSAbstractZip *)selfCopy buffers];
    v20 = [buffers4 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v47;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v47 != v22)
          {
            objc_enumerationMutation(buffers4);
          }

          v24 = *(*(&v46 + 1) + 8 * j);
          v25 = [v24 objectAtIndexedSubscript:0];
          [v24 removeObjectAtIndex:0];
          [v18 addObject:v25];
          v26 = [v24 mutableCopy];
          [v17 addObject:v26];
        }

        v21 = [buffers4 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v21);
    }

    [(_BPSAbstractZip *)selfCopy setBuffers:v17];
    [(_BPSAbstractZip *)selfCopy setRecursive:1];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v27 = [(_BPSAbstractZip *)selfCopy convertValues:v18];
    os_unfair_recursive_lock_lock_with_options();
    downstream = [(_BPSAbstractZip *)selfCopy downstream];
    v29 = [downstream receiveInput:v27];

    os_unfair_recursive_lock_unlock();
    os_unfair_lock_lock(&selfCopy->_lock);
    [(_BPSAbstractZip *)selfCopy setRecursive:0];
    [(_BPSAbstractZip *)selfCopy setPendingDemand:0];
    if (v29 < 1)
    {
      os_unfair_lock_unlock(&selfCopy->_lock);
      v29 = 0;
    }

    else
    {
      subscriptions = [(_BPSAbstractZip *)selfCopy subscriptions];
      v31 = [subscriptions copy];

      os_unfair_lock_unlock(&selfCopy->_lock);
      if ([v31 count] >= 1)
      {
        v32 = 0;
        do
        {
          v33 = [v31 objectAtIndexedSubscript:v32];
          if (indexCopy != v32)
          {
            null = [MEMORY[0x1E695DFB0] null];
            v35 = [v33 isEqual:null];

            if ((v35 & 1) == 0)
            {
              [v33 requestDemand:v29];
            }
          }

          ++v32;
        }

        while (v32 < [v31 count]);
      }
    }

    inputCopy = v44;
  }

  return v29;
}

- (void)receiveCompletion:(id)completion index:(int64_t)index
{
  completionCopy = completion;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSAbstractZip *)selfCopy cancelled]|| [(_BPSAbstractZip *)selfCopy errored]|| [(_BPSAbstractZip *)selfCopy finished])
  {
    goto LABEL_4;
  }

  state = [completionCopy state];
  if (state == 1)
  {
    [(_BPSAbstractZip *)selfCopy setErrored:1];
  }

  else
  {
    if (state)
    {
      goto LABEL_5;
    }

    upstreamFinished = [(_BPSAbstractZip *)selfCopy upstreamFinished];
    [upstreamFinished setObject:MEMORY[0x1E695E118] atIndexedSubscript:index];

    buffers = [(_BPSAbstractZip *)selfCopy buffers];
    v10 = [buffers objectAtIndexedSubscript:index];
    v11 = [v10 count];

    if (v11)
    {
LABEL_4:
      os_unfair_lock_unlock(&selfCopy->_lock);
      goto LABEL_5;
    }

    [(_BPSAbstractZip *)selfCopy setFinished:1];
  }

  [(_BPSAbstractZip *)selfCopy lockSendCompletion:completionCopy index:index];
LABEL_5:
}

- (void)lockSendCompletion:(id)completion index:(int64_t)index
{
  completionCopy = completion;
  subscriptions = [(_BPSAbstractZip *)self subscriptions];
  v6 = [subscriptions copy];

  if ([(_BPSAbstractZip *)self upstreamCount]>= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E695E0F0];
    do
    {
      v9 = [v8 mutableCopy];
      buffers = [(_BPSAbstractZip *)self buffers];
      [buffers setObject:v9 atIndexedSubscript:v7];

      null = [MEMORY[0x1E695DFB0] null];
      subscriptions2 = [(_BPSAbstractZip *)self subscriptions];
      [subscriptions2 setObject:null atIndexedSubscript:v7];

      ++v7;
    }

    while (v7 < [(_BPSAbstractZip *)self upstreamCount]);
  }

  [(_BPSAbstractZip *)self setRecursive:1];
  os_unfair_lock_unlock(&self->_lock);
  if ([v6 count])
  {
    v13 = 0;
    do
    {
      v14 = [v6 objectAtIndexedSubscript:v13];
      if ([v14 conformsToProtocol:&unk_1F4871D30])
      {
        [v14 cancel];
      }

      ++v13;
    }

    while (v13 < [v6 count]);
  }

  os_unfair_recursive_lock_lock_with_options();
  downstream = [(_BPSAbstractZip *)self downstream];
  [downstream receiveCompletion:completionCopy];

  os_unfair_recursive_lock_unlock();
  os_unfair_lock_lock(&self->_lock);
  [(_BPSAbstractZip *)self setRecursive:0];
  [(_BPSAbstractZip *)self resolvePendingDemandAndUnlock];
}

- (void)cancel
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSAbstractZip *)selfCopy cancelled])
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
    subscriptions = [(_BPSAbstractZip *)selfCopy subscriptions];
    v4 = [subscriptions copy];

    [(_BPSAbstractZip *)selfCopy setCancelled:1];
    if ([(_BPSAbstractZip *)selfCopy upstreamCount]>= 1)
    {
      v5 = 0;
      v6 = MEMORY[0x1E695E0F0];
      do
      {
        v7 = [v6 mutableCopy];
        buffers = [(_BPSAbstractZip *)selfCopy buffers];
        [buffers setObject:v7 atIndexedSubscript:v5];

        null = [MEMORY[0x1E695DFB0] null];
        subscriptions2 = [(_BPSAbstractZip *)selfCopy subscriptions];
        [subscriptions2 setObject:null atIndexedSubscript:v5];

        ++v5;
      }

      while (v5 < [(_BPSAbstractZip *)selfCopy upstreamCount]);
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v17 + 1) + 8 * v15);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v16 cancel];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }
}

- (void)resolvePendingDemandAndUnlock
{
  v17 = *MEMORY[0x1E69E9840];
  subscriptions = [(_BPSAbstractZip *)self subscriptions];
  v4 = [subscriptions copy];

  pendingDemand = [(_BPSAbstractZip *)self pendingDemand];
  [(_BPSAbstractZip *)self setPendingDemand:0];
  os_unfair_lock_unlock(&self->_lock);
  if (pendingDemand >= 1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v11 requestDemand:{pendingDemand, v12}];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)requestDemand:(int64_t)demand
{
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (demand <= 0)
  {
    [(_BPSAbstractZip *)a2 requestDemand:selfCopy];
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSAbstractZip *)selfCopy recursive])
  {
    [(_BPSAbstractZip *)selfCopy setPendingDemand:[(_BPSAbstractZip *)selfCopy pendingDemand]+ demand];
LABEL_8:
    os_unfair_lock_unlock(&selfCopy->_lock);
    goto LABEL_9;
  }

  if ([(_BPSAbstractZip *)selfCopy cancelled]|| [(_BPSAbstractZip *)selfCopy errored]|| [(_BPSAbstractZip *)selfCopy finished])
  {
    goto LABEL_8;
  }

  subscriptions = [(_BPSAbstractZip *)selfCopy subscriptions];
  v7 = [subscriptions copy];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v13 requestDemand:{demand, v14}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

LABEL_9:
}

- (void)receiveSubscription:(uint64_t)a1 index:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSZip.m" lineNumber:56 description:@"Index should be less than upstream count"];
}

- (void)receiveInput:(uint64_t)a1 index:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSZip.m" lineNumber:97 description:@"Expecting Index to be less than upstream count"];
}

- (void)requestDemand:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSZip.m" lineNumber:272 description:@"Demand should be greater than 0"];
}

@end