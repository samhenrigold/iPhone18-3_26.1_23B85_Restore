@interface SUCurrentProcess
+ (SUCurrentProcess)default;
- (SUIdleTracker)idleTracker;
@end

@implementation SUCurrentProcess

- (SUIdleTracker)idleTracker
{
  selfCopy = self;
  v3 = CurrentProcess.idleTracker.getter();

  return v3;
}

+ (SUCurrentProcess)default
{
  v2 = static CurrentProcess.default.getter();

  return v2;
}

@end