@interface AVSCoreSpeechBridge
+ (id)sharedInstance;
- (AVSCoreSpeechBridge)init;
- (const)recordingASBD;
- (void)commandControlListener:(id)listener didStopUnexpectedly:(BOOL)unexpectedly;
- (void)commandControlListener:(id)listener hasLPCMBufferAvailable:(id)available;
- (void)commandControlListener:(id)listener hasLPCMBufferAvailable:(id)available hostTime:(unint64_t)time;
- (void)startListening:(id)listening;
- (void)stopListening:(id)listening;
@end

@implementation AVSCoreSpeechBridge

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AVSCoreSpeechBridge sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __37__AVSCoreSpeechBridge_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(AVSCoreSpeechBridge);

  return MEMORY[0x2821F96F8]();
}

- (AVSCoreSpeechBridge)init
{
  v6.receiver = self;
  v6.super_class = AVSCoreSpeechBridge;
  v2 = [(AVSCoreSpeechBridge *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D014F8]);
    commandControlListener = v2->_commandControlListener;
    v2->_commandControlListener = v3;

    [(CSCommandControlListener *)v2->_commandControlListener setDelegate:v2];
  }

  return v2;
}

- (const)recordingASBD
{
  v2 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  streamDescription = [v2 streamDescription];

  return streamDescription;
}

- (void)startListening:(id)listening
{
  v32[1] = *MEMORY[0x277D85DE8];
  listeningCopy = listening;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = objc_alloc_init(MEMORY[0x277D01500]);
  commandControlListener = self->_commandControlListener;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __38__AVSCoreSpeechBridge_startListening___block_invoke;
  v17 = &unk_278C5C178;
  v19 = &v27;
  v20 = &v21;
  v8 = v5;
  v18 = v8;
  [(CSCommandControlListener *)commandControlListener startListenWithOption:v6 completion:&v14];
  v9 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    *(v28 + 24) = 0;
    v10 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA470];
    v32[0] = @"Timed out";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:{1, v14, v15, v16, v17}];
    v12 = [v10 errorWithDomain:@"CoreSpeechBridge" code:-1 userInfo:v11];
    v13 = v22[5];
    v22[5] = v12;
  }

  if (listeningCopy)
  {
    listeningCopy[2](listeningCopy, *(v28 + 24), v22[5]);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

void __38__AVSCoreSpeechBridge_startListening___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)stopListening:(id)listening
{
  listeningCopy = listening;
  [(CSCommandControlListener *)self->_commandControlListener stopListenWithCompletion:&__block_literal_global_294];
  v4 = listeningCopy;
  if (listeningCopy)
  {
    (*(listeningCopy + 2))(listeningCopy, 1, 0);
    v4 = listeningCopy;
  }
}

- (void)commandControlListener:(id)listener hasLPCMBufferAvailable:(id)available
{
  availableCopy = available;
  listenerCopy = listener;
  [(AVSCoreSpeechBridge *)self commandControlListener:listenerCopy hasLPCMBufferAvailable:availableCopy hostTime:mach_absolute_time()];
}

- (void)commandControlListener:(id)listener hasLPCMBufferAvailable:(id)available hostTime:(unint64_t)time
{
  availableCopy = available;
  if (availableCopy && self->_onBufferReceived)
  {
    v12 = availableCopy;
    v7 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
    v8 = [v12 length] >> 1;
    v9 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v7 frameCapacity:v8];
    [v9 setFrameLength:{objc_msgSend(v9, "frameCapacity")}];
    v10 = *[v9 int16ChannelData];
    v11 = v12;
    memcpy(v10, [v12 bytes], objc_msgSend(v12, "length"));

    (*(self->_onBufferReceived + 2))();
    availableCopy = v12;
  }
}

- (void)commandControlListener:(id)listener didStopUnexpectedly:(BOOL)unexpectedly
{
  onStopped = self->_onStopped;
  if (onStopped)
  {
    onStopped[2](onStopped, unexpectedly);
  }
}

@end