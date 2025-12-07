@interface GEOMapItemRoutineAttributes
- (int)loiType;
@end

@implementation GEOMapItemRoutineAttributes

- (int)loiType
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 2) != 0)
  {
    return self->_loiType;
  }

  else
  {
    return 0;
  }
}

@end