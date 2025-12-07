@interface CMOdometerProxy
- (CMOdometerProxy)initWithOdometer:(id)odometer;
- (void)_startCyclingWorkoutDistanceUpdatesWithHandler:(id)handler;
- (void)_startDaemonConnection;
- (void)_startOdometerUpdatesWithHandler:(id)handler;
- (void)_stopCyclingWorkoutDistanceUpdates;
- (void)_stopOdometerGpsAvailability;
- (void)_stopOdometerUpdates;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMOdometerProxy

- (CMOdometerProxy)initWithOdometer:(id)odometer
{
  v7.receiver = self;
  v7.super_class = CMOdometerProxy;
  v4 = [(CMOdometerProxy *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_odometer = odometer;
    v4->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMOdometer.internal", 0);
    v5->fCallbackQueue = dispatch_queue_create("com.apple.CoreMotion.CMOdometer.callback", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMOdometerProxy;
  [(CMOdometerProxy *)&v3 dealloc];
}

- (void)_teardown
{
  objc_msgSend__stopOdometerGpsAvailability(self, a2, v2);
  objc_msgSend__stopOdometerUpdates(self, v4, v5);
  objc_msgSend__stopCyclingWorkoutDistanceUpdates(self, v6, v7);
  if (self->fLocationdConnection)
  {
    v8 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v8, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
}

- (void)_startDaemonConnection
{
  v7[1] = *MEMORY[0x1E69E9840];
  CLConnectionClient::setDefaultMessageHandler();
  sub_19B428B50(&v4, "kCLConnectionMessageOdometerGpsAvailability");
  CLConnectionClient::setHandlerForMessage();
  if (v5 < 0)
  {
    operator delete(v4);
  }

  CLConnectionClient::setInterruptionHandler();
  CLConnectionClient::start(self->fLocationdConnection);
  v6 = @"kCLConnectionMessageSubscribeKey";
  v7[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, v7, &v6, 1);
  sub_19B627DE4();
}

- (void)_startOdometerUpdatesWithHandler:(id)handler
{
  v11[1] = *MEMORY[0x1E69E9840];
  objc_msgSend_setTotalDistance_(self, a2, handler, -1.0);

  self->fHandler = objc_msgSend_copy(handler, v5, v6);
  sub_19B428B50(&__p, "kCLConnectionMessageStartOdometerUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v9 < 0)
  {
    operator delete(__p);
  }

  v10 = @"kCLConnectionMessageSubscribeKey";
  v11[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v11, &v10, 1);
  sub_19B5D379C();
}

- (void)_stopOdometerGpsAvailability
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"kCLConnectionMessageSubscribeKey";
  v4[0] = MEMORY[0x1E695E110];
  __p = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
  sub_19B627DE4();
}

- (void)_stopOdometerUpdates
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"kCLConnectionMessageSubscribeKey";
  v4[0] = MEMORY[0x1E695E110];
  __p = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
  sub_19B5D379C();
}

- (void)_startCyclingWorkoutDistanceUpdatesWithHandler:(id)handler
{
  v10[1] = *MEMORY[0x1E69E9840];
  objc_msgSend_setTotalCyclingDistance_(self, a2, handler, -1.0);
  sub_19B428B50(&__p, "kCLConnectionMessageCyclingWorkoutDistanceUpdate");
  v6[1] = MEMORY[0x1E69E9820];
  v6[2] = 3221225472;
  v6[3] = sub_19B626E8C;
  v6[4] = &unk_1E7532BB8;
  v6[5] = self;
  v6[6] = handler;
  CLConnectionClient::setHandlerForMessage();
  if (v8 < 0)
  {
    operator delete(__p);
  }

  v9 = @"kCLConnectionMessageSubscribeKey";
  v10[0] = MEMORY[0x1E695E118];
  v6[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v10, &v9, 1);
  sub_19B627F28(&__p, v6);
}

- (void)_stopCyclingWorkoutDistanceUpdates
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"kCLConnectionMessageSubscribeKey";
  v5[0] = MEMORY[0x1E695E110];
  __p = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, &v4, 1);
  sub_19B627F28(&v3, &__p);
}

@end