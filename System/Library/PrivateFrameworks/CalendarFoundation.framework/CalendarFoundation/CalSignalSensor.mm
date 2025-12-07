@interface CalSignalSensor
- (CalSignalSensor)initWithSignal:(int)signal;
- (id)description;
- (void)_shutDownSource;
- (void)dealloc;
- (void)startSensor;
- (void)stopSensor;
@end

@implementation CalSignalSensor

- (CalSignalSensor)initWithSignal:(int)signal
{
  v5.receiver = self;
  v5.super_class = CalSignalSensor;
  result = [(CalSignalSensor *)&v5 init];
  if (result)
  {
    result->_signal = signal;
  }

  return result;
}

- (void)dealloc
{
  [(CalSignalSensor *)self _shutDownSource];
  v3.receiver = self;
  v3.super_class = CalSignalSensor;
  [(CalSignalSensor *)&v3 dealloc];
}

- (id)description
{
  v3 = [CalDescriptionBuilder alloc];
  v9.receiver = self;
  v9.super_class = CalSignalSensor;
  v4 = [(CalSignalSensor *)&v9 description];
  v5 = [(CalDescriptionBuilder *)v3 initWithSuperclassDescription:v4];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CalDescriptionBuilder *)v5 setKey:@"signal" withInt:[(CalSignalSensor *)selfCopy signal]];
  [(CalDescriptionBuilder *)v5 setKey:@"source" withPointerAddress:selfCopy->_signalSource];
  objc_sync_exit(selfCopy);

  build = [(CalDescriptionBuilder *)v5 build];

  return build;
}

- (void)startSensor
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_signalSource)
  {
    v3 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [CalSignalSensor startSensor];
    }
  }

  else
  {
    v3 = dispatch_get_global_queue(2, 0);
    signal = [(CalSignalSensor *)selfCopy signal];
    v5 = dispatch_source_create(MEMORY[0x1E69E9700], signal, 0, v3);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __30__CalSignalSensor_startSensor__block_invoke;
    v7[3] = &unk_1E7EC6970;
    v7[4] = selfCopy;
    v7[5] = signal;
    dispatch_source_set_event_handler(v5, v7);
    objc_storeStrong(&selfCopy->_signalSource, v5);
    v6 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CalSignalSensor startSensor];
    }

    dispatch_resume(v5);
  }

  objc_sync_exit(selfCopy);
}

void __30__CalSignalSensor_startSensor__block_invoke(uint64_t a1)
{
  v2 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __30__CalSignalSensor_startSensor__block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = [*(a1 + 32) fireBlock];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 32));
  }
}

- (void)stopSensor
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_signalSource)
  {
    [(CalSignalSensor *)selfCopy _shutDownSource];
    v3 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [CalSignalSensor stopSensor];
    }
  }

  else
  {
    v3 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [CalSignalSensor stopSensor];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_shutDownSource
{
  signalSource = self->_signalSource;
  if (signalSource)
  {
    dispatch_source_cancel(signalSource);
    v4 = self->_signalSource;
    self->_signalSource = 0;
  }
}

void __30__CalSignalSensor_startSensor__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *(a1 + 40);
  OUTLINED_FUNCTION_0_4(&dword_1B990D000, a2, a3, "Received signal: [%lu]", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end