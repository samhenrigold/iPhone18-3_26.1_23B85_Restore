@interface BTAudioSmartRouteManager
+ (id)sharedInstance;
- (BTAudioSmartRouteManager)init;
- (id)registerDevice:(unsigned int)device deviceAddr:(id)addr;
- (id)unRegisterDevice:(id)device;
- (void)dealloc;
- (void)startIO:(id)o bundleID:(id)d isInput:(BOOL)input notifyMode:(int *)mode;
- (void)stopIO:(id)o bundleID:(id)d isInput:(BOOL)input;
@end

@implementation BTAudioSmartRouteManager

- (void)dealloc
{
  [(NSMutableDictionary *)self->_btAudioDeviceDict removeAllObjects];

  v3.receiver = self;
  v3.super_class = BTAudioSmartRouteManager;
  [(BTAudioSmartRouteManager *)&v3 dealloc];
}

- (BTAudioSmartRouteManager)init
{
  v4.receiver = self;
  v4.super_class = BTAudioSmartRouteManager;
  v2 = [(BTAudioSmartRouteManager *)&v4 init];
  v2->_btAudioDeviceDict = [[NSMutableDictionary alloc] initWithCapacity:2];
  return v2;
}

+ (id)sharedInstance
{
  result = qword_D8500;
  if (!qword_D8500)
  {
    result = objc_alloc_init(BTAudioSmartRouteManager);
    qword_D8500 = result;
  }

  return result;
}

- (id)registerDevice:(unsigned int)device deviceAddr:(id)addr
{
  v5 = *&device;
  v7 = [(NSMutableDictionary *)self->_btAudioDeviceDict objectForKey:addr];
  if (!v7)
  {
    v8 = qword_D84F8;
    if (os_log_type_enabled(qword_D84F8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      addrCopy = addr;
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Create Smart Route Manager Entry for %@ Device ID %d: ", &v10, 0x12u);
    }

    v7 = [[BTAudioSmartRouteDevice alloc] initWithBluetoothInfo:v5 deviceAddr:addr];
    [(NSMutableDictionary *)self->_btAudioDeviceDict setObject:v7 forKey:addr];
  }

  return v7;
}

- (id)unRegisterDevice:(id)device
{
  v5 = [(NSMutableDictionary *)self->_btAudioDeviceDict objectForKey:?];
  if (v5)
  {
    v6 = v5;
    [(NSMutableDictionary *)self->_btAudioDeviceDict removeObjectForKey:device];
    v7 = qword_D84F8;
    if (os_log_type_enabled(qword_D84F8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      deviceCopy = device;
      v11 = 1024;
      v12 = [v6 retainCount];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Release Smart Route Manager Entry for %@ %d", &v9, 0x12u);
    }
  }

  return 0;
}

- (void)startIO:(id)o bundleID:(id)d isInput:(BOOL)input notifyMode:(int *)mode
{
  inputCopy = input;
  v11 = qword_D84F8;
  if (os_log_type_enabled(qword_D84F8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    dCopy = d;
    v15 = 1024;
    v16 = inputCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Smart Route Manager StartIO:  %@ Device ID %d: ", &v13, 0x12u);
  }

  v12 = [(NSMutableDictionary *)self->_btAudioDeviceDict objectForKey:o];
  if (v12)
  {
    [v12 updateSession:d isStart:1 isInput:inputCopy];
  }

  *mode = 2;
}

- (void)stopIO:(id)o bundleID:(id)d isInput:(BOOL)input
{
  inputCopy = input;
  v9 = qword_D84F8;
  if (os_log_type_enabled(qword_D84F8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    dCopy = d;
    v13 = 1024;
    v14 = inputCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Smart Route Manager StopIO:  %@ Device ID %d: ", &v11, 0x12u);
  }

  v10 = [(NSMutableDictionary *)self->_btAudioDeviceDict objectForKey:o];
  if (v10)
  {
    [v10 updateSession:d isStart:0 isInput:inputCopy];
  }
}

@end