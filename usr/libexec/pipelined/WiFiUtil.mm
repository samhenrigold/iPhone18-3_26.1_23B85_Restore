@interface WiFiUtil
- (WiFiUtil)init;
- (WiFiUtilDelegate)delegate;
- (void)dealloc;
- (void)deviceAttached:(__WiFiDeviceClient *)attached;
- (void)invalidate;
- (void)notifyDevicePowerChanged;
- (void)onQueueDeregisterDevices;
- (void)onQueueInvalidate;
- (void)onQueueReEnumerateDevices;
- (void)onQueueRegisterDevices;
- (void)setDelegate:(id)delegate;
@end

@implementation WiFiUtil

- (WiFiUtil)init
{
  v7.receiver = self;
  v7.super_class = WiFiUtil;
  v2 = [(WiFiUtil *)&v7 init];
  if (v2)
  {
    v3 = WiFiManagerClientCreate();
    v2->_wifiClient = v3;
    if (!v3)
    {
      sub_100014A08(v9, "");
      sub_1001EDF78(&__p, "Failed to create connection to wifi daemon");
      sub_1000E661C(v9, &__p, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v10 < 0)
      {
        operator delete(v9[0]);
      }

      sub_10003F5D0(&v8);
    }

    v4 = dispatch_queue_create("com.apple.pipelined.wifiutil", 0);
    q = v2->_q;
    v2->_q = v4;

    [(WiFiUtil *)v2 onQueueReEnumerateDevices];
    CFRunLoopGetMain();
    WiFiManagerClientScheduleWithRunLoop();
  }

  return v2;
}

- (void)invalidate
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033FA1C;
  block[3] = &unk_100432828;
  block[4] = self;
  dispatch_async(q, block);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WiFiUtil;
  [(WiFiUtil *)&v2 dealloc];
}

- (void)onQueueInvalidate
{
  [(WiFiUtil *)self onQueueDeregisterDevices];
  if (self->_wifiClient)
  {
    [(WiFiUtil *)self onQueueDeregisterManager];
    CFRelease(self->_wifiClient);
    self->_wifiClient = 0;
  }
}

- (void)onQueueRegisterDevices
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = self->_wifiDevices;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        WiFiDeviceClientRegisterPowerCallback();
        ++v5;
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)onQueueDeregisterDevices
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = self->_wifiDevices;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        WiFiDeviceClientRegisterPowerCallback();
        ++v5;
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  q = self->_q;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10033FDD8;
  v7[3] = &unk_1004328A0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(q, v7);
}

- (void)deviceAttached:(__WiFiDeviceClient *)attached
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033FEB4;
  block[3] = &unk_100432828;
  block[4] = self;
  dispatch_async(q, block);
}

- (void)onQueueReEnumerateDevices
{
  [(WiFiUtil *)self onQueueDeregisterDevices];
  v3 = WiFiManagerClientCopyDevices();
  wifiDevices = self->_wifiDevices;
  self->_wifiDevices = v3;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {

    [(WiFiUtil *)self onQueueRegisterDevices];
  }
}

- (void)notifyDevicePowerChanged
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033FF9C;
  block[3] = &unk_100432828;
  block[4] = self;
  dispatch_async(q, block);
}

- (WiFiUtilDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end