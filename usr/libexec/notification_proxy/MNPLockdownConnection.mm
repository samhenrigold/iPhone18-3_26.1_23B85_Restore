@interface MNPLockdownConnection
- (MNPLockdownConnection)initWithConnection:(_lockdown_connection *)connection;
- (void)dealloc;
- (void)listen;
- (void)sendMessage:(id)message;
- (void)shutdown;
@end

@implementation MNPLockdownConnection

- (void)dealloc
{
  lockdown_disconnect();
  v3.receiver = self;
  v3.super_class = MNPLockdownConnection;
  [(MNPLockdownConnection *)&v3 dealloc];
}

- (MNPLockdownConnection)initWithConnection:(_lockdown_connection *)connection
{
  v12.receiver = self;
  v12.super_class = MNPLockdownConnection;
  v4 = [(MNPLockdownConnection *)&v12 init];
  if (v4)
  {
    v5 = os_transaction_create();
    transaction = v4->_transaction;
    v4->_transaction = v5;

    v4->_conn = connection;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.mobile.notification_proxy_io_queue", v7);
    queue = v4->_queue;
    v4->_queue = v8;

    v10 = v4;
  }

  return v4;
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100000F38;
    v8[3] = &unk_100008328;
    v8[4] = self;
    v9 = messageCopy;
    dispatch_async(queue, v8);
  }

  else
  {
    v7 = qword_10000C768;
    if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Invalid input.", buf, 2u);
    }
  }
}

- (void)shutdown
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000010AC;
  block[3] = &unk_100008350;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)listen
{
  objc_initWeak(&location, self);
  v3 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    socket = lockdown_get_socket();
    *buf = 67109120;
    v15 = socket;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Lockdown socket: %d", buf, 8u);
  }

  v5 = lockdown_get_socket();
  v6 = dispatch_source_create(&_dispatch_source_type_read, v5, 0, self->_queue);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000013A8;
  handler[3] = &unk_100008378;
  objc_copyWeak(&v12, &location);
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001950;
  v9[3] = &unk_1000083A0;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_cancel_handler(v6, v9);
  source = self->_source;
  self->_source = v6;
  v8 = v6;

  dispatch_resume(v8);
  objc_destroyWeak(&v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

@end