@interface PLSandbox
+ (int64_t)checkOperation:(id)operation forPath:(id)path;
@end

@implementation PLSandbox

+ (int64_t)checkOperation:(id)operation forPath:(id)path
{
  operationCopy = operation;
  pathCopy = path;
  if ([self isCurrentProcessInSandbox])
  {
    getpid();
    [operationCopy UTF8String];
    [pathCopy UTF8String];
    v8 = sandbox_check();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end