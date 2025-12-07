@interface AXLTAudioOutManager
+ (AXLTAudioOutManager)sharedInstance;
+ (BOOL)isCurrentProcessAXUIServer;
+ (BOOL)isExcludedAppID:(id)d;
- (AXLTAudioOutManager)init;
- (AXLTTranscriberDelegateProtocol)delegate;
- (BOOL)_startTranscriptionForPID:(int)d appID:(id)iD appName:(id)name excludingPIDs:(id)ds locale:(id)locale error:(id *)error;
- (BOOL)_stopTranscriptionForPID:(int)d error:(id *)error;
- (BOOL)isTranscribingForPID:(int)d;
- (BOOL)startTranscriptionWithLocale:(id)locale error:(id *)error;
- (BOOL)stopTranscription:(id *)transcription;
- (id)_reportErrorWithCode:(int64_t)code debugErrorString:(id)string cleanupForPID:(int)d;
- (id)_tapDescriptionForPID:(int)d tapFormat:(id)format excludePIDs:(id)ds;
- (id)appInfoFromPid:(int)pid;
- (void)_avSessionMediaServicesResetNotification:(id)notification;
- (void)_cleanupAllPids;
- (void)_cleanupForPID:(int)d;
- (void)_setupAVSystemNotificationSystem;
- (void)_someSessionIsPlayingDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)handleInputBufferWithContext:(void *)context audioQueue:(OpaqueAudioQueue *)queue audioBuffer:(AudioQueueBuffer *)buffer timestamp:(const AudioTimeStamp *)timestamp packetCount:(unsigned int)count packetDesc:(const AudioStreamPacketDescription *)desc;
- (void)registerForAVSystemControllerNotifications;
- (void)unregisterForAVSystemControllerNotifications;
- (void)updateAudioSessionsInfoFromSessionsArray:(id)array;
@end

@implementation AXLTAudioOutManager

+ (AXLTAudioOutManager)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[AXLTAudioOutManager sharedInstance];
  }

  v3 = sharedInstance__shared_1;

  return v3;
}

uint64_t __37__AXLTAudioOutManager_sharedInstance__block_invoke()
{
  sharedInstance__shared_1 = objc_alloc_init(AXLTAudioOutManager);

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isExcludedAppID:(id)d
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__AXLTAudioOutManager_isExcludedAppID___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = isExcludedAppID__onceToken;
  dCopy = d;
  if (v3 != -1)
  {
    dispatch_once(&isExcludedAppID__onceToken, block);
  }

  v5 = [isExcludedAppID___excludedAppIDs containsObject:dCopy];

  return v5;
}

void __39__AXLTAudioOutManager_isExcludedAppID___block_invoke(uint64_t a1)
{
  v7[9] = *MEMORY[0x277D85DE8];
  v7[0] = @"Invalid";
  v7[1] = @"com.apple.VoiceOverTouch";
  v2 = *MEMORY[0x277CE68B8];
  v7[2] = *MEMORY[0x277CE68C0];
  v7[3] = v2;
  v7[4] = @"com.apple.Accessibility.SwitchControl";
  v7[5] = @"com.apple.SpeakSelection";
  v7[6] = @"com.apple.RealityEnvironment";
  v7[7] = @"soundanalysisd";
  v7[8] = @"vot";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:9];
  v4 = isExcludedAppID___excludedAppIDs;
  isExcludedAppID___excludedAppIDs = v3;

  if ([*(a1 + 32) isCurrentProcessAXUIServer])
  {
    v5 = [isExcludedAppID___excludedAppIDs mutableCopy];
    [v5 addObject:@"com.apple.accessibility.HearingCore"];
    v6 = isExcludedAppID___excludedAppIDs;
    isExcludedAppID___excludedAppIDs = v5;
  }
}

+ (BOOL)isCurrentProcessAXUIServer
{
  if (isCurrentProcessAXUIServer_token[0] != -1)
  {
    +[AXLTAudioOutManager isCurrentProcessAXUIServer];
  }

  return isCurrentProcessAXUIServer__AXIsProcess;
}

void __49__AXLTAudioOutManager_isCurrentProcessAXUIServer__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if (([v1 isEqualToString:*MEMORY[0x277CE68C0]] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277CE68B8]))
  {
    isCurrentProcessAXUIServer__AXIsProcess = 1;
  }
}

- (AXLTAudioOutManager)init
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = AXLTAudioOutManager;
  v2 = [(AXLTAudioOutManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_isTranscribing = 0;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
    v5 = dispatch_queue_create("com.apple.accessibility.LiveTranscription.audioOutManagerBufferQueue", v4);
    bufferQueue = v3->_bufferQueue;
    v3->_bufferQueue = v5;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    processToTranscriberMap = v3->_processToTranscriberMap;
    v3->_processToTranscriberMap = strongToStrongObjectsMapTable;

    [(AXLTAudioOutManager *)v3 _setupAVSystemNotificationSystem];
    v9 = AXLogLiveTranscription();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      avSystemController = v3->_avSystemController;
      *buf = 138412290;
      v14 = avSystemController;
      _os_log_impl(&dword_256022000, v9, OS_LOG_TYPE_INFO, "_avSystemController: %@", buf, 0xCu);
    }
  }

  return v3;
}

- (void)dealloc
{
  [(AXLTAudioOutManager *)self stopTranscription:0];
  [(AXLTAudioOutManager *)self _stopTranscriptionForPID:4294967293 error:0];
  [(AXLTAudioOutManager *)self _stopTranscriptionForPID:4294967294 error:0];
  v3.receiver = self;
  v3.super_class = AXLTAudioOutManager;
  [(AXLTAudioOutManager *)&v3 dealloc];
}

- (BOOL)startTranscriptionWithLocale:(id)locale error:(id *)error
{
  localeCopy = locale;
  isTranscribing = [(AXLTAudioOutManager *)self isTranscribing];
  v8 = AXLogLiveTranscription();
  v9 = v8;
  if (isTranscribing)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_256022000, v9, OS_LOG_TYPE_INFO, "AudioManager: Already started transcription", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_256022000, v9, OS_LOG_TYPE_DEFAULT, "AudioManager: Starting transcription", v15, 2u);
    }

    self->_isTranscribing = 1;
    objc_storeStrong(&self->_locale, locale);
    v10 = +[AXLTTranscriber sharedInstance];
    downloadState = [v10 downloadState];

    if (downloadState == -1)
    {
      v12 = +[AXLTTranscriber sharedInstance];
      [v12 setDownloadState:-2];
    }

    v13 = +[_TtC17LiveTranscription15AXLCTranscriber shared];
    [v13 resetErrorStates];

    [(AXLTAudioOutManager *)self registerForAVSystemControllerNotifications];
  }

  return 1;
}

- (BOOL)stopTranscription:(id *)transcription
{
  isTranscribing = [(AXLTAudioOutManager *)self isTranscribing];
  v5 = AXLogLiveTranscription();
  v6 = v5;
  if (isTranscribing)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_256022000, v6, OS_LOG_TYPE_DEFAULT, "AudioManager: Stopping transcription", v9, 2u);
    }

    self->_isTranscribing = 0;
    locale = self->_locale;
    self->_locale = 0;

    [(AXLTAudioOutManager *)self unregisterForAVSystemControllerNotifications];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_256022000, v6, OS_LOG_TYPE_INFO, "AudioManager: Already stopped transcription", buf, 2u);
    }
  }

  return 1;
}

- (BOOL)isTranscribingForPID:(int)d
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  bufferQueue = [(AXLTAudioOutManager *)self bufferQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__AXLTAudioOutManager_isTranscribingForPID___block_invoke;
  block[3] = &unk_27981CCA0;
  dCopy = d;
  block[4] = selfCopy;
  block[5] = &v9;
  dispatch_sync(bufferQueue, block);

  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

void __44__AXLTAudioOutManager_isTranscribingForPID___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) processToTranscriberMap];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) intValue] == *(a1 + 48))
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)_reportErrorWithCode:(int64_t)code debugErrorString:(id)string cleanupForPID:(int)d
{
  v5 = *&d;
  v15[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v9 = AXLogLiveTranscription();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [AXLTAudioOutTranscriber createAudioBuffersWithBufferByteSize:error:];
  }

  v10 = MEMORY[0x277CCA9B8];
  v14 = *MEMORY[0x277CCA068];
  v15[0] = stringCopy;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12 = [v10 errorWithDomain:@"com.apple.accessibility.LiveTranscription" code:code userInfo:v11];

  [(AXLTAudioOutManager *)self _cleanupForPID:v5];

  return v12;
}

- (BOOL)_startTranscriptionForPID:(int)d appID:(id)iD appName:(id)name excludingPIDs:(id)ds locale:(id)locale error:(id *)error
{
  v12 = *&d;
  v51 = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  nameCopy = name;
  dsCopy = ds;
  localeCopy = locale;
  v18 = [(AXLTAudioOutManager *)self isTranscribingForPID:v12];
  v19 = AXLogLiveTranscription();
  v20 = v19;
  if (!v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [MEMORY[0x277CCABB0] numberWithInt:v12];
      LODWORD(buf.mSampleRate) = 138412546;
      *(&buf.mSampleRate + 4) = nameCopy;
      LOWORD(buf.mFormatFlags) = 2112;
      *(&buf.mFormatFlags + 2) = v23;
      _os_log_impl(&dword_256022000, v20, OS_LOG_TYPE_DEFAULT, "AudioManager: Starting transcription for app: %@, pid: %@", &buf, 0x16u);
    }

    v24 = [AXLTAudioOutTranscriber alloc];
    delegate = [(AXLTAudioOutManager *)self delegate];
    v26 = [(AXLTAudioOutTranscriber *)v24 initWithPID:v12 appID:iDCopy appName:nameCopy locale:localeCopy delegate:delegate transcriberVersion:[(AXLTAudioOutManager *)self transcriberVersion]];

    bufferQueue = [(AXLTAudioOutManager *)self bufferQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__AXLTAudioOutManager__startTranscriptionForPID_appID_appName_excludingPIDs_locale_error___block_invoke;
    block[3] = &unk_27981CCC8;
    block[4] = self;
    v20 = v26;
    v48 = v20;
    v49 = v12;
    dispatch_sync(bufferQueue, block);

    v28 = [v20 pid];
    tapFormat = [v20 tapFormat];
    v30 = [(AXLTAudioOutManager *)self _tapDescriptionForPID:v28 tapFormat:tapFormat excludePIDs:dsCopy];

    format = [v30 format];
    streamDescription = [format streamDescription];
    v33 = *(streamDescription + 32);
    v34 = *(streamDescription + 16);
    *&buf.mSampleRate = *streamDescription;
    *&buf.mBytesPerPacket = v34;
    *&buf.mBitsPerChannel = v33;

    outAQ = 0;
    v35 = AudioQueueNewInput(&buf, handleInputBuffer, v20, 0, 0, 0x800u, &outAQ);
    if (v35)
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create audio queue: %d", v35];
      [(AXLTAudioOutManager *)self _reportErrorWithCode:5 debugErrorString:v36 cleanupForPID:v12];
      *error = v21 = 0;
LABEL_12:

      goto LABEL_13;
    }

    errorCopy = error;
    [v20 setAudioQueue:outAQ];
    v36 = [objc_alloc(MEMORY[0x277CBA610]) initWithTapDescription:v30];
    v37 = AudioQueueSetProperty(outAQ, 0x71746F62u, v36, 8u);
    if (v37)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create tap: %d", v37];
    }

    else
    {
      mBytesPerPacket = buf.mBytesPerPacket;
      outData = buf.mBytesPerPacket;
      if (!buf.mBytesPerPacket)
      {
        ioDataSize = 4;
        Property = AudioQueueGetProperty(outAQ, 0x786F7073u, &outData, &ioDataSize);
        if (Property)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get max output packet size: %d", Property];
          goto LABEL_10;
        }

        mBytesPerPacket = outData;
      }

      if (![v20 createAudioBuffersWithBufferByteSize:fmin(buf.mSampleRate * mBytesPerPacket error:6400.0), error])
      {
        goto LABEL_11;
      }

      v41 = AudioQueueStart(outAQ, 0);
      if (!v41)
      {
        v21 = 1;
        goto LABEL_12;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to start audio queue: %d", v41];
    }

    v38 = LABEL_10:;
    *errorCopy = [(AXLTAudioOutManager *)self _reportErrorWithCode:5 debugErrorString:v38 cleanupForPID:v12];

LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  v21 = 1;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v22 = [MEMORY[0x277CCABB0] numberWithInt:v12];
    LODWORD(buf.mSampleRate) = 138412546;
    *(&buf.mSampleRate + 4) = nameCopy;
    LOWORD(buf.mFormatFlags) = 2112;
    *(&buf.mFormatFlags + 2) = v22;
    _os_log_impl(&dword_256022000, v20, OS_LOG_TYPE_INFO, "AudioManager already transcribing for app: %@, pid: %@", &buf, 0x16u);
  }

LABEL_13:

  return v21;
}

void __90__AXLTAudioOutManager__startTranscriptionForPID_appID_appName_excludingPIDs_locale_error___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) processToTranscriberMap];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  [v4 setObject:v2 forKey:v3];
}

- (BOOL)_stopTranscriptionForPID:(int)d error:(id *)error
{
  v4 = *&d;
  v11 = *MEMORY[0x277D85DE8];
  v6 = AXLogLiveTranscription();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_256022000, v6, OS_LOG_TYPE_DEFAULT, "AudioManager: Stopping transcription for pid: %@", &v9, 0xCu);
  }

  [(AXLTAudioOutManager *)self _cleanupForPID:v4];
  return 1;
}

- (void)handleInputBufferWithContext:(void *)context audioQueue:(OpaqueAudioQueue *)queue audioBuffer:(AudioQueueBuffer *)buffer timestamp:(const AudioTimeStamp *)timestamp packetCount:(unsigned int)count packetDesc:(const AudioStreamPacketDescription *)desc
{
  contextCopy = context;
  v15 = [contextCopy pid];
  bufferQueue = [(AXLTAudioOutManager *)self bufferQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__AXLTAudioOutManager_handleInputBufferWithContext_audioQueue_audioBuffer_timestamp_packetCount_packetDesc___block_invoke;
  block[3] = &unk_27981CCF0;
  block[4] = self;
  v19 = contextCopy;
  bufferCopy = buffer;
  queueCopy = queue;
  v24 = v15;
  countCopy = count;
  timestampCopy = timestamp;
  descCopy = desc;
  v17 = contextCopy;
  dispatch_async(bufferQueue, block);
}

void __108__AXLTAudioOutManager_handleInputBufferWithContext_audioQueue_audioBuffer_timestamp_packetCount_packetDesc___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) processToTranscriberMap];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 80)];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 84);
    v10 = *(a1 + 72);

    [v5 handleAudioBuffer:v6 audioQueue:v7 timestamp:v8 packetCount:v9 packetDesc:v10];
  }
}

- (void)_cleanupForPID:(int)d
{
  v3 = *&d;
  processToTranscriberMap = [(AXLTAudioOutManager *)self processToTranscriberMap];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v7 = [processToTranscriberMap objectForKey:v6];

  bufferQueue = [(AXLTAudioOutManager *)self bufferQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__AXLTAudioOutManager__cleanupForPID___block_invoke;
  block[3] = &unk_27981CCC8;
  v11 = v7;
  selfCopy = self;
  v13 = v3;
  v9 = v7;
  dispatch_sync(bufferQueue, block);
}

void __38__AXLTAudioOutManager__cleanupForPID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cleanup];
  v3 = [*(a1 + 40) processToTranscriberMap];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  [v3 removeObjectForKey:v2];
}

- (void)_cleanupAllPids
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  bufferQueue = [(AXLTAudioOutManager *)self bufferQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__AXLTAudioOutManager__cleanupAllPids__block_invoke;
  block[3] = &unk_27981C9D0;
  block[4] = self;
  v5 = v3;
  v16 = v5;
  dispatch_sync(bufferQueue, block);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) cleanup];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v8);
  }
}

void __38__AXLTAudioOutManager__cleanupAllPids__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) processToTranscriberMap];
  v9 = [v2 keyEnumerator];

  v3 = [v9 nextObject];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [*(a1 + 32) processToTranscriberMap];
      v6 = [v5 objectForKey:v4];

      if (v6)
      {
        [*(a1 + 40) addObject:v6];
      }

      v7 = [v9 nextObject];

      v4 = v7;
    }

    while (v7);
  }

  v8 = [*(a1 + 32) processToTranscriberMap];
  [v8 removeAllObjects];
}

- (id)_tapDescriptionForPID:(int)d tapFormat:(id)format excludePIDs:(id)ds
{
  v6 = *&d;
  dsCopy = ds;
  formatCopy = format;
  v9 = [objc_opt_class() isCoreMediaNotificationsSupportedForPid:v6];
  v10 = objc_alloc(MEMORY[0x277CBA618]);
  if (v6 != -1 || v9)
  {
    v11 = [v10 initProcessTapWithFormat:formatCopy PID:v6];
  }

  else
  {
    v11 = [v10 initSystemTapWithFormat:formatCopy excludePIDs:dsCopy];
  }

  v12 = v11;

  return v12;
}

- (void)registerForAVSystemControllerNotifications
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = AXLogLiveTranscription();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AXLTAudioOutManager registerForAVSystemControllerNotifications];
    }
  }

  [(AXLTAudioOutManager *)self setSubscribed:1];
  v4 = AXLogLiveTranscription();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_256022000, v4, OS_LOG_TYPE_INFO, "AudioManager: Subscribing on Audio Server events", v9, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__avSessionMediaServicesResetNotification_ name:*MEMORY[0x277D26D40] object:0];

  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  v7 = [mEMORY[0x277D26E58] attributeForKey:*MEMORY[0x277D26C80]];
  [(AXLTAudioOutManager *)self updateAudioSessionsInfoFromSessionsArray:v7];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__someSessionIsPlayingDidChangeNotification_ name:*MEMORY[0x277D26DA8] object:0];
}

- (void)unregisterForAVSystemControllerNotifications
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = AXLogLiveTranscription();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AXLTAudioOutManager registerForAVSystemControllerNotifications];
    }
  }

  v4 = AXLogLiveTranscription();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_256022000, v4, OS_LOG_TYPE_INFO, "AudioManager: Unsubscribing on Audio Server events", v7, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D26D40] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D26DA8] object:0];

  [(AXLTAudioOutManager *)self _cleanupAllPids];
  [(AXLTAudioOutManager *)self setSubscribed:0];
}

- (void)_someSessionIsPlayingDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = AXLogLiveTranscription();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_256022000, v5, OS_LOG_TYPE_INFO, "AudioManager: Audio Sessions were updated", buf, 2u);
  }

  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D26DB8]];

  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__AXLTAudioOutManager__someSessionIsPlayingDidChangeNotification___block_invoke;
    v8[3] = &unk_27981C9D0;
    v8[4] = self;
    v9 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

- (void)_setupAVSystemNotificationSystem
{
  v13[2] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  [(AXLTAudioOutManager *)self setAvSystemController:mEMORY[0x277D26E58]];

  v4 = *MEMORY[0x277D26DA8];
  v13[0] = *MEMORY[0x277D26D40];
  v13[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  avSystemController = [(AXLTAudioOutManager *)self avSystemController];
  v7 = *MEMORY[0x277D26DD0];
  v12 = 0;
  v8 = [avSystemController setAttribute:v5 forKey:v7 error:&v12];

  v9 = AXLogLiveTranscription();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_256022000, v10, OS_LOG_TYPE_INFO, "AudioManager: Registered for Audio server events", v11, 2u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [AXLTAudioOutManager _setupAVSystemNotificationSystem];
  }
}

- (void)_avSessionMediaServicesResetNotification:(id)notification
{
  v4 = AXLogLiveTranscription();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_256022000, v4, OS_LOG_TYPE_DEFAULT, "AudioManager: Audio server connection reset", v5, 2u);
  }

  [(AXLTAudioOutManager *)self _setupAVSystemNotificationSystem];
}

- (void)updateAudioSessionsInfoFromSessionsArray:(id)array
{
  v69 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v5 = AXLogLiveTranscription();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(arrayCopy, "count")}];
    *buf = 138412290;
    *v67 = v6;
    _os_log_impl(&dword_256022000, v5, OS_LOG_TYPE_DEFAULT, "AudioManager: Processing Audio Sessions, active sessions number %@", buf, 0xCu);
  }

  if ([(AXLTAudioOutManager *)self subscribed])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v8 = AXLogLiveTranscription();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(AXLTAudioOutManager *)arrayCopy updateAudioSessionsInfoFromSessionsArray:v8];
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v49 = arrayCopy;
    obj = arrayCopy;
    v9 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
    selfCopy = self;
    if (!v9)
    {
      v53 = 0;
      goto LABEL_39;
    }

    v10 = v9;
    v53 = 0;
    v11 = MEMORY[0x277D26C88];
    v12 = *v61;
    v54 = dictionary;
    v51 = *v61;
    while (1)
    {
      v13 = 0;
      v52 = v10;
      do
      {
        if (*v61 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [*(*(&v60 + 1) + 8 * v13) objectForKeyedSubscript:*v11];
        intValue = [v14 intValue];
        if (intValue)
        {
          v16 = intValue;
          if (![(AXLTAudioOutManager *)self isTranscribingForPID:intValue])
          {
            v17 = [(AXLTAudioOutManager *)self appInfoFromPid:v16];
            v18 = [v17 objectForKeyedSubscript:@"AppIDKey"];
            v19 = [v17 objectForKeyedSubscript:@"AppNameKey"];
            v20 = AXLogLiveTranscription();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v35 = [v17 description];
              *buf = 67109378;
              *v67 = v16;
              *&v67[4] = 2112;
              *&v67[6] = v35;
              _os_log_debug_impl(&dword_256022000, v20, OS_LOG_TYPE_DEBUG, "AudioManager Sessions: audio is from app: %d, %@", buf, 0x12u);
            }

            v21 = [AXLTAudioOutManager isExcludedAppID:v18];
            v22 = AXLogLiveTranscription();
            v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
            if (v21)
            {
              if (v23)
              {
                v24 = [MEMORY[0x277CCABB0] numberWithInt:v16];
                *buf = 138412546;
                *v67 = v19;
                *&v67[8] = 2112;
                *&v67[10] = v24;
                _os_log_impl(&dword_256022000, v22, OS_LOG_TYPE_DEFAULT, "AudioManager Sessions: Ignore starting transcription for excluded app: %@, pid: %@", buf, 0x16u);
              }

              goto LABEL_30;
            }

            if (v23)
            {
              v25 = [v17 objectForKeyedSubscript:@"AppNameKey"];
              v26 = [MEMORY[0x277CCABB0] numberWithInt:v16];
              *buf = 138412546;
              *v67 = v25;
              *&v67[8] = 2112;
              *&v67[10] = v26;
              _os_log_impl(&dword_256022000, v22, OS_LOG_TYPE_DEFAULT, "AudioManager Sessions: Starting transcription for app: %@, pid: %@", buf, 0x16u);

              self = selfCopy;
            }

            locale = [(AXLTAudioOutManager *)self locale];
            selfCopy2 = self;
            v29 = locale;
            v57 = v53;
            v30 = [(AXLTAudioOutManager *)selfCopy2 _startTranscriptionForPID:v16 appID:v18 appName:v19 locale:locale error:&v57];
            v31 = v57;

            if (v30)
            {
              [v54 setObject:@"playing" forKeyedSubscript:v14];
              v22 = AXLogLiveTranscription();
              v32 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
              v11 = MEMORY[0x277D26C88];
              if (v32)
              {
                v33 = [MEMORY[0x277CCABB0] numberWithInt:v16];
                *buf = 138412546;
                *v67 = v19;
                *&v67[8] = 2112;
                *&v67[10] = v33;
                _os_log_impl(&dword_256022000, v22, OS_LOG_TYPE_DEFAULT, "AudioManager Sessions: Successfully started transcription for app: %@, pid: %@", buf, 0x16u);
                goto LABEL_27;
              }
            }

            else
            {
              v22 = AXLogLiveTranscription();
              v34 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
              v11 = MEMORY[0x277D26C88];
              if (v34)
              {
                v33 = [MEMORY[0x277CCABB0] numberWithInt:v16];
                *buf = 138412546;
                *v67 = v19;
                *&v67[8] = 2112;
                *&v67[10] = v33;
                _os_log_error_impl(&dword_256022000, v22, OS_LOG_TYPE_ERROR, "AudioManager Sessions: Failed to start transcription for app: %@, pid: %@", buf, 0x16u);
LABEL_27:
              }
            }

            v53 = v31;
            self = selfCopy;
LABEL_30:
            v10 = v52;

            dictionary = v54;
            v12 = v51;
            goto LABEL_31;
          }

          [dictionary setObject:@"playing" forKeyedSubscript:v14];
          v17 = AXLogLiveTranscription();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *v67 = v16;
            _os_log_debug_impl(&dword_256022000, v17, OS_LOG_TYPE_DEBUG, "AudioManager Sessions: Skip starting transcription pid: %d", buf, 8u);
          }
        }

        else
        {
          v17 = AXLogLiveTranscription();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [(AXLTAudioOutManager *)&v58 updateAudioSessionsInfoFromSessionsArray:v59, v17];
          }
        }

LABEL_31:

        ++v13;
      }

      while (v10 != v13);
      v36 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
      v10 = v36;
      if (!v36)
      {
LABEL_39:

        processToTranscriberMap = [(AXLTAudioOutManager *)self processToTranscriberMap];
        v38 = [processToTranscriberMap copy];

        keyEnumerator = [v38 keyEnumerator];
        nextObject = [keyEnumerator nextObject];
        if (nextObject)
        {
          v41 = nextObject;
          do
          {
            v42 = [dictionary objectForKeyedSubscript:v41];

            if (v42)
            {
              v43 = v53;
            }

            else
            {
              v44 = AXLogLiveTranscription();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v67 = v41;
                _os_log_impl(&dword_256022000, v44, OS_LOG_TYPE_DEFAULT, "AudioManager Sessions: Stopping transcription for pid: %@", buf, 0xCu);
              }

              intValue2 = [v41 intValue];
              v56 = v53;
              v46 = [(AXLTAudioOutManager *)selfCopy _stopTranscriptionForPID:intValue2 error:&v56];
              v43 = v56;

              if (!v46)
              {
                v47 = AXLogLiveTranscription();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  [(AXLTAudioOutManager *)v64 updateAudioSessionsInfoFromSessionsArray:v41, v65, v47];
                }
              }
            }

            nextObject2 = [keyEnumerator nextObject];

            v41 = nextObject2;
            v53 = v43;
          }

          while (nextObject2);
        }

        else
        {
          v43 = v53;
        }

        arrayCopy = v49;
        goto LABEL_53;
      }
    }
  }

  dictionary = AXLogLiveTranscription();
  if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_256022000, dictionary, OS_LOG_TYPE_DEFAULT, "AudioManager: Not subscribed to audio session updates, skip", buf, 2u);
  }

LABEL_53:
}

- (id)appInfoFromPid:(int)pid
{
  v3 = *&pid;
  v46 = *MEMORY[0x277D85DE8];
  v4 = @"System";
  v5 = AXLCLocString(@"liveCaptions.system");
  v6 = MEMORY[0x277D46F48];
  v7 = [MEMORY[0x277D46F50] identifierWithPid:v3];
  v35 = 0;
  v8 = [v6 handleForIdentifier:v7 error:&v35];
  v9 = v35;

  if (!v9)
  {
    bundle = [v8 bundle];
    identifier = [bundle identifier];

    hostProcess = [v8 hostProcess];
    bundle2 = [hostProcess bundle];
    identifier2 = [bundle2 identifier];

    v16 = AXLogLiveTranscription();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      name = [v8 name];
      bundle3 = [v8 bundle];
      *buf = 138413058;
      v39 = identifier;
      v40 = 2112;
      v41 = identifier2;
      v42 = 2112;
      v43 = name;
      v44 = 2112;
      v45 = bundle3;
      _os_log_debug_impl(&dword_256022000, v16, OS_LOG_TYPE_DEBUG, "AudioManager: Fetching process info, appID: %@, host: %@, Process handle name: %@, bundle %@", buf, 0x2Au);
    }

    if (identifier2)
    {
      v34 = 0;
      v17 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifier2 allowPlaceholder:0 error:&v34];
      v9 = v34;
      v18 = identifier2;

      identifier = v18;
      if (!v17)
      {
        goto LABEL_29;
      }

LABEL_12:
      localizedName = [v17 localizedName];

      if (localizedName)
      {
        localizedName2 = [v17 localizedName];

        v4 = identifier2;
        v5 = localizedName2;
        goto LABEL_30;
      }

      v21 = AXLogLiveTranscription();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(AXLTAudioOutManager *)v9 appInfoFromPid:v21];
      }

      goto LABEL_29;
    }

    if (identifier)
    {
      v33 = 0;
      v17 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifier allowPlaceholder:0 error:&v33];
      v9 = v33;
      if (v17)
      {
        goto LABEL_12;
      }

LABEL_29:
      v4 = identifier2;
      goto LABEL_30;
    }

    v22 = AXLogLiveTranscription();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [AXLTAudioOutManager appInfoFromPid:];
    }

    name2 = [v8 name];

    if (!name2)
    {
      identifier = v4;
LABEL_28:
      v9 = 0;
      goto LABEL_29;
    }

    identifier = [v8 name];
    v25 = isInternalInstall(identifier, v24);
    v26 = AXLogLiveTranscription();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v27)
      {
        *buf = 138412290;
        v39 = identifier;
        v28 = "AudioManager: Creating appID from name: %@";
LABEL_26:
        _os_log_impl(&dword_256022000, v26, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
      }
    }

    else if (v27)
    {
      *buf = 138739971;
      v39 = identifier;
      v28 = "AudioManager: Creating appID from name: %{sensitive}@";
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  v10 = AXLogLiveTranscription();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(AXLTAudioOutManager *)v9 appInfoFromPid:v3, v10];
  }

  identifier = @"Invalid";
LABEL_30:

  v36[0] = @"AppIDKey";
  v36[1] = @"AppNameKey";
  v37[0] = identifier;
  v37[1] = v5;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

  return v31;
}

- (AXLTTranscriberDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)updateAudioSessionsInfoFromSessionsArray:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_256022000, a2, OS_LOG_TYPE_DEBUG, "AudioManager Sessions: %@", &v4, 0xCu);
}

- (void)updateAudioSessionsInfoFromSessionsArray:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_256022000, log, OS_LOG_TYPE_ERROR, "AudioManager Sessions: Skipping not valid pid", buf, 2u);
}

- (void)updateAudioSessionsInfoFromSessionsArray:(unsigned int *)a3 .cold.3(uint8_t *a1, void *a2, unsigned int *a3, NSObject *a4)
{
  v7 = [a2 intValue];
  *a1 = 67109120;
  *a3 = v7;
  _os_log_error_impl(&dword_256022000, a4, OS_LOG_TYPE_ERROR, "AudioManager Sessions: Failed to stop transcription for pid: %d\n", a1, 8u);
}

- (void)appInfoFromPid:(NSObject *)a3 .cold.1(void *a1, int a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 description];
  v6[0] = 67109378;
  v6[1] = a2;
  v7 = 2112;
  v8 = v5;
  _os_log_error_impl(&dword_256022000, a3, OS_LOG_TYPE_ERROR, "AudioManager: Couldn't get process handle for pid: %d, error: %@", v6, 0x12u);
}

- (void)appInfoFromPid:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_256022000, a2, OS_LOG_TYPE_ERROR, "AudioManager: Couldn't read appName from record, error = %@", &v4, 0xCu);
}

@end