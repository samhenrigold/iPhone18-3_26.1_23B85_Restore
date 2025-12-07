@interface JSAFoundation
- (JSAFoundation)init;
- (void)_jsTimerFired:(id)fired;
@end

@implementation JSAFoundation

- (JSAFoundation)init
{
  v10.receiver = self;
  v10.super_class = JSAFoundation;
  v2 = [(JSAFoundation *)&v10 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    jsTimers = v2->_jsTimers;
    v2->_jsTimers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("com.apple.iBooks.JSAFoundation", v6);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (void)_jsTimerFired:(id)fired
{
  firedCopy = fired;
  firedCopy = [NSString stringWithFormat:@"%p", firedCopy];
  v6 = self->_jsTimers;
  objc_sync_enter(v6);
  v7 = [(NSMutableDictionary *)self->_jsTimers objectForKey:firedCopy];
  v8 = v7;
  if (v7 && ([v7 isRepeating] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_jsTimers removeObjectForKey:firedCopy];
  }

  objc_sync_exit(v6);

  v10 = JSALog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = firedCopy;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Timer fired: %@: %@", buf, 0x16u);
  }

  if (v8)
  {
    v11 = +[JSABridge sharedInstance];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_DBA0;
    v12[3] = &unk_B27E8;
    v13 = v8;
    [v11 enqueueBlock:v12 file:@"JSAFoundation.m" line:186];
  }
}

@end