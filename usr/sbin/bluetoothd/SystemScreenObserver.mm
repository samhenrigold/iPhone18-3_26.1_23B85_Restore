@interface SystemScreenObserver
- (SystemScreenObserver)init;
- (void)activateWithSystemMonitor:(id)monitor;
- (void)dealloc;
- (void)invalidate;
- (void)screenStateChanged:(BOOL)changed;
@end

@implementation SystemScreenObserver

- (SystemScreenObserver)init
{
  v3.receiver = self;
  v3.super_class = SystemScreenObserver;
  result = [(SystemScreenObserver *)&v3 init];
  if (result)
  {
    result->_screenUndimmedChangeNotifyToken = -1;
  }

  return result;
}

- (void)dealloc
{
  [(SystemScreenObserver *)self invalidate];
  v3.receiver = self;
  v3.super_class = SystemScreenObserver;
  [(SystemScreenObserver *)&v3 dealloc];
}

- (void)activateWithSystemMonitor:(id)monitor
{
  monitorCopy = monitor;
  if (self->_screenUndimmedChangeNotifyToken == -1)
  {
    inited = objc_initWeak(&location, self);
    v8 = *(sub_100017F4C(inited, v7) + 8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1004A2084;
    handler[3] = &unk_100AF8888;
    v9 = v8;
    objc_copyWeak(&v17, &location);
    notify_register_dispatch("com.apple.springboardservices.eventobserver.internalSBSEventObserverEventUndimmed", &self->_screenUndimmedChangeNotifyToken, v9, handler);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  objc_storeStrong(&self->_systemMonitor, monitor);
  screenOn = [monitorCopy screenOn];
  v11 = screenOn;
  v13 = sub_100017F4C(screenOn, v12);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1004A2124;
  v14[3] = &unk_100AE1750;
  v14[4] = self;
  v15 = v11;
  sub_10000CA94(v13, v14);
}

- (void)screenStateChanged:(BOOL)changed
{
  changedCopy = changed;
  v5 = sub_100017F4C(self, a2);
  dispatch_assert_queue_V2(*(v5 + 8));
  v6 = sub_100017E6C();
  if ([(SystemScreenObserver *)self screenOn]!= changedCopy)
  {
    [(SystemScreenObserver *)self setScreenOn:changedCopy];
    if (v6)
    {

      sub_1000A3784(v6, changedCopy);
    }
  }
}

- (void)invalidate
{
  [(SystemScreenObserver *)self setSystemMonitor:0];
  screenUndimmedChangeNotifyToken = self->_screenUndimmedChangeNotifyToken;
  if (screenUndimmedChangeNotifyToken != -1)
  {
    notify_cancel(screenUndimmedChangeNotifyToken);
    self->_screenUndimmedChangeNotifyToken = -1;
  }
}

@end