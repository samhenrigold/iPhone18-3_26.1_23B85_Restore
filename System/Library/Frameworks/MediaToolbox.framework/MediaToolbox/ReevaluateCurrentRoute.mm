@interface ReevaluateCurrentRoute
@end

@implementation ReevaluateCurrentRoute

void __airplayRoute_ReevaluateCurrentRoute_block_invoke(uint64_t result)
{
  if (!**(result + 32))
  {
    airplayRoute_pickableRoutesChangedGuts(*(result + 40));
  }
}

@end