@interface LSDatabaseGetNoServerLock
@end

@implementation LSDatabaseGetNoServerLock

double ___LSDatabaseGetNoServerLock_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [__LSDefaultsGetSharedInstance(a1 a2)];
  if ((v2 & 1) == 0 && ([__LSDefaultsGetSharedInstance(v2 v3)] & 1) == 0)
  {
    operator new();
  }

  return result;
}

@end