@interface _HDMirroredProgress
+ (id)_KVOKeyPaths;
- (void)_update;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _HDMirroredProgress

- (void)_update
{
  if (self)
  {
    os_unfair_lock_lock((self + 128));
    if ([*(self + 120) isCancelled])
    {
      [self cancel];
    }

    else
    {
      if ([*(self + 120) isIndeterminate])
      {
        [self setTotalUnitCount:-1];
        selfCopy2 = self;
        v3 = -1;
      }

      else
      {
        [self setTotalUnitCount:100000];
        [*(self + 120) fractionCompleted];
        v3 = (v4 * 100000.0);
        selfCopy2 = self;
      }

      [selfCopy2 setCompletedUnitCount:v3];
    }

    os_unfair_lock_unlock((self + 128));
  }
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock(&self->_lock);
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = +[_HDMirroredProgress _KVOKeyPaths];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(NSProgress *)self->_originalProgress removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) context:_HDProgressMirrorObserverContext];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v8.receiver = self;
  v8.super_class = _HDMirroredProgress;
  [(_HDMirroredProgress *)&v8 dealloc];
}

+ (id)_KVOKeyPaths
{
  v6[3] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v1 = NSStringFromSelector(sel_fractionCompleted);
  v6[0] = v1;
  v2 = NSStringFromSelector(sel_isIndeterminate);
  v6[1] = v2;
  v3 = NSStringFromSelector(sel_isCancelled);
  v6[2] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];

  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (_HDProgressMirrorObserverContext == context)
  {

    [(_HDMirroredProgress *)self _update];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = _HDMirroredProgress;
    [(_HDMirroredProgress *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end