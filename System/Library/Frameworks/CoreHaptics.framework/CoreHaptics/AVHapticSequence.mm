@interface AVHapticSequence
- (AVHapticPlayer)player;
- (AVHapticSequence)initWithData:(id)data player:(id)player error:(id *)error;
- (AVHapticSequence)initWithDictionary:(id)dictionary player:(id)player error:(id *)error;
- (AVHapticSequence)initWithEvents:(id)events player:(id)player error:(id *)error;
- (BOOL)activateChannelByIndex:(unint64_t)index atTime:(double)time error:(id *)error;
- (BOOL)cancelAndReturnError:(id *)error;
- (BOOL)earlyUnduckAudioAtTime:(double)time error:(id *)error;
- (BOOL)invalidated;
- (BOOL)pauseAtTime:(double)time error:(id *)error;
- (BOOL)playAtTime:(double)time offset:(double)offset error:(id *)error;
- (BOOL)prepareToPlayAndReturnError:(id *)error;
- (BOOL)resetAtTime:(double)time error:(id *)error;
- (BOOL)resumeAtTime:(double)time error:(id *)error;
- (BOOL)seekToTime:(double)time error:(id *)error;
- (BOOL)setLoopLength:(float)length error:(id *)error;
- (BOOL)setLoopingEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setParameter:(unint64_t)parameter value:(float)value channel:(unint64_t)channel atTime:(double)time error:(id *)error;
- (BOOL)setVolume:(float)volume atTime:(double)time error:(id *)error;
- (BOOL)stopAtTime:(double)time error:(id *)error;
- (id)completionHandler;
- (unint64_t)getChannelCount;
- (void)dealloc;
- (void)setCompletionHandler:(id)handler;
- (void)setEventBehavior:(unint64_t)behavior;
- (void)setPlaybackRate:(float)rate;
@end

@implementation AVHapticSequence

- (AVHapticSequence)initWithData:(id)data player:(id)player error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  playerCopy = player;
  if (kAVHCScope)
  {
    v10 = *kAVHCScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    *&buf[4] = "AVHapticPlayer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 868;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticSequence initWithData:player:error:]";
    *&buf[28] = 2048;
    *&buf[30] = dataCopy;
    *&buf[38] = 2048;
    v30 = playerCopy;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: starting init with data %p, player %p", buf, 0x30u);
  }

LABEL_8:
  v28.receiver = self;
  v28.super_class = AVHapticSequence;
  v12 = [(AVHapticSequence *)&v28 init];
  v13 = v12;
  if (v12)
  {
    if (playerCopy)
    {
      [(AVHapticSequence *)v12 setPlayer:playerCopy];
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0xFFFFFFFFLL;
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__4;
      *&buf[32] = __Block_byref_object_dispose__4;
      v30 = 0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __46__AVHapticSequence_initWithData_player_error___block_invoke;
      v15[3] = &unk_2781C93F8;
      v15[4] = &v24;
      v15[5] = &v20;
      v15[6] = &v16;
      v15[7] = buf;
      if ([playerCopy loadAndPrepareHapticSequenceFromData:dataCopy reply:v15])
      {
        [(AVHapticSequence *)v13 setSeqID:v25[3]];
        [(AVHapticSequence *)v13 setLastStartTime:-1.0];
        *&v13->_loopIsEnabled = 0;
        v13->_playbackRate = 1.0;
        *&v13->_duration = v21[3];
        v13->_channelCount = v17[3];
        v13->_activeChannel = 0;
        if (!error)
        {
          goto LABEL_18;
        }
      }

      else
      {

        v13 = 0;
        if (!error)
        {
LABEL_18:
          _Block_object_dispose(buf, 8);

          _Block_object_dispose(&v16, 8);
          _Block_object_dispose(&v20, 8);
          _Block_object_dispose(&v24, 8);
          goto LABEL_19;
        }
      }

      *error = *(*&buf[8] + 40);
      goto LABEL_18;
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
    }

    v13 = 0;
  }

LABEL_19:

  return v13;
}

void __46__AVHapticSequence_initWithData_player_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (kAVHCScope)
  {
    v10 = *kAVHCScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136316418;
    v15 = "AVHapticPlayer.mm";
    v16 = 1024;
    v17 = 886;
    v18 = 2080;
    v19 = "[AVHapticSequence initWithData:player:error:]_block_invoke";
    v20 = 1024;
    v21 = a2;
    v22 = 1024;
    v23 = a3;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: initWithData: reply block for hapticPlayer loadAndPrepareHapticSequenceFromData: replyID: %u, replyChannelCount: %u, replyError: %@", &v14, 0x32u);
  }

LABEL_8:
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a5;
  *(*(a1[6] + 8) + 24) = a3;
  v12 = *(a1[7] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;
}

- (AVHapticSequence)initWithEvents:(id)events player:(id)player error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  playerCopy = player;
  if (kAVHCScope)
  {
    v10 = *kAVHCScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVHapticPlayer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 915;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticSequence initWithEvents:player:error:]";
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: starting init with event array", buf, 0x1Cu);
  }

LABEL_8:
  v28.receiver = self;
  v28.super_class = AVHapticSequence;
  v12 = [(AVHapticSequence *)&v28 init];
  v13 = v12;
  if (v12)
  {
    [(AVHapticSequence *)v12 setPlayer:playerCopy];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0xFFFFFFFFLL;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v30 = __Block_byref_object_dispose__4;
    v31 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__AVHapticSequence_initWithEvents_player_error___block_invoke;
    v15[3] = &unk_2781C93F8;
    v15[4] = &v24;
    v15[5] = &v20;
    v15[6] = &v16;
    v15[7] = buf;
    if ([playerCopy loadAndPrepareHapticSequenceFromEvents:eventsCopy reply:v15])
    {
      [(AVHapticSequence *)v13 setSeqID:v25[3]];
      [(AVHapticSequence *)v13 setLastStartTime:-1.0];
      *&v13->_loopIsEnabled = 0;
      v13->_playbackRate = 1.0;
      *&v13->_duration = v21[3];
      v13->_channelCount = v17[3];
      v13->_activeChannel = 0;
      if (!error)
      {
        goto LABEL_14;
      }
    }

    else
    {

      v13 = 0;
      if (!error)
      {
LABEL_14:
        _Block_object_dispose(buf, 8);

        _Block_object_dispose(&v16, 8);
        _Block_object_dispose(&v20, 8);
        _Block_object_dispose(&v24, 8);
        goto LABEL_15;
      }
    }

    *error = *(*&buf[8] + 40);
    goto LABEL_14;
  }

LABEL_15:

  return v13;
}

void __48__AVHapticSequence_initWithEvents_player_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (kAVHCScope)
  {
    v10 = *kAVHCScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136316418;
    v15 = "AVHapticPlayer.mm";
    v16 = 1024;
    v17 = 928;
    v18 = 2080;
    v19 = "[AVHapticSequence initWithEvents:player:error:]_block_invoke";
    v20 = 1024;
    v21 = a2;
    v22 = 1024;
    v23 = a3;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: initWithEvents: reply block for hapticPlayer loadAndPrepareHapticSequenceFromEvents: replyID: %u, replyChannelCount: %u, replyError: %@", &v14, 0x32u);
  }

LABEL_8:
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a5;
  *(*(a1[6] + 8) + 24) = a3;
  v12 = *(a1[7] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;
}

- (AVHapticSequence)initWithDictionary:(id)dictionary player:(id)player error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  playerCopy = player;
  if (kAVHCScope)
  {
    v10 = *kAVHCScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVHapticPlayer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 957;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticSequence initWithDictionary:player:error:]";
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: starting init with dictionary", buf, 0x1Cu);
  }

LABEL_8:
  v20.receiver = self;
  v20.super_class = AVHapticSequence;
  v12 = [(AVHapticSequence *)&v20 init];
  v13 = v12;
  if (v12)
  {
    [(AVHapticSequence *)v12 setPlayer:playerCopy];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0xFFFFFFFFLL;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__AVHapticSequence_initWithDictionary_player_error___block_invoke;
    v15[3] = &unk_2781C9380;
    v15[4] = &v16;
    v15[5] = buf;
    if ([playerCopy loadAndPrepareHapticSequenceFromVibePattern:dictionaryCopy reply:v15])
    {
      [(AVHapticSequence *)v13 setSeqID:v17[3]];
      [(AVHapticSequence *)v13 setLastStartTime:-1.0];
      *&v13->_loopIsEnabled = 0;
      v13->_playbackRate = 1.0;
      v13->_duration = 5.0;
      *&v13->_channelCount = xmmword_2156F3A50;
      if (!error)
      {
        goto LABEL_14;
      }
    }

    else
    {

      v13 = 0;
      if (!error)
      {
LABEL_14:
        _Block_object_dispose(buf, 8);

        _Block_object_dispose(&v16, 8);
        goto LABEL_15;
      }
    }

    *error = *(*&buf[8] + 40);
    goto LABEL_14;
  }

LABEL_15:

  return v13;
}

void __52__AVHapticSequence_initWithDictionary_player_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136316162;
    v11 = "AVHapticPlayer.mm";
    v12 = 1024;
    v13 = 968;
    v14 = 2080;
    v15 = "[AVHapticSequence initWithDictionary:player:error:]_block_invoke";
    v16 = 1024;
    v17 = a2;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: initWithDictionary: reply block for hapticPlayer loadAndPrepareHapticSequenceFromVibePattern: replyID: %u, replyError: %@", &v10, 0x2Cu);
  }

LABEL_8:
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

- (void)dealloc
{
  v23 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    player = [(AVHapticSequence *)self player];
    client = [player client];
    *buf = 136316162;
    v14 = "AVHapticPlayer.mm";
    v15 = 1024;
    v16 = 994;
    v17 = 2080;
    v18 = "[AVHapticSequence dealloc]";
    v19 = 2048;
    selfCopy = self;
    v21 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: dealloc seq %p, clientID: 0x%lx", buf, 0x30u);
  }

LABEL_8:
  if (self->_loopIsEnabled)
  {
    if (kAVHCScope)
    {
      v8 = *kAVHCScope;
      if (!v8)
      {
LABEL_16:
        player2 = [(AVHapticSequence *)self player];
        [player2 enableSequenceLooping:self->_seqID enable:0 error:0];

        goto LABEL_17;
      }
    }

    else
    {
      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "AVHapticPlayer.mm";
      v15 = 1024;
      v16 = 996;
      v17 = 2080;
      v18 = "[AVHapticSequence dealloc]";
      _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Destroying a sequence that is still looping!  Disabling loop.", buf, 0x1Cu);
    }

    goto LABEL_16;
  }

LABEL_17:
  player3 = [(AVHapticSequence *)self player];
  [player3 detachHapticSequence:self->_seqID];

  self->_seqID = -1;
  v12.receiver = self;
  v12.super_class = AVHapticSequence;
  [(AVHapticSequence *)&v12 dealloc];
}

- (void)setEventBehavior:(unint64_t)behavior
{
  v29 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v5 = *kAVHCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    player = [(AVHapticSequence *)self player];
    client = [player client];
    v17 = 136316418;
    v18 = "AVHapticPlayer.mm";
    v19 = 1024;
    v20 = 1011;
    v21 = 2080;
    v22 = "[AVHapticSequence setEventBehavior:]";
    v23 = 2048;
    clientID = [client clientID];
    v25 = 1024;
    seqID = [(AVHapticSequence *)self seqID];
    v27 = 1024;
    behaviorCopy = behavior;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: clientID: 0x%lx seqID: %u behavior: %u", &v17, 0x32u);
  }

LABEL_8:
  if (self->_eventBehavior == behavior)
  {
    return;
  }

  if (behavior > 7)
  {
    if (kAVHCScope)
    {
      v15 = *kAVHCScope;
      if (!v15)
      {
        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315906;
      v18 = "AVHapticPlayer.mm";
      v19 = 1024;
      v20 = 1014;
      v21 = 2080;
      v22 = "[AVHapticSequence setEventBehavior:]";
      v23 = 1024;
      LODWORD(clientID) = behavior;
      _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Illegal event behavior: %u", &v17, 0x22u);
    }
  }

  else
  {
    if (![(AVHapticSequence *)self channelCount])
    {
      goto LABEL_14;
    }

    v10 = 0;
    v11 = 1;
    do
    {
      player2 = [(AVHapticSequence *)self player];
      client2 = [player2 client];
      v14 = [client2 setSequenceEventBehavior:-[AVHapticSequence seqID](self behavior:"seqID") channel:{behavior, v10}];

      v11 &= v14;
      ++v10;
    }

    while (v10 < [(AVHapticSequence *)self channelCount]);
    if (v11)
    {
LABEL_14:
      self->_eventBehavior = behavior;
    }
  }
}

- (BOOL)setLoopingEnabled:(BOOL)enabled error:(id *)error
{
  if (self->_seqID == -1)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 1032, "[AVHapticSequence setLoopingEnabled:error:]", "_seqID != kInvalidSequenceID", -4812, error);
  }

  else
  {
    enabledCopy = enabled;
    player = [(AVHapticSequence *)self player];
    v8 = [player enableSequenceLooping:self->_seqID enable:enabledCopy error:error];

    if (v8)
    {
      self->_loopIsEnabled = enabledCopy;
      return 1;
    }
  }

  return 0;
}

- (void)setCompletionHandler:(id)handler
{
  handlerCopy = handler;
  player = [(AVHapticSequence *)self player];
  client = [player client];
  [client setSequenceFinishedHandlerForID:self->_seqID finishedHandler:handlerCopy];
}

- (id)completionHandler
{
  player = [(AVHapticSequence *)self player];
  client = [player client];
  v5 = [client getSequenceFinishedHandlerForID:self->_seqID];

  return v5;
}

- (unint64_t)getChannelCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  channelCount = selfCopy->_channelCount;
  objc_sync_exit(selfCopy);

  return channelCount;
}

- (BOOL)setLoopLength:(float)length error:(id *)error
{
  player = [(AVHapticSequence *)self player];
  *&v8 = length;
  v9 = [player setSequenceLoopLength:self->_seqID length:error error:v8];

  if (v9)
  {
    self->_loopLength = length;
  }

  return v9;
}

- (void)setPlaybackRate:(float)rate
{
  player = [(AVHapticSequence *)self player];
  *&v6 = rate;
  v7 = [player setSequencePlaybackRate:self->_seqID rate:0 error:v6];

  if (v7)
  {
    self->_playbackRate = rate;
  }
}

- (BOOL)prepareToPlayAndReturnError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    v5 = *kAVHCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    player = [(AVHapticSequence *)selfCopy player];
    client = [player client];
    v22 = 136315906;
    v23 = "AVHapticPlayer.mm";
    v24 = 1024;
    v25 = 1089;
    v26 = 2080;
    v27 = "[AVHapticSequence prepareToPlayAndReturnError:]";
    v28 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: prepare to play seq: clientID: 0x%lx", &v22, 0x26u);
  }

LABEL_8:
  player2 = [(AVHapticSequence *)selfCopy player];
  resourcesAllocated = [player2 resourcesAllocated];

  if ((resourcesAllocated & 1) == 0)
  {
    v17 = -4807;
    v18 = "self.player.resourcesAllocated";
    v19 = 1090;
LABEL_16:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v19, "[AVHapticSequence prepareToPlayAndReturnError:]", v18, v17, error);
    v16 = 0;
    v20 = 0;
    goto LABEL_19;
  }

  if (selfCopy->_seqID == -1)
  {
    v17 = -4812;
    v18 = "_seqID != kInvalidSequenceID";
    v19 = 1091;
    goto LABEL_16;
  }

  player3 = [(AVHapticSequence *)selfCopy player];
  v13 = [player3 prepareHapticSequence:selfCopy->_seqID error:error];

  if (v13)
  {
    if (-[AVHapticSequence loopingEnabled](selfCopy, "loopingEnabled") && (-[AVHapticSequence player](selfCopy, "player"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 enableSequenceLooping:selfCopy->_seqID enable:1 error:error], v14, (v15 & 1) == 0))
    {
      v16 = 0;
      selfCopy->_loopIsEnabled = 0;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = 1;
LABEL_19:
  objc_sync_exit(selfCopy);

  return v16 & v20;
}

- (BOOL)playAtTime:(double)time offset:(double)offset error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    seqID = [(AVHapticSequence *)selfCopy seqID];
    player = [(AVHapticSequence *)selfCopy player];
    client = [player client];
    clientID = [client clientID];
    playbackRate = selfCopy->_playbackRate;
    isMuted = selfCopy->_isMuted;
    *v49 = 136317186;
    *&v49[4] = "AVHapticPlayer.mm";
    *&v49[12] = 1024;
    *&v49[14] = 1108;
    v50 = 2080;
    v51 = "[AVHapticSequence playAtTime:offset:error:]";
    v52 = 1024;
    v53 = seqID;
    v54 = 2048;
    *v55 = clientID;
    *&v55[8] = 2048;
    *&v55[10] = time;
    v56 = 2048;
    offsetCopy = offset;
    v58 = 2048;
    v59 = playbackRate;
    v60 = 1024;
    v61 = isMuted;
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: play seq %u: clientID: 0x%lx time: %.3f offsetTime: %.3f playback rate: %.1f muted: %d", v49, 0x50u);
  }

LABEL_8:
  player2 = [(AVHapticSequence *)selfCopy player];
  resourcesAllocated = [player2 resourcesAllocated];

  if ((resourcesAllocated & 1) == 0)
  {
    v29 = -4807;
    v30 = "self.player.resourcesAllocated";
    v31 = 1109;
LABEL_23:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v31, "[AVHapticSequence playAtTime:offset:error:]", v30, v29, error);
    v32 = 0;
    v33 = 0;
    goto LABEL_24;
  }

  player3 = [(AVHapticSequence *)selfCopy player];
  client2 = [player3 client];
  v22 = [client2 clientID] == -1;

  if (v22)
  {
    v29 = -4812;
    v30 = "self.player.client.clientID != kInvalidClientID";
    v31 = 1110;
    goto LABEL_23;
  }

  player4 = [(AVHapticSequence *)selfCopy player];
  client3 = [player4 client];
  running = [client3 running];

  if ((running & 1) == 0)
  {
    v29 = -4805;
    v30 = "self.player.client.running";
    v31 = 1111;
    goto LABEL_23;
  }

  if (selfCopy->_seqID == -1)
  {
    v29 = -4812;
    v30 = "_seqID != kInvalidSequenceID";
    v31 = 1112;
    goto LABEL_23;
  }

  if ([(AVHapticSequence *)selfCopy loopingEnabled])
  {
    player5 = [(AVHapticSequence *)selfCopy player];
    v27 = [player5 enableSequenceLooping:selfCopy->_seqID enable:1 error:error];

    if ((v27 & 1) == 0)
    {
      selfCopy->_loopIsEnabled = 0;
    }
  }

  if ([(AVHapticSequence *)selfCopy channelCount]< 2)
  {
    goto LABEL_37;
  }

  if (!kAVHCScope)
  {
    v28 = MEMORY[0x277D86220];
    v35 = MEMORY[0x277D86220];
    goto LABEL_26;
  }

  v28 = *kAVHCScope;
  if (v28)
  {
LABEL_26:
    v36 = v28;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      seqID2 = [(AVHapticSequence *)selfCopy seqID];
      activeChannel = [(AVHapticSequence *)selfCopy activeChannel];
      v39 = "";
      v40 = selfCopy->_isMuted;
      *&v49[4] = "AVHapticPlayer.mm";
      *v49 = 136316418;
      *&v49[12] = 1024;
      if (v40)
      {
        v39 = "but sequence was muted";
      }

      *&v49[14] = 1120;
      v50 = 2080;
      v51 = "[AVHapticSequence playAtTime:offset:error:]";
      v52 = 1024;
      v53 = seqID2;
      v54 = 1024;
      *v55 = activeChannel;
      *&v55[4] = 2080;
      *&v55[6] = v39;
      _os_log_impl(&dword_21569A000, v36, OS_LOG_TYPE_INFO, "%25s:%-5d %s: soloing sequence ID: %u track %u %s", v49, 0x32u);
    }
  }

  v41 = [(AVHapticSequence *)selfCopy channelCount:*v49];
  if (v41 - 1 >= 0)
  {
    do
    {
      --v41;
      v42 = 1.0;
      if (!selfCopy->_isMuted)
      {
        if (v41 == [(AVHapticSequence *)selfCopy activeChannel])
        {
          v42 = 0.0;
        }

        else
        {
          v42 = 1.0;
        }
      }

      player6 = [(AVHapticSequence *)selfCopy player];
      *&v44 = v42;
      [player6 setSequenceChannelParam:selfCopy->_seqID atTime:v41 channel:1014 param:error value:time error:v44];

      player7 = [(AVHapticSequence *)selfCopy player];
      *&v46 = v42;
      [player7 setSequenceChannelParam:selfCopy->_seqID atTime:v41 channel:2014 param:error value:time error:v46];
    }

    while (v41 > 0);
  }

LABEL_37:
  player8 = [(AVHapticSequence *)selfCopy player];
  v48 = [player8 playHapticSequence:selfCopy->_seqID atTime:time offset:offset];

  if (v48)
  {
    [(AVHapticSequence *)selfCopy setLastStartTime:time];
    v32 = 1;
    v33 = 1;
  }

  else
  {
    v33 = 0;
    v32 = 1;
  }

LABEL_24:
  objc_sync_exit(selfCopy);

  return v32 & v33;
}

- (BOOL)stopAtTime:(double)time error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    player = [(AVHapticSequence *)selfCopy player];
    client = [player client];
    v26 = 136316162;
    v27 = "AVHapticPlayer.mm";
    v28 = 1024;
    v29 = 1140;
    v30 = 2080;
    v31 = "[AVHapticSequence stopAtTime:error:]";
    v32 = 2048;
    clientID = [client clientID];
    v34 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: stop seq: clientID: 0x%lx time: %.3f", &v26, 0x30u);
  }

LABEL_8:
  player2 = [(AVHapticSequence *)selfCopy player];
  resourcesAllocated = [player2 resourcesAllocated];

  if ((resourcesAllocated & 1) == 0)
  {
    v22 = -4807;
    v23 = "self.player.resourcesAllocated";
    v24 = 1141;
LABEL_19:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v24, "[AVHapticSequence stopAtTime:error:]", v23, v22, error);
    LOBYTE(error) = 0;
    v21 = 0;
    goto LABEL_20;
  }

  player3 = [(AVHapticSequence *)selfCopy player];
  client2 = [player3 client];
  v16 = [client2 clientID] == -1;

  if (v16)
  {
    v22 = -4812;
    v23 = "self.player.client.clientID != kInvalidClientID";
    v24 = 1142;
    goto LABEL_19;
  }

  player4 = [(AVHapticSequence *)selfCopy player];
  client3 = [player4 client];
  running = [client3 running];

  if ((running & 1) == 0)
  {
    v22 = -4805;
    v23 = "self.player.client.running";
    v24 = 1143;
    goto LABEL_19;
  }

  if (selfCopy->_seqID == -1)
  {
    v22 = -4812;
    v23 = "_seqID != kInvalidSequenceID";
    v24 = 1144;
    goto LABEL_19;
  }

  player5 = [(AVHapticSequence *)selfCopy player];
  LODWORD(error) = [player5 stopHapticSequence:selfCopy->_seqID atTime:time];

  if (error)
  {
    [(AVHapticSequence *)selfCopy setLastStartTime:-1.0];
    LOBYTE(error) = 1;
  }

  v21 = 1;
LABEL_20:
  objc_sync_exit(selfCopy);

  return error & v21;
}

- (BOOL)pauseAtTime:(double)time error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    player = [(AVHapticSequence *)selfCopy player];
    client = [player client];
    v26 = 136316162;
    v27 = "AVHapticPlayer.mm";
    v28 = 1024;
    v29 = 1158;
    v30 = 2080;
    v31 = "[AVHapticSequence pauseAtTime:error:]";
    v32 = 2048;
    clientID = [client clientID];
    v34 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: pause seq: clientID: 0x%lx time: %.3f", &v26, 0x30u);
  }

LABEL_8:
  player2 = [(AVHapticSequence *)selfCopy player];
  resourcesAllocated = [player2 resourcesAllocated];

  if ((resourcesAllocated & 1) == 0)
  {
    v22 = -4807;
    v23 = "self.player.resourcesAllocated";
    v24 = 1159;
LABEL_17:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v24, "[AVHapticSequence pauseAtTime:error:]", v23, v22, error);
    v21 = 0;
    goto LABEL_18;
  }

  player3 = [(AVHapticSequence *)selfCopy player];
  client2 = [player3 client];
  v16 = [client2 clientID] == -1;

  if (v16)
  {
    v22 = -4812;
    v23 = "self.player.client.clientID != kInvalidClientID";
    v24 = 1160;
    goto LABEL_17;
  }

  player4 = [(AVHapticSequence *)selfCopy player];
  client3 = [player4 client];
  running = [client3 running];

  if ((running & 1) == 0)
  {
    v22 = -4805;
    v23 = "self.player.client.running";
    v24 = 1161;
    goto LABEL_17;
  }

  if (selfCopy->_seqID == -1)
  {
    v22 = -4812;
    v23 = "_seqID != kInvalidSequenceID";
    v24 = 1162;
    goto LABEL_17;
  }

  player5 = [(AVHapticSequence *)selfCopy player];
  v21 = [player5 pauseHapticSequence:selfCopy->_seqID atTime:time];

LABEL_18:
  objc_sync_exit(selfCopy);

  return v21;
}

- (BOOL)resumeAtTime:(double)time error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    player = [(AVHapticSequence *)selfCopy player];
    client = [player client];
    v26 = 136316162;
    v27 = "AVHapticPlayer.mm";
    v28 = 1024;
    v29 = 1173;
    v30 = 2080;
    v31 = "[AVHapticSequence resumeAtTime:error:]";
    v32 = 2048;
    clientID = [client clientID];
    v34 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: resume seq: clientID: 0x%lx time: %.3f", &v26, 0x30u);
  }

LABEL_8:
  player2 = [(AVHapticSequence *)selfCopy player];
  resourcesAllocated = [player2 resourcesAllocated];

  if ((resourcesAllocated & 1) == 0)
  {
    v22 = -4807;
    v23 = "self.player.resourcesAllocated";
    v24 = 1174;
LABEL_17:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v24, "[AVHapticSequence resumeAtTime:error:]", v23, v22, error);
    v21 = 0;
    goto LABEL_18;
  }

  player3 = [(AVHapticSequence *)selfCopy player];
  client2 = [player3 client];
  v16 = [client2 clientID] == -1;

  if (v16)
  {
    v22 = -4812;
    v23 = "self.player.client.clientID != kInvalidClientID";
    v24 = 1175;
    goto LABEL_17;
  }

  player4 = [(AVHapticSequence *)selfCopy player];
  client3 = [player4 client];
  running = [client3 running];

  if ((running & 1) == 0)
  {
    v22 = -4805;
    v23 = "self.player.client.running";
    v24 = 1176;
    goto LABEL_17;
  }

  if (selfCopy->_seqID == -1)
  {
    v22 = -4812;
    v23 = "_seqID != kInvalidSequenceID";
    v24 = 1177;
    goto LABEL_17;
  }

  player5 = [(AVHapticSequence *)selfCopy player];
  v21 = [player5 resumeHapticSequence:selfCopy->_seqID atTime:time];

LABEL_18:
  objc_sync_exit(selfCopy);

  return v21;
}

- (BOOL)seekToTime:(double)time error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    player = [(AVHapticSequence *)selfCopy player];
    client = [player client];
    v26 = 136315906;
    v27 = "AVHapticPlayer.mm";
    v28 = 1024;
    v29 = 1188;
    v30 = 2080;
    v31 = "[AVHapticSequence seekToTime:error:]";
    v32 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: seek seq: clientID: 0x%lx time: NOW", &v26, 0x26u);
  }

LABEL_8:
  player2 = [(AVHapticSequence *)selfCopy player];
  resourcesAllocated = [player2 resourcesAllocated];

  if ((resourcesAllocated & 1) == 0)
  {
    v22 = -4807;
    v23 = "self.player.resourcesAllocated";
    v24 = 1189;
LABEL_17:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v24, "[AVHapticSequence seekToTime:error:]", v23, v22, error);
    v21 = 0;
    goto LABEL_18;
  }

  player3 = [(AVHapticSequence *)selfCopy player];
  client2 = [player3 client];
  v16 = [client2 clientID] == -1;

  if (v16)
  {
    v22 = -4812;
    v23 = "self.player.client.clientID != kInvalidClientID";
    v24 = 1190;
    goto LABEL_17;
  }

  player4 = [(AVHapticSequence *)selfCopy player];
  client3 = [player4 client];
  running = [client3 running];

  if ((running & 1) == 0)
  {
    v22 = -4805;
    v23 = "self.player.client.running";
    v24 = 1191;
    goto LABEL_17;
  }

  if (selfCopy->_seqID == -1)
  {
    v22 = -4812;
    v23 = "_seqID != kInvalidSequenceID";
    v24 = 1192;
    goto LABEL_17;
  }

  player5 = [(AVHapticSequence *)selfCopy player];
  v21 = [player5 seekHapticSequence:selfCopy->_seqID toTime:time];

LABEL_18:
  objc_sync_exit(selfCopy);

  return v21;
}

- (BOOL)resetAtTime:(double)time error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    player = [(AVHapticSequence *)selfCopy player];
    client = [player client];
    v23 = 136316162;
    v24 = "AVHapticPlayer.mm";
    v25 = 1024;
    v26 = 1205;
    v27 = 2080;
    v28 = "[AVHapticSequence resetAtTime:error:]";
    v29 = 2048;
    clientID = [client clientID];
    v31 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: reset parameters on seq: clientID: 0x%lx time: %.3f ", &v23, 0x30u);
  }

LABEL_8:
  player2 = [(AVHapticSequence *)selfCopy player];
  resourcesAllocated = [player2 resourcesAllocated];

  if ((resourcesAllocated & 1) == 0)
  {
    v19 = -4807;
    v20 = "self.player.resourcesAllocated";
    v21 = 1206;
LABEL_15:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v21, "[AVHapticSequence resetAtTime:error:]", v20, v19, error);
    v18 = 0;
    goto LABEL_16;
  }

  player3 = [(AVHapticSequence *)selfCopy player];
  client2 = [player3 client];
  v16 = [client2 clientID] == -1;

  if (v16)
  {
    v19 = -4812;
    v20 = "self.player.client.clientID != kInvalidClientID";
    v21 = 1207;
    goto LABEL_15;
  }

  if (selfCopy->_seqID == -1)
  {
    v19 = -4812;
    v20 = "_seqID != kInvalidSequenceID";
    v21 = 1208;
    goto LABEL_15;
  }

  player4 = [(AVHapticSequence *)selfCopy player];
  v18 = [player4 resetHapticSequence:selfCopy->_seqID atTime:time];

LABEL_16:
  objc_sync_exit(selfCopy);

  return v18;
}

- (BOOL)setParameter:(unint64_t)parameter value:(float)value channel:(unint64_t)channel atTime:(double)time error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    v13 = *kAVHCScope;
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  v15 = v13;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    player = [(AVHapticSequence *)selfCopy player];
    client = [player client];
    v33 = 136316930;
    v34 = "AVHapticPlayer.mm";
    v35 = 1024;
    v36 = 1219;
    v37 = 2080;
    v38 = "[AVHapticSequence setParameter:value:channel:atTime:error:]";
    v39 = 2048;
    clientID = [client clientID];
    v41 = 1024;
    parameterCopy = parameter;
    v43 = 2048;
    valueCopy = value;
    v45 = 1024;
    channelCopy = channel;
    v47 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: set param on seq: clientID: 0x%lx type: %u value: %.2f channelIndex: %u atTime: %.3f", &v33, 0x46u);
  }

LABEL_8:
  if ([(AVHapticSequence *)selfCopy channelCount]<= channel)
  {
    v29 = -4804;
    v30 = "channelIndex < self.channelCount";
    v31 = 1220;
LABEL_19:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v31, "[AVHapticSequence setParameter:value:channel:atTime:error:]", v30, v29, error);
    v28 = 0;
    goto LABEL_20;
  }

  player2 = [(AVHapticSequence *)selfCopy player];
  resourcesAllocated = [player2 resourcesAllocated];

  if ((resourcesAllocated & 1) == 0)
  {
    v29 = -4807;
    v30 = "self.player.resourcesAllocated";
    v31 = 1221;
    goto LABEL_19;
  }

  player3 = [(AVHapticSequence *)selfCopy player];
  client2 = [player3 client];
  v22 = [client2 clientID] == -1;

  if (v22)
  {
    v29 = -4812;
    v30 = "self.player.client.clientID != kInvalidClientID";
    v31 = 1222;
    goto LABEL_19;
  }

  player4 = [(AVHapticSequence *)selfCopy player];
  client3 = [player4 client];
  running = [client3 running];

  if ((running & 1) == 0)
  {
    v29 = -4805;
    v30 = "self.player.client.running";
    v31 = 1223;
    goto LABEL_19;
  }

  if (selfCopy->_seqID == -1)
  {
    v29 = -4812;
    v30 = "_seqID != kInvalidSequenceID";
    v31 = 1224;
    goto LABEL_19;
  }

  player5 = [(AVHapticSequence *)selfCopy player];
  *&v27 = value;
  v28 = [player5 setSequenceChannelParam:selfCopy->_seqID atTime:channel channel:parameter param:error value:time error:v27];

LABEL_20:
  objc_sync_exit(selfCopy);

  return v28;
}

- (BOOL)cancelAndReturnError:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    v5 = *kAVHCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    player = [(AVHapticSequence *)selfCopy player];
    client = [player client];
    v24 = 136315906;
    v25 = "AVHapticPlayer.mm";
    v26 = 1024;
    v27 = 1234;
    v28 = 2080;
    v29 = "[AVHapticSequence cancelAndReturnError:]";
    v30 = 2048;
    clientID = [client clientID];
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: cancel seq: clientID: 0x%lx", &v24, 0x26u);
  }

LABEL_8:
  player2 = [(AVHapticSequence *)selfCopy player];
  resourcesAllocated = [player2 resourcesAllocated];

  if ((resourcesAllocated & 1) == 0)
  {
    v20 = -4807;
    v21 = "self.player.resourcesAllocated";
    v22 = 1235;
LABEL_17:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v22, "[AVHapticSequence cancelAndReturnError:]", v21, v20, error);
    v19 = 0;
    goto LABEL_18;
  }

  player3 = [(AVHapticSequence *)selfCopy player];
  client2 = [player3 client];
  v14 = [client2 clientID] == -1;

  if (v14)
  {
    v20 = -4812;
    v21 = "self.player.client.clientID != kInvalidClientID";
    v22 = 1236;
    goto LABEL_17;
  }

  player4 = [(AVHapticSequence *)selfCopy player];
  client3 = [player4 client];
  running = [client3 running];

  if ((running & 1) == 0)
  {
    v20 = -4805;
    v21 = "self.player.client.running";
    v22 = 1237;
    goto LABEL_17;
  }

  if (selfCopy->_seqID == -1)
  {
    v20 = -4812;
    v21 = "_seqID != kInvalidSequenceID";
    v22 = 1238;
    goto LABEL_17;
  }

  player5 = [(AVHapticSequence *)selfCopy player];
  v19 = [player5 clearSequenceEvents:selfCopy->_seqID atTime:0.0];

LABEL_18:
  objc_sync_exit(selfCopy);

  return v19;
}

- (BOOL)activateChannelByIndex:(unint64_t)index atTime:(double)time error:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    seqID = [(AVHapticSequence *)selfCopy seqID];
    player = [(AVHapticSequence *)selfCopy player];
    client = [player client];
    clientID = [client clientID];
    isMuted = selfCopy->_isMuted;
    v45 = 136316930;
    v46 = "AVHapticPlayer.mm";
    v47 = 1024;
    v48 = 1250;
    v49 = 2080;
    v50 = "[AVHapticSequence activateChannelByIndex:atTime:error:]";
    v51 = 1024;
    *v52 = seqID;
    *&v52[4] = 2048;
    *&v52[6] = clientID;
    v53 = 2048;
    timeCopy = time;
    v55 = 1024;
    indexCopy = index;
    v57 = 1024;
    v58 = isMuted;
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: activating seqID %u track index: clientID: 0x%lx time: %.3f index: %u muted: %d", &v45, 0x42u);
  }

LABEL_8:
  if ([(AVHapticSequence *)selfCopy channelCount]<= index)
  {
    v32 = -4804;
    v33 = "index < self.channelCount";
    v34 = 1251;
LABEL_25:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v34, "[AVHapticSequence activateChannelByIndex:atTime:error:]", v33, v32, error);
    v35 = 0;
    goto LABEL_26;
  }

  player2 = [(AVHapticSequence *)selfCopy player];
  resourcesAllocated = [player2 resourcesAllocated];

  if ((resourcesAllocated & 1) == 0)
  {
    v32 = -4807;
    v33 = "self.player.resourcesAllocated";
    v34 = 1252;
    goto LABEL_25;
  }

  player3 = [(AVHapticSequence *)selfCopy player];
  client2 = [player3 client];
  v21 = [client2 clientID] == -1;

  if (v21)
  {
    v32 = -4812;
    v33 = "self.player.client.clientID != kInvalidClientID";
    v34 = 1253;
    goto LABEL_25;
  }

  if (selfCopy->_seqID == -1)
  {
    v32 = -4812;
    v33 = "_seqID != kInvalidSequenceID";
    v34 = 1254;
    goto LABEL_25;
  }

  if ([(AVHapticSequence *)selfCopy activeChannel]== index)
  {
LABEL_42:
    v35 = 1;
    goto LABEL_26;
  }

  [(AVHapticSequence *)selfCopy setActiveChannel:index];
  player4 = [(AVHapticSequence *)selfCopy player];
  client3 = [player4 client];
  running = [client3 running];

  if (!running)
  {
    if (kAVHCScope)
    {
      v37 = *kAVHCScope;
      if (!v37)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v37 = MEMORY[0x277D86220];
      v44 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 136315650;
      v46 = "AVHapticPlayer.mm";
      v47 = 1024;
      v48 = 1270;
      v49 = 2080;
      v50 = "[AVHapticSequence activateChannelByIndex:atTime:error:]";
      _os_log_impl(&dword_21569A000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Associated player is not running - action delayed until sequence start", &v45, 0x1Cu);
    }

    goto LABEL_42;
  }

  [(AVHapticSequence *)selfCopy lastStartTime];
  if (v25 == -1.0 || ([(AVHapticSequence *)selfCopy lastStartTime], v26 <= time))
  {
    timeCopy2 = time;
  }

  else
  {
    [(AVHapticSequence *)selfCopy lastStartTime];
    timeCopy2 = v28;
    if (v28 > time)
    {
      v30 = CALog::LogObjIfEnabled(3, kAVHCScope, v27);
      v31 = v30;
      if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v45 = 136315906;
        v46 = "AVHapticPlayer.mm";
        v47 = 1024;
        v48 = 1262;
        v49 = 2080;
        v50 = "[AVHapticSequence activateChannelByIndex:atTime:error:]";
        v51 = 2048;
        *v52 = timeCopy2;
        _os_log_impl(&dword_21569A000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: request pushed out to pending play request at time %.3f", &v45, 0x26u);
      }
    }
  }

  v38 = 0;
  v35 = 1;
  while (v38 < [(AVHapticSequence *)selfCopy channelCount])
  {
    v39 = 1.0;
    if (!selfCopy->_isMuted)
    {
      if (v38 == [(AVHapticSequence *)selfCopy activeChannel])
      {
        v39 = 0.0;
      }

      else
      {
        v39 = 1.0;
      }
    }

    player5 = [(AVHapticSequence *)selfCopy player];
    *&v41 = v39;
    [player5 setSequenceChannelParam:selfCopy->_seqID atTime:v38 channel:1014 param:error value:timeCopy2 error:v41];

    player6 = [(AVHapticSequence *)selfCopy player];
    *&v43 = v39;
    v35 = [player6 setSequenceChannelParam:selfCopy->_seqID atTime:v38 channel:2014 param:error value:timeCopy2 error:v43];

    ++v38;
  }

LABEL_26:
  objc_sync_exit(selfCopy);

  return v35 & 1;
}

- (BOOL)setVolume:(float)volume atTime:(double)time error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    player = [(AVHapticSequence *)selfCopy player];
    client = [player client];
    v29 = 136316418;
    v30 = "AVHapticPlayer.mm";
    v31 = 1024;
    v32 = 1283;
    v33 = 2080;
    v34 = "[AVHapticSequence setVolume:atTime:error:]";
    v35 = 2048;
    clientID = [client clientID];
    v37 = 2048;
    timeCopy = time;
    v39 = 2048;
    volumeCopy = volume;
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: set volume on seq: clientID: 0x%lx time: %.3f volume: %.3f", &v29, 0x3Au);
  }

LABEL_8:
  player2 = [(AVHapticSequence *)selfCopy player];
  resourcesAllocated = [player2 resourcesAllocated];

  if ((resourcesAllocated & 1) == 0)
  {
    v24 = -4807;
    v25 = "self.player.resourcesAllocated";
    v26 = 1284;
LABEL_18:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v26, "[AVHapticSequence setVolume:atTime:error:]", v25, v24, error);
    v27 = 0;
    goto LABEL_19;
  }

  player3 = [(AVHapticSequence *)selfCopy player];
  client2 = [player3 client];
  v18 = [client2 clientID] == -1;

  if (v18)
  {
    v24 = -4812;
    v25 = "self.player.client.clientID != kInvalidClientID";
    v26 = 1285;
    goto LABEL_18;
  }

  if (selfCopy->_seqID == -1)
  {
    v24 = -4812;
    v25 = "_seqID != kInvalidSequenceID";
    v26 = 1286;
    goto LABEL_18;
  }

  for (i = 0; i < [(AVHapticSequence *)selfCopy channelCount]; ++i)
  {
    player4 = [(AVHapticSequence *)selfCopy player];
    *&v21 = volume;
    [player4 setSequenceChannelParam:selfCopy->_seqID atTime:i channel:1002 param:error value:time error:v21];

    player5 = [(AVHapticSequence *)selfCopy player];
    *&v23 = volume;
    [player5 setSequenceChannelParam:selfCopy->_seqID atTime:i channel:2002 param:error value:time error:v23];
  }

  v27 = 1;
LABEL_19:
  objc_sync_exit(selfCopy);

  return v27;
}

- (BOOL)earlyUnduckAudioAtTime:(double)time error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    player = [(AVHapticSequence *)selfCopy player];
    client = [player client];
    v23 = 136316162;
    v24 = "AVHapticPlayer.mm";
    v25 = 1024;
    v26 = 1299;
    v27 = 2080;
    v28 = "[AVHapticSequence earlyUnduckAudioAtTime:error:]";
    v29 = 2048;
    clientID = [client clientID];
    v31 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: early unduck audio on seq: clientID: 0x%lx time: %.3f", &v23, 0x30u);
  }

LABEL_8:
  player2 = [(AVHapticSequence *)selfCopy player];
  resourcesAllocated = [player2 resourcesAllocated];

  if ((resourcesAllocated & 1) == 0)
  {
    v19 = -4807;
    v20 = "self.player.resourcesAllocated";
    v21 = 1300;
LABEL_15:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", v21, "[AVHapticSequence earlyUnduckAudioAtTime:error:]", v20, v19, error);
    v18 = 0;
    goto LABEL_16;
  }

  player3 = [(AVHapticSequence *)selfCopy player];
  client2 = [player3 client];
  v16 = [client2 clientID] == -1;

  if (v16)
  {
    v19 = -4812;
    v20 = "self.player.client.clientID != kInvalidClientID";
    v21 = 1301;
    goto LABEL_15;
  }

  if (selfCopy->_seqID == -1)
  {
    v19 = -4812;
    v20 = "_seqID != kInvalidSequenceID";
    v21 = 1302;
    goto LABEL_15;
  }

  player4 = [(AVHapticSequence *)selfCopy player];
  v18 = [player4 sendUnduckAudioCommand:selfCopy->_seqID atTime:time];

LABEL_16:
  objc_sync_exit(selfCopy);

  return v18;
}

- (BOOL)invalidated
{
  player = [(AVHapticSequence *)self player];
  if (player)
  {
    player2 = [(AVHapticSequence *)self player];
    client = [player2 client];
    v6 = [client clientID] == -1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (AVHapticPlayer)player
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  return WeakRetained;
}

@end