@interface ClockSessionRefCounter
- (ClockSessionRefCounter)initWithSession:(id)session;
- (int)removeRef:(int)ref;
- (unint64_t)getRef:(int)ref;
- (unint64_t)getRefTotal;
- (void)addRef:(int)ref withCnt:(unint64_t)cnt;
- (void)removeAllRefs:(int)refs;
@end

@implementation ClockSessionRefCounter

- (ClockSessionRefCounter)initWithSession:(id)session
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = ClockSessionRefCounter;
  v6 = [(ClockSessionRefCounter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    v8 = +[NSMutableDictionary dictionary];
    refCntsByPid = v7->_refCntsByPid;
    v7->_refCntsByPid = v8;
  }

  return v7;
}

- (void)addRef:(int)ref withCnt:(unint64_t)cnt
{
  v5 = *&ref;
  refCntsByPid = self->_refCntsByPid;
  v11 = [NSNumber numberWithInt:?];
  v8 = [(NSMutableDictionary *)refCntsByPid objectForKeyedSubscript:?];

  if (!v8)
  {
    v8 = &off_10004F9D8;
  }

  v12 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v8 unsignedLongValue] + cnt);

  v9 = self->_refCntsByPid;
  v10 = [NSNumber numberWithInt:v5];
  [(NSMutableDictionary *)v9 setObject:v12 forKeyedSubscript:v10];
}

- (int)removeRef:(int)ref
{
  v3 = *&ref;
  refCntsByPid = self->_refCntsByPid;
  v6 = [NSNumber numberWithInt:?];
  v7 = [(NSMutableDictionary *)refCntsByPid objectForKeyedSubscript:v6];

  if (v7)
  {
    if ([v7 unsignedLongValue])
    {
      v8 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v7 unsignedLongValue] - 1);

      v9 = self->_refCntsByPid;
      v10 = [NSNumber numberWithInt:v3];
      [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v10];

      if (![v8 unsignedLongValue])
      {
        v11 = self->_refCntsByPid;
        v12 = [NSNumber numberWithInt:v3];
        [(NSMutableDictionary *)v11 removeObjectForKey:v12];
      }

      v13 = 0;
      v7 = v8;
    }

    else
    {
      v13 = -536870199;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002A0BC();
      }
    }
  }

  else
  {
    v13 = -536870206;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002A100();
    }

    v7 = 0;
  }

  return v13;
}

- (void)removeAllRefs:(int)refs
{
  refCntsByPid = self->_refCntsByPid;
  v4 = [NSNumber numberWithInt:*&refs];
  [(NSMutableDictionary *)refCntsByPid removeObjectForKey:?];
}

- (unint64_t)getRef:(int)ref
{
  refCntsByPid = self->_refCntsByPid;
  v4 = [NSNumber numberWithInt:*&ref];
  v5 = [(NSMutableDictionary *)refCntsByPid objectForKeyedSubscript:v4];

  if (v5)
  {
    unsignedLongValue = [v5 unsignedLongValue];
  }

  else
  {
    unsignedLongValue = 0;
  }

  return unsignedLongValue;
}

- (unint64_t)getRefTotal
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_refCntsByPid;
  v3 = 0;
  v4 = [(NSMutableDictionary *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v3 += [*(*(&v8 + 1) + 8 * v6) longValue];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v3;
}

@end