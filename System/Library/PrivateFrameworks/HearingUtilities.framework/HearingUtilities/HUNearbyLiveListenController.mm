@interface HUNearbyLiveListenController
+ (HUNearbyLiveListenController)sharedInstance;
- (BOOL)_updateState:(int64_t)state audioLevel:(float)level isPlayingBack:(BOOL)back transcription:(id)transcription;
- (HUNearbyLiveListenController)init;
- (NSString)transcription;
- (void)registerUpdateBlock:(id)block withListener:(id)listener;
- (void)removeListener:(id)listener;
- (void)setTranscription:(id)transcription;
- (void)startLiveListen;
- (void)startLiveListenRewind;
- (void)stopLiveListen;
- (void)stopLiveListenRewind;
@end

@implementation HUNearbyLiveListenController

- (NSString)transcription
{
  [(NSLock *)self->_transcriptionLock lock];
  v3 = [(NSString *)self->_transcription copy];
  [(NSLock *)self->_transcriptionLock unlock];

  return v3;
}

+ (HUNearbyLiveListenController)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[HUNearbyLiveListenController sharedInstance];
  }

  v3 = sharedInstance_obj;

  return v3;
}

void __46__HUNearbyLiveListenController_sharedInstance__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = sharedInstance_obj;
  sharedInstance_obj = v2;

  v4 = [HUNearbyLiveListenControlleriOS alloc];
  v5 = [(HUNearbyLiveListenControlleriOS *)v4 initWithController:sharedInstance_obj];
  [sharedInstance_obj setDeviceImplementation:v5];
}

- (HUNearbyLiveListenController)init
{
  v11.receiver = self;
  v11.super_class = HUNearbyLiveListenController;
  v2 = [(HUNearbyLiveListenController *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    array = [MEMORY[0x1E695DF70] array];
    updateBlocks = v3->_updateBlocks;
    v3->_updateBlocks = array;

    v6 = objc_opt_new();
    updateLock = v3->_updateLock;
    v3->_updateLock = v6;

    v8 = objc_opt_new();
    transcriptionLock = v3->_transcriptionLock;
    v3->_transcriptionLock = v8;
  }

  return v3;
}

- (void)setTranscription:(id)transcription
{
  transcriptionCopy = transcription;
  [(NSLock *)self->_transcriptionLock lock];
  transcription = self->_transcription;
  self->_transcription = transcriptionCopy;
  v6 = transcriptionCopy;

  [(NSLock *)self->_transcriptionLock unlock];
}

- (void)registerUpdateBlock:(id)block withListener:(id)listener
{
  aBlock = block;
  listenerCopy = listener;
  if (aBlock)
  {
    v7 = [HUIdentifierAndBlockPair alloc];
    v8 = _Block_copy(aBlock);
    v9 = [(HUIdentifierAndBlockPair *)v7 initWithIdentifier:listenerCopy andBlock:v8];

    updateLock = [(HUNearbyLiveListenController *)self updateLock];
    [updateLock lock];

    updateBlocks = [(HUNearbyLiveListenController *)self updateBlocks];
    v12 = [updateBlocks count];

    updateBlocks2 = [(HUNearbyLiveListenController *)self updateBlocks];
    [updateBlocks2 addObject:v9];

    updateLock2 = [(HUNearbyLiveListenController *)self updateLock];
    [updateLock2 unlock];

    v15 = [HUListenerHelper listenerHelperWithListener:listenerCopy andDelegate:self];
    if (!v12)
    {
      deviceImplementation = [(HUNearbyLiveListenController *)self deviceImplementation];
      [deviceImplementation startObserving];
    }

    state = [(HUNearbyLiveListenController *)self state];
    [(HUNearbyLiveListenController *)self audioLevel];
    v19 = v18;
    isPlayingBack = [(HUNearbyLiveListenController *)self isPlayingBack];
    transcription = [(HUNearbyLiveListenController *)self transcription];
    (*(aBlock + 2))(aBlock, state, isPlayingBack, transcription, v19);
  }

  else
  {
    [(HUNearbyLiveListenController *)self removeListener:listenerCopy];
  }
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  updateLock = [(HUNearbyLiveListenController *)self updateLock];
  [updateLock lock];

  updateBlocks = [(HUNearbyLiveListenController *)self updateBlocks];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__HUNearbyLiveListenController_removeListener___block_invoke;
  v14[3] = &unk_1E85CC0C8;
  v15 = listenerCopy;
  v7 = listenerCopy;
  v8 = [updateBlocks indexesOfObjectsPassingTest:v14];

  if (![v8 count])
  {
    updateLock2 = [(HUNearbyLiveListenController *)self updateLock];
    [updateLock2 unlock];
    goto LABEL_5;
  }

  updateBlocks2 = [(HUNearbyLiveListenController *)self updateBlocks];
  [updateBlocks2 removeObjectsAtIndexes:v8];

  updateBlocks3 = [(HUNearbyLiveListenController *)self updateBlocks];
  v11 = [updateBlocks3 count];

  updateLock3 = [(HUNearbyLiveListenController *)self updateLock];
  [updateLock3 unlock];

  if (!v11)
  {
    updateLock2 = [(HUNearbyLiveListenController *)self deviceImplementation];
    [updateLock2 stopObserving];
LABEL_5:
  }
}

BOOL __47__HUNearbyLiveListenController_removeListener___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)startLiveListen
{
  deviceImplementation = [(HUNearbyLiveListenController *)self deviceImplementation];
  [deviceImplementation startLiveListen];
}

- (void)stopLiveListen
{
  deviceImplementation = [(HUNearbyLiveListenController *)self deviceImplementation];
  [deviceImplementation stopLiveListen];
}

- (void)startLiveListenRewind
{
  if (![(HUNearbyLiveListenController *)self isPlayingBack])
  {
    deviceImplementation = [(HUNearbyLiveListenController *)self deviceImplementation];
    [deviceImplementation startLiveListenRewind];
  }
}

- (void)stopLiveListenRewind
{
  if ([(HUNearbyLiveListenController *)self isPlayingBack])
  {
    deviceImplementation = [(HUNearbyLiveListenController *)self deviceImplementation];
    [deviceImplementation stopLiveListenRewind];
  }
}

- (BOOL)_updateState:(int64_t)state audioLevel:(float)level isPlayingBack:(BOOL)back transcription:(id)transcription
{
  backCopy = back;
  v36 = *MEMORY[0x1E69E9840];
  transcriptionCopy = transcription;
  state = [(HUNearbyLiveListenController *)self state];
  [(HUNearbyLiveListenController *)self audioLevel];
  v13 = v12;
  transcription = [(HUNearbyLiveListenController *)self transcription];
  v15 = transcription;
  if (transcriptionCopy | transcription)
  {
    v16 = [transcription isEqualToString:transcriptionCopy] ^ 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | [(HUNearbyLiveListenController *)self isPlayingBack]^ backCopy;
  if (state != state || v13 != level || v17)
  {
    v30 = v17;
    [(HUNearbyLiveListenController *)self setState:state];
    *&v18 = level;
    [(HUNearbyLiveListenController *)self setAudioLevel:v18];
    [(HUNearbyLiveListenController *)self setTranscription:transcriptionCopy];
    [(HUNearbyLiveListenController *)self setIsPlayingBack:backCopy];
    updateLock = [(HUNearbyLiveListenController *)self updateLock];
    [updateLock lock];

    updateBlocks = [(HUNearbyLiveListenController *)self updateBlocks];
    v21 = [updateBlocks copy];

    updateLock2 = [(HUNearbyLiveListenController *)self updateLock];
    [updateLock2 unlock];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v32;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v23);
          }

          block = [*(*(&v31 + 1) + 8 * i) block];
          block[2](block, state, backCopy, transcriptionCopy, level);
        }

        v25 = [v23 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v25);
    }

    LOBYTE(v17) = v30;
  }

  return state != state || v17;
}

@end