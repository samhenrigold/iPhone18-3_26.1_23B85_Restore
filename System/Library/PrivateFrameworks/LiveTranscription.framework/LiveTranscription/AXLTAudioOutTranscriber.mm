@interface AXLTAudioOutTranscriber
- (AXLTAudioOutTranscriber)initWithPID:(int)d appID:(id)iD appName:(id)name locale:(id)locale delegate:(id)delegate transcriberVersion:(int64_t)version;
- (AXLTTranscriberDelegateProtocol)delegate;
- (BOOL)_isSilenceOnlyInBuffer:(AudioQueueBuffer *)buffer packetCount:(unsigned int)count;
- (BOOL)createAudioBuffersWithBufferByteSize:(unsigned int)size error:(id *)error;
- (int64_t)_findSilencePacketOffset:(AudioQueueBuffer *)offset packetCount:(unsigned int)count silentSamplesMin:(int64_t)min zeroOffsetOnly:(BOOL)only;
- (void)_appendBuffer:(AudioQueueBuffer *)buffer offsetInPackets:(unsigned int)packets packetCount:(unsigned int)count;
- (void)_calcHistogramForBuffer:(AudioQueueBuffer *)buffer packetCount:(unsigned int)count isSilence:(BOOL)silence;
- (void)_pauseSpeechRecognition;
- (void)cleanup;
- (void)handleAudioBuffer:(AudioQueueBuffer *)buffer audioQueue:(OpaqueAudioQueue *)queue timestamp:(const AudioTimeStamp *)timestamp packetCount:(unsigned int)count packetDesc:(const AudioStreamPacketDescription *)desc;
- (void)setupTranscriberIfNeeded;
@end

@implementation AXLTAudioOutTranscriber

- (AXLTAudioOutTranscriber)initWithPID:(int)d appID:(id)iD appName:(id)name locale:(id)locale delegate:(id)delegate transcriberVersion:(int64_t)version
{
  iDCopy = iD;
  nameCopy = name;
  localeCopy = locale;
  delegateCopy = delegate;
  v32.receiver = self;
  v32.super_class = AXLTAudioOutTranscriber;
  v19 = [(AXLTAudioOutTranscriber *)&v32 init];
  v20 = v19;
  if (v19)
  {
    v19->_pid = d;
    objc_storeStrong(&v19->_appID, iD);
    objc_storeStrong(&v20->_appName, name);
    v21 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
    tapFormat = v20->_tapFormat;
    v20->_tapFormat = v21;

    objc_storeWeak(&v20->_delegate, delegateCopy);
    date = [MEMORY[0x277CBEAA8] date];
    sessionStartTime = v20->_sessionStartTime;
    v20->_sessionStartTime = date;

    v20->_transcriberVersion = version;
    if (version)
    {
      if (v20->_pid == -2)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      v26 = [[_TtC17LiveTranscription23AXLiveCaptionSourceInfo alloc] initWithSourceType:v25 pid:v20->_pid appID:iDCopy appName:v20->_appName locale:localeCopy];
      source = v20->_source;
      v20->_source = v26;

      v28 = +[_TtC17LiveTranscription15AXLCTranscriber shared];
      v29 = 120;
    }

    else
    {
      v28 = +[AXLTTranscriber sharedInstance];
      v29 = 56;
    }

    v30 = *(&v20->super.isa + v29);
    *(&v20->super.isa + v29) = v28;
  }

  return v20;
}

- (void)setupTranscriberIfNeeded
{
  if ([(AXLTAudioOutTranscriber *)self transcriberVersion])
  {
    transcriberV2 = [(AXLTAudioOutTranscriber *)self transcriberV2];
    source = self->_source;
    tapFormat = self->_tapFormat;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__AXLTAudioOutTranscriber_setupTranscriberIfNeeded__block_invoke;
    v9[3] = &unk_27981C958;
    v9[4] = self;
    [transcriberV2 startTranscriptionFor:source audioFormat:tapFormat transcriberResult:v9];
  }

  else
  {
    transcriber = [(AXLTAudioOutTranscriber *)self transcriber];
    v7 = [transcriber isTranscribingForPID:{-[AXLTAudioOutTranscriber pid](self, "pid")}];

    if ((v7 & 1) == 0)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __51__AXLTAudioOutTranscriber_setupTranscriberIfNeeded__block_invoke_289;
      v8[3] = &unk_27981C9A8;
      v8[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], v8);
    }
  }
}

void __51__AXLTAudioOutTranscriber_setupTranscriberIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = AXLogLiveTranscription();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __51__AXLTAudioOutTranscriber_setupTranscriberIfNeeded__block_invoke_cold_1(v3, v4);
  }

  v5 = [*(a1 + 32) textLogTime];
  if (!v5 || (v6 = v5, [MEMORY[0x277CBEAA8] now], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "textLogTime"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "timeIntervalSinceDate:", v8), v10 = v9, v8, v7, v6, v10 > 5.0))
  {
    v11 = AXLogLiveTranscription();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x277CCABB0];
      v13 = [v3 text];
      v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "length")}];
      v15 = [v3 source];
      v16 = [v15 description];
      v19 = 138412546;
      v20 = v14;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_256022000, v11, OS_LOG_TYPE_DEFAULT, "AudioTranscriber: caption %@ %@", &v19, 0x16u);
    }

    v17 = [MEMORY[0x277CBEAA8] now];
    [*(a1 + 32) setTextLogTime:v17];
  }

  v18 = [*(a1 + 32) delegate];
  [v18 liveCaptionsResult:v3];
}

void __51__AXLTAudioOutTranscriber_setupTranscriberIfNeeded__block_invoke_289(uint64_t a1)
{
  v2 = [*(a1 + 32) transcriber];
  v3 = [*(a1 + 32) pid];
  v4 = [*(a1 + 32) appName];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__AXLTAudioOutTranscriber_setupTranscriberIfNeeded__block_invoke_2;
  v7[3] = &unk_27981C980;
  v8 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__AXLTAudioOutTranscriber_setupTranscriberIfNeeded__block_invoke_293;
  v6[3] = &unk_27981C9A8;
  v6[4] = v8;
  [v2 startTranscriptionForPID:v3 appName:v4 callback:v7 completionCallback:v6];

  v5 = [*(a1 + 32) transcriber];
  [v5 resumeTranscriptionForPID:{objc_msgSend(*(a1 + 32), "pid")}];
}

void __51__AXLTAudioOutTranscriber_setupTranscriberIfNeeded__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 formattedString];
  v7 = [*(a1 + 32) textLogTime];
  if (!v7 || (v8 = v7, [MEMORY[0x277CBEAA8] now], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "textLogTime"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "timeIntervalSinceDate:", v10), v12 = v11, v10, v9, v8, v12 > 5.0))
  {
    v13 = AXLogLiveTranscription();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
      v15 = [*(a1 + 32) appName];
      *buf = 138412546;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_256022000, v13, OS_LOG_TYPE_DEFAULT, "AudioTranscriber: Transcribed text: %@ for app: %@", buf, 0x16u);
    }

    v16 = [MEMORY[0x277CBEAA8] now];
    [*(a1 + 32) setTextLogTime:v16];
  }

  v17 = +[AXLTAudioTextDumper sharedInstance];
  v18 = [*(a1 + 32) appName];
  v19 = [*(a1 + 32) sessionStartTime];
  [v17 saveTranscribedText:v6 appName:v18 sessionStartTime:v19];

  v20 = [AXLTTranscribedData alloc];
  v21 = [MEMORY[0x277CBEAA8] date];
  v22 = [*(a1 + 32) pid];
  v23 = [*(a1 + 32) appID];
  v24 = [*(a1 + 32) appName];
  LOBYTE(v27) = 0;
  v25 = [(AXLTTranscribedData *)v20 initWithTranscription:v5 requestType:1 timestamp:v21 pid:v22 appID:v23 appName:v24 assetState:a3 silence:v27];

  v26 = [*(a1 + 32) delegate];
  [v26 transcriberOutputData:v25];
}

void __51__AXLTAudioOutTranscriber_setupTranscriberIfNeeded__block_invoke_293(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = AXLogLiveTranscription();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) appName];
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_256022000, v3, OS_LOG_TYPE_DEFAULT, "AudioTranscriber: Recognized text for app: %@", buf, 0xCu);
  }

  v5 = [AXLTTranscribedData alloc];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [*(a1 + 32) pid];
  v8 = [*(a1 + 32) appID];
  v9 = [*(a1 + 32) appName];
  LOBYTE(v12) = 0;
  v10 = [(AXLTTranscribedData *)v5 initWithTranscription:0 requestType:1 timestamp:v6 pid:v7 appID:v8 appName:v9 assetState:-2 silence:v12];

  v11 = [*(a1 + 32) delegate];
  [v11 transcriberOutputData:v10];
}

- (void)cleanup
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = AXLogLiveTranscription();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(AXLTAudioOutTranscriber *)self pid];
    appName = [(AXLTAudioOutTranscriber *)self appName];
    v13[0] = 67109378;
    v13[1] = v4;
    v14 = 2112;
    v15 = appName;
    _os_log_impl(&dword_256022000, v3, OS_LOG_TYPE_DEFAULT, "AudioTranscriber: clean up pid %d, app: %@", v13, 0x12u);
  }

  if ([(AXLTAudioOutTranscriber *)self transcriberVersion])
  {
    transcriberV2 = [(AXLTAudioOutTranscriber *)self transcriberV2];
    source = [(AXLTAudioOutTranscriber *)self source];
    [transcriberV2 stopTranscriptionFor:source];
  }

  if (![(AXLTAudioOutTranscriber *)self transcriberVersion])
  {
    transcriber = [(AXLTAudioOutTranscriber *)self transcriber];
    [transcriber stopTranscriptionForPID:{-[AXLTAudioOutTranscriber pid](self, "pid")}];
  }

  if ([(AXLTAudioOutTranscriber *)self audioQueue])
  {
    if (AudioQueueStop([(AXLTAudioOutTranscriber *)self audioQueue], 1u))
    {
      v9 = AXLogLiveTranscription();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AXLTAudioOutTranscriber cleanup];
      }
    }

    if (AudioQueueFreeBuffer([(AXLTAudioOutTranscriber *)self audioQueue], self->_mBuffers[0]))
    {
      v10 = AXLogLiveTranscription();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AXLTAudioOutTranscriber cleanup];
      }
    }

    if ([(AXLTAudioOutTranscriber *)self audioQueue]&& AudioQueueDispose([(AXLTAudioOutTranscriber *)self audioQueue], 1u))
    {
      v11 = AXLogLiveTranscription();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [AXLTAudioOutTranscriber cleanup];
      }
    }
  }

  v12 = +[AXLTAudioTextDumper sharedInstance];
  [v12 cleanUp];
}

- (BOOL)createAudioBuffersWithBufferByteSize:(unsigned int)size error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  outBuffer = 0;
  v6 = AudioQueueAllocateBuffer([(AXLTAudioOutTranscriber *)self audioQueue], size, &outBuffer);
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to allocate buffer: %d", v6];
    v8 = AXLogLiveTranscription();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AXLTAudioOutTranscriber createAudioBuffersWithBufferByteSize:error:];
    }

    v9 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA068];
    v22[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v11 = v9;
    v12 = 8;
LABEL_9:
    *error = [v11 errorWithDomain:@"com.apple.accessibility.LiveTranscription" code:v12 userInfo:v10];

    return 0;
  }

  audioQueue = [(AXLTAudioOutTranscriber *)self audioQueue];
  v14 = AudioQueueEnqueueBuffer(audioQueue, outBuffer, 0, 0);
  if (v14)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to enqueue buffer: %d", v14];
    v15 = AXLogLiveTranscription();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AXLTAudioOutTranscriber createAudioBuffersWithBufferByteSize:error:];
    }

    v16 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA068];
    v20 = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v11 = v16;
    v12 = 9;
    goto LABEL_9;
  }

  self->_mBuffers[0] = outBuffer;
  return 1;
}

- (void)handleAudioBuffer:(AudioQueueBuffer *)buffer audioQueue:(OpaqueAudioQueue *)queue timestamp:(const AudioTimeStamp *)timestamp packetCount:(unsigned int)count packetDesc:(const AudioStreamPacketDescription *)desc
{
  v7 = *&count;
  v10 = AXLogLiveTranscription();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AXLTAudioOutTranscriber handleAudioBuffer:buffer audioQueue:v7 timestamp:v10 packetCount:? packetDesc:?];
  }

  if ([(AXLTAudioOutTranscriber *)self _isSilenceOnlyInBuffer:buffer packetCount:v7])
  {
    if (self->_silentBuffersCount <= 9)
    {
      [(AXLTAudioOutTranscriber *)self _appendBuffer:buffer offsetInPackets:0 packetCount:v7];
    }

    v11 = [(AXLTAudioOutTranscriber *)self pid];
    silentBuffersCount = self->_silentBuffersCount;
    if (v11 != -2 && silentBuffersCount >= 11)
    {
      [(AXLTAudioOutTranscriber *)self _pauseSpeechRecognition];
      silentBuffersCount = self->_silentBuffersCount;
    }

    self->_silentBuffersCount = silentBuffersCount + 1;
  }

  else
  {
    [(AXLTAudioOutTranscriber *)self _appendBuffer:buffer offsetInPackets:0 packetCount:v7];
    self->_silentBuffersCount = 0;
  }

  AudioQueueEnqueueBuffer([(AXLTAudioOutTranscriber *)self audioQueue], buffer, 0, 0);
}

- (void)_pauseSpeechRecognition
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = AXLogLiveTranscription();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_silentBuffersCount];
    v5 = [(AXLTAudioOutTranscriber *)self pid];
    appName = [(AXLTAudioOutTranscriber *)self appName];
    *buf = 138412802;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    v12 = 2112;
    v13 = appName;
    _os_log_impl(&dword_256022000, v3, OS_LOG_TYPE_DEFAULT, "Pause recognition for silence %@, pid %d, app: %@", buf, 0x1Cu);
  }

  if (![(AXLTAudioOutTranscriber *)self transcriberVersion])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__AXLTAudioOutTranscriber__pauseSpeechRecognition__block_invoke;
    block[3] = &unk_27981C9A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __50__AXLTAudioOutTranscriber__pauseSpeechRecognition__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transcriber];
  [v2 stopTranscriptionForPID:{objc_msgSend(*(a1 + 32), "pid")}];
}

- (int64_t)_findSilencePacketOffset:(AudioQueueBuffer *)offset packetCount:(unsigned int)count silentSamplesMin:(int64_t)min zeroOffsetOnly:(BOOL)only
{
  if (count)
  {
    v6 = 0;
    v7 = 0;
    result = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v9 = (offset->mAudioData + 2 * v6);
      v10 = *v9;
      if (v10 < 0)
      {
        v10 = -v10;
      }

      v11 = v9[1];
      if (v11 < 0)
      {
        v11 = -v11;
      }

      if (v10 <= 10 && v11 <= 10)
      {
        if (!v7)
        {
          result = v6;
        }

        if (++v7 >= min)
        {
          return result;
        }
      }

      else
      {
        result = 0x7FFFFFFFFFFFFFFFLL;
        if (only)
        {
          return result;
        }

        v7 = 0;
      }

      v6 += 2;
      if (v6 >= count)
      {
        return result;
      }
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)_isSilenceOnlyInBuffer:(AudioQueueBuffer *)buffer packetCount:(unsigned int)count
{
  if (!count)
  {
    return 1;
  }

  mAudioData = buffer->mAudioData;
  v5 = *mAudioData;
  if (v5 < 0)
  {
    v5 = -v5;
  }

  v6 = v5;
  if (v5 <= 10)
  {
    v7 = 0;
    v8 = mAudioData + 1;
    while (count - 1 != v7)
    {
      v9 = v8[v7];
      if (v9 < 0)
      {
        v9 = -v9;
      }

      v6 = v9;
      ++v7;
      if (v9 >= 11)
      {
        v10 = v7 >= count;
        goto LABEL_13;
      }
    }

    return 1;
  }

  v10 = 0;
LABEL_13:
  v11 = AXLogLiveTranscription();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AXLTAudioOutTranscriber _isSilenceOnlyInBuffer:v6 packetCount:v11];
  }

  return v10;
}

- (void)_calcHistogramForBuffer:(AudioQueueBuffer *)buffer packetCount:(unsigned int)count isSilence:(BOOL)silence
{
  silenceCopy = silence;
  transcriber = [(AXLTAudioOutTranscriber *)self transcriber];
  v10 = [transcriber isTranscribingForPID:{-[AXLTAudioOutTranscriber pid](self, "pid")}];

  if (v10)
  {
    if (silenceCopy)
    {
      v11 = objc_opt_new();
      v12 = 16;
      do
      {
        [v11 addObject:&unk_28681A5E8];
        --v12;
      }

      while (v12);
    }

    else
    {
      v11 = [AXLTHistogramCalculator histogramForAudioQueueBuffer:buffer packetCount:count channelsCount:1 format:3];
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__AXLTAudioOutTranscriber__calcHistogramForBuffer_packetCount_isSilence___block_invoke;
    v14[3] = &unk_27981C9D0;
    v14[4] = self;
    v15 = v11;
    v13 = v11;
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }
}

void __73__AXLTAudioOutTranscriber__calcHistogramForBuffer_packetCount_isSilence___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = AXLogLiveTranscription();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) appName];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_256022000, v3, OS_LOG_TYPE_INFO, "Histogram for app: %@", &v7, 0xCu);
  }

  v5 = -[AXLTAudioInfo initWithAudioInfo:requestType:pid:]([AXLTAudioInfo alloc], "initWithAudioInfo:requestType:pid:", *(a1 + 40), 1, [*(a1 + 32) pid]);
  v6 = [*(a1 + 32) delegate];
  [v6 audioInfoData:v5];
}

- (void)_appendBuffer:(AudioQueueBuffer *)buffer offsetInPackets:(unsigned int)packets packetCount:(unsigned int)count
{
  v5 = *&count;
  v43 = *MEMORY[0x277D85DE8];
  [(AXLTAudioOutTranscriber *)self setupTranscriberIfNeeded];
  tapFormat = [(AXLTAudioOutTranscriber *)self tapFormat];
  streamDescription = [tapFormat streamDescription];
  v11 = *(streamDescription + 32);
  v12 = *(streamDescription + 16);
  v37 = *streamDescription;
  v38 = v12;
  v39 = v11;

  v13 = [objc_alloc(MEMORY[0x277CB83A8]) initWithStreamDescription:&v37];
  v14 = objc_alloc(MEMORY[0x277CB83C8]);
  v15 = [v14 initWithPCMFormat:v13 frameCapacity:v5, v37, v38, v39];
  [v15 setFrameLength:v5];
  v16 = *([v15 mutableAudioBufferList] + 16);
  v17 = 2 * packets;
  v18 = (2 * v5);
  v19 = AXLogLiveTranscription();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    mAudioDataByteSize = buffer->mAudioDataByteSize;
    *buf = 67109632;
    *v41 = v17;
    *&v41[4] = 1024;
    *&v41[6] = v18;
    LOWORD(v42) = 1024;
    *(&v42 + 2) = mAudioDataByteSize;
    _os_log_debug_impl(&dword_256022000, v19, OS_LOG_TYPE_DEBUG, "Copy offsetInBytes = %d, dataByteSize = %d, full data size = %d", buf, 0x14u);
  }

  memcpy(v16, buffer->mAudioData + v17, v18);
  bufferLogTime = [(AXLTAudioOutTranscriber *)self bufferLogTime];
  if (!bufferLogTime || (v21 = bufferLogTime, [MEMORY[0x277CBEAA8] now], v22 = objc_claimAutoreleasedReturnValue(), -[AXLTAudioOutTranscriber bufferLogTime](self, "bufferLogTime"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "timeIntervalSinceDate:", v23), v25 = v24, v23, v22, v21, v25 > 5.0))
  {
    v26 = AXLogLiveTranscription();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v15, "frameCapacity")}];
      appName = [(AXLTAudioOutTranscriber *)self appName];
      *buf = 138412546;
      *v41 = v27;
      *&v41[8] = 2112;
      v42 = appName;
      _os_log_impl(&dword_256022000, v26, OS_LOG_TYPE_DEFAULT, "Sent audio buffer with size: %@ for app: %@", buf, 0x16u);
    }

    v29 = [MEMORY[0x277CBEAA8] now];
    [(AXLTAudioOutTranscriber *)self setBufferLogTime:v29];
  }

  if ([(AXLTAudioOutTranscriber *)self transcriberVersion])
  {
    transcriberV2 = [(AXLTAudioOutTranscriber *)self transcriberV2];
    source = [(AXLTAudioOutTranscriber *)self source];
    [transcriberV2 addAudioPCMBuffer:v15 for:source];
  }

  if (![(AXLTAudioOutTranscriber *)self transcriberVersion])
  {
    transcriber = [(AXLTAudioOutTranscriber *)self transcriber];
    [transcriber appendAudioPCMBuffer:v15 forPID:{-[AXLTAudioOutTranscriber pid](self, "pid")}];
  }

  v33 = +[AXLTAudioTextDumper sharedInstance];
  appName2 = [(AXLTAudioOutTranscriber *)self appName];
  sessionStartTime = [(AXLTAudioOutTranscriber *)self sessionStartTime];
  [v33 saveAudioBuffer:v15 appName:appName2 sessionStartTime:sessionStartTime];
}

- (AXLTTranscriberDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __51__AXLTAudioOutTranscriber_setupTranscriberIfNeeded__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a1 source];
  v5 = [v4 description];
  v6 = [a1 text];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_256022000, a2, OS_LOG_TYPE_DEBUG, "AudioTranscriber: caption %@ %@", &v7, 0x16u);
}

- (void)handleAudioBuffer:(os_log_t)log audioQueue:timestamp:packetCount:packetDesc:.cold.1(int *a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = *a1;
  v5[0] = 67109632;
  v5[1] = a2;
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_debug_impl(&dword_256022000, log, OS_LOG_TYPE_DEBUG, "handleAudioBuffer packets: %i, data size: %i, buffer capacity: %i", v5, 0x14u);
}

- (void)_isSilenceOnlyInBuffer:(unsigned __int16)a1 packetCount:(NSObject *)a2 .cold.1(unsigned __int16 a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_256022000, a2, OS_LOG_TYPE_DEBUG, "Found a sample of %d", v2, 8u);
}

@end