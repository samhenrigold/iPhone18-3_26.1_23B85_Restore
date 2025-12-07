@interface TSDClockSyncManager
+ (id)sharedClockSyncManager;
- (TSDClockSyncManager)init;
- (id)clockSyncForClockIdentifier:(unint64_t)identifier pid:(int)pid;
- (void)releaseClockSyncForClockIdentifier:(unint64_t)identifier;
@end

@implementation TSDClockSyncManager

+ (id)sharedClockSyncManager
{
  if (qword_100058908 != -1)
  {
    sub_100031BE8();
  }

  v3 = qword_100058910;

  return v3;
}

- (TSDClockSyncManager)init
{
  v6.receiver = self;
  v6.super_class = TSDClockSyncManager;
  v2 = [(TSDClockSyncManager *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    clockSyncs = v2->_clockSyncs;
    v2->_clockSyncs = v3;

    v2->_clockSyncsLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)clockSyncForClockIdentifier:(unint64_t)identifier pid:(int)pid
{
  v4 = *&pid;
  v7 = [NSNumber numberWithUnsignedLongLong:?];
  os_unfair_lock_lock(&self->_clockSyncsLock);
  v8 = [(NSMutableDictionary *)self->_clockSyncs objectForKeyedSubscript:v7];
  if (v8)
  {
    v9 = v8;
    [(TSDClockSync *)v8 addReference];
  }

  else
  {
    v9 = [[TSDClockSync alloc] initWithClockIdentifier:identifier pid:v4];
    if (v9)
    {
      [(NSMutableDictionary *)self->_clockSyncs setObject:v9 forKeyedSubscript:v7];
    }
  }

  os_unfair_lock_unlock(&self->_clockSyncsLock);

  return v9;
}

- (void)releaseClockSyncForClockIdentifier:(unint64_t)identifier
{
  v6 = [NSNumber numberWithUnsignedLongLong:identifier];
  os_unfair_lock_lock(&self->_clockSyncsLock);
  v4 = [(NSMutableDictionary *)self->_clockSyncs objectForKeyedSubscript:v6];
  v5 = v4;
  if (v4 && ![v4 releaseReference])
  {
    [(NSMutableDictionary *)self->_clockSyncs removeObjectForKey:v6];
    [v5 finalizeNotifications];
  }

  os_unfair_lock_unlock(&self->_clockSyncsLock);
}

@end