@interface MapsCarPlayExternalDeviceMonitor
+ (id)sharedInstance;
- (AVExternalDevice)carPlayExternalDevice;
- (MapsCarPlayExternalDeviceMonitor)init;
- (void)_populateExternalDevice;
- (void)dealloc;
@end

@implementation MapsCarPlayExternalDeviceMonitor

+ (id)sharedInstance
{
  if (qword_5A790 != -1)
  {
    sub_1A8CC();
  }

  v3 = qword_5A798;

  return v3;
}

- (MapsCarPlayExternalDeviceMonitor)init
{
  v19.receiver = self;
  v19.super_class = MapsCarPlayExternalDeviceMonitor;
  v2 = [(MapsCarPlayExternalDeviceMonitor *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_C89C(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Initializing", buf, 2u);
    }

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("MapsCarPlayExternalDeviceMonitor.queue", v5);
    queue = v3->_queue;
    v3->_queue = v6;

    objc_initWeak(buf, v3);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_C8E0;
    v16[3] = &unk_34D10;
    objc_copyWeak(&v17, buf);
    v8 = objc_retainBlock(v16);
    v9 = notify_register_dispatch("com.apple.coremedia.active-endpoint-changed", &v3->_token, v3->_queue, v8);
    if (v9)
    {
      v10 = sub_C89C(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Failed to register for CarPlay external devices", v15, 2u);
      }
    }

    v11 = v3->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_C920;
    block[3] = &unk_34970;
    v14 = v3;
    dispatch_async(v11, block);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  return v3;
}

- (void)dealloc
{
  notify_cancel(self->_token);
  v3.receiver = self;
  v3.super_class = MapsCarPlayExternalDeviceMonitor;
  [(MapsCarPlayExternalDeviceMonitor *)&v3 dealloc];
}

- (AVExternalDevice)carPlayExternalDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_CA64;
  v10 = sub_CA74;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_CA7C;
  v5[3] = &unk_34D38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_populateExternalDevice
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_externalDevice;
  v4 = sub_C89C(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Fetching currentCarPlayExternalDevice", buf, 2u);
  }

  v5 = +[AVExternalDevice currentCarPlayExternalDevice];
  externalDevice = self->_externalDevice;
  self->_externalDevice = v5;

  v8 = sub_C89C(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_externalDevice;
    *buf = 138543362;
    v13 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Got currentCarPlayExternalDevice: %{public}@", buf, 0xCu);
  }

  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_CC20;
    block[3] = &unk_34970;
    v11 = v3;
    dispatch_async(&_dispatch_main_q, block);
  }
}

@end