@interface BKUIPearlAudioSession
+ (id)_loadSound:(id)sound;
- (BKUIPearlAudioSession)init;
- (id)_setupMediaStack;
- (void)_mediaServicesConnectionWasLost:(id)lost;
- (void)_mediaServicesReconnect:(id)reconnect;
- (void)dealloc;
- (void)init;
- (void)play;
- (void)scheduleBuffer:(id)buffer atTime:(id)time options:(unint64_t)options completionHandler:(id)handler;
- (void)scheduleBuffer:(id)buffer completionHandler:(id)handler;
- (void)stop;
@end

@implementation BKUIPearlAudioSession

+ (id)_loadSound:(id)sound
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA8D8];
  soundCopy = sound;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:soundCopy withExtension:@"caf"];

  if (v6)
  {
    v20 = 0;
    v7 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:v6 error:&v20];
    v8 = v20;
    v9 = v8;
    if (v7)
    {
      v10 = objc_alloc(MEMORY[0x277CB83C8]);
      processingFormat = [v7 processingFormat];
      v12 = [v10 initWithPCMFormat:processingFormat frameCapacity:objc_msgSend(v7, "length")];

      v19 = v9;
      v13 = [v7 readIntoBuffer:v12 error:&v19];
      v14 = v19;

      if (v13)
      {
        v12 = v12;
        v16 = v12;
      }

      else
      {
        v17 = _BKUILoggingFacility(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v14;
          _os_log_impl(&dword_241B0A000, v17, OS_LOG_TYPE_DEFAULT, "Failed to read audio file into buffer: %@", buf, 0xCu);
        }

        v16 = 0;
      }
    }

    else
    {
      v12 = _BKUILoggingFacility(v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_impl(&dword_241B0A000, v12, OS_LOG_TYPE_DEFAULT, "Failed to create audio file: %@", buf, 0xCu);
      }

      v16 = 0;
      v14 = v9;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BKUIPearlAudioSession)init
{
  v22.receiver = self;
  v22.super_class = BKUIPearlAudioSession;
  v2 = [(BKUIPearlAudioSession *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.biometrickitui.avPlayerNodeOperationQueue", 0);
    avPlayerNodeOperationQueue = v2->_avPlayerNodeOperationQueue;
    v2->_avPlayerNodeOperationQueue = v3;

    v5 = [BKUIPearlAudioSession _loadSound:@"PearlEnrollment_Lock-D22"];
    lockSoundBuffer = v2->_lockSoundBuffer;
    v2->_lockSoundBuffer = v5;

    v7 = [BKUIPearlAudioSession _loadSound:@"PearlEnrollment_Scan-D22"];
    scanSoundBuffer = v2->_scanSoundBuffer;
    v2->_scanSoundBuffer = v7;

    v9 = [BKUIPearlAudioSession _loadSound:@"PearlEnrollment_Complete-D22"];
    completeSoundBuffer = v2->_completeSoundBuffer;
    v2->_completeSoundBuffer = v9;

    v11 = [BKUIPearlAudioSession _loadSound:@"PearlEnrollment_End-D22"];
    endSoundBuffer = v2->_endSoundBuffer;
    v2->_endSoundBuffer = v11;

    v13 = [BKUIPearlAudioSession _loadSound:@"PearlEnrollment_Fail-D22"];
    failSoundBuffer = v2->_failSoundBuffer;
    v2->_failSoundBuffer = v13;

    _setupMediaStack = [(BKUIPearlAudioSession *)v2 _setupMediaStack];
    v16 = _setupMediaStack;
    if (_setupMediaStack)
    {
      v17 = _BKUILoggingFacility(_setupMediaStack);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(BKUIPearlAudioSession *)v16 init];
      }

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v2->_mediaServicesConnected = v18;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__mediaServicesReconnect_ name:*MEMORY[0x277CB80A0] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__mediaServicesConnectionWasLost_ name:*MEMORY[0x277CB8098] object:0];
  }

  return v2;
}

- (void)scheduleBuffer:(id)buffer atTime:(id)time options:(unint64_t)options completionHandler:(id)handler
{
  bufferCopy = buffer;
  timeCopy = time;
  handlerCopy = handler;
  avPlayerNodeOperationQueue = self->_avPlayerNodeOperationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__BKUIPearlAudioSession_scheduleBuffer_atTime_options_completionHandler___block_invoke;
  block[3] = &unk_278D0A960;
  block[4] = self;
  v18 = bufferCopy;
  v20 = handlerCopy;
  optionsCopy = options;
  v19 = timeCopy;
  v14 = handlerCopy;
  v15 = timeCopy;
  v16 = bufferCopy;
  dispatch_async(avPlayerNodeOperationQueue, block);
}

void *__73__BKUIPearlAudioSession_scheduleBuffer_atTime_options_completionHandler___block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 72) == 1)
  {
    return [*(v1 + 16) scheduleBuffer:result[5] atTime:result[6] options:result[8] completionHandler:result[7]];
  }

  return result;
}

- (void)scheduleBuffer:(id)buffer completionHandler:(id)handler
{
  bufferCopy = buffer;
  handlerCopy = handler;
  avPlayerNodeOperationQueue = self->_avPlayerNodeOperationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__BKUIPearlAudioSession_scheduleBuffer_completionHandler___block_invoke;
  block[3] = &unk_278D09B48;
  block[4] = self;
  v12 = bufferCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = bufferCopy;
  dispatch_async(avPlayerNodeOperationQueue, block);
}

void *__58__BKUIPearlAudioSession_scheduleBuffer_completionHandler___block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 72) == 1)
  {
    return [*(v1 + 16) scheduleBuffer:result[5] completionHandler:result[6]];
  }

  return result;
}

- (void)play
{
  avPlayerNodeOperationQueue = self->_avPlayerNodeOperationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__BKUIPearlAudioSession_play__block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(avPlayerNodeOperationQueue, block);
}

void *__29__BKUIPearlAudioSession_play__block_invoke(void *result)
{
  if (*(result[4] + 72) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = _BKUILoggingFacility(result);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Audio node play called.", v5, 2u);
    }

    return [*(v3[4] + 16) play];
  }

  return result;
}

- (void)stop
{
  avPlayerNodeOperationQueue = self->_avPlayerNodeOperationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__BKUIPearlAudioSession_stop__block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(avPlayerNodeOperationQueue, block);
}

void *__29__BKUIPearlAudioSession_stop__block_invoke(void *result)
{
  if (*(result[4] + 72) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = _BKUILoggingFacility(result);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Audio node stop called.", v5, 2u);
    }

    return [*(v3[4] + 16) stop];
  }

  return result;
}

- (void)_mediaServicesReconnect:(id)reconnect
{
  avPlayerNodeOperationQueue = self->_avPlayerNodeOperationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BKUIPearlAudioSession__mediaServicesReconnect___block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(avPlayerNodeOperationQueue, block);
}

void __49__BKUIPearlAudioSession__mediaServicesReconnect___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 72) & 1) == 0)
  {
    v2 = _BKUILoggingFacility(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "_mediaServicesReconnect called", v6, 2u);
    }

    v3 = [*(a1 + 32) _setupMediaStack];
    v4 = v3;
    if (v3)
    {
      v5 = _BKUILoggingFacility(v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __49__BKUIPearlAudioSession__mediaServicesReconnect___block_invoke_cold_1(v4, v5);
      }
    }

    else
    {
      *(*(a1 + 32) + 72) = 1;
    }
  }
}

- (void)_mediaServicesConnectionWasLost:(id)lost
{
  v4 = _BKUILoggingFacility(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "_mediaServicesConnectionWasLost called, niling cleaning up media stack", buf, 2u);
  }

  self->_mediaServicesConnected = 0;
  avPlayerNodeOperationQueue = self->_avPlayerNodeOperationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__BKUIPearlAudioSession__mediaServicesConnectionWasLost___block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(avPlayerNodeOperationQueue, block);
}

void __57__BKUIPearlAudioSession__mediaServicesConnectionWasLost___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) stop];
  [*(*(a1 + 32) + 8) detachNode:*(*(a1 + 32) + 16)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

- (id)_setupMediaStack
{
  v3 = objc_alloc_init(MEMORY[0x277CB83E0]);
  audioNode = self->_audioNode;
  self->_audioNode = v3;

  v5 = objc_alloc_init(MEMORY[0x277CB8388]);
  audioEngine = self->_audioEngine;
  self->_audioEngine = v5;

  [(AVAudioEngine *)self->_audioEngine attachNode:self->_audioNode];
  v7 = self->_audioEngine;
  v8 = self->_audioNode;
  mainMixerNode = [(AVAudioEngine *)v7 mainMixerNode];
  format = [(AVAudioPCMBuffer *)self->_lockSoundBuffer format];
  [(AVAudioEngine *)v7 connect:v8 to:mainMixerNode format:format];

  v11 = self->_audioEngine;
  v14 = 0;
  [(AVAudioEngine *)v11 startAndReturnError:&v14];
  v12 = v14;

  return v12;
}

- (void)dealloc
{
  v3 = _BKUILoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "BKUIPearlAudioSession dealloc.", buf, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  self->_mediaServicesConnected = 0;
  [(AVAudioEngine *)self->_audioEngine stop];
  [(AVAudioEngine *)self->_audioEngine detachNode:self->_audioNode];
  v5.receiver = self;
  v5.super_class = BKUIPearlAudioSession;
  [(BKUIPearlAudioSession *)&v5 dealloc];
}

- (void)init
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "Failed to start audio engine: %@", &v2, 0xCu);
}

void __49__BKUIPearlAudioSession__mediaServicesReconnect___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "Failed to start audio engine for _mediaServicesReconnect: %@", &v2, 0xCu);
}

@end