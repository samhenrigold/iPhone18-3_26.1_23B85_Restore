@interface AXSDListenEngine
+ (AXSDListenEngine)sharedInstance;
+ (id)_stringForState:(int64_t)state;
- (AVAudioFormat)audioFormat;
- (AXSDListenEngine)init;
- (BOOL)_shouldResumeListening;
- (BOOL)_startListeningWithError:(id *)error;
- (BOOL)_stopListeningAndTransitionToState:(int64_t)state;
- (BOOL)containsListenDelegate:(id)delegate;
- (BOOL)supportsVirtualAudioDevice;
- (id)audioEngineInputNode;
- (void)_activateNotifications;
- (void)_carPlayIsConnectedDidChange:(id)change;
- (void)_deactivateNotifications;
- (void)_handleAudioSessionInterruption:(id)interruption;
- (void)_handleBuffer:(id)buffer atTime:(id)time isFile:(BOOL)file;
- (void)_handleConfigurationChangeNotification:(id)notification;
- (void)_handleInterruptionRequestingState:(int64_t)state;
- (void)_interruptCarPlay:(id)play;
- (void)_mediaServicesWereReset:(id)reset;
- (void)_micDisabledUpdated;
- (void)_notifyListeningStartedWithError:(id)error;
- (void)_pipedInFileUpdated;
- (void)_restartSoundRecognitionIfNecesary;
- (void)_setState:(int64_t)state;
- (void)_setupAudioInputWithError:(id *)error shouldInterrupt:(BOOL)interrupt;
- (void)_startIfPossibleAndNotify;
- (void)addListenDelegate:(id)delegate;
- (void)audioEngineInputNode;
- (void)dealloc;
- (void)notifyListeningEncounteredError:(id)error;
- (void)notifyListeningFinishedAudioFile:(id)file;
- (void)notifyListeningReceivedAudioFile:(id)file;
- (void)notifyListeningStartedWithError:(id)error;
- (void)pipeInFile:(id)file;
- (void)removeListenDelegate:(id)delegate;
@end

@implementation AXSDListenEngine

+ (AXSDListenEngine)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[AXSDListenEngine sharedInstance];
  }

  v3 = sharedInstance___SharedEngine;

  return v3;
}

uint64_t __34__AXSDListenEngine_sharedInstance__block_invoke()
{
  sharedInstance___SharedEngine = objc_alloc_init(AXSDListenEngine);

  return MEMORY[0x2821F96F8]();
}

- (AXSDListenEngine)init
{
  v15.receiver = self;
  v15.super_class = AXSDListenEngine;
  v2 = [(AXSDListenEngine *)&v15 init];
  v3 = v2;
  if (v2)
  {
    audioEngine = v2->_audioEngine;
    v2->_audioEngine = 0;

    audioSession = v3->_audioSession;
    v3->_audioSession = 0;

    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    delegates = v3->_delegates;
    v3->_delegates = weakObjectsPointerArray;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.accessibility.axhalistenengine.delegatequeue", v8);
    delegateQueue = v3->_delegateQueue;
    v3->_delegateQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.accessibility.axhalistenengine.audio", v11);
    audioProcessingQueue = v3->_audioProcessingQueue;
    v3->_audioProcessingQueue = v12;

    v3->_state = 0;
    [(AXSDListenEngine *)v3 _activateNotifications];
  }

  return v3;
}

- (void)dealloc
{
  audioEngineInputNode = [(AXSDListenEngine *)self audioEngineInputNode];
  [audioEngineInputNode removeTapOnBus:0];

  [(AXSDListenEngine *)self _deactivateNotifications];
  v4.receiver = self;
  v4.super_class = AXSDListenEngine;
  [(AXSDListenEngine *)&v4 dealloc];
}

- (AVAudioFormat)audioFormat
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  audioProcessingQueue = self->_audioProcessingQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__AXSDListenEngine_audioFormat__block_invoke;
  v5[3] = &unk_278BDD3F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(audioProcessingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__AXSDListenEngine_audioFormat__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioEngineInputNode];

  if (v2)
  {
    v6 = [*(a1 + 32) audioEngineInputNode];
    v3 = [v6 inputFormatForBus:0];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (BOOL)supportsVirtualAudioDevice
{
  v10 = *MEMORY[0x277D85DE8];
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_10;
  }

  if (MGGetSInt32Answer() == 1)
  {
    if (MGGetBoolAnswer())
    {
      v2 = MGGetBoolAnswer();
    }

    else
    {
      v2 = 0;
    }

    v3 = AXLogUltron();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      if (v2)
      {
        v6 = "YES";
      }

      v8 = 136315138;
      v9 = v6;
      v5 = "iPhone supports VAD: %s";
LABEL_18:
      _os_log_impl(&dword_23D62D000, v3, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (MGGetSInt32Answer() != 3)
  {
LABEL_10:
    v3 = AXLogUltron();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_23D62D000, v3, OS_LOG_TYPE_DEFAULT, "Device supports VAD: NO", &v8, 2u);
    }

    LOBYTE(v2) = 0;
    goto LABEL_19;
  }

  v2 = MGGetBoolAnswer();
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (v2)
    {
      v4 = "YES";
    }

    v8 = 136315138;
    v9 = v4;
    v5 = "iPad supports VAD: %s";
    goto LABEL_18;
  }

LABEL_19:

  return v2;
}

- (BOOL)containsListenDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(NSPointerArray *)self->_delegates copy];
  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v7 = [v5 pointerAtIndex:v6];

      v8 = v7 == delegateCopy;
      if (v8)
      {
        break;
      }

      ++v6;
    }

    while (v6 < [v5 count]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addListenDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDListenEngine addListenDelegate:];
  }

  delegateQueue = self->_delegateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__AXSDListenEngine_addListenDelegate___block_invoke;
  v8[3] = &unk_278BDD2C0;
  v8[4] = self;
  v9 = delegateCopy;
  v7 = delegateCopy;
  dispatch_async(delegateQueue, v8);
}

void __38__AXSDListenEngine_addListenDelegate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) containsListenDelegate:*(a1 + 40)])
  {
    v3 = AXLogUltron();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_23D62D000, v3, OS_LOG_TYPE_DEFAULT, "Object %@ is already a delegate of AXHAListenEngine", buf, 0xCu);
    }
  }

  else
  {
    v5 = [*(*(a1 + 32) + 24) count];
    [*(*(a1 + 32) + 24) addPointer:*(a1 + 40)];
    v6 = AXLogUltron();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        __38__AXSDListenEngine_addListenDelegate___block_invoke_cold_1();
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __38__AXSDListenEngine_addListenDelegate___block_invoke_21;
      v11[3] = &unk_278BDD248;
      v11[4] = *(a1 + 32);
      v8 = MEMORY[0x277D85CD0];
      v9 = v11;
    }

    else
    {
      if (v7)
      {
        __38__AXSDListenEngine_addListenDelegate___block_invoke_cold_2();
      }

      v10 = *(a1 + 32);
      v8 = *(v10 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__AXSDListenEngine_addListenDelegate___block_invoke_20;
      block[3] = &unk_278BDD248;
      block[4] = v10;
      v9 = block;
    }

    dispatch_async(v8, v9);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)notifyListeningStartedWithError:(id)error
{
  errorCopy = error;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDListenEngine notifyListeningStartedWithError:];
  }

  delegateQueue = self->_delegateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__AXSDListenEngine_notifyListeningStartedWithError___block_invoke;
  v8[3] = &unk_278BDD2C0;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(delegateQueue, v8);
}

- (void)_notifyListeningStartedWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = [(NSPointerArray *)self->_delegates copy];
  v6 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if (errorCopy)
        {
          [v12 listenEngineFailedToStartWithError:errorCopy];
        }

        else
        {
          audioProcessingQueue = self->_audioProcessingQueue;
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __53__AXSDListenEngine__notifyListeningStartedWithError___block_invoke;
          v14[3] = &unk_278BDD2C0;
          v14[4] = v12;
          v14[5] = self;
          dispatch_async(audioProcessingQueue, v14);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v6);
}

void __53__AXSDListenEngine__notifyListeningStartedWithError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) audioEngineInputNode];
  v2 = [v3 inputFormatForBus:0];
  [v1 listenEngineDidStartWithInputFormat:v2];
}

- (void)notifyListeningEncounteredError:(id)error
{
  errorCopy = error;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDListenEngine notifyListeningEncounteredError:];
  }

  v6 = [(NSPointerArray *)self->_delegates copy];
  delegateQueue = self->_delegateQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__AXSDListenEngine_notifyListeningEncounteredError___block_invoke;
  v10[3] = &unk_278BDD2C0;
  v11 = v6;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = v6;
  dispatch_async(delegateQueue, v10);
}

void __52__AXSDListenEngine_notifyListeningEncounteredError___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 listenEngineEncounteredError:{*(a1 + 40), v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)notifyListeningReceivedAudioFile:(id)file
{
  v17 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDListenEngine notifyListeningReceivedAudioFile:];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_delegates;
  v7 = [(NSPointerArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 listenEngineReceivedAudioFile:{fileCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSPointerArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)notifyListeningFinishedAudioFile:(id)file
{
  v17 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDListenEngine notifyListeningFinishedAudioFile:];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_delegates;
  v7 = [(NSPointerArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 listenEngineFinishedAudioFile:{fileCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSPointerArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)removeListenDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateQueue = self->_delegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__AXSDListenEngine_removeListenDelegate___block_invoke;
  v7[3] = &unk_278BDD2C0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(delegateQueue, v7);
}

void __41__AXSDListenEngine_removeListenDelegate___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 24) count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [*(*(a1 + 32) + 24) pointerAtIndex:v3];
      v5 = *(a1 + 40);

      if (v4 == v5)
      {
        break;
      }

      if (++v3 >= [*(*(a1 + 32) + 24) count])
      {
        goto LABEL_10;
      }
    }

    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __41__AXSDListenEngine_removeListenDelegate___block_invoke_cold_1();
    }

    [*(*(a1 + 32) + 24) removePointerAtIndex:v3];
    [*(*(a1 + 32) + 24) compact];
    if (![*(*(a1 + 32) + 24) count])
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__AXSDListenEngine_removeListenDelegate___block_invoke_28;
      block[3] = &unk_278BDD248;
      block[4] = v7;
      dispatch_async(v8, block);
    }
  }

LABEL_10:
  objc_autoreleasePoolPop(v2);
}

- (void)_setState:(int64_t)state
{
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(AXSDListenEngine *)self _setState:state, v5];
  }

  self->_state = state;
}

+ (id)_stringForState:(int64_t)state
{
  if (state > 6)
  {
    return @"StartingUp";
  }

  else
  {
    return off_278BDD4D8[state];
  }
}

- (void)_handleBuffer:(id)buffer atTime:(id)time isFile:(BOOL)file
{
  bufferCopy = buffer;
  timeCopy = time;
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__AXSDListenEngine__handleBuffer_atTime_isFile___block_invoke;
  block[3] = &unk_278BDD440;
  block[4] = self;
  v11 = bufferCopy;
  v17 = v11;
  v18 = timeCopy;
  fileCopy = file;
  v12 = timeCopy;
  dispatch_async(delegateQueue, block);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__AXSDListenEngine__handleBuffer_atTime_isFile___block_invoke_3;
  v14[3] = &unk_278BDD248;
  v15 = v11;
  v13 = v11;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void *__48__AXSDListenEngine__handleBuffer_atTime_isFile___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  if (result)
  {
    v3 = 0;
    v4 = MEMORY[0x277D85CD0];
    do
    {
      objc_initWeak(&location, [*(*(a1 + 32) + 24) pointerAtIndex:v3]);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__AXSDListenEngine__handleBuffer_atTime_isFile___block_invoke_2;
      block[3] = &unk_278BDD418;
      objc_copyWeak(&v8, &location);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v9 = *(a1 + 56);
      dispatch_async(v4, block);

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
      ++v3;
      result = [*(*(a1 + 32) + 24) count];
    }

    while (v3 < result);
  }

  return result;
}

void __48__AXSDListenEngine__handleBuffer_atTime_isFile___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_opt_respondsToSelector();

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v4;
  if (v3)
  {
    [v4 receivedBuffer:v5 atTime:v6 isFile:*(a1 + 56)];
  }

  else
  {
    [v4 receivedBuffer:v5 atTime:v6];
  }
}

void __48__AXSDListenEngine__handleBuffer_atTime_isFile___block_invoke_3(uint64_t a1)
{
  v2 = +[AXSDAudioLevelsHelper sharedInstance];
  [v2 updateListenersWithBuffer:*(a1 + 32)];
}

- (id)audioEngineInputNode
{
  audioEngine = self->_audioEngine;
  if (audioEngine)
  {
    inputNode = [(AVAudioEngine *)audioEngine inputNode];
  }

  else
  {
    v4 = AXLogUltron();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [AXSDListenEngine audioEngineInputNode];
    }

    inputNode = 0;
  }

  return inputNode;
}

- (BOOL)_startListeningWithError:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D12B60] isInternalInstall])
  {
    mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
    micDisabled = [mEMORY[0x277CE6F98] micDisabled];

    if (micDisabled)
    {
      [(AXSDListenEngine *)self _setState:6];
      return 1;
    }
  }

  v7 = AXLogUltron();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D62D000, v7, OS_LOG_TYPE_DEFAULT, "AXHAListenEngine will start listening", buf, 2u);
  }

  state = self->_state;
  if ((state & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    if (state == 4)
    {
      v9 = AXLogUltron();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AXSDListenEngine _startListeningWithError:];
      }
    }

    return 1;
  }

  if (!self->_audioEngine)
  {
    v11 = AXLogUltron();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      audioEngine = self->_audioEngine;
      *buf = 138412290;
      v51 = audioEngine;
      _os_log_impl(&dword_23D62D000, v11, OS_LOG_TYPE_INFO, "Setting up a new audio engine: %@", buf, 0xCu);
    }

    v13 = objc_alloc_init(MEMORY[0x277CB8388]);
    v14 = self->_audioEngine;
    self->_audioEngine = v13;
  }

  v15 = _os_feature_enabled_impl();
  if (!self->_audioSession)
  {
    v16 = v15;
    v17 = AXLogUltron();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      audioSession = self->_audioSession;
      *buf = 138412290;
      v51 = audioSession;
      _os_log_impl(&dword_23D62D000, v17, OS_LOG_TYPE_INFO, "Getting a new audio session: %@", buf, 0xCu);
    }

    if (v16)
    {
      initSessionForIndependentInputRoute = [objc_alloc(MEMORY[0x277CB83F8]) initSessionForIndependentInputRoute];
      v20 = self->_audioSession;
      self->_audioSession = initSessionForIndependentInputRoute;

      [(AVAudioEngine *)self->_audioEngine setAudioSession:self->_audioSession];
    }

    else
    {
      mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
      v22 = self->_audioSession;
      self->_audioSession = mEMORY[0x277CB83F8];
    }
  }

  if (![(AXSDListenEngine *)self supportsVirtualAudioDevice])
  {
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    v24 = [mEMORY[0x277D26E58] attributeForKey:*MEMORY[0x277D26B60]];
    bOOLValue = [v24 BOOLValue];

    if (bOOLValue)
    {
      if (error)
      {
        [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"Ultron.CarPlay" description:@"_startListeningWithError called while CarPlay running - going into paused state and will resume when CarPlay disconnects"];
        *error = v10 = 0;
        return v10;
      }

      return 0;
    }
  }

  [(AXSDListenEngine *)self _setState:4];
  mEMORY[0x277D26E58]2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v27 = [mEMORY[0x277D26E58]2 attributeForKey:*MEMORY[0x277D26C30]];
  bOOLValue2 = [v27 BOOLValue];

  if (bOOLValue2)
  {
    v29 = AXLogUltron();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D62D000, v29, OS_LOG_TYPE_DEFAULT, "Something is NOW PLAYING; SR must interrupt to startup.", buf, 2u);
    }
  }

  [(AXSDListenEngine *)self _setupAudioInputWithError:error shouldInterrupt:bOOLValue2];
  if (error)
  {
    if (*error)
    {
      v30 = AXLogUltron();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(AXSDListenEngine *)bOOLValue2 _startListeningWithError:error, v30];
      }

LABEL_63:

      return 0;
    }

    [(AVAudioSession *)self->_audioSession setParticipatesInVolumePolicy:0 error:error];
    if (*error)
    {
      v38 = AXLogUltron();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [AXSDListenEngine _startListeningWithError:];
      }

      *error = 0;
    }

    [(AVAudioSession *)self->_audioSession setEligibleForBTSmartRoutingConsideration:0 error:error];
    if (*error)
    {
      v39 = AXLogUltron();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [AXSDListenEngine _startListeningWithError:];
      }

      *error = 0;
    }

    [(AVAudioSession *)self->_audioSession setActive:1 error:error];
    if (*error)
    {
      v30 = AXLogUltron();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [AXSDListenEngine _startListeningWithError:];
      }

      goto LABEL_63;
    }
  }

  else
  {
    [(AVAudioSession *)self->_audioSession setParticipatesInVolumePolicy:0 error:0];
    [(AVAudioSession *)self->_audioSession setEligibleForBTSmartRoutingConsideration:0 error:0];
    [(AVAudioSession *)self->_audioSession setActive:1 error:0];
  }

  if (bOOLValue2)
  {
    v31 = AXLogUltron();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D62D000, v31, OS_LOG_TYPE_DEFAULT, "Reconfiguring audio session to be mixable.", buf, 2u);
    }

    [(AXSDListenEngine *)self _setupAudioInputWithError:error shouldInterrupt:0];
    if (error)
    {
      if (*error)
      {
        v30 = AXLogUltron();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [AXSDListenEngine _startListeningWithError:];
        }

        goto LABEL_63;
      }
    }
  }

  attachedNodes = [(AVAudioEngine *)self->_audioEngine attachedNodes];
  v33 = [attachedNodes count] == 0;

  if (!v33)
  {
    audioEngineInputNode = [(AXSDListenEngine *)self audioEngineInputNode];
    [audioEngineInputNode removeTapOnBus:0];
  }

  [(AXSDListenEngine *)self audioEngineInputNode];

  audioEngine = [(AXSDListenEngine *)self audioEngine];
  [audioEngine prepare];

  audioEngine2 = [(AXSDListenEngine *)self audioEngine];
  v37 = [audioEngine2 startAndReturnError:error];

  if (!v37 || error && *error)
  {
    v30 = AXLogUltron();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [AXSDListenEngine _startListeningWithError:];
    }

    goto LABEL_63;
  }

  audioEngineInputNode2 = [(AXSDListenEngine *)self audioEngineInputNode];
  v42 = [audioEngineInputNode2 inputFormatForBus:0];

  if ([v42 channelCount] && (objc_msgSend(v42, "sampleRate"), v43 != 0.0))
  {
    objc_initWeak(buf, self);
    audioEngineInputNode3 = [(AXSDListenEngine *)self audioEngineInputNode];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __45__AXSDListenEngine__startListeningWithError___block_invoke;
    v48[3] = &unk_278BDD468;
    objc_copyWeak(&v49, buf);
    [audioEngineInputNode3 installTapOnBus:0 bufferSize:4410 format:v42 block:v48];

    [(AXSDListenEngine *)self _setState:5];
    v46 = AXLogUltron();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *v47 = 0;
      _os_log_impl(&dword_23D62D000, v46, OS_LOG_TYPE_DEFAULT, "AXHAListenEngine did start listening", v47, 2u);
    }

    objc_destroyWeak(&v49);
    objc_destroyWeak(buf);
    v10 = 1;
  }

  else
  {
    v44 = AXLogUltron();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [AXSDListenEngine _startListeningWithError:];
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"com.apple.accessibility.ultron" description:{@"Invalid input format: %@", v42}];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

void __45__AXSDListenEngine__startListeningWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleBuffer:v6 atTime:v5];
}

- (BOOL)_stopListeningAndTransitionToState:(int64_t)state
{
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_DEFAULT, "AXHAListenEngine will stop listening.", buf, 2u);
  }

  if (![AXSDListenEngine _stateIsNotListening:state])
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXSDListenEngine _stopListeningAndTransitionToState:];
    }

    state = 1;
  }

  if ([(AXSDListenEngine *)self _notListeningForAnyReason])
  {
    [(AXSDListenEngine *)self _setState:state];
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_23D62D000, v7, OS_LOG_TYPE_DEFAULT, "AXHAListenEngine was already stopped", v20, 2u);
    }
  }

  else
  {
    if (self->_audioEngine)
    {
      audioEngineInputNode = [(AXSDListenEngine *)self audioEngineInputNode];
      [audioEngineInputNode removeTapOnBus:0];

      audioEngine = [(AXSDListenEngine *)self audioEngine];
      [audioEngine stop];

      audioEngine = self->_audioEngine;
      self->_audioEngine = 0;
    }

    audioSession = self->_audioSession;
    v19 = 0;
    v12 = [(AVAudioSession *)audioSession setActive:0 withOptions:1 error:&v19];
    v13 = v19;
    v7 = v13;
    if (!v12 || v13)
    {
      v14 = AXLogUltron();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AXSDListenEngine _stopListeningAndTransitionToState:];
      }
    }

    v15 = self->_audioSession;
    self->_audioSession = 0;

    [(AXSDListenEngine *)self _setState:state];
    v16 = AXLogUltron();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23D62D000, v16, OS_LOG_TYPE_DEFAULT, "AXHAListenEngine did stop listening", v18, 2u);
    }
  }

  return 1;
}

- (void)_activateNotifications
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = AXIsSoundDetectionMedinaSupportEnabled();
  v4 = AXLogUltron();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_DEFAULT, "Medina Support is Enabled on a Medina Device. No need to setup notifications.", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_INFO, "Activating Notifications", buf, 2u);
    }

    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    v7 = MEMORY[0x277D26B68];
    v22[0] = *MEMORY[0x277D26B68];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [mEMORY[0x277D26E58] setAttribute:v8 forKey:*MEMORY[0x277D26DD0] error:0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = *v7;
    mEMORY[0x277D26E58]2 = [MEMORY[0x277D26E58] sharedAVSystemController];
    [defaultCenter addObserver:self selector:sel__carPlayIsConnectedDidChange_ name:v10 object:mEMORY[0x277D26E58]2];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__handleAudioSessionInterruption_ name:*MEMORY[0x277CB8068] object:self->_audioSession];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__handleConfigurationChangeNotification_ name:*MEMORY[0x277CB8008] object:self->_audioEngine];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel__mediaServicesWereReset_ name:*MEMORY[0x277CB80A0] object:self->_audioSession];

    if ([MEMORY[0x277D12B60] isInternalInstall])
    {
      objc_initWeak(buf, self);
      mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __42__AXSDListenEngine__activateNotifications__block_invoke;
      v19[3] = &unk_278BDD060;
      objc_copyWeak(&v20, buf);
      [mEMORY[0x277CE6F98] registerUpdateBlock:v19 forRetrieveSelector:sel_micDisabled withListener:self];

      mEMORY[0x277CE6F98]2 = [MEMORY[0x277CE6F98] sharedInstance];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __42__AXSDListenEngine__activateNotifications__block_invoke_2;
      v17[3] = &unk_278BDD060;
      objc_copyWeak(&v18, buf);
      [mEMORY[0x277CE6F98]2 registerUpdateBlock:v17 forRetrieveSelector:sel_pipedInFile withListener:self];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }
  }
}

void __42__AXSDListenEngine__activateNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _micDisabledUpdated];
}

void __42__AXSDListenEngine__activateNotifications__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pipedInFileUpdated];
}

- (void)_deactivateNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)_micDisabledUpdated
{
  v16 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D12B60] isInternalInstall])
  {
    mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
    micDisabled = [mEMORY[0x277CE6F98] micDisabled];
    v5 = @"enabled";
    if (micDisabled)
    {
      v5 = @"disabled";
    }

    v6 = v5;

    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_23D62D000, v7, OS_LOG_TYPE_DEFAULT, "AUTOMATION: Mic: %@", buf, 0xCu);
    }

    mEMORY[0x277CE6F98]2 = [MEMORY[0x277CE6F98] sharedInstance];
    micDisabled2 = [mEMORY[0x277CE6F98]2 micDisabled];

    if (micDisabled2)
    {
      if (![(AXSDListenEngine *)self isListening])
      {
LABEL_11:

        return;
      }

      audioProcessingQueue = self->_audioProcessingQueue;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __39__AXSDListenEngine__micDisabledUpdated__block_invoke;
      v13[3] = &unk_278BDD248;
      v13[4] = self;
      v11 = v13;
    }

    else
    {
      audioProcessingQueue = self->_audioProcessingQueue;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __39__AXSDListenEngine__micDisabledUpdated__block_invoke_2;
      v12[3] = &unk_278BDD248;
      v12[4] = self;
      v11 = v12;
    }

    dispatch_async(audioProcessingQueue, v11);
    goto LABEL_11;
  }
}

uint64_t __39__AXSDListenEngine__micDisabledUpdated__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopListeningAndTransitionToState:1];
  v2 = *(a1 + 32);

  return [v2 _startListeningWithError:0];
}

void *__39__AXSDListenEngine__micDisabledUpdated__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _stopListeningAndTransitionToState:1];
  result = [*(*(a1 + 32) + 24) count];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _startIfPossibleAndNotify];
  }

  return result;
}

- (void)_pipedInFileUpdated
{
  v5 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
  pipedInFile = [mEMORY[0x277CE6F98] pipedInFile];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_23D62D000, self, OS_LOG_TYPE_ERROR, "Not processing piped in file: (%@)", v4, 0xCu);
}

- (void)pipeInFile:(id)file
{
  v31 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v5 = [MEMORY[0x277CBEBC0] URLWithString:fileCopy];
  v24 = 0;
  v6 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:v5 error:&v24];
  v7 = v24;
  v8 = AXLogUltron();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_23D62D000, v8, OS_LOG_TYPE_DEFAULT, "Processing file: %@", buf, 0xCu);
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    [(AXSDListenEngine *)self notifyListeningReceivedAudioFile:v6];
    framePosition = [v6 framePosition];
    if (framePosition >= [v6 length])
    {
LABEL_19:
      v22 = AXLogUltron();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v6;
        _os_log_impl(&dword_23D62D000, v22, OS_LOG_TYPE_DEFAULT, "Finished processing: %@", buf, 0xCu);
      }

      [(AXSDListenEngine *)self notifyListeningFinishedAudioFile:v6];
      CFRunLoopRunInMode(*MEMORY[0x277CBF058], 1.0, 0);
      v7 = 0;
    }

    else
    {
      while (1)
      {
        v12 = MEMORY[0x277CB8428];
        framePosition2 = [v6 framePosition];
        processingFormat = [v6 processingFormat];
        [processingFormat sampleRate];
        v15 = [v12 timeWithSampleTime:framePosition2 atRate:?];

        v16 = objc_alloc(MEMORY[0x277CB83C8]);
        processingFormat2 = [v6 processingFormat];
        v18 = [v16 initWithPCMFormat:processingFormat2 frameCapacity:4410];

        v23 = 0;
        [v6 readIntoBuffer:v18 error:&v23];
        v19 = v23;
        if (v19)
        {
          break;
        }

        if (![v18 frameLength])
        {

          goto LABEL_19;
        }

        [(AXSDListenEngine *)self _handleBuffer:v18 atTime:v15 isFile:1];

        framePosition3 = [v6 framePosition];
        if (framePosition3 >= [v6 length])
        {
          goto LABEL_19;
        }
      }

      v7 = v19;
      v21 = AXLogUltron();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [AXSDListenEngine pipeInFile:];
      }

      [(AXSDListenEngine *)self notifyListeningEncounteredError:v7];
    }
  }

  else
  {
    v10 = AXLogUltron();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v26 = fileCopy;
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = v7;
      _os_log_error_impl(&dword_23D62D000, v10, OS_LOG_TYPE_ERROR, "AUTOMATION: Unable to open file: %@\n%@\n%@", buf, 0x20u);
    }

    [(AXSDListenEngine *)self notifyListeningEncounteredError:v7];
  }
}

- (void)_setupAudioInputWithError:(id *)error shouldInterrupt:(BOOL)interrupt
{
  v25 = *MEMORY[0x277D85DE8];
  if (interrupt)
  {
    v7 = 40;
  }

  else
  {
    v7 = 41;
  }

  if ([MEMORY[0x277D12B60] currentProcessIsAXUIServer])
  {
    v8 = AXLogUltron();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_23D62D000, v8, OS_LOG_TYPE_INFO, "Disabling microphone usage indicator for AXSDListenEngine", v24, 2u);
    }

    [(AVAudioSession *)self->_audioSession setPrefersNoMicrophoneUsageIndicator:1 error:error];
    if (error && *error)
    {
      v9 = AXLogUltron();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AXSDListenEngine _setupAudioInputWithError:shouldInterrupt:];
      }

      *error = 0;
    }
  }

  [(AVAudioSession *)self->_audioSession setMXSessionProperty:*MEMORY[0x277D27320] value:MEMORY[0x277CBEC38] error:error];
  if (error && *error)
  {
    v10 = AXLogUltron();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AXSDListenEngine _setupAudioInputWithError:shouldInterrupt:];
    }

    *error = 0;
  }

  v11 = _os_feature_enabled_impl();
  v12 = MEMORY[0x277CB8038];
  if (!v11)
  {
    v12 = MEMORY[0x277CB8028];
  }

  v13 = *v12;
  supportsVirtualAudioDevice = [(AXSDListenEngine *)self supportsVirtualAudioDevice];
  v15 = AXLogUltron();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (supportsVirtualAudioDevice)
  {
    if (v11)
    {
      if (v16)
      {
        *v24 = 0;
        v17 = "Using Default Mode for Audio Session.";
LABEL_31:
        _os_log_impl(&dword_23D62D000, v15, OS_LOG_TYPE_DEFAULT, v17, v24, 2u);
      }
    }

    else if (v16)
    {
      *v24 = 0;
      v17 = "Using Sound Recognition Mode for Audio Session.";
      goto LABEL_31;
    }

    v19 = MEMORY[0x277CB80A8];
    if (!v11)
    {
      v19 = MEMORY[0x277CB80C8];
    }

    [(AVAudioSession *)self->_audioSession setCategory:v13 mode:*v19 options:v7 error:error, *v24];
    if (error)
    {
      if (*error)
      {
        v18 = AXLogUltron();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        goto LABEL_28;
      }

      [(AVAudioSession *)self->_audioSession setAllowHapticsAndSystemSoundsDuringRecording:1 error:error];
      if (*error)
      {
        v18 = AXLogUltron();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [AXSDListenEngine _setupAudioInputWithError:shouldInterrupt:];
        }

        goto LABEL_53;
      }
    }

    else
    {
      [(AVAudioSession *)self->_audioSession setAllowHapticsAndSystemSoundsDuringRecording:1 error:0];
    }

    v18 = AXLogUltron();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    v23 = MEMORY[0x277CCABB0];
    [(AVAudioSession *)self->_audioSession preferredInputSampleRate];
    v21 = [v23 numberWithDouble:?];
    *v24 = 138412290;
    *&v24[4] = v21;
    v22 = "Successfully initialized audio session for listen with Sound Recognition Mode: Preferred rate: %@";
LABEL_45:
    _os_log_impl(&dword_23D62D000, v18, OS_LOG_TYPE_DEFAULT, v22, v24, 0xCu);

    goto LABEL_53;
  }

  if (v16)
  {
    *v24 = 0;
    _os_log_impl(&dword_23D62D000, v15, OS_LOG_TYPE_DEFAULT, "Using legacy Default Audio Session.", v24, 2u);
  }

  [(AVAudioSession *)self->_audioSession setCategory:v13 mode:*MEMORY[0x277CB80A8] options:v7 error:error];
  if (error)
  {
    if (*error)
    {
      v18 = AXLogUltron();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_53:

        goto LABEL_54;
      }

LABEL_28:
      [AXSDListenEngine _setupAudioInputWithError:shouldInterrupt:];
      goto LABEL_53;
    }

    if (!interrupt)
    {
      [(AVAudioSession *)self->_audioSession setAudioHardwareControlFlags:2 error:error];
      if (*error)
      {
        v18 = AXLogUltron();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [AXSDListenEngine _setupAudioInputWithError:shouldInterrupt:];
        }

        goto LABEL_53;
      }

      [(AVAudioSession *)self->_audioSession preferDecoupledIO:1 error:error];
      if (*error)
      {
        v18 = AXLogUltron();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [AXSDListenEngine _setupAudioInputWithError:shouldInterrupt:];
        }

        goto LABEL_53;
      }

      [(AVAudioSession *)self->_audioSession setAllowHapticsAndSystemSoundsDuringRecording:1 error:error];
      if (*error)
      {
        v18 = AXLogUltron();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

LABEL_60:
        [AXSDListenEngine _setupAudioInputWithError:shouldInterrupt:];
        goto LABEL_53;
      }

      [(AVAudioSession *)self->_audioSession setParticipatesInVolumePolicy:0 error:error];
      if (*error)
      {
        v18 = AXLogUltron();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        goto LABEL_60;
      }

LABEL_40:
      v18 = AXLogUltron();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      v20 = MEMORY[0x277CCABB0];
      [(AVAudioSession *)self->_audioSession preferredInputSampleRate];
      v21 = [v20 numberWithDouble:?];
      *v24 = 138412290;
      *&v24[4] = v21;
      v22 = "Successfully initialized audio session for listen: Preferred rate: %@";
      goto LABEL_45;
    }
  }

  else if (!interrupt)
  {
    [(AVAudioSession *)self->_audioSession setAudioHardwareControlFlags:2 error:0];
    [(AVAudioSession *)self->_audioSession preferDecoupledIO:1 error:0];
    [(AVAudioSession *)self->_audioSession setAllowHapticsAndSystemSoundsDuringRecording:1 error:0];
    [(AVAudioSession *)self->_audioSession setParticipatesInVolumePolicy:0 error:0];
    goto LABEL_40;
  }

LABEL_54:
}

- (void)_startIfPossibleAndNotify
{
  if (!self->_audioEngine)
  {
    v3 = objc_alloc_init(MEMORY[0x277CB8388]);
    audioEngine = self->_audioEngine;
    self->_audioEngine = v3;
  }

  v5 = _os_feature_enabled_impl();
  if (!self->_audioSession)
  {
    if (v5)
    {
      initSessionForIndependentInputRoute = [objc_alloc(MEMORY[0x277CB83F8]) initSessionForIndependentInputRoute];
      audioSession = self->_audioSession;
      self->_audioSession = initSessionForIndependentInputRoute;

      [(AVAudioEngine *)self->_audioEngine setAudioSession:self->_audioSession];
    }

    else
    {
      mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
      v9 = self->_audioSession;
      self->_audioSession = mEMORY[0x277CB83F8];
    }
  }

  v19 = 0;
  v10 = [(AXSDListenEngine *)self _startListeningWithError:&v19];
  v11 = v19;
  v12 = v11;
  if (!v10 || v11)
  {
    v13 = AXLogUltron();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AXSDListenEngine _startIfPossibleAndNotify];
    }

    domain = [v12 domain];
    if ([domain isEqualToString:@"Ultron.CarPlay"])
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    [(AXSDListenEngine *)self _stopListeningAndTransitionToState:v15];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__AXSDListenEngine__startIfPossibleAndNotify__block_invoke;
  block[3] = &unk_278BDD2C0;
  block[4] = self;
  v18 = v12;
  v16 = v12;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_handleAudioSessionInterruption:(id)interruption
{
  v13 = *MEMORY[0x277D85DE8];
  interruptionCopy = interruption;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = interruptionCopy;
    _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_DEFAULT, "Audio Session received Audio Interruption: %@", buf, 0xCu);
  }

  if (AXIsSoundDetectionMedinaSupportEnabled())
  {
    userInfo = AXLogUltron();
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_ERROR))
    {
      [AXSDListenEngine _handleAudioSessionInterruption:];
    }
  }

  else
  {
    userInfo = [interruptionCopy userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x277CB8080]];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    audioProcessingQueue = self->_audioProcessingQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__AXSDListenEngine__handleAudioSessionInterruption___block_invoke;
    v10[3] = &unk_278BDD490;
    v10[4] = self;
    v10[5] = unsignedIntegerValue;
    dispatch_async(audioProcessingQueue, v10);
  }
}

void *__52__AXSDListenEngine__handleAudioSessionInterruption___block_invoke(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[5];
  if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    v4 = AXLogUltron();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = 2;
      _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_DEFAULT, "Audio Session interruption started", buf, 2u);
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v4 = AXLogUltron();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_DEFAULT, "Audio Session interruption ended", v6, 2u);
    }

    v5 = 5;
  }

  return [v2[4] _handleInterruptionRequestingState:v5];
}

- (BOOL)_shouldResumeListening
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_delegates;
  v3 = [(NSPointerArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) listenEngineShouldResumeAfterAudioSessionInterruption])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSPointerArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_handleInterruptionRequestingState:(int64_t)state
{
  state = self->_state;
  if (state != state)
  {
    v5 = state & 0xFFFFFFFFFFFFFFFELL;
    if (state == 2 && v5 == 4)
    {

      [(AXSDListenEngine *)self _stopListeningAndTransitionToState:2];
    }

    else if (state == 5 && v5 == 2 && [(AXSDListenEngine *)self _shouldResumeListening])
    {

      [(AXSDListenEngine *)self _startIfPossibleAndNotify];
    }

    else
    {
      v6 = AXLogUltron();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [AXSDListenEngine _handleInterruptionRequestingState:];
      }
    }
  }
}

- (void)_carPlayIsConnectedDidChange:(id)change
{
  v10 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = changeCopy;
    _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_DEFAULT, "CarPlay is Connected Changed: %@", &v8, 0xCu);
  }

  if (AXIsSoundDetectionMedinaSupportEnabled())
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXSDListenEngine _carPlayIsConnectedDidChange:];
    }
  }

  else if (![(AXSDListenEngine *)self supportsVirtualAudioDevice])
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_23D62D000, v7, OS_LOG_TYPE_DEFAULT, "CarPlay is not supported on this device. Interrupting audio session.", &v8, 2u);
    }

    [(AXSDListenEngine *)self _interruptCarPlay:changeCopy];
  }
}

- (void)_interruptCarPlay:(id)play
{
  userInfo = [play userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D26B70]];
  bOOLValue = [v5 BOOLValue];

  audioProcessingQueue = self->_audioProcessingQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__AXSDListenEngine__interruptCarPlay___block_invoke;
  v8[3] = &unk_278BDD4B8;
  v9 = bOOLValue;
  v8[4] = self;
  dispatch_async(audioProcessingQueue, v8);
}

void __38__AXSDListenEngine__interruptCarPlay___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v4[4];
  if (v3 == 1)
  {
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {

      [v4 _handleInterruptionRequestingState:2];
      return;
    }

    goto LABEL_10;
  }

  if (v5 != 2)
  {
LABEL_10:
    v10 = AXLogUltron();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = *(*(a1 + 32) + 32);
      *buf = 67109376;
      v15 = v11;
      v16 = 2048;
      v17 = v12;
      _os_log_impl(&dword_23D62D000, v10, OS_LOG_TYPE_INFO, "CarPlay changed state connected:%i, but nothing to do b/c SR in state: %ld", buf, 0x12u);
    }

    return;
  }

  v6 = AXLogUltron();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D62D000, v6, OS_LOG_TYPE_DEFAULT, "CarPlay disconnected - waiting for it to become an unpickable route to restart.", buf, 2u);
  }

  [*(a1 + 32) _setState:3];
  v7 = dispatch_time(0, 3000000000);
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__AXSDListenEngine__interruptCarPlay___block_invoke_105;
  block[3] = &unk_278BDD248;
  block[4] = v8;
  dispatch_after(v7, v9, block);
}

void __38__AXSDListenEngine__interruptCarPlay___block_invoke_105(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4[4] == 3)
  {

    [v4 _handleInterruptionRequestingState:5];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = AXLogUltron();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_DEFAULT, "CarPlay disconnect waiting period over, but no longer in AXHAListenEngineNotListening_CarPlayWaitingOnDisconnect state - doing nothing.", v6, 2u);
    }
  }
}

- (void)_handleConfigurationChangeNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = notificationCopy;
    _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_DEFAULT, "Audio Config Changed: %@", buf, 0xCu);
  }

  if (AXIsSoundDetectionMedinaSupportEnabled())
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXSDListenEngine _handleConfigurationChangeNotification:];
    }

    goto LABEL_13;
  }

  if (self->_state == 2)
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "AXSDListenEngine state is currently in an interrupt state, so can't handle configuration change";
LABEL_12:
      _os_log_impl(&dword_23D62D000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }
  }

  else
  {
    if (![(AXSDListenEngine *)self supportsVirtualAudioDevice])
    {
      audioProcessingQueue = self->_audioProcessingQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__AXSDListenEngine__handleConfigurationChangeNotification___block_invoke;
      block[3] = &unk_278BDD248;
      block[4] = self;
      dispatch_async(audioProcessingQueue, block);
      goto LABEL_14;
    }

    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Using new Sound Recognition VAD. Ignoring...";
      goto LABEL_12;
    }
  }

LABEL_13:

LABEL_14:
}

- (void)_mediaServicesWereReset:(id)reset
{
  v11 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = resetCopy;
    _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_DEFAULT, "Media reset: %@", buf, 0xCu);
  }

  if (AXIsSoundDetectionMedinaSupportEnabled())
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXSDListenEngine _mediaServicesWereReset:];
    }
  }

  else
  {
    audioProcessingQueue = self->_audioProcessingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__AXSDListenEngine__mediaServicesWereReset___block_invoke;
    block[3] = &unk_278BDD248;
    block[4] = self;
    dispatch_async(audioProcessingQueue, block);
  }
}

uint64_t __44__AXSDListenEngine__mediaServicesWereReset___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 32) + 40);
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_23D62D000, v3, OS_LOG_TYPE_INFO, "Destroying current audio engine: %@", &v12, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = AXLogUltron();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(*(a1 + 32) + 48);
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_23D62D000, v7, OS_LOG_TYPE_INFO, "Destroying current audio session: %@", &v12, 0xCu);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  *(v9 + 48) = 0;

  [*(a1 + 32) _setState:2];
  return [*(a1 + 32) _restartSoundRecognitionIfNecesary];
}

- (void)_restartSoundRecognitionIfNecesary
{
  v11 = *MEMORY[0x277D85DE8];
  _notListeningForAnyReason = [(AXSDListenEngine *)self _notListeningForAnyReason];
  if (self->_state == 2)
  {
    mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
    soundDetectionEnabled = [mEMORY[0x277CE6F98] soundDetectionEnabled];
  }

  else
  {
    soundDetectionEnabled = 0;
  }

  v6 = AXLogUltron();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109376;
    v8[1] = !_notListeningForAnyReason;
    v9 = 1024;
    v10 = soundDetectionEnabled;
    _os_log_impl(&dword_23D62D000, v6, OS_LOG_TYPE_DEFAULT, "Restarting SR if necessary. wasListening = %i, shouldRestartAnyway: %i", v8, 0xEu);
  }

  if (AXIsSoundDetectionMedinaSupportEnabled())
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [AXSDListenEngine _restartSoundRecognitionIfNecesary];
    }
  }

  else
  {
    if (!_notListeningForAnyReason)
    {
      [(AXSDListenEngine *)self _stopListeningAndTransitionToState:1];
    }

    if (soundDetectionEnabled)
    {
      [(AXSDListenEngine *)self _startIfPossibleAndNotify];
    }
  }
}

- (void)addListenDelegate:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__AXSDListenEngine_addListenDelegate___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__AXSDListenEngine_addListenDelegate___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)notifyListeningEncounteredError:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)notifyListeningReceivedAudioFile:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)notifyListeningFinishedAudioFile:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __41__AXSDListenEngine_removeListenDelegate___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_setState:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [AXSDListenEngine _stringForState:*(a1 + 32)];
  v6 = [AXSDListenEngine _stringForState:a2];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_23D62D000, a3, OS_LOG_TYPE_DEBUG, "State transitioning from %@ to %@", &v7, 0x16u);
}

- (void)audioEngineInputNode
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_startListeningWithError:(os_log_t)log .cold.1(char a1, uint64_t *a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4[0] = 67109378;
  v4[1] = a1 & 1;
  v5 = 2112;
  v6 = v3;
  _os_log_error_impl(&dword_23D62D000, log, OS_LOG_TYPE_ERROR, "Failed to set up audio session (with interruption: %i). %@", v4, 0x12u);
}

- (void)_startListeningWithError:.cold.2()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Error removing participation from volume button: %@", v2, v3, v4, v5);
}

- (void)_startListeningWithError:.cold.3()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Error removing participation BT smart routing: %@", v2, v3, v4, v5);
}

- (void)_startListeningWithError:.cold.4()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Error activating audio session: %@", v2, v3, v4, v5);
}

- (void)_startListeningWithError:.cold.5()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Failed to set up audio session after interruption. %@", v2, v3, v4, v5);
}

- (void)_startListeningWithError:.cold.6()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Error starting audio engine: %@", v2, v3, v4, v5);
}

- (void)_startListeningWithError:.cold.8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setupAudioInputWithError:shouldInterrupt:.cold.1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Error setting Mic Indicator Control to Opt Out %@", v2, v3, v4, v5);
}

- (void)_setupAudioInputWithError:shouldInterrupt:.cold.2()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Error setting kMXSessionProperty_PrefersNoInterruptionsDuringRemoteDeviceControl: %@", v2, v3, v4, v5);
}

- (void)_setupAudioInputWithError:shouldInterrupt:.cold.3()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Error setting category, mode and options: %@", v2, v3, v4, v5);
}

- (void)_setupAudioInputWithError:shouldInterrupt:.cold.4()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Error setting HW control flags %@", v2, v3, v4, v5);
}

- (void)_setupAudioInputWithError:shouldInterrupt:.cold.5()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Error setting decoupleIO: %@", v2, v3, v4, v5);
}

- (void)_setupAudioInputWithError:shouldInterrupt:.cold.6()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Error setting allowHapticsAndSystemSoundsDuringRecording: %@", v2, v3, v4, v5);
}

- (void)_setupAudioInputWithError:shouldInterrupt:.cold.9()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Error allowing system sounds and haptics while recording: %@", v2, v3, v4, v5);
}

- (void)_handleAudioSessionInterruption:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleInterruptionRequestingState:.cold.1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&dword_23D62D000, v1, OS_LOG_TYPE_ERROR, "Invalid interruption state transition from %ld to %ld.", v2, 0x16u);
}

- (void)_carPlayIsConnectedDidChange:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleConfigurationChangeNotification:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_mediaServicesWereReset:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end