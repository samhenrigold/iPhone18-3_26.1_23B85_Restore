@interface AVAudioPlayerNode
- (AVAudioTime)nodeTimeForPlayerTime:(AVAudioTime *)playerTime;
- (AVAudioTime)playerTimeForNodeTime:(AVAudioTime *)nodeTime;
- (BOOL)isPlaying;
- (void)callLegacyCompletionHandlerForType:(int64_t)type legacyHandler:(id)handler;
- (void)didAttachToEngine:(id)engine;
- (void)pause;
- (void)play;
- (void)playAtTime:(AVAudioTime *)when;
- (void)scheduleBuffer:(AVAudioPCMBuffer *)buffer atTime:(AVAudioTime *)when options:(AVAudioPlayerNodeBufferOptions)options completionCallbackType:(AVAudioPlayerNodeCompletionCallbackType)callbackType completionHandler:(AVAudioPlayerNodeCompletionHandler)completionHandler;
- (void)scheduleBuffer:(AVAudioPCMBuffer *)buffer atTime:(AVAudioTime *)when options:(AVAudioPlayerNodeBufferOptions)options completionHandler:(AVAudioNodeCompletionHandler)completionHandler;
- (void)scheduleFile:(AVAudioFile *)file atTime:(AVAudioTime *)when completionCallbackType:(AVAudioPlayerNodeCompletionCallbackType)callbackType completionHandler:(AVAudioPlayerNodeCompletionHandler)completionHandler;
- (void)scheduleFile:(AVAudioFile *)file atTime:(AVAudioTime *)when completionHandler:(AVAudioNodeCompletionHandler)completionHandler;
- (void)scheduleSegment:(AVAudioFile *)file startingFrame:(AVAudioFramePosition)startFrame frameCount:(AVAudioFrameCount)numberFrames atTime:(AVAudioTime *)when completionCallbackType:(AVAudioPlayerNodeCompletionCallbackType)callbackType completionHandler:(AVAudioPlayerNodeCompletionHandler)completionHandler;
- (void)scheduleSegment:(AVAudioFile *)file startingFrame:(AVAudioFramePosition)startFrame frameCount:(AVAudioFrameCount)numberFrames atTime:(AVAudioTime *)when completionHandler:(AVAudioNodeCompletionHandler)completionHandler;
- (void)stop;
@end

@implementation AVAudioPlayerNode

- (void)didAttachToEngine:(id)engine
{
  implementation = [engine implementation];
  impl = self->super._impl;
  std::lock[abi:ne200100]<std::recursive_mutex,std::recursive_mutex>((impl + 96), (implementation + 112));
  v10.receiver = self;
  v10.super_class = AVAudioPlayerNode;
  [(AVAudioNode *)&v10 didAttachToEngine:engine];
  v7 = self->super._impl;

  v7[22] = 0;
  v8 = (*(*v7 + 6))(v7, 0);
  v7[22] = v8;
  v9 = v8;
  std::recursive_mutex::unlock((impl + 96));
  std::recursive_mutex::unlock((implementation + 112));
}

- (BOOL)isPlaying
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->super._impl);
  v3 = (*(*self->super._impl + 432))(self->super._impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (AVAudioTime)playerTimeForNodeTime:(AVAudioTime *)nodeTime
{
  v17 = *MEMORY[0x1E69E9840];
  if (nodeTime && ![(AVAudioTime *)nodeTime isSampleTimeValid]&& ![(AVAudioTime *)nodeTime isHostTimeValid])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v9 = 1024;
      *v10 = 71;
      *&v10[4] = 2080;
      *&v10[6] = "AVAudioPlayerNode.mm";
      v11 = 1024;
      v12 = 1245;
      v13 = 2080;
      v14 = "[AVAudioPlayerNode playerTimeForNodeTime:]";
      v15 = 2080;
      v16 = "nodeTime == nil || nodeTime.sampleTimeValid || nodeTime.hostTimeValid";
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nodeTime == nil || nodeTime.sampleTimeValid || nodeTime.hostTimeValid"}];
  }

  AVAudioNodeImplBase::GetAttachAndEngineLock(buf, self->super._impl);
  v6 = AVAudioPlayerNodeImpl::PlayerTimeForNodeTime(self->super._impl, nodeTime);
  if (v10[10] == 1)
  {
    std::recursive_mutex::unlock(*&v10[2]);
  }

  if (buf[8] == 1)
  {
    std::recursive_mutex::unlock(*buf);
  }

  return v6;
}

- (AVAudioTime)nodeTimeForPlayerTime:(AVAudioTime *)playerTime
{
  v3 = playerTime;
  v29 = *MEMORY[0x1E69E9840];
  if (playerTime && ![(AVAudioTime *)playerTime isSampleTimeValid]&& ![(AVAudioTime *)v3 isHostTimeValid])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioPlayerNode.mm";
      *&buf[28] = 1024;
      *&buf[30] = 1237;
      *&buf[34] = 2080;
      *&buf[36] = "[AVAudioPlayerNode nodeTimeForPlayerTime:]";
      *&buf[44] = 2080;
      *&buf[46] = "playerTime == nil || playerTime.sampleTimeValid || playerTime.hostTimeValid";
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "playerTime == nil || playerTime.sampleTimeValid || playerTime.hostTimeValid"}];
  }

  AVAudioNodeImplBase::GetAttachAndEngineLock(&v16, self->super._impl);
  impl = self->super._impl;
  if (*(impl + 46) == 1)
  {
    memset(buf, 0, 64);
    if (v3)
    {
      objc_msgSend_audioTimeStamp(v3);
      v7 = buf[56];
      v8 = *&buf[16];
      v3 = *&buf[8];
      v9 = *buf;
    }

    else
    {
      v7 = 0;
      v9 = 0.0;
      v8 = 0.0;
    }

    v11 = v7 & 7;
    v27 = v11;
    v26 = v8;
    v25 = v3;
    v12 = v9 + *(impl + 24);
    v24 = v12;
    if ((v7 & 3) != 3)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v13 = (*(*impl + 352))(impl);
      if (v13)
      {
        objc_msgSend_currentAudioTimeStamp(v13);
      }

      else
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
      }

      [*(impl + 22) sampleRate];
      if (v11 != 7 && (v7 & 3) != 0 && (BYTE8(v23) & 3) == 3)
      {
        if ((v7 & 4) == 0)
        {
          v8 = 1.0;
          if ((BYTE8(v23) & 4) != 0)
          {
            v11 = v7 & 3 | 4;
            v8 = *&v21;
            v26 = *&v21;
          }
        }

        if ((v11 & 2) == 0)
        {
          v3 = (*(&v20 + 1) + (v12 - *&v20) * (v8 * 24000000.0 / v14));
          v25 = v3;
        }

        if ((v11 & 1) == 0)
        {
          v24 = *&v20 + round(v14 / (v8 * 24000000.0) * (v3 - *(&v20 + 1)));
        }

        v27 = v11 | 3;
      }
    }

    [*(impl + 22) sampleRate];
    v10 = [AVAudioTime timeWithAudioTimeStamp:&v24 sampleRate:?];
  }

  else
  {
    v10 = 0;
  }

  if (v19 == 1)
  {
    std::recursive_mutex::unlock(v18);
  }

  if (v17 == 1)
  {
    std::recursive_mutex::unlock(v16);
  }

  return v10;
}

- (void)stop
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v4, self->super._impl);
  AVAudioNodeImplBase::Stop(self->super._impl);
  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }

  if (v5 == 1)
  {
    v3 = v4;

    std::recursive_mutex::unlock(v3);
  }
}

- (void)pause
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v4, self->super._impl);
  AVAudioNodeImplBase::Pause(self->super._impl);
  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }

  if (v5 == 1)
  {
    v3 = v4;

    std::recursive_mutex::unlock(v3);
  }
}

- (void)playAtTime:(AVAudioTime *)when
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super._impl);
  AVAudioNodeImplBase::Start(self->super._impl, when);
  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    v5 = v6;

    std::recursive_mutex::unlock(v5);
  }
}

- (void)play
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v4, self->super._impl);
  AVAudioNodeImplBase::Start(self->super._impl, 0);
  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }

  if (v5 == 1)
  {
    v3 = v4;

    std::recursive_mutex::unlock(v3);
  }
}

- (void)scheduleSegment:(AVAudioFile *)file startingFrame:(AVAudioFramePosition)startFrame frameCount:(AVAudioFrameCount)numberFrames atTime:(AVAudioTime *)when completionCallbackType:(AVAudioPlayerNodeCompletionCallbackType)callbackType completionHandler:(AVAudioPlayerNodeCompletionHandler)completionHandler
{
  v28 = *MEMORY[0x1E69E9840];
  if (!file)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v15 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v20 = 1024;
      *v21 = 71;
      *&v21[4] = 2080;
      *&v21[6] = "AVAudioPlayerNode.mm";
      v22 = 1024;
      v23 = 1191;
      v24 = 2080;
      v25 = "[AVAudioPlayerNode scheduleSegment:startingFrame:frameCount:atTime:completionCallbackType:completionHandler:]";
      v26 = 2080;
      v27 = "stream != nil";
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "stream != nil"}];
  }

  if (when && ![(AVAudioTime *)when isSampleTimeValid]&& ![(AVAudioTime *)when isHostTimeValid])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v16 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v20 = 1024;
      *v21 = 71;
      *&v21[4] = 2080;
      *&v21[6] = "AVAudioPlayerNode.mm";
      v22 = 1024;
      v23 = 1192;
      v24 = 2080;
      v25 = "[AVAudioPlayerNode scheduleSegment:startingFrame:frameCount:atTime:completionCallbackType:completionHandler:]";
      v26 = 2080;
      v27 = "when == nil || when.sampleTimeValid || when.hostTimeValid";
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "when == nil || when.sampleTimeValid || when.hostTimeValid"}];
  }

  if (startFrame < 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v17 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v20 = 1024;
      *v21 = 71;
      *&v21[4] = 2080;
      *&v21[6] = "AVAudioPlayerNode.mm";
      v22 = 1024;
      v23 = 1193;
      v24 = 2080;
      v25 = "[AVAudioPlayerNode scheduleSegment:startingFrame:frameCount:atTime:completionCallbackType:completionHandler:]";
      v26 = 2080;
      v27 = "startFrame >= 0";
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "startFrame >= 0"}];
  }

  if (!numberFrames)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v18 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v20 = 1024;
      *v21 = 71;
      *&v21[4] = 2080;
      *&v21[6] = "AVAudioPlayerNode.mm";
      v22 = 1024;
      v23 = 1194;
      v24 = 2080;
      v25 = "[AVAudioPlayerNode scheduleSegment:startingFrame:frameCount:atTime:completionCallbackType:completionHandler:]";
      v26 = 2080;
      v27 = "numberFrames > 0";
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "numberFrames > 0"}];
  }

  AVAudioNodeImplBase::GetAttachAndEngineLock(buf, self->super._impl);
  AVAudioPlayerNodeImpl::ScheduleSegment(self->super._impl, file, startFrame, numberFrames, when, callbackType, completionHandler);
  if (v21[10] == 1)
  {
    std::recursive_mutex::unlock(*&v21[2]);
  }

  if (buf[8] == 1)
  {
    std::recursive_mutex::unlock(*buf);
  }
}

- (void)scheduleSegment:(AVAudioFile *)file startingFrame:(AVAudioFramePosition)startFrame frameCount:(AVAudioFrameCount)numberFrames atTime:(AVAudioTime *)when completionHandler:(AVAudioNodeCompletionHandler)completionHandler
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__AVAudioPlayerNode_scheduleSegment_startingFrame_frameCount_atTime_completionHandler___block_invoke;
  v7[3] = &unk_1E7EF6520;
  v7[4] = self;
  v7[5] = completionHandler;
  [(AVAudioPlayerNode *)self scheduleSegment:file startingFrame:startFrame frameCount:*&numberFrames atTime:when completionCallbackType:0 completionHandler:v7];
}

- (void)scheduleFile:(AVAudioFile *)file atTime:(AVAudioTime *)when completionCallbackType:(AVAudioPlayerNodeCompletionCallbackType)callbackType completionHandler:(AVAudioPlayerNodeCompletionHandler)completionHandler
{
  v22 = *MEMORY[0x1E69E9840];
  if (!file)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v14 = 1024;
      *v15 = 71;
      *&v15[4] = 2080;
      *&v15[6] = "AVAudioPlayerNode.mm";
      v16 = 1024;
      v17 = 1174;
      v18 = 2080;
      v19 = "[AVAudioPlayerNode scheduleFile:atTime:completionCallbackType:completionHandler:]";
      v20 = 2080;
      v21 = "file != nil";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "file != nil"}];
  }

  if (when && ![(AVAudioTime *)when isSampleTimeValid]&& ![(AVAudioTime *)when isHostTimeValid])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v14 = 1024;
      *v15 = 71;
      *&v15[4] = 2080;
      *&v15[6] = "AVAudioPlayerNode.mm";
      v16 = 1024;
      v17 = 1175;
      v18 = 2080;
      v19 = "[AVAudioPlayerNode scheduleFile:atTime:completionCallbackType:completionHandler:]";
      v20 = 2080;
      v21 = "when == nil || when.sampleTimeValid || when.hostTimeValid";
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "when == nil || when.sampleTimeValid || when.hostTimeValid"}];
  }

  AVAudioNodeImplBase::GetAttachAndEngineLock(buf, self->super._impl);
  AVAudioPlayerNodeImpl::ScheduleSegment(self->super._impl, file, 0, 0xFFFFFFFFFFFFFFFFLL, when, callbackType, completionHandler);
  if (v15[10] == 1)
  {
    std::recursive_mutex::unlock(*&v15[2]);
  }

  if (buf[8] == 1)
  {
    std::recursive_mutex::unlock(*buf);
  }
}

- (void)scheduleFile:(AVAudioFile *)file atTime:(AVAudioTime *)when completionHandler:(AVAudioNodeCompletionHandler)completionHandler
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AVAudioPlayerNode_scheduleFile_atTime_completionHandler___block_invoke;
  v5[3] = &unk_1E7EF6520;
  v5[4] = self;
  v5[5] = completionHandler;
  [(AVAudioPlayerNode *)self scheduleFile:file atTime:when completionCallbackType:0 completionHandler:v5];
}

- (void)scheduleBuffer:(AVAudioPCMBuffer *)buffer atTime:(AVAudioTime *)when options:(AVAudioPlayerNodeBufferOptions)options completionCallbackType:(AVAudioPlayerNodeCompletionCallbackType)callbackType completionHandler:(AVAudioPlayerNodeCompletionHandler)completionHandler
{
  v26 = *MEMORY[0x1E69E9840];
  if (when && ![(AVAudioTime *)when isSampleTimeValid:buffer]&& ![(AVAudioTime *)when isHostTimeValid])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v10 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v15 = "AVAEInternal.h";
      v16 = 1024;
      v17 = 71;
      v18 = 2080;
      v19 = "AVAudioPlayerNode.mm";
      v20 = 1024;
      v21 = 1159;
      v22 = 2080;
      v23 = "[AVAudioPlayerNode scheduleBuffer:atTime:options:completionCallbackType:completionHandler:]";
      v24 = 2080;
      v25 = "when == nil || when.sampleTimeValid || when.hostTimeValid";
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "when == nil || when.sampleTimeValid || when.hostTimeValid"}];
  }

  AVAudioNodeImplBase::GetAttachAndEngineLock(&v13, self->super._impl);
  channelCount = [*(self->super._impl + 22) channelCount];
  if (channelCount != [(AVAudioFormat *)[(AVAudioBuffer *)buffer format] channelCount])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v15 = "AVAEInternal.h";
      v16 = 1024;
      v17 = 71;
      v18 = 2080;
      v19 = "AVAudioPlayerNode.mm";
      v20 = 1024;
      v21 = 804;
      v22 = 2080;
      v23 = "ScheduleBuffer";
      v24 = 2080;
      v25 = "_outputFormat.channelCount == buffer.format.channelCount";
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_outputFormat.channelCount == buffer.format.channelCount"}];
  }

  operator new();
}

- (void)scheduleBuffer:(AVAudioPCMBuffer *)buffer atTime:(AVAudioTime *)when options:(AVAudioPlayerNodeBufferOptions)options completionHandler:(AVAudioNodeCompletionHandler)completionHandler
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__AVAudioPlayerNode_scheduleBuffer_atTime_options_completionHandler___block_invoke;
  v6[3] = &unk_1E7EF6520;
  v6[4] = self;
  v6[5] = completionHandler;
  [(AVAudioPlayerNode *)self scheduleBuffer:buffer atTime:when options:options completionCallbackType:0 completionHandler:v6];
}

- (void)callLegacyCompletionHandlerForType:(int64_t)type legacyHandler:(id)handler
{
  if (!type)
  {
    if (handler)
    {
      (*(handler + 2))(handler);
    }
  }
}

@end