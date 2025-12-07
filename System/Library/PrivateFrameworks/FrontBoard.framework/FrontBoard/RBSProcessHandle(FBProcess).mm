@interface RBSProcessHandle(FBProcess)
- (void)fb_canTaskSuspend;
@end

@implementation RBSProcessHandle(FBProcess)

- (void)fb_canTaskSuspend
{
  result = [self isManaged];
  if (result)
  {
    return ([self isDaemon] ^ 1);
  }

  return result;
}

@end