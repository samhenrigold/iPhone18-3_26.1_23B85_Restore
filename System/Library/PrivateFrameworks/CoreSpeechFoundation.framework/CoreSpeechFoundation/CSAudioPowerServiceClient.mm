@interface CSAudioPowerServiceClient
+ (unint64_t)_getTimeIntervalFromFrequency:(int64_t)frequency;
- (CSAudioPowerServiceClient)initWithQueue:(id)queue frequency:(int64_t)frequency delegate:(id)delegate;
- (id)_connection;
- (id)_newConnection;
- (id)_service;
- (void)_beginUpdate;
- (void)_endUpdate;
- (void)_fetchPowerLevels;
- (void)_invalidate;
- (void)beginUpdate;
- (void)endUpdate;
- (void)invalidate;
@end

@implementation CSAudioPowerServiceClient

void __41__CSAudioPowerServiceClient__beginUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timerFired];
}

- (void)beginUpdate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CSAudioPowerServiceClient_beginUpdate__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_beginUpdate
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    frequency = self->_frequency;
    *buf = 136315394;
    v14 = "[CSAudioPowerServiceClient _beginUpdate]";
    v15 = 2048;
    v16 = frequency;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Begin power update with frequency : %ld", buf, 0x16u);
  }

  v5 = [CSAudioPowerServiceClient _getTimeIntervalFromFrequency:self->_frequency];
  if (self->_timer)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v7 = v5;
    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    timer = self->_timer;
    self->_timer = v8;

    dispatch_source_set_timer(self->_timer, 0, v7, 0);
    objc_initWeak(buf, self);
    v10 = self->_timer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __41__CSAudioPowerServiceClient__beginUpdate__block_invoke;
    handler[3] = &unk_1E865CA40;
    objc_copyWeak(&v12, buf);
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(self->_timer);
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

void __46__CSAudioPowerServiceClient__fetchPowerLevels__block_invoke(uint64_t a1, uint64_t a2, float a3, float a4)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));

  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained((*(a1 + 32) + 24));
    *&v9 = a3;
    *&v10 = a4;
    [v11 audioPowerDidUpdateWithType:a2 averagePower:v9 peakPower:v10];
  }
}

- (void)_fetchPowerLevels
{
  _service = [(CSAudioPowerServiceClient *)self _service];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__CSAudioPowerServiceClient__fetchPowerLevels__block_invoke;
  v4[3] = &unk_1E865B448;
  v4[4] = self;
  [_service getAudioPowerUpdateWithCompletion:v4];
}

- (id)_service
{
  _connection = [(CSAudioPowerServiceClient *)self _connection];
  remoteObjectProxy = [_connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)_connection
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[CSAudioPowerServiceClient _connection]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Creating new xpc connection...", buf, 0xCu);
    }

    _newConnection = [(CSAudioPowerServiceClient *)self _newConnection];
    v6 = self->_xpcConnection;
    self->_xpcConnection = _newConnection;

    objc_initWeak(buf, self);
    v7 = self->_xpcConnection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __40__CSAudioPowerServiceClient__connection__block_invoke;
    v15[3] = &unk_1E865CA40;
    objc_copyWeak(&v16, buf);
    [(NSXPCConnection *)v7 setInterruptionHandler:v15];
    v8 = self->_xpcConnection;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __40__CSAudioPowerServiceClient__connection__block_invoke_3;
    v13 = &unk_1E865CA40;
    objc_copyWeak(&v14, buf);
    [(NSXPCConnection *)v8 setInvalidationHandler:&v10];
    [(NSXPCConnection *)self->_xpcConnection resume:v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

- (id)_newConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.siri.audiopowerupdate.xpc" options:0];
  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F593D4C8];
  [v3 setRemoteObjectInterface:v4];

  [v3 setExportedObject:self];
  [v3 _setQueue:self->_queue];
  return v3;
}

void __40__CSAudioPowerServiceClient__connection__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSAudioPowerServiceClient _connection]_block_invoke";
    v8 = 2112;
    v9 = @"com.apple.siri.audiopowerupdate.xpc";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s xpc connection %@ Interrupted", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 5) invalidate];
    v5 = v4[5];
    v4[5] = 0;
  }
}

void __40__CSAudioPowerServiceClient__connection__block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSAudioPowerServiceClient _connection]_block_invoke";
    v8 = 2112;
    v9 = @"com.apple.siri.audiopowerupdate.xpc";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s xpc connection %@ Invalidated", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 5);
    *(WeakRetained + 5) = 0;
  }
}

- (void)_invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  [(CSAudioPowerServiceClient *)self _endUpdate];
  objc_storeWeak(&self->_delegate, 0);
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_xpcConnection invalidate];
    v4 = self->_xpcConnection;
    self->_xpcConnection = 0;

    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[CSAudioPowerServiceClient _invalidate]";
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s XPC connection invalidated", &v6, 0xCu);
    }
  }
}

- (void)_endUpdate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSAudioPowerServiceClient _endUpdate]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v5 = self->_timer;
    self->_timer = 0;
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CSAudioPowerServiceClient_invalidate__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)endUpdate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CSAudioPowerServiceClient_endUpdate__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSAudioPowerServiceClient)initWithQueue:(id)queue frequency:(int64_t)frequency delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = CSAudioPowerServiceClient;
  v11 = [(CSAudioPowerServiceClient *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, queue);
    v12->_frequency = frequency;
    objc_storeWeak(&v12->_delegate, delegateCopy);
  }

  return v12;
}

+ (unint64_t)_getTimeIntervalFromFrequency:(int64_t)frequency
{
  if ((frequency - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1DDB1FA50[frequency - 1];
  }
}

@end