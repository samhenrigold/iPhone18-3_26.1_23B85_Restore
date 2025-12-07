@interface CSDBluetoothHangupCommandObserver
- (CSDBluetoothHangupCommandObserver)initWithQueue:(id)queue;
- (void)_ensureStarted;
- (void)_ensureStopped;
- (void)dealloc;
@end

@implementation CSDBluetoothHangupCommandObserver

- (CSDBluetoothHangupCommandObserver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = CSDBluetoothHangupCommandObserver;
  v6 = [(CSDBluetoothHangupCommandObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)dealloc
{
  if (self->_observationStarted)
  {
    sub_10047F304();
  }

  v2.receiver = self;
  v2.super_class = CSDBluetoothHangupCommandObserver;
  [(CSDBluetoothHangupCommandObserver *)&v2 dealloc];
}

- (void)_ensureStarted
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_btSession)
  {
    v4 = 1;
  }

  else
  {
    selfCopy = self;
    v10 = sub_100264160;
    btSession = BTSessionAttachWithQueue();
    v4 = btSession;
    if (btSession)
    {
      CFRelease(selfCopy);
    }
  }

  if (!self->_btSessionAddedServiceCallback)
  {
    btSession = self->_btSession;
    if (btSession)
    {
      v6 = BTServiceAddCallbacksWithFilter();
      v4 = v6;
      self->_btSessionAddedServiceCallback = 1;
      v7 = sub_100004778(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Added BT handsfree callbacks", v9, 2u);
      }
    }
  }

  if (v4)
  {
    v8 = sub_100004778(btSession);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10047F330(v4, v8);
    }
  }
}

- (void)_ensureStopped
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_btSessionAddedServiceCallback)
  {
    btSession = self->_btSession;
    if (btSession)
    {
      btSession = BTServiceRemoveCallbacks();
    }

    self->_btSessionAddedServiceCallback = 0;
    v4 = sub_100004778(btSession);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "removed BT handsfree callbacks", buf, 2u);
    }
  }

  if (self->_btSession)
  {
    v5 = BTSessionDetachWithQueue();
    self->_btSession = 0;
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "tore down _btSession", v7, 2u);
    }
  }

  self->_observationStarted = 0;
}

@end