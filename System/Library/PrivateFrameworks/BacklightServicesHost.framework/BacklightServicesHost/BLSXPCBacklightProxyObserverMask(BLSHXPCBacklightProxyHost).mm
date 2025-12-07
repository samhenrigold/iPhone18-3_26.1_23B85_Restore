@interface BLSXPCBacklightProxyObserverMask(BLSHXPCBacklightProxyHost)
- (uint64_t)noActivatingMask;
- (uint64_t)noPerformingEventMask;
@end

@implementation BLSXPCBacklightProxyObserverMask(BLSHXPCBacklightProxyHost)

- (uint64_t)noActivatingMask
{
  v3 = objc_opt_class();
  isObservingDidCompleteUpdateToState = [self isObservingDidCompleteUpdateToState];
  isObservingEventsArray = [self isObservingEventsArray];
  isObservingDidChangeAlwaysOnEnabled = [self isObservingDidChangeAlwaysOnEnabled];
  isObservingPerformingEvent = [self isObservingPerformingEvent];

  return [v3 maskForObservingDidCompleteUpdateToState:isObservingDidCompleteUpdateToState observingEventsArray:isObservingEventsArray didChangeAlwaysOnEnabled:isObservingDidChangeAlwaysOnEnabled activatingWithEvent:0 deactivatingWithEvent:0 performingEvent:isObservingPerformingEvent];
}

- (uint64_t)noPerformingEventMask
{
  v3 = objc_opt_class();
  isObservingDidCompleteUpdateToState = [self isObservingDidCompleteUpdateToState];
  isObservingEventsArray = [self isObservingEventsArray];
  isObservingDidChangeAlwaysOnEnabled = [self isObservingDidChangeAlwaysOnEnabled];
  isObservingActivatingWithEvent = [self isObservingActivatingWithEvent];
  isObservingDeactivatingWithEvent = [self isObservingDeactivatingWithEvent];

  return [v3 maskForObservingDidCompleteUpdateToState:isObservingDidCompleteUpdateToState observingEventsArray:isObservingEventsArray didChangeAlwaysOnEnabled:isObservingDidChangeAlwaysOnEnabled activatingWithEvent:isObservingActivatingWithEvent deactivatingWithEvent:isObservingDeactivatingWithEvent performingEvent:0];
}

@end