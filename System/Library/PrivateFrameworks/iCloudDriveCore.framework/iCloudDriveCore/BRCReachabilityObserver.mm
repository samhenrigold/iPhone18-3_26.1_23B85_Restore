@interface BRCReachabilityObserver
- (void)networkReachabilityChanged:(BOOL)changed;
- (void)startObservingNetworkReachabilityChanges;
- (void)stopObservingNetworkReachabilityChanges;
@end

@implementation BRCReachabilityObserver

- (void)startObservingNetworkReachabilityChanges
{
  v3 = +[BRCSystemResourcesManager manager];
  [v3 addReachabilityObserver:self];
}

- (void)stopObservingNetworkReachabilityChanges
{
  v3 = +[BRCSystemResourcesManager manager];
  [v3 removeReachabilityObserver:self];
}

- (void)networkReachabilityChanged:(BOOL)changed
{
  changedCopy = changed;
  v4 = MEMORY[0x22AA4A310](self->_networkReachabilityDidChangeHandler, a2);
  if (v4)
  {
    v5 = v4;
    v4[2](v4, changedCopy);
    v4 = v5;
  }
}

@end