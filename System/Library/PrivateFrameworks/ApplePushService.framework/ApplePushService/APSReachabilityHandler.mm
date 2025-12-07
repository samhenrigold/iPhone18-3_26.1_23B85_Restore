@interface APSReachabilityHandler
- (APSReachabilityHandler)initWithReachabilityHost:(id)host reachabilityBlock:(id)block;
- (unsigned)currentFlags;
- (void)disable;
- (void)enable;
- (void)noteReachabilityChange:(unsigned int)change;
- (void)raiseReachabilityChange;
@end

@implementation APSReachabilityHandler

- (APSReachabilityHandler)initWithReachabilityHost:(id)host reachabilityBlock:(id)block
{
  hostCopy = host;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = APSReachabilityHandler;
  v9 = [(APSReachabilityHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reachabilityHost, host);
    v11 = objc_retainBlock(blockCopy);
    reachabilityBlock = v10->_reachabilityBlock;
    v10->_reachabilityBlock = v11;
  }

  return v10;
}

- (unsigned)currentFlags
{
  flags = 0;
  SCNetworkReachabilityGetFlags(self->_connectionReachability, &flags);
  return flags;
}

- (void)enable
{
  if (!self->_connectionReachability)
  {
    v9 = v2;
    v10 = v3;
    v5 = SCNetworkReachabilityCreateWithName(kCFAllocatorDefault, [(NSString *)self->_reachabilityHost UTF8String]);
    self->_connectionReachability = v5;
    v8.version = 0;
    memset(&v8.retain, 0, 24);
    v8.info = self;
    SCNetworkReachabilitySetCallback(v5, sub_100085658, &v8);
    connectionReachability = self->_connectionReachability;
    v7 = +[NSRunLoop currentRunLoop];
    SCNetworkReachabilityScheduleWithRunLoop(connectionReachability, [v7 getCFRunLoop], NSDefaultRunLoopMode);

    SCNetworkReachabilityGetFlags(self->_connectionReachability, &self->_lastReachabilityFlags);
  }
}

- (void)disable
{
  connectionReachability = self->_connectionReachability;
  if (connectionReachability)
  {
    v4 = +[NSRunLoop currentRunLoop];
    SCNetworkReachabilityUnscheduleFromRunLoop(connectionReachability, [v4 getCFRunLoop], NSDefaultRunLoopMode);

    CFRelease(self->_connectionReachability);
    self->_connectionReachability = 0;
  }
}

- (void)raiseReachabilityChange
{
  flags = 0;
  self->_pendingReachabilityChange = 0;
  SCNetworkReachabilityGetFlags(self->_connectionReachability, &flags);
  [(APSReachabilityHandler *)self noteReachabilityChange:flags];
}

- (void)noteReachabilityChange:(unsigned int)change
{
  v3 = *&change;
  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  lastReachabilityFlags = self->_lastReachabilityFlags;
  v8 = +[APSLog courier];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (lastReachabilityFlags == v3)
  {
    if (v9)
    {
      *buf = 138412546;
      selfCopy4 = self;
      v19 = 1024;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: network reachability hasn't changed, still 0x%02x", buf, 0x12u);
    }
  }

  else
  {
    if (v9)
    {
      v10 = self->_lastReachabilityFlags;
      *buf = 138412802;
      selfCopy4 = self;
      v19 = 1024;
      v20 = v3;
      v21 = 1024;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: network reachability changed to 0x%02x (from 0x%02x)", buf, 0x18u);
    }

    self->_lastReachabilityFlags = v3;
  }

  if (self->_pendingReachabilityChange)
  {
    v11 = +[APSLog courier];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy4 = self;
      v19 = 1024;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Rate limiting network reachability change events, ignoring 0x%02x", buf, 0x12u);
    }
  }

  else
  {
    v12 = v6 - self->_lastReachabilityChangeHandled;
    if (v12 >= 3.0 || v12 < 0.0)
    {
      self->_lastReachabilityChangeHandled = v6;
      reachabilityBlock = [(APSReachabilityHandler *)self reachabilityBlock];
      reachabilityBlock[2](reachabilityBlock, v3);
    }

    else
    {
      v13 = +[APSLog courier];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: Rate limiting network reachability change events, rescheduling event", buf, 0xCu);
      }

      self->_pendingReachabilityChange = 1;
      v14 = dispatch_time(0, 3000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000859E4;
      block[3] = &unk_100186D90;
      block[4] = self;
      dispatch_after(v14, &_dispatch_main_q, block);
    }
  }
}

@end