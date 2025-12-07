@interface NUReachabilityProvider
- (BOOL)isNetworkReachable;
- (NUReachabilityProvider)initWithNetworkReachability:(id)reachability;
- (void)addReachabilityObserver:(id)observer;
- (void)networkReachabilityDidChange:(id)change;
- (void)removeReachabilityObserver:(id)observer;
@end

@implementation NUReachabilityProvider

- (NUReachabilityProvider)initWithNetworkReachability:(id)reachability
{
  reachabilityCopy = reachability;
  v10.receiver = self;
  v10.super_class = NUReachabilityProvider;
  v6 = [(NUReachabilityProvider *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v6->_observers;
    v6->_observers = v7;

    objc_storeStrong(&v6->_networkReachability, reachability);
    [reachabilityCopy addObserver:v6];
  }

  return v6;
}

- (BOOL)isNetworkReachable
{
  networkReachability = [(NUReachabilityProvider *)self networkReachability];
  isNetworkReachable = [networkReachability isNetworkReachable];

  return isNetworkReachable;
}

- (void)addReachabilityObserver:(id)observer
{
  observerCopy = observer;
  observers = [(NUReachabilityProvider *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeReachabilityObserver:(id)observer
{
  observerCopy = observer;
  observers = [(NUReachabilityProvider *)self observers];
  [observers removeObject:observerCopy];
}

- (void)networkReachabilityDidChange:(id)change
{
  v16 = *MEMORY[0x277D85DE8];
  isNetworkReachable = [change isNetworkReachable];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(NUReachabilityProvider *)self observers];
  v6 = [observers copy];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) reachabilityChanged:isNetworkReachable];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end