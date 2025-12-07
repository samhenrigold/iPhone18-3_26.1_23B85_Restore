@interface GEOLogMsgEventUserAction
- (GEOLogMsgEventUserAction)init;
- (int)userActionEventAction;
@end

@implementation GEOLogMsgEventUserAction

- (GEOLogMsgEventUserAction)init
{
  v6.receiver = self;
  v6.super_class = GEOLogMsgEventUserAction;
  v2 = [(GEOLogMsgEventUserAction *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (int)userActionEventAction
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((flags & 2) != 0)
  {
    return self->_userActionEventAction;
  }

  else
  {
    return 0;
  }
}

@end