@interface _BPSMerged
- (_BPSMerged)initWithDownstream:(id)downstream count:(int64_t)count;
- (id)applyDownstreamWhileLocked:(BOOL)locked apply:(id)apply;
- (id)newBookmark;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)input atIndex:(int64_t)index;
- (void)cancel;
- (void)receiveCompletion:(id)completion atIndex:(int64_t)index;
- (void)receiveSubscription:(id)subscription atIndex:(int64_t)index;
- (void)requestDemand:(int64_t)demand;
- (void)updateBookmarksWhenLockedForIndex:(unint64_t)index;
- (void)upstreamSubscriptions;
@end

@implementation _BPSMerged

- (_BPSMerged)initWithDownstream:(id)downstream count:(int64_t)count
{
  downstreamCopy = downstream;
  v23.receiver = self;
  v23.super_class = _BPSMerged;
  v8 = [(_BPSMerged *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_downstream, downstream);
    v9->_count = count;
    v9->_terminated = 0;
    v9->_upstreamFinished = 0;
    v9->_finished = 0;
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    subscriptions = v9->_subscriptions;
    v9->_subscriptions = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    upstreamBookmarks = v9->_upstreamBookmarks;
    v9->_upstreamBookmarks = v12;

    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    buffers = v9->_buffers;
    v9->_buffers = v14;

    v9->_recursive = 0;
    v9->_demand = 0;
    v9->_pending = 0;
    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_downstreamLock = 0;
    if (count >= 1)
    {
      do
      {
        v16 = v9->_subscriptions;
        null = [MEMORY[0x1E695DFB0] null];
        [(NSMutableArray *)v16 addObject:null];

        v18 = v9->_upstreamBookmarks;
        null2 = [MEMORY[0x1E695DFB0] null];
        [(NSMutableArray *)v18 addObject:null2];

        v20 = v9->_buffers;
        null3 = [MEMORY[0x1E695DFB0] null];
        [(NSMutableArray *)v20 addObject:null3];

        --count;
      }

      while (count);
    }
  }

  return v9;
}

- (id)applyDownstreamWhileLocked:(BOOL)locked apply:(id)apply
{
  applyCopy = apply;
  if (!locked)
  {
    os_unfair_lock_lock(&self->_lock);
  }

  [(_BPSMerged *)self setRecursive:1];
  os_unfair_lock_unlock(&self->_lock);
  os_unfair_recursive_lock_lock_with_options();
  downstream = [(_BPSMerged *)self downstream];
  v8 = applyCopy[2](applyCopy, downstream);

  os_unfair_recursive_lock_unlock();
  os_unfair_lock_lock(&self->_lock);
  [(_BPSMerged *)self setRecursive:0];
  if (!locked)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return v8;
}

- (void)receiveCompletion:(id)completion atIndex:(int64_t)index
{
  v85 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  selfCopy = self;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v82 = objc_opt_class();
    v83 = 2048;
    indexCopy = index;
    v9 = v82;
    _os_log_impl(&dword_1C871B000, v8, OS_LOG_TYPE_INFO, "%@ - completion at index %ld", buf, 0x16u);
  }

  state = [completionCopy state];
  if (!state)
  {
    os_unfair_lock_lock(&selfCopy->_lock);
    [(_BPSMerged *)selfCopy setUpstreamFinished:[(_BPSMerged *)selfCopy upstreamFinished]+ 1];
    [(_BPSMerged *)selfCopy updateBookmarksWhenLockedForIndex:index];
    null = [MEMORY[0x1E695DFB0] null];
    subscriptions = [(_BPSMerged *)selfCopy subscriptions];
    [subscriptions setObject:null atIndexedSubscript:index];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    buffers = [(_BPSMerged *)selfCopy buffers];
    v37 = [buffers countByEnumeratingWithState:&v68 objects:v79 count:16];
    if (v37)
    {
      v38 = *v69;
      while (2)
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v69 != v38)
          {
            objc_enumerationMutation(buffers);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            LOBYTE(v37) = 1;
            goto LABEL_32;
          }
        }

        v37 = [buffers countByEnumeratingWithState:&v68 objects:v79 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }
    }

LABEL_32:

    upstreamFinished = [(_BPSMerged *)selfCopy upstreamFinished];
    v41 = [(_BPSMerged *)selfCopy count];
    if ((v37 & 1) == 0 && upstreamFinished == v41)
    {
      [(_BPSMerged *)selfCopy setFinished:1];
      subscriptions2 = [(_BPSMerged *)selfCopy subscriptions];
      v43 = [subscriptions2 copy];

      subscriptions3 = [(_BPSMerged *)selfCopy subscriptions];
      v45 = [subscriptions3 count];

      if (v45)
      {
        v46 = 0;
        do
        {
          null2 = [MEMORY[0x1E695DFB0] null];
          subscriptions4 = [(_BPSMerged *)selfCopy subscriptions];
          [subscriptions4 setObject:null2 atIndexedSubscript:v46];

          ++v46;
          subscriptions5 = [(_BPSMerged *)selfCopy subscriptions];
          v50 = [subscriptions5 count];
        }

        while (v46 < v50);
      }

      buffers2 = [(_BPSMerged *)selfCopy buffers];
      v52 = [buffers2 count];

      if (v52)
      {
        v53 = 0;
        do
        {
          null3 = [MEMORY[0x1E695DFB0] null];
          buffers3 = [(_BPSMerged *)selfCopy buffers];
          [buffers3 setObject:null3 atIndexedSubscript:v53];

          ++v53;
          buffers4 = [(_BPSMerged *)selfCopy buffers];
          v57 = [buffers4 count];
        }

        while (v53 < v57);
      }

      os_unfair_lock_unlock(&selfCopy->_lock);
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v27 = v43;
      v58 = [v27 countByEnumeratingWithState:&v64 objects:v78 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v65;
        do
        {
          for (j = 0; j != v59; ++j)
          {
            if (*v65 != v60)
            {
              objc_enumerationMutation(v27);
            }

            v62 = *(*(&v64 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [v62 cancel];
            }
          }

          v59 = [v27 countByEnumeratingWithState:&v64 objects:v78 count:16];
        }

        while (v59);
      }

      v63 = [(_BPSMerged *)selfCopy applyDownstreamWhileLocked:0 apply:&__block_literal_global_0];
      goto LABEL_50;
    }

LABEL_51:
    os_unfair_lock_unlock(&selfCopy->_lock);
    goto LABEL_52;
  }

  if (state == 1)
  {
    os_unfair_lock_lock(&selfCopy->_lock);
    if (![(_BPSMerged *)selfCopy terminated])
    {
      [(_BPSMerged *)selfCopy setTerminated:1];
      subscriptions6 = [(_BPSMerged *)selfCopy subscriptions];
      v12 = [subscriptions6 copy];

      subscriptions7 = [(_BPSMerged *)selfCopy subscriptions];
      v14 = [subscriptions7 count];

      if (v14)
      {
        v15 = 0;
        do
        {
          [(_BPSMerged *)selfCopy updateBookmarksWhenLockedForIndex:v15];
          null4 = [MEMORY[0x1E695DFB0] null];
          subscriptions8 = [(_BPSMerged *)selfCopy subscriptions];
          [subscriptions8 setObject:null4 atIndexedSubscript:v15];

          ++v15;
          subscriptions9 = [(_BPSMerged *)selfCopy subscriptions];
          v19 = [subscriptions9 count];
        }

        while (v15 < v19);
      }

      buffers5 = [(_BPSMerged *)selfCopy buffers];
      v21 = [buffers5 count];

      if (v21)
      {
        v22 = 0;
        do
        {
          null5 = [MEMORY[0x1E695DFB0] null];
          buffers6 = [(_BPSMerged *)selfCopy buffers];
          [buffers6 setObject:null5 atIndexedSubscript:v22];

          ++v22;
          buffers7 = [(_BPSMerged *)selfCopy buffers];
          v26 = [buffers7 count];
        }

        while (v22 < v26);
      }

      os_unfair_lock_unlock(&selfCopy->_lock);
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v27 = v12;
      v28 = [v27 countByEnumeratingWithState:&v74 objects:v80 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v75;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v75 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v74 + 1) + 8 * k);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [v32 cancel];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v74 objects:v80 count:16];
        }

        while (v29);
      }

      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __40___BPSMerged_receiveCompletion_atIndex___block_invoke;
      v72[3] = &unk_1E8320CA8;
      v73 = completionCopy;
      v33 = [(_BPSMerged *)selfCopy applyDownstreamWhileLocked:0 apply:v72];

LABEL_50:
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_52:
}

- (int64_t)receiveInput:(id)input atIndex:(int64_t)index
{
  inputCopy = input;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSMerged *)selfCopy demand]== 0x7FFFFFFFFFFFFFFFLL)
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __35___BPSMerged_receiveInput_atIndex___block_invoke;
    v25[3] = &unk_1E8320CA8;
    v26 = inputCopy;
    v9 = [(_BPSMerged *)selfCopy applyDownstreamWhileLocked:0 apply:v25];
    integerValue = [v9 integerValue];

    v11 = v26;
LABEL_5:

    goto LABEL_6;
  }

  if ([(_BPSMerged *)selfCopy demand]>= 1)
  {
    [(_BPSMerged *)selfCopy setDemand:[(_BPSMerged *)selfCopy demand]- 1];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __35___BPSMerged_receiveInput_atIndex___block_invoke_2;
    v23 = &unk_1E8320CA8;
    v24 = inputCopy;
    integerValue = 1;
    v12 = [(_BPSMerged *)selfCopy applyDownstreamWhileLocked:1 apply:&v20];
    integerValue2 = [v12 integerValue];

    [(_BPSMerged *)selfCopy setDemand:[(_BPSMerged *)selfCopy pending]+ [(_BPSMerged *)selfCopy demand]+ integerValue2];
    [(_BPSMerged *)selfCopy setPending:0];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v11 = v24;
    goto LABEL_5;
  }

  buffers = [(_BPSMerged *)selfCopy buffers];
  v16 = [buffers objectAtIndexedSubscript:index];
  null = [MEMORY[0x1E695DFB0] null];
  v18 = [v16 isEqual:null];

  if ((v18 & 1) == 0)
  {
    [_BPSMerged receiveInput:a2 atIndex:selfCopy];
  }

  buffers2 = [(_BPSMerged *)selfCopy buffers];
  [buffers2 setObject:inputCopy atIndexedSubscript:index];

  os_unfair_lock_unlock(&selfCopy->_lock);
  integerValue = 0;
LABEL_6:

  return integerValue;
}

- (void)receiveSubscription:(id)subscription atIndex:(int64_t)index
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  subscriptions = [(_BPSMerged *)self subscriptions];
  v7 = [subscriptions objectAtIndexedSubscript:index];
  null = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:null];

  if (v9)
  {
    subscriptions2 = [(_BPSMerged *)self subscriptions];
    [subscriptions2 setObject:subscriptionCopy atIndexedSubscript:index];

    demand = [(_BPSMerged *)self demand];
    os_unfair_lock_unlock(&self->_lock);
    if (![(_BPSMerged *)self terminated])
    {
      if (demand == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = 1;
      }

      [subscriptionCopy requestDemand:v12];
      goto LABEL_9;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  [subscriptionCopy cancel];
LABEL_9:
}

- (void)requestDemand:(int64_t)demand
{
  v109 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSMerged *)selfCopy terminated])
  {
    goto LABEL_2;
  }

  finished = [(_BPSMerged *)selfCopy finished];
  if (demand < 1 || finished || [(_BPSMerged *)selfCopy demand]== 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  if ([(_BPSMerged *)selfCopy recursive])
  {
    [(_BPSMerged *)selfCopy setPending:[(_BPSMerged *)selfCopy pending]+ demand];
LABEL_2:
    os_unfair_lock_unlock(&selfCopy->_lock);
    goto LABEL_3;
  }

  if (demand == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(_BPSMerged *)selfCopy setDemand:0x7FFFFFFFFFFFFFFFLL];
    buffers = [(_BPSMerged *)selfCopy buffers];
    buffers2 = [(_BPSMerged *)selfCopy buffers];
    v8 = [buffers2 count];

    if (v8)
    {
      v9 = 0;
      do
      {
        null = [MEMORY[0x1E695DFB0] null];
        buffers3 = [(_BPSMerged *)selfCopy buffers];
        [buffers3 setObject:null atIndexedSubscript:v9];

        ++v9;
        buffers4 = [(_BPSMerged *)selfCopy buffers];
        v13 = [buffers4 count];
      }

      while (v9 < v13);
    }

    upstreamFinished = [(_BPSMerged *)selfCopy upstreamFinished];
    v76 = [(_BPSMerged *)selfCopy count];
    subscriptions = [(_BPSMerged *)selfCopy subscriptions];
    v14 = selfCopy;
    os_unfair_lock_unlock(&selfCopy->_lock);
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = buffers;
    v15 = [obj countByEnumeratingWithState:&v100 objects:v108 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v101;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v101 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v100 + 1) + 8 * i);
          null2 = [MEMORY[0x1E695DFB0] null];
          v21 = [v19 isEqual:null2];

          if ((v21 & 1) == 0)
          {
            v99[0] = MEMORY[0x1E69E9820];
            v99[1] = 3221225472;
            v99[2] = __28___BPSMerged_requestDemand___block_invoke;
            v99[3] = &unk_1E8320CF0;
            v99[4] = v19;
            v22 = [(_BPSMerged *)v14 applyDownstreamWhileLocked:0 apply:v99];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v100 objects:v108 count:16];
      }

      while (v16);
    }

    if (upstreamFinished == v76)
    {
      selfCopy = v14;
      v23 = [(_BPSMerged *)v14 applyDownstreamWhileLocked:0 apply:&__block_literal_global_11];
    }

    else
    {
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v58 = subscriptions;
      v59 = [v58 countByEnumeratingWithState:&v95 objects:v107 count:16];
      selfCopy = v14;
      if (v59)
      {
        v60 = v59;
        v61 = *v96;
        do
        {
          for (j = 0; j != v60; ++j)
          {
            if (*v96 != v61)
            {
              objc_enumerationMutation(v58);
            }

            v63 = *(*(&v95 + 1) + 8 * j);
            null3 = [MEMORY[0x1E695DFB0] null];
            v65 = [v63 isEqual:null3];

            if ((v65 & 1) == 0)
            {
              [v63 requestDemand:0x7FFFFFFFFFFFFFFFLL];
            }
          }

          v60 = [v58 countByEnumeratingWithState:&v95 objects:v107 count:16];
        }

        while (v60);
      }
    }
  }

  else
  {
    [(_BPSMerged *)selfCopy setDemand:[(_BPSMerged *)selfCopy demand]+ demand];
    v24 = MEMORY[0x1E695E0F0];
    v25 = [MEMORY[0x1E695E0F0] mutableCopy];
    v26 = [v24 mutableCopy];
    buffers5 = [(_BPSMerged *)selfCopy buffers];
    v28 = [buffers5 count];

    if (v28)
    {
      v29 = 0;
      do
      {
        if (![(_BPSMerged *)selfCopy demand])
        {
          break;
        }

        buffers6 = [(_BPSMerged *)selfCopy buffers];
        v31 = [buffers6 objectAtIndexedSubscript:v29];

        null4 = [MEMORY[0x1E695DFB0] null];
        v33 = [v31 isEqual:null4];

        if ((v33 & 1) == 0)
        {
          [(_BPSMerged *)selfCopy setDemand:[(_BPSMerged *)selfCopy demand]- 1];
          [v25 addObject:v31];
          subscriptions2 = [(_BPSMerged *)selfCopy subscriptions];
          v35 = [subscriptions2 objectAtIndexedSubscript:v29];
          [v26 addObject:v35];
        }

        ++v29;
        buffers7 = [(_BPSMerged *)selfCopy buffers];
        v37 = [buffers7 count];
      }

      while (v29 < v37);
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    buffers8 = [(_BPSMerged *)selfCopy buffers];
    v39 = [buffers8 countByEnumeratingWithState:&v91 objects:v106 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v92;
      while (2)
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v92 != v41)
          {
            objc_enumerationMutation(buffers8);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v43 = 0;
            goto LABEL_40;
          }
        }

        v40 = [buffers8 countByEnumeratingWithState:&v91 objects:v106 count:16];
        if (v40)
        {
          continue;
        }

        break;
      }
    }

    v43 = 1;
LABEL_40:
    v79 = v26;

    upstreamFinished2 = [(_BPSMerged *)selfCopy upstreamFinished];
    if (upstreamFinished2 == [(_BPSMerged *)selfCopy count])
    {
      v45 = v43;
    }

    else
    {
      v45 = 0;
    }

    v77 = v45;
    if (v45 == 1)
    {
      [(_BPSMerged *)selfCopy setFinished:1];
    }

    v46 = selfCopy;
    os_unfair_lock_unlock(&selfCopy->_lock);
    v47 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v48 = v25;
    v49 = [v48 countByEnumeratingWithState:&v87 objects:v105 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v88;
      v47 = 0;
      do
      {
        for (m = 0; m != v50; ++m)
        {
          if (*v88 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v87 + 1) + 8 * m);
          v86[0] = MEMORY[0x1E69E9820];
          v86[1] = 3221225472;
          v86[2] = __28___BPSMerged_requestDemand___block_invoke_3;
          v86[3] = &unk_1E8320CA8;
          v86[4] = v53;
          v54 = [(os_unfair_lock_s *)v46 applyDownstreamWhileLocked:0 apply:v86];
          v47 += [v54 integerValue];
        }

        v50 = [v48 countByEnumeratingWithState:&v87 objects:v105 count:16];
      }

      while (v50);
    }

    os_unfair_lock_lock(v46 + 2);
    pending = [(os_unfair_lock_s *)v46 pending];
    [(os_unfair_lock_s *)v46 setPending:0];
    os_unfair_lock_unlock(v46 + 2);
    if (v77)
    {
      v56 = [(os_unfair_lock_s *)v46 applyDownstreamWhileLocked:0 apply:&__block_literal_global_13];
      selfCopy = v46;
      v57 = v79;
    }

    else
    {
      v66 = pending + v47;
      v67 = pending + v47 < 1;
      selfCopy = v46;
      if (!v67)
      {
        os_unfair_lock_lock(v46 + 2);
        [(os_unfair_lock_s *)v46 setDemand:[(os_unfair_lock_s *)v46 demand]+ v66];
        os_unfair_lock_unlock(v46 + 2);
      }

      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v57 = v79;
      v68 = v79;
      v69 = [v68 countByEnumeratingWithState:&v82 objects:v104 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v83;
        do
        {
          for (n = 0; n != v70; ++n)
          {
            if (*v83 != v71)
            {
              objc_enumerationMutation(v68);
            }

            v73 = *(*(&v82 + 1) + 8 * n);
            null5 = [MEMORY[0x1E695DFB0] null];
            v75 = [v73 isEqual:null5];

            if ((v75 & 1) == 0)
            {
              [v73 requestDemand:1];
            }
          }

          v70 = [v68 countByEnumeratingWithState:&v82 objects:v104 count:16];
        }

        while (v70);
      }
    }
  }

LABEL_3:
}

- (void)cancel
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_debug_impl(&dword_1C871B000, a2, OS_LOG_TYPE_DEBUG, "%@ - cancel", &v4, 0xCu);
}

- (id)upstreamSubscriptions
{
  subscriptions = [(_BPSMerged *)self subscriptions];

  if (subscriptions)
  {
    subscriptions2 = [(_BPSMerged *)self subscriptions];
  }

  else
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_BPSMerged *)self upstreamSubscriptions];
    }

    subscriptions2 = MEMORY[0x1E695E0F0];
  }

  return subscriptions2;
}

- (void)updateBookmarksWhenLockedForIndex:(unint64_t)index
{
  subscriptions = [(_BPSMerged *)self subscriptions];
  v6 = [subscriptions objectAtIndexedSubscript:index];

  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:null];

  if ((v8 & 1) == 0)
  {
    if ([v6 conformsToProtocol:&unk_1F4871E60])
    {
      v9 = v6;
      newBookmark = [v9 newBookmark];
      if (newBookmark)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
        v12 = [newBookmark isEqual:null2];

        if ((v12 & 1) == 0)
        {
          [(NSMutableArray *)self->_upstreamBookmarks setObject:newBookmark atIndexedSubscript:index];
        }
      }
    }

    else
    {
      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(_BPSMerged *)v6 updateBookmarksWhenLockedForIndex:v13];
      }
    }
  }
}

- (id)newBookmark
{
  v3 = [BMBookmarkNode alloc];
  upstreamBookmarks = self->_upstreamBookmarks;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(BMBookmarkNode *)v3 initWithValue:0 upstreams:upstreamBookmarks name:v6];

  return v7;
}

- (void)receiveInput:(uint64_t)a1 atIndex:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSMerge.m" lineNumber:181 description:@"Expecting buffer to be null"];
}

- (void)upstreamSubscriptions
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&dword_1C871B000, a2, OS_LOG_TYPE_ERROR, "%@ - upstreamSubscriptions are nil", &v4, 0xCu);
}

- (void)updateBookmarksWhenLockedForIndex:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C871B000, a2, OS_LOG_TYPE_ERROR, "Subscription %@ could not create bookmark", &v2, 0xCu);
}

@end