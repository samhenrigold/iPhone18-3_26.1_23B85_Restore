@interface SystemInfoDynamic
- (void)systemClockDidChangeHandler;
@end

@implementation SystemInfoDynamic

- (void)systemClockDidChangeHandler
{

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

@end