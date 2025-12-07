@interface GEOPrioritizedTileKeys
- (unsigned)highestPriority;
@end

@implementation GEOPrioritizedTileKeys

- (unsigned)highestPriority
{
  keysAndPriorities = self->_keysAndPriorities;
  v4 = *keysAndPriorities;
  v3 = keysAndPriorities[1];
  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 - 4);
  }
}

@end