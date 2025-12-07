@interface AVMIDIPlayer
- (AVMIDIPlayer)initWithContentsOfURL:(NSURL *)inURL soundBankURL:(NSURL *)bankURL error:(NSError *)outError;
- (AVMIDIPlayer)initWithData:(NSData *)data soundBankURL:(NSURL *)bankURL error:(NSError *)outError;
- (BOOL)isPlaying;
- (NSTimeInterval)currentPosition;
- (NSTimeInterval)duration;
- (double)beatsForHostTime:(unint64_t)time;
- (float)rate;
- (id)initBase;
- (unint64_t)hostTimeForBeats:(double)beats;
- (void)dealloc;
- (void)destroyBase;
- (void)finalize;
- (void)play:(AVMIDIPlayerCompletionHandler)completionHandler;
- (void)prepareToPlay;
- (void)setCurrentPosition:(NSTimeInterval)currentPosition;
- (void)setRate:(float)rate;
- (void)stop;
@end

@implementation AVMIDIPlayer

- (void)setCurrentPosition:(NSTimeInterval)currentPosition
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_impl(self, a2);
  outBeats = 0.0;
  BeatsForSeconds = MusicSequenceGetBeatsForSeconds(*(v4 + 16), currentPosition, &outBeats);
  if (BeatsForSeconds)
  {
    v6 = BeatsForSeconds;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v13 = "AVAEInternal.h";
      v14 = 1024;
      v15 = 104;
      v16 = 2080;
      v17 = "AVMIDIPlayer.mm";
      v18 = 1024;
      v19 = 200;
      v20 = 2080;
      v21 = "[AVMIDIPlayer setCurrentPosition:]";
      v22 = 2080;
      v23 = "MusicSequenceGetBeatsForSeconds(impl->mSequence, (Float64) currentPosition, &positionInBeats)";
      v24 = 1024;
      v25 = v6;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v6}];
  }

  v8 = MusicPlayerSetTime(*(v4 + 8), outBeats);
  if (v8)
  {
    v9 = v8;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v10 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v13 = "AVAEInternal.h";
      v14 = 1024;
      v15 = 104;
      v16 = 2080;
      v17 = "AVMIDIPlayer.mm";
      v18 = 1024;
      v19 = 201;
      v20 = 2080;
      v21 = "[AVMIDIPlayer setCurrentPosition:]";
      v22 = 2080;
      v23 = "MusicPlayerSetTime(impl->mPlayer, positionInBeats)";
      v24 = 1024;
      v25 = v9;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v9}];
  }
}

- (NSTimeInterval)currentPosition
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_impl(self, a2);
  outSeconds = 0.0;
  outTime = 0.0;
  Time = MusicPlayerGetTime(*(v2 + 8), &outTime);
  if (Time)
  {
    v4 = Time;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v13 = "AVAEInternal.h";
      v14 = 1024;
      v15 = 104;
      v16 = 2080;
      v17 = "AVMIDIPlayer.mm";
      v18 = 1024;
      v19 = 191;
      v20 = 2080;
      v21 = "[AVMIDIPlayer currentPosition]";
      v22 = 2080;
      v23 = "MusicPlayerGetTime(impl->mPlayer, &positionInBeats)";
      v24 = 1024;
      v25 = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v4}];
  }

  SecondsForBeats = MusicSequenceGetSecondsForBeats(*(v2 + 16), outTime, &outSeconds);
  if (SecondsForBeats)
  {
    v7 = SecondsForBeats;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v13 = "AVAEInternal.h";
      v14 = 1024;
      v15 = 104;
      v16 = 2080;
      v17 = "AVMIDIPlayer.mm";
      v18 = 1024;
      v19 = 192;
      v20 = 2080;
      v21 = "[AVMIDIPlayer currentPosition]";
      v22 = 2080;
      v23 = "MusicSequenceGetSecondsForBeats(impl->mSequence, positionInBeats, &positionInTime)";
      v24 = 1024;
      v25 = v7;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v7}];
  }

  return outSeconds;
}

- (NSTimeInterval)duration
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_impl(self, a2);
  outSeconds = 0.0;
  SecondsForBeats = MusicSequenceGetSecondsForBeats(*(v2 + 16), *(v2 + 24), &outSeconds);
  if (SecondsForBeats)
  {
    v4 = SecondsForBeats;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v9 = "AVAEInternal.h";
      v10 = 1024;
      v11 = 104;
      v12 = 2080;
      v13 = "AVMIDIPlayer.mm";
      v14 = 1024;
      v15 = 182;
      v16 = 2080;
      v17 = "[AVMIDIPlayer duration]";
      v18 = 2080;
      v19 = "MusicSequenceGetSecondsForBeats(impl->mSequence, impl->mLength, &durInSeconds)";
      v20 = 1024;
      v21 = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v4}];
  }

  return outSeconds;
}

- (void)setRate:(float)rate
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_impl(self, a2);
  v5 = MusicPlayerSetPlayRateScalar(*(v4 + 8), rate);
  if (v5)
  {
    v6 = v5;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v9 = "AVAEInternal.h";
      v10 = 1024;
      v11 = 104;
      v12 = 2080;
      v13 = "AVMIDIPlayer.mm";
      v14 = 1024;
      v15 = 175;
      v16 = 2080;
      v17 = "[AVMIDIPlayer setRate:]";
      v18 = 2080;
      v19 = "MusicPlayerSetPlayRateScalar(impl->mPlayer, rate)";
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v6}];
  }
}

- (float)rate
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_impl(self, a2);
  outScaleRate = 0.0;
  PlayRateScalar = MusicPlayerGetPlayRateScalar(*(v2 + 8), &outScaleRate);
  if (PlayRateScalar)
  {
    v4 = PlayRateScalar;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v9 = "AVAEInternal.h";
      v10 = 1024;
      v11 = 104;
      v12 = 2080;
      v13 = "AVMIDIPlayer.mm";
      v14 = 1024;
      v15 = 168;
      v16 = 2080;
      v17 = "[AVMIDIPlayer rate]";
      v18 = 2080;
      v19 = "MusicPlayerGetPlayRateScalar(impl->mPlayer, &scalar)";
      v20 = 1024;
      v21 = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v4}];
  }

  return outScaleRate;
}

- (BOOL)isPlaying
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_impl(self, a2);
  outIsPlaying = 0;
  IsPlaying = MusicPlayerIsPlaying(*(v2 + 8), &outIsPlaying);
  if (IsPlaying)
  {
    v4 = IsPlaying;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v9 = "AVAEInternal.h";
      v10 = 1024;
      v11 = 104;
      v12 = 2080;
      v13 = "AVMIDIPlayer.mm";
      v14 = 1024;
      v15 = 160;
      v16 = 2080;
      v17 = "[AVMIDIPlayer isPlaying]";
      v18 = 2080;
      v19 = "MusicPlayerIsPlaying(impl->mPlayer, &playing)";
      v20 = 1024;
      v21 = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v4}];
  }

  return outIsPlaying != 0;
}

- (void)stop
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_impl(self, a2);
  v3 = MusicPlayerStop(*(v2 + 8));
  if (v3)
  {
    v4 = v3;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 104;
      *&buf[18] = 2080;
      *&buf[20] = "AVMIDIPlayer.mm";
      *&buf[28] = 1024;
      *&buf[30] = 303;
      *&buf[34] = 2080;
      *&buf[36] = "stop";
      v9 = 2080;
      v10 = "MusicPlayerStop(mPlayer)";
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v4}];
  }

  v6 = *(v2 + 32);
  if (v6)
  {
    *(v2 + 32) = 0;
    v7 = *(v2 + 40);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZN14MIDIPlayerImpl4stopEv_block_invoke;
    *&buf[24] = &unk_1E7EF6548;
    *&buf[32] = v6;
    dispatch_async(v7, buf);
  }
}

- (void)play:(AVMIDIPlayerCompletionHandler)completionHandler
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_impl(self, a2);
  *(v4 + 32) = _Block_copy(completionHandler);
  v5 = MusicPlayerStart(*(v4 + 8));
  if (v5)
  {
    v6 = v5;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v9 = "AVAEInternal.h";
      v10 = 1024;
      v11 = 104;
      v12 = 2080;
      v13 = "AVMIDIPlayer.mm";
      v14 = 1024;
      v15 = 298;
      v16 = 2080;
      v17 = "start";
      v18 = 2080;
      v19 = "MusicPlayerStart(mPlayer)";
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v6}];
  }
}

- (void)prepareToPlay
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_impl(self, a2);
  v3 = MusicPlayerPreroll(*(v2 + 8));
  if (v3)
  {
    v4 = v3;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v7 = "AVAEInternal.h";
      v8 = 1024;
      v9 = 104;
      v10 = 2080;
      v11 = "AVMIDIPlayer.mm";
      v12 = 1024;
      v13 = 137;
      v14 = 2080;
      v15 = "[AVMIDIPlayer prepareToPlay]";
      v16 = 2080;
      v17 = "MusicPlayerPreroll(impl->mPlayer)";
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v4}];
  }
}

- (double)beatsForHostTime:(unint64_t)time
{
  v4 = objc_msgSend_impl(self, a2);
  outBeats = 0.0;
  BeatsForHostTime = MusicPlayerGetBeatsForHostTime(*(v4 + 8), time, &outBeats);
  result = outBeats;
  if (BeatsForHostTime)
  {
    return 0.0;
  }

  return result;
}

- (unint64_t)hostTimeForBeats:(double)beats
{
  v4 = objc_msgSend_impl(self, a2);
  outHostTime = 0;
  if (MusicPlayerGetHostTimeForBeats(*(v4 + 8), beats, &outHostTime))
  {
    return 0;
  }

  else
  {
    return outHostTime;
  }
}

- (AVMIDIPlayer)initWithData:(NSData *)data soundBankURL:(NSURL *)bankURL error:(NSError *)outError
{
  initBase = [(AVMIDIPlayer *)self initBase];
  v9 = initBase;
  if (initBase)
  {
    if (!data)
    {
LABEL_9:
      v12 = v9;
      return 0;
    }

    if (outError)
    {
      *outError = 0;
    }

    v10 = objc_msgSend_impl(initBase);
    v11 = MusicSequenceFileLoadData(v10->var2, data, kMusicSequenceFile_AnyType, 1u);
    if (v11 || (v11 = MIDIPlayerImpl::finishLoad(v10, bankURL)) != 0)
    {
      if (outError)
      {
        *outError = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreaudio.avfaudio" code:v11 userInfo:0];
      }

      goto LABEL_9;
    }
  }

  return v9;
}

- (AVMIDIPlayer)initWithContentsOfURL:(NSURL *)inURL soundBankURL:(NSURL *)bankURL error:(NSError *)outError
{
  initBase = [(AVMIDIPlayer *)self initBase];
  v9 = initBase;
  if (initBase)
  {
    if (!inURL)
    {
LABEL_9:
      v12 = v9;
      return 0;
    }

    if (outError)
    {
      *outError = 0;
    }

    v10 = objc_msgSend_impl(initBase);
    *(v10 + 24) = 0;
    v11 = MusicSequenceFileLoad(*(v10 + 16), inURL, kMusicSequenceFile_AnyType, 1u);
    if (v11 || (v11 = MIDIPlayerImpl::finishLoad(v10, bankURL)) != 0)
    {
      if (outError)
      {
        *outError = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreaudio.avfaudio" code:v11 userInfo:0];
      }

      goto LABEL_9;
    }
  }

  return v9;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  if (kAVMPScope)
  {
    v3 = *kAVMPScope;
    if (!*kAVMPScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v6 = "AVMIDIPlayer.mm";
    v7 = 1024;
    v8 = 73;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ---> self = %p", buf, 0x1Cu);
  }

LABEL_7:
  [(AVMIDIPlayer *)self destroyBase];
  v4.receiver = self;
  v4.super_class = AVMIDIPlayer;
  [(AVMIDIPlayer *)&v4 dealloc];
}

- (void)finalize
{
  [(AVMIDIPlayer *)self destroyBase];
  v3.receiver = self;
  v3.super_class = AVMIDIPlayer;
  [(AVMIDIPlayer *)&v3 finalize];
}

- (void)destroyBase
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_impl(self, a2);
  if (v2)
  {
    v3 = v2;
    if (kAVMPScope)
    {
      v4 = *kAVMPScope;
      if (!*kAVMPScope)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315650;
      v9 = "AVMIDIPlayer.mm";
      v10 = 1024;
      v11 = 268;
      v12 = 2048;
      v13 = v3;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ---> this = %p", &v8, 0x1Cu);
    }

LABEL_9:
    v5 = *(v3 + 40);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = *(v3 + 8);
    if (v6)
    {
      DisposeMusicPlayer(v6);
    }

    v7 = *(v3 + 16);
    if (v7)
    {
      DisposeMusicSequence(v7);
    }

    if (*v3)
    {
      DisposeAUGraph(*v3);
    }

    JUMPOUT(0x1BFAF5800);
  }
}

- (id)initBase
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = AVMIDIPlayer;
  if ([(AVMIDIPlayer *)&v3 init])
  {
    if ([AVMIDIPlayer(AVMIDIPlayerPriv) initBase]::once != -1)
    {
      dispatch_once(&[AVMIDIPlayer(AVMIDIPlayerPriv) initBase]::once, &__block_literal_global_3156);
    }

    operator new();
  }

  return 0;
}

@end