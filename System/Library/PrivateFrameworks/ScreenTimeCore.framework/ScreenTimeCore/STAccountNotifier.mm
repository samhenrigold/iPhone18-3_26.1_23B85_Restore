@interface STAccountNotifier
- (STAccountNotifier)init;
- (void)accountStateMonitorDidUpdate:(id)update initializing:(BOOL)initializing;
- (void)registerObserver:(id)observer;
@end

@implementation STAccountNotifier

- (STAccountNotifier)init
{
  v3.receiver = self;
  v3.super_class = STAccountNotifier;
  return [(STAccountNotifier *)&v3 init];
}

- (void)registerObserver:(id)observer
{
  [(STAccountNotifier *)self setObserver:observer];
  v4 = [[STAccountStateMonitor alloc] initWithDelegate:self];
  [(STAccountNotifier *)self setMonitor:v4];
}

- (void)accountStateMonitorDidUpdate:(id)update initializing:(BOOL)initializing
{
  initializingCopy = initializing;
  updateCopy = update;
  observer = [(STAccountNotifier *)self observer];
  accountState = [updateCopy accountState];

  [observer accountDidUpdateToState:accountState initializing:initializingCopy];
}

@end