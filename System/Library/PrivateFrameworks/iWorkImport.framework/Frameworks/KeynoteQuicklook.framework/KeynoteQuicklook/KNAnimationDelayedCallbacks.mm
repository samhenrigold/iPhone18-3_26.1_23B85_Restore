@interface KNAnimationDelayedCallbacks
- (KNAnimationDelayedCallbacks)init;
- (id)performBlock:(id)block afterDelay:(double)delay;
- (id)performSelector:(SEL)selector onTarget:(id)target withObject:(id)object afterDelay:(double)delay;
- (void)cancelAllCallbacks;
- (void)p_setupCallback:(id)callback;
- (void)pauseAllCallbacks;
- (void)removeCallback:(id)callback;
- (void)resumeAllCallbacks;
@end

@implementation KNAnimationDelayedCallbacks

- (KNAnimationDelayedCallbacks)init
{
  v3 = objc_opt_new();
  delayedCallbacks = self->_delayedCallbacks;
  self->_delayedCallbacks = v3;

  return self;
}

- (void)p_setupCallback:(id)callback
{
  delayedCallbacks = self->_delayedCallbacks;
  callbackCopy = callback;
  [(NSMutableSet *)delayedCallbacks addObject:callbackCopy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_275D7CF64;
  v6[3] = &unk_27A698508;
  v6[4] = self;
  [callbackCopy setCompletionHandler:v6];
  [callbackCopy run];
}

- (id)performBlock:(id)block afterDelay:(double)delay
{
  blockCopy = block;
  v7 = [[KNAnimationDelayedCallback alloc] initWithBlock:blockCopy delay:delay];

  [(KNAnimationDelayedCallbacks *)self p_setupCallback:v7];

  return v7;
}

- (id)performSelector:(SEL)selector onTarget:(id)target withObject:(id)object afterDelay:(double)delay
{
  objectCopy = object;
  targetCopy = target;
  v12 = [[KNAnimationDelayedCallback alloc] initWithTarget:targetCopy selector:selector object:objectCopy delay:delay];

  [(KNAnimationDelayedCallbacks *)self p_setupCallback:v12];

  return v12;
}

- (void)removeCallback:(id)callback
{
  callbackCopy = callback;
  [callbackCopy cancel];
  delayedCallbacks = self->_delayedCallbacks;
  if (delayedCallbacks)
  {
    [(NSMutableSet *)delayedCallbacks removeObject:callbackCopy];
  }
}

- (void)pauseAllCallbacks
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_delayedCallbacks;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) pause];
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)resumeAllCallbacks
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_delayedCallbacks;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) resume];
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)cancelAllCallbacks
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_delayedCallbacks;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_delayedCallbacks removeAllObjects];
}

@end