@interface BPSBufferInner
- (BPSBufferInner)initWithDownstream:(id)downstream size:(unint64_t)size prefetch:(unint64_t)prefetch whenFull:(unint64_t)full;
- (id)_lockedPopWithDemand:(int64_t)demand;
- (id)newBookmark;
- (id)upstreamSubscriptions;
- (int64_t)_drain;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
- (void)requestDemand:(int64_t)demand;
@end

@implementation BPSBufferInner

- (BPSBufferInner)initWithDownstream:(id)downstream size:(unint64_t)size prefetch:(unint64_t)prefetch whenFull:(unint64_t)full
{
  downstreamCopy = downstream;
  v19.receiver = self;
  v19.super_class = BPSBufferInner;
  v12 = [(BPSBufferInner *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_downstream, downstream);
    v13->_size = size;
    v13->_prefetch = prefetch;
    v13->_whenFull = full;
    v13->_lock._os_unfair_lock_opaque = 0;
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:size];
    values = v13->_values;
    v13->_values = v14;

    v16 = [[BPSSubscriptionStatus alloc] initWithState:0 subscription:0];
    status = v13->_status;
    v13->_status = v16;
  }

  return v13;
}

- (void)requestDemand:(int64_t)demand
{
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1)
  {
    subscription = [(BPSSubscriptionStatus *)selfCopy->_status subscription];
    selfCopy->_downstreamDemand += demand;
    recursion = selfCopy->_recursion;
    os_unfair_lock_unlock(&selfCopy->_lock);
    if (!recursion)
    {
      _drain = [(BPSBufferInner *)selfCopy _drain];
      if (_drain >= 1)
      {
        [subscription requestDemand:_drain];
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }
}

- (void)cancel
{
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1)
  {
    subscription = [(BPSSubscriptionStatus *)selfCopy->_status subscription];
    v3 = +[BPSSubscriptionStatus terminal];
    status = selfCopy->_status;
    selfCopy->_status = v3;

    v5 = objc_opt_new();
    values = selfCopy->_values;
    selfCopy->_values = v5;

    os_unfair_lock_unlock(&selfCopy->_lock);
    [subscription cancel];
  }

  else
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSSubscriptionStatus *)self->_status state])
  {
    os_unfair_lock_unlock(&self->_lock);
    [subscriptionCopy cancel];
  }

  else
  {
    v4 = [[BPSSubscriptionStatus alloc] initWithState:1 subscription:subscriptionCopy];
    status = self->_status;
    self->_status = v4;

    prefetch = self->_prefetch;
    if (prefetch == 1)
    {
      size = 0x7FFFFFFFFFFFFFFFLL;
    }

    else if (prefetch)
    {
      size = 0;
    }

    else
    {
      size = self->_size;
    }

    os_unfair_lock_unlock(&self->_lock);
    [subscriptionCopy requestDemand:size];
    [(BPSSubscriber *)self->_downstream receiveSubscription:self];
  }
}

- (int64_t)receiveInput:(id)input
{
  inputCopy = input;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1 && [(BPSCompletion *)selfCopy->_terminal state]!= 1)
  {
    if ([(NSMutableArray *)selfCopy->_values count]>= selfCopy->_size)
    {
      whenFull = selfCopy->_whenFull;
      if (!whenFull)
      {
LABEL_11:
        os_unfair_lock_unlock(&selfCopy->_lock);
        _drain = [(BPSBufferInner *)selfCopy _drain];
        goto LABEL_12;
      }

      if (whenFull == 1 && [(NSMutableArray *)selfCopy->_values count])
      {
        [(NSMutableArray *)selfCopy->_values removeObjectAtIndex:0];
      }
    }

    if ([(NSMutableArray *)selfCopy->_values count]< selfCopy->_size)
    {
      [(NSMutableArray *)selfCopy->_values addObject:inputCopy];
    }

    goto LABEL_11;
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  _drain = 0;
LABEL_12:

  return _drain;
}

- (void)receiveCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]!= 1)
  {
    goto LABEL_4;
  }

  if (selfCopy->_terminal)
  {
    v6 = +[BPSSubscriptionStatus terminal];
    status = selfCopy->_status;
    selfCopy->_status = v6;

LABEL_4:
    os_unfair_lock_unlock(&selfCopy->_lock);
    goto LABEL_5;
  }

  objc_storeStrong(&selfCopy->_terminal, completion);
  os_unfair_lock_unlock(&selfCopy->_lock);
  [(BPSBufferInner *)selfCopy _drain];
LABEL_5:
}

- (int64_t)_drain
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = 8;
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSSubscriptionStatus *)self->_status state]== 1)
  {
    v5 = 0;
    v24 = 8;
    while (self->_downstreamDemand)
    {
      if (![(NSMutableArray *)self->_values count]&& self->_terminal)
      {
        v22 = +[BPSSubscriptionStatus terminal];
        status = self->_status;
        self->_status = v22;

        os_unfair_lock_unlock((self + v4));
        [(BPSSubscriber *)self->_downstream receiveCompletion:self->_terminal];
        return v5;
      }

      v6 = [(BPSBufferInner *)self _lockedPopWithDemand:self->_downstreamDemand, v24];
      self->_downstreamDemand -= [v6 count];
      if (![v6 count])
      {
        os_unfair_lock_unlock((self + v4));

        return v5;
      }

      self->_recursion = 1;
      os_unfair_lock_unlock((self + v4));
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v8)
      {
        v9 = v8;
        v25 = v5;
        v10 = 0;
        v11 = *v27;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v3 += [(BPSSubscriber *)self->_downstream receiveInput:*(*(&v26 + 1) + 8 * i)];
          }

          v10 += v9;
          v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v9);
        v13 = v10;
        v5 = v25;
        v4 = v24;
      }

      else
      {
        v13 = 0;
      }

      if (self->_prefetch)
      {
        v13 = 0;
      }

      os_unfair_lock_lock((self + v4));
      self->_recursion = 0;
      if (v3 >= 1)
      {
        self->_downstreamDemand += v3;
      }

      v5 += v13;
      os_unfair_lock_unlock((self + v4));

      os_unfair_lock_lock((self + v4));
      v3 = 0;
      if ([(BPSSubscriptionStatus *)self->_status state]!= 1)
      {
        goto LABEL_23;
      }
    }

    terminal = self->_terminal;
    if (terminal && [(BPSCompletion *)terminal state]== 1)
    {
      v17 = +[BPSSubscriptionStatus terminal];
      v18 = self->_status;
      self->_status = v17;

      os_unfair_lock_unlock((self + v4));
      downstream = self->_downstream;
      error = [(BPSCompletion *)self->_terminal error];
      v21 = [BPSCompletion failureWithError:error];
      [(BPSSubscriber *)downstream receiveCompletion:v21];

      return v5;
    }

    v14 = (self + v4);
  }

  else
  {
    v5 = 0;
LABEL_23:
    v14 = (self + v4);
  }

  os_unfair_lock_unlock(v14);
  return v5;
}

- (id)_lockedPopWithDemand:(int64_t)demand
{
  if (demand == 0x7FFFFFFFFFFFFFFFLL || [(NSMutableArray *)self->_values count]<= demand)
  {
    v7 = self->_values;
    v8 = objc_opt_new();
    values = self->_values;
    self->_values = v8;
  }

  else
  {
    v5 = demand - 1;
    if (demand < 1)
    {
      v7 = 0;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_values subarrayWithRange:0, demand - 1];
      v7 = [v6 mutableCopy];

      [(NSMutableArray *)self->_values removeObjectsInRange:0, v5];
    }
  }

  return v7;
}

- (id)newBookmark
{
  v27 = *MEMORY[0x1E69E9840];
  upstreamSubscriptions = [(BPSBufferInner *)self upstreamSubscriptions];
  v3 = [MEMORY[0x1E695E0F0] mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = upstreamSubscriptions;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 conformsToProtocol:&unk_1F4871E60])
        {
          newBookmark = [v9 newBookmark];
          if (newBookmark)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v11 = __biome_log_for_category();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v25 = v9;
            _os_log_error_impl(&dword_1C871B000, v11, OS_LOG_TYPE_ERROR, "Subscription %@ could not create bookmark", buf, 0xCu);
          }
        }

        newBookmark = [MEMORY[0x1E695DFB0] null];
LABEL_13:
        v12 = newBookmark;
        [v3 addObject:newBookmark];
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  v13 = [BMBookmarkNode alloc];
  values = self->_values;
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [(BMBookmarkNode *)v13 initWithValue:values upstreams:v3 name:v16];

  return v17;
}

- (id)upstreamSubscriptions
{
  v6[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSSubscriptionStatus *)self->_status state]== 1)
  {
    subscription = [(BPSSubscriptionStatus *)self->_status subscription];
    os_unfair_lock_unlock(&self->_lock);
    v6[0] = subscription;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

@end