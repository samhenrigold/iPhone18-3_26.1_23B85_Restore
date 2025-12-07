@interface CMOdometerSuitabilityManagerProxy
- (CMOdometerSuitabilityManagerProxy)initWithOdometerSuitability:(id)suitability;
- (void)_startDaemonConnection;
- (void)_startOdometerSuitabilityUpdatesWithHandler:(id)handler;
- (void)_stopOdometerSuitabilityUpdates;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMOdometerSuitabilityManagerProxy

- (CMOdometerSuitabilityManagerProxy)initWithOdometerSuitability:(id)suitability
{
  v7.receiver = self;
  v7.super_class = CMOdometerSuitabilityManagerProxy;
  v4 = [(CMOdometerSuitabilityManagerProxy *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_odometerSuitabilityManager = suitability;
    v4->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMOdometerSuitability.internal", 0);
    v5->fCallbackQueue = dispatch_queue_create("com.apple.CoreMotion.CMOdometerSuitability.callback", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMOdometerSuitabilityManagerProxy;
  [(CMOdometerSuitabilityManagerProxy *)&v3 dealloc];
}

- (void)_teardown
{
  objc_msgSend__stopOdometerSuitabilityUpdates(self, a2, v2);
  if (self->fLocationdConnection)
  {
    v4 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
}

- (void)_startDaemonConnection
{
  CLConnectionClient::setDefaultMessageHandler();
  CLConnectionClient::setInterruptionHandler();
  CLConnectionClient::start(self->fLocationdConnection);
}

- (void)_startOdometerSuitabilityUpdatesWithHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];

  self->fHandler = objc_msgSend_copy(handler, v5, v6);
  sub_19B428B50(&__p, "kCLConnectionMessageOdometerSuitabilityUpdate");
  v8[1] = MEMORY[0x1E69E9820];
  v8[2] = 3221225472;
  v8[3] = sub_19B68DB58;
  v8[4] = &unk_1E7532DC8;
  v8[5] = self;
  CLConnectionClient::setHandlerForMessage();
  if (v10 < 0)
  {
    operator delete(__p);
  }

  v11 = @"kCLConnectionMessageSubscribeKey";
  v12[0] = MEMORY[0x1E695E118];
  v8[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v12, &v11, 1);
  sub_19B68E434(&__p, v8);
}

- (void)_stopOdometerSuitabilityUpdates
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"kCLConnectionMessageSubscribeKey";
  v5[0] = MEMORY[0x1E695E110];
  __p = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, &v4, 1);
  sub_19B68E434(&v3, &__p);
}

@end