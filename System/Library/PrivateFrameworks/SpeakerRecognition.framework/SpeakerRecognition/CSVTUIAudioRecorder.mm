@interface CSVTUIAudioRecorder
- (BOOL)_shouldUseRemoteBuiltInMic:(id)mic;
- (BOOL)activateAudioSessionWithReason:(unint64_t)reason streamHandleId:(unint64_t)id error:(id *)error;
- (BOOL)deactivateAudioSession:(unint64_t)session error:(id *)error;
- (BOOL)isRecordingWithStreamHandleId:(unint64_t)id;
- (BOOL)prepareAudioStreamRecordWithStreamHandleId:(unint64_t)id error:(id *)error;
- (BOOL)startAudioStreamWithStreamHandleId:(unint64_t)id error:(id *)error;
- (BOOL)stopAudioStreamWithStreamHandleId:(unint64_t)id error:(id *)error;
- (CSVTUIAudioRecorder)initWithQueue:(id)queue error:(id *)error;
- (id)_compensateChannelDataIfNeeded:(id)needed receivedNumChannels:(unsigned int)channels;
- (id)_getRecordSettingsWithRequest;
- (id)_voiceControllerWithError:(id *)error;
- (id)recordRouteWithStreamHandleId:(unint64_t)id;
- (unint64_t)setContext:(id)context error:(id *)error;
- (void)_audioRecorderDidStartRecordingSuccessfully:(BOOL)successfully streamHandleID:(unint64_t)d error:(id)error;
- (void)_audioRecorderDidStopRecordingForReason:(int64_t)reason streamHandleID:(unint64_t)d;
- (void)_destroyVoiceController;
- (void)_processAudioBuffer:(id)buffer audioStreamHandleId:(unint64_t)id arrivalTimestampToAudioRecorder:(unint64_t)recorder;
- (void)_processAudioChain:(id)chain audioStreamHandleId:(unint64_t)id remoteVAD:(id)d atTime:(unint64_t)time arrivalTimestampToAudioRecorder:(unint64_t)recorder numberOfChannels:(int)channels;
- (void)dealloc;
- (void)registerObserver:(id)observer;
- (void)setAudioSessionEventDelegate:(id)delegate;
- (void)unregisterObserver:(id)observer;
- (void)voiceControllerAudioCallback:(id)callback forStream:(unint64_t)stream buffer:(id)buffer;
- (void)voiceControllerBeginRecordInterruption:(id)interruption;
- (void)voiceControllerBeginRecordInterruption:(id)interruption withContext:(id)context;
- (void)voiceControllerDidSetAudioSessionActive:(id)active isActivated:(BOOL)activated;
- (void)voiceControllerDidStartRecording:(id)recording forStream:(unint64_t)stream successfully:(BOOL)successfully error:(id)error;
- (void)voiceControllerDidStopRecording:(id)recording forStream:(unint64_t)stream forReason:(int64_t)reason;
- (void)voiceControllerEndRecordInterruption:(id)interruption;
- (void)voiceControllerRecordHardwareConfigurationDidChange:(id)change toConfiguration:(int)configuration;
- (void)voiceControllerWillSetAudioSessionActive:(id)active willActivate:(BOOL)activate;
@end

@implementation CSVTUIAudioRecorder

- (void)setAudioSessionEventDelegate:(id)delegate
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[CSVTUIAudioRecorder setAudioSessionEventDelegate:]";
    _os_log_error_impl(&dword_225E12000, v3, OS_LOG_TYPE_ERROR, "%s Unimplemented method called", &v4, 0xCu);
  }
}

- (id)_getRecordSettingsWithRequest
{
  v15[8] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D016E0] inputRecordingNumberOfChannels] > 1;
  v14[0] = *MEMORY[0x277CB8278];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1819304813];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277CB82E8];
  v4 = MEMORY[0x277CCABB0];
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  v5 = [v4 numberWithFloat:?];
  v15[1] = v5;
  v14[2] = *MEMORY[0x277CB8290];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(MEMORY[0x277D016E0], "inputRecordingSampleBitDepth")}];
  v15[2] = v6;
  v14[3] = *MEMORY[0x277CB8298];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D016E0], "inputRecordingIsFloat")}];
  v15[3] = v7;
  v14[4] = *MEMORY[0x277CB82B8];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(MEMORY[0x277D016E0], "inputRecordingNumberOfChannels")}];
  v9 = *MEMORY[0x277CB8260];
  v15[4] = v8;
  v15[5] = &unk_283933978;
  v10 = *MEMORY[0x277CB82C8];
  v14[5] = v9;
  v14[6] = v10;
  v15[6] = *MEMORY[0x277CB82D8];
  v14[7] = *MEMORY[0x277CB82A8];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v2];
  v15[7] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:8];

  return v12;
}

- (void)voiceControllerDidSetAudioSessionActive:(id)active isActivated:(BOOL)activated
{
  activatedCopy = activated;
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSVTUIAudioRecorder voiceControllerDidSetAudioSessionActive:isActivated:]";
    v8 = 1026;
    v9 = activatedCopy;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s activate : %{public}d", &v6, 0x12u);
  }
}

- (void)voiceControllerWillSetAudioSessionActive:(id)active willActivate:(BOOL)activate
{
  activateCopy = activate;
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSVTUIAudioRecorder voiceControllerWillSetAudioSessionActive:willActivate:]";
    v8 = 1026;
    v9 = activateCopy;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s activate : %{public}d", &v6, 0x12u);
  }
}

- (void)voiceControllerEndRecordInterruption:(id)interruption
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVTUIAudioRecorder voiceControllerEndRecordInterruption:]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }
}

- (void)voiceControllerBeginRecordInterruption:(id)interruption withContext:(id)context
{
  v10 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSVTUIAudioRecorder voiceControllerBeginRecordInterruption:withContext:]";
    v8 = 2114;
    v9 = contextCopy;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s withContext : %{public}@", &v6, 0x16u);
  }
}

- (void)voiceControllerBeginRecordInterruption:(id)interruption
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVTUIAudioRecorder voiceControllerBeginRecordInterruption:]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }
}

- (void)voiceControllerRecordHardwareConfigurationDidChange:(id)change toConfiguration:(int)configuration
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSVTUIAudioRecorder voiceControllerRecordHardwareConfigurationDidChange:toConfiguration:]";
    v12 = 1026;
    configurationCopy = configuration;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s toConfiguration : %{public}d", buf, 0x12u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__CSVTUIAudioRecorder_voiceControllerRecordHardwareConfigurationDidChange_toConfiguration___block_invoke;
  v8[3] = &unk_278579190;
  v8[4] = self;
  configurationCopy2 = configuration;
  dispatch_async(queue, v8);
}

void __91__CSVTUIAudioRecorder_voiceControllerRecordHardwareConfigurationDidChange_toConfiguration___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 88);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderRecordHardwareConfigurationDidChange:*(a1 + 32) toConfiguration:{*(a1 + 40), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)voiceControllerDidStopRecording:(id)recording forStream:(unint64_t)stream forReason:(int64_t)reason
{
  v20 = *MEMORY[0x277D85DE8];
  recordingCopy = recording;
  v9 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v13 = "[CSVTUIAudioRecorder voiceControllerDidStopRecording:forStream:forReason:]";
    v14 = 2050;
    v15 = recordingCopy;
    v16 = 2050;
    streamCopy = stream;
    v18 = 2050;
    reasonCopy = reason;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Received didStopRecording : %{public}p forStream:%{public}llu forReason:%{public}ld", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__CSVTUIAudioRecorder_voiceControllerDidStopRecording_forStream_forReason___block_invoke;
  block[3] = &unk_278579168;
  block[4] = self;
  block[5] = reason;
  block[6] = stream;
  dispatch_async(queue, block);
}

- (void)voiceControllerAudioCallback:(id)callback forStream:(unint64_t)stream buffer:(id)buffer
{
  v19 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  v8 = voiceControllerAudioCallback_forStream_buffer__heartbeat;
  if (!(v8 % [MEMORY[0x277D018F8] loggingHeartbeatRate]))
  {
    v9 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = 136315906;
      v12 = "[CSVTUIAudioRecorder voiceControllerAudioCallback:forStream:buffer:]";
      v13 = 1026;
      bytesDataSize = [bufferCopy bytesDataSize];
      v15 = 2050;
      v16 = voiceControllerAudioCallback_forStream_buffer__heartbeat;
      v17 = 2050;
      streamCopy = stream;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Received audio buffer %{public}d, heartbeat = %{public}llu, streamID (%{public}lu)", &v11, 0x26u);
    }
  }

  ++voiceControllerAudioCallback_forStream_buffer__heartbeat;
  [(CSVTUIAudioRecorder *)self _processAudioBuffer:bufferCopy audioStreamHandleId:stream arrivalTimestampToAudioRecorder:mach_absolute_time()];
}

- (void)voiceControllerDidStartRecording:(id)recording forStream:(unint64_t)stream successfully:(BOOL)successfully error:(id)error
{
  successfullyCopy = successfully;
  v31 = *MEMORY[0x277D85DE8];
  recordingCopy = recording;
  errorCopy = error;
  v12 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    localizedDescription = [errorCopy localizedDescription];
    *buf = 136316162;
    v22 = "[CSVTUIAudioRecorder voiceControllerDidStartRecording:forStream:successfully:error:]";
    v23 = 2050;
    v24 = recordingCopy;
    v25 = 2050;
    streamCopy = stream;
    v27 = 1026;
    v28 = successfullyCopy;
    v29 = 2114;
    v30 = localizedDescription;
    _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Received didStartRecording : %{public}p, forStream:%{public}llu, successfully:%{public}d, error:%{public}@", buf, 0x30u);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__CSVTUIAudioRecorder_voiceControllerDidStartRecording_forStream_successfully_error___block_invoke;
  v17[3] = &unk_278579140;
  v20 = successfullyCopy;
  v18 = errorCopy;
  streamCopy2 = stream;
  v17[4] = self;
  v16 = errorCopy;
  dispatch_async(queue, v17);
}

- (void)_audioRecorderDidStopRecordingForReason:(int64_t)reason streamHandleID:(unint64_t)d
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_observers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 audioRecorderDidStopRecord:self audioStreamHandleId:d reason:{reason, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  self->_waitingForDidStart = 0;
}

- (void)_audioRecorderDidStartRecordingSuccessfully:(BOOL)successfully streamHandleID:(unint64_t)d error:(id)error
{
  successfullyCopy = successfully;
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_observers;
  v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 audioRecorderDidStartRecord:self audioStreamHandleId:d successfully:successfullyCopy error:{errorCopy, v15}];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  self->_waitingForDidStart = 0;
}

- (id)_compensateChannelDataIfNeeded:(id)needed receivedNumChannels:(unsigned int)channels
{
  v19 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  if ([MEMORY[0x277D016E0] inputRecordingNumberOfChannels] <= channels)
  {
    v8 = neededCopy;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CBEB28]);
    v7 = [neededCopy length] / channels;
    v8 = [v6 initWithLength:{v7 * objc_msgSend(MEMORY[0x277D016E0], "inputRecordingNumberOfChannels")}];
    inputRecordingNumberOfChannels = [MEMORY[0x277D016E0] inputRecordingNumberOfChannels];
    v10 = _compensateChannelDataIfNeeded_receivedNumChannels__heartbeat;
    if (!(v10 % [MEMORY[0x277D018F8] loggingHeartbeatRate]))
    {
      v11 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = "[CSVTUIAudioRecorder _compensateChannelDataIfNeeded:receivedNumChannels:]";
        v15 = 1026;
        v16 = inputRecordingNumberOfChannels - channels;
        v17 = 2050;
        v18 = _compensateChannelDataIfNeeded_receivedNumChannels__heartbeat;
        _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Compensating %{public}u channel(s), heartbeat = %{public}lld", &v13, 0x1Cu);
      }
    }

    ++_compensateChannelDataIfNeeded_receivedNumChannels__heartbeat;
    [v8 replaceBytesInRange:0 withBytes:{objc_msgSend(neededCopy, "length"), objc_msgSend(neededCopy, "bytes")}];
  }

  return v8;
}

- (void)_processAudioBuffer:(id)buffer audioStreamHandleId:(unint64_t)id arrivalTimestampToAudioRecorder:(unint64_t)recorder
{
  v19 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  v9 = objc_autoreleasePoolPush();
  if ((CSIsTV() & 1) == 0)
  {
    v10 = *([bufferCopy streamDescription] + 8);
    if (v10 == 1819304813)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:objc_msgSend(bufferCopy length:{"data"), objc_msgSend(bufferCopy, "bytesDataSize")}];
      v12 = -[CSVTUIAudioRecorder _compensateChannelDataIfNeeded:receivedNumChannels:](self, "_compensateChannelDataIfNeeded:receivedNumChannels:", v11, *([bufferCopy streamDescription] + 28));
      timeStamp = [bufferCopy timeStamp];
      -[CSVTUIAudioRecorder _processAudioChain:audioStreamHandleId:remoteVAD:atTime:arrivalTimestampToAudioRecorder:numberOfChannels:](self, "_processAudioChain:audioStreamHandleId:remoteVAD:atTime:arrivalTimestampToAudioRecorder:numberOfChannels:", v12, id, 0, timeStamp, recorder, [MEMORY[0x277D016E0] inputRecordingNumberOfChannels]);
    }

    else
    {
      v14 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
      {
        v15 = 136315394;
        v16 = "[CSVTUIAudioRecorder _processAudioBuffer:audioStreamHandleId:arrivalTimestampToAudioRecorder:]";
        v17 = 1026;
        v18 = v10;
        _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s Cannot handle audio buffer : unexpected format(%{public}u)", &v15, 0x12u);
      }
    }
  }

  objc_autoreleasePoolPop(v9);
}

- (void)_processAudioChain:(id)chain audioStreamHandleId:(unint64_t)id remoteVAD:(id)d atTime:(unint64_t)time arrivalTimestampToAudioRecorder:(unint64_t)recorder numberOfChannels:(int)channels
{
  chainCopy = chain;
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__CSVTUIAudioRecorder__processAudioChain_audioStreamHandleId_remoteVAD_atTime_arrivalTimestampToAudioRecorder_numberOfChannels___block_invoke;
  block[3] = &unk_278579118;
  block[4] = self;
  v20 = chainCopy;
  v21 = dCopy;
  idCopy = id;
  timeCopy = time;
  recorderCopy = recorder;
  channelsCopy = channels;
  v17 = dCopy;
  v18 = chainCopy;
  dispatch_async(queue, block);
}

void __128__CSVTUIAudioRecorder__processAudioChain_audioStreamHandleId_remoteVAD_atTime_arrivalTimestampToAudioRecorder_numberOfChannels___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 88);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        LODWORD(v7) = *(a1 + 80);
        [*(*(&v8 + 1) + 8 * v6++) audioRecorderBufferAvailable:*(a1 + 32) audioStreamHandleId:*(a1 + 56) buffer:*(a1 + 40) remoteVAD:*(a1 + 48) atTime:*(a1 + 64) arrivalTimestampToAudioRecorder:*(a1 + 72) numberOfChannels:v7];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)_shouldUseRemoteBuiltInMic:(id)mic
{
  if (!mic)
  {
    return 0;
  }

  v3 = [mic objectForKeyedSubscript:@"useRemoteBuiltInMic"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)deactivateAudioSession:(unint64_t)session error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = MEMORY[0x277D015D8];
  v8 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[CSVTUIAudioRecorder deactivateAudioSession:error:]";
    v16 = 2050;
    sessionCopy = session;
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC setSessionActivate for deactivation : %{public}tu", &v14, 0x16u);
  }

  [(AVVoiceController *)self->_voiceController deactivateAudioSessionWithOptions:[CSVTUIAudioRecorder _convertDeactivateOption:session]];
  self->_waitingForDidStart = 0;
  date2 = [MEMORY[0x277CBEAA8] date];
  v10 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    [date2 timeIntervalSinceDate:date];
    v14 = 136315394;
    v15 = "[CSVTUIAudioRecorder deactivateAudioSession:error:]";
    v16 = 2050;
    sessionCopy = v12;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s setSessionActivate elapsed time = %{public}lf", &v14, 0x16u);
  }

  return 1;
}

- (BOOL)activateAudioSessionWithReason:(unint64_t)reason streamHandleId:(unint64_t)id error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = MEMORY[0x277D015D8];
  v11 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[CSVTUIAudioRecorder activateAudioSessionWithReason:streamHandleId:error:]";
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC setSessionActivate for activation", buf, 0xCu);
  }

  voiceController = self->_voiceController;
  if (reason == 2)
  {
    v28 = 0;
    v13 = [(AVVoiceController *)voiceController activateAudioSessionForStream:id isPrewarm:0 recordMode:1 error:&v28];
    v14 = v28;
  }

  else
  {
    v27 = 0;
    v13 = [(AVVoiceController *)voiceController activateAudioSessionForStream:id isPrewarm:0 recordMode:0 error:&v27];
    v14 = v27;
  }

  v15 = v14;
  if (v13)
  {
    v16 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[CSVTUIAudioRecorder activateAudioSessionWithReason:streamHandleId:error:]";
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s AVVC successfully activated audioSession", buf, 0xCu);
    }

    v17 = 1;
    if (!error)
    {
      goto LABEL_15;
    }

LABEL_14:
    v19 = v15;
    *error = v15;
    goto LABEL_15;
  }

  v18 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    v25 = v18;
    localizedDescription = [v15 localizedDescription];
    *buf = 136315394;
    v30 = "[CSVTUIAudioRecorder activateAudioSessionWithReason:streamHandleId:error:]";
    v31 = 2114;
    v32 = localizedDescription;
    _os_log_error_impl(&dword_225E12000, v25, OS_LOG_TYPE_ERROR, "%s AVVC setSessionActivate has failed : %{public}@", buf, 0x16u);
  }

  v17 = 0;
  if (error)
  {
    goto LABEL_14;
  }

LABEL_15:
  date2 = [MEMORY[0x277CBEAA8] date];
  v21 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315394;
    v30 = "[CSVTUIAudioRecorder activateAudioSessionWithReason:streamHandleId:error:]";
    v31 = 2050;
    v32 = v23;
    _os_log_impl(&dword_225E12000, v22, OS_LOG_TYPE_DEFAULT, "%s setSessionActivate elapsed time = %{public}lf", buf, 0x16u);
  }

  return v17;
}

- (id)recordRouteWithStreamHandleId:(unint64_t)id
{
  if ([MEMORY[0x277D018F8] hasRemoteBuiltInMic])
  {
    recordRoute = @"Builtin Microphone";
  }

  else
  {
    v6 = [(AVVoiceController *)self->_voiceController getRecordDeviceInfoForStream:id];
    recordRoute = [v6 recordRoute];
  }

  return recordRoute;
}

- (BOOL)isRecordingWithStreamHandleId:(unint64_t)id
{
  if (![MEMORY[0x277D018F8] hasRemoteBuiltInMic])
  {
    return [(AVVoiceController *)self->_voiceController getCurrentStreamState:id]> 3;
  }

  remoteRecordClient = self->_remoteRecordClient;

  return [(CSVTUIRemoteRecordClient *)remoteRecordClient isRecording];
}

- (BOOL)stopAudioStreamWithStreamHandleId:(unint64_t)id error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v8 = MEMORY[0x277D015D8];
  v9 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[CSVTUIAudioRecorder stopAudioStreamWithStreamHandleId:error:]";
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC stopRecordForStream", buf, 0xCu);
  }

  voiceController = self->_voiceController;
  v22 = 0;
  v11 = [(AVVoiceController *)voiceController stopRecordForStream:id error:&v22];
  v12 = v22;
  if ((v11 & 1) != 0 || (v13 = *v8, !os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR)))
  {
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v20 = v13;
  localizedDescription = [v12 localizedDescription];
  *buf = 136315394;
  v24 = "[CSVTUIAudioRecorder stopAudioStreamWithStreamHandleId:error:]";
  v25 = 2114;
  v26 = localizedDescription;
  _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s Failed to stopRecordForStream : %{public}@", buf, 0x16u);

  if (error)
  {
LABEL_6:
    v14 = v12;
    *error = v12;
  }

LABEL_7:
  date2 = [MEMORY[0x277CBEAA8] date];
  v16 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315394;
    v24 = "[CSVTUIAudioRecorder stopAudioStreamWithStreamHandleId:error:]";
    v25 = 2050;
    v26 = v18;
    _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s stopRecordForStream elapsed time = %{public}lf", buf, 0x16u);
  }

  self->_waitingForDidStart = 0;

  return v11;
}

- (BOOL)startAudioStreamWithStreamHandleId:(unint64_t)id error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  mach_absolute_time();
  kdebug_trace();
  v8 = [objc_alloc(MEMORY[0x277CB84E0]) initWithStreamID:id atStartHostTime:0];
  [v8 setSkipAlert:1];
  [v8 setStartAlert:0];
  [v8 setStopAlert:0];
  [v8 setStopOnErrorAlert:0];
  v9 = MEMORY[0x277D015D8];
  v10 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v8 debugDescription];
    *buf = 136315394;
    v27 = "[CSVTUIAudioRecorder startAudioStreamWithStreamHandleId:error:]";
    v28 = 2114;
    v29 = v12;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC startRecordForStream : %{public}@", buf, 0x16u);
  }

  voiceController = self->_voiceController;
  v25 = 0;
  v14 = [(AVVoiceController *)voiceController startRecordForStream:v8 error:&v25];
  v15 = v25;
  if (v14)
  {
    self->_waitingForDidStart = 1;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v16 = *v9;
  if (!os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v23 = v16;
  localizedDescription = [v15 localizedDescription];
  *buf = 136315394;
  v27 = "[CSVTUIAudioRecorder startAudioStreamWithStreamHandleId:error:]";
  v28 = 2114;
  v29 = localizedDescription;
  _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s startRecordForStream failed : %{public}@", buf, 0x16u);

  if (error)
  {
LABEL_8:
    v17 = v15;
    *error = v15;
  }

LABEL_9:
  date2 = [MEMORY[0x277CBEAA8] date];
  v19 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315394;
    v27 = "[CSVTUIAudioRecorder startAudioStreamWithStreamHandleId:error:]";
    v28 = 2050;
    v29 = v21;
    _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s startRecordForStream elapsed time = %{public}lf", buf, 0x16u);
  }

  return v14;
}

- (BOOL)prepareAudioStreamRecordWithStreamHandleId:(unint64_t)id error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  _getRecordSettingsWithRequest = [(CSVTUIAudioRecorder *)self _getRecordSettingsWithRequest];
  kdebug_trace();
  v9 = MEMORY[0x277D015D8];
  v10 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v27 = "[CSVTUIAudioRecorder prepareAudioStreamRecordWithStreamHandleId:error:]";
    v28 = 2050;
    idCopy = id;
    v30 = 2114;
    v31 = _getRecordSettingsWithRequest;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC prepareRecordForStream(%{public}llu) : %{public}@", buf, 0x20u);
  }

  v11 = objc_alloc(MEMORY[0x277CB84D0]);
  [MEMORY[0x277D016E0] inputRecordingBufferDuration];
  v12 = [v11 initWithStreamID:id settings:_getRecordSettingsWithRequest bufferDuration:?];
  [v12 setMeteringEnabled:1];
  voiceController = self->_voiceController;
  v25 = 0;
  v14 = [(AVVoiceController *)voiceController prepareRecordForStream:v12 error:&v25];
  v15 = v25;
  if ((v14 & 1) != 0 || (v16 = *v9, !os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR)))
  {
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v23 = v16;
  localizedDescription = [v15 localizedDescription];
  *buf = 136315394;
  v27 = "[CSVTUIAudioRecorder prepareAudioStreamRecordWithStreamHandleId:error:]";
  v28 = 2114;
  idCopy = localizedDescription;
  _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s AVVC prepareRecordForStream failed : %{public}@", buf, 0x16u);

  if (error)
  {
LABEL_6:
    v17 = v15;
    *error = v15;
  }

LABEL_7:
  date2 = [MEMORY[0x277CBEAA8] date];
  v19 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315394;
    v27 = "[CSVTUIAudioRecorder prepareAudioStreamRecordWithStreamHandleId:error:]";
    v28 = 2050;
    idCopy = v21;
    _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s prepareRecordForStream elapsed time = %{public}lf", buf, 0x16u);
  }

  return v14;
}

- (unint64_t)setContext:(id)context error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__7161;
  v39 = __Block_byref_object_dispose__7162;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  date = [MEMORY[0x277CBEAA8] date];
  avvcContextSettings = [contextCopy avvcContextSettings];
  v9 = MEMORY[0x277D015D8];
  v10 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [avvcContextSettings debugDescription];
    *buf = 136315394;
    v42 = "[CSVTUIAudioRecorder setContext:error:]";
    v43 = 2112;
    v44 = v11;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC setContext : %@", buf, 0x16u);
  }

  queue = self->_queue;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __40__CSVTUIAudioRecorder_setContext_error___block_invoke;
  v26 = &unk_2785790F0;
  v29 = &v31;
  selfCopy = self;
  v13 = avvcContextSettings;
  v28 = v13;
  v30 = &v35;
  dispatch_async_and_wait(queue, &v23);
  if (!v32[3])
  {
    v14 = *v9;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v36[5] localizedDescription];
      *buf = 136315394;
      v42 = "[CSVTUIAudioRecorder setContext:error:]";
      v43 = 2114;
      v44 = localizedDescription;
      _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s Failed to get handle id : %{public}@", buf, 0x16u);
    }
  }

  avvcContext = [contextCopy avvcContext];
  latestContext = self->_latestContext;
  self->_latestContext = avvcContext;

  if (error)
  {
    *error = v36[5];
  }

  date2 = [MEMORY[0x277CBEAA8] date];
  v18 = *v9;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    [date2 timeIntervalSinceDate:date];
    *buf = 136315394;
    v42 = "[CSVTUIAudioRecorder setContext:error:]";
    v43 = 2050;
    v44 = v19;
    _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s setContext elapsed time = %{public}lf", buf, 0x16u);
  }

  v20 = v32[3];
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v20;
}

void __40__CSVTUIAudioRecorder_setContext_error___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v3 setContext:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (id)_voiceControllerWithError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__7161;
  v14[4] = __Block_byref_object_dispose__7162;
  v15 = 0;
  voiceController = self->_voiceController;
  if (!voiceController)
  {
    kdebug_trace();
    if (CSIsHorseman())
    {
      voiceControllerCreationQueue = self->_voiceControllerCreationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__CSVTUIAudioRecorder__voiceControllerWithError___block_invoke;
      block[3] = &unk_2785797D0;
      block[4] = self;
      block[5] = v14;
      dispatch_sync(voiceControllerCreationQueue, block);
    }

    queue = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__CSVTUIAudioRecorder__voiceControllerWithError___block_invoke_2;
    v12[3] = &unk_2785790C8;
    v12[4] = self;
    v12[5] = v14;
    v12[6] = error;
    dispatch_async_and_wait(queue, v12);
    v8 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_voiceController;
      *buf = 136315394;
      v17 = "[CSVTUIAudioRecorder _voiceControllerWithError:]";
      v18 = 2050;
      v19 = v9;
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Successfully create AVVC : %{public}p", buf, 0x16u);
    }

    voiceController = self->_voiceController;
  }

  v10 = voiceController;
  _Block_object_dispose(v14, 8);

  return v10;
}

void __49__CSVTUIAudioRecorder__voiceControllerWithError___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CB84E8]);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 initWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;
}

void __49__CSVTUIAudioRecorder__voiceControllerWithError___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 8))
  {
    v2 = objc_alloc(MEMORY[0x277CB84E8]);
    v3 = *(*(a1 + 40) + 8);
    obj = *(v3 + 40);
    v4 = [v2 initWithError:&obj];
    objc_storeStrong((v3 + 40), obj);
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = v4;
  }

  kdebug_trace();
  v7 = *(*(a1 + 32) + 8);
  if (v7)
  {
    [v7 setRecordDelegate:?];
  }

  else
  {
    v8 = MEMORY[0x277D015D8];
    v9 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[CSVTUIAudioRecorder _voiceControllerWithError:]_block_invoke_2";
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s AVVC initialization failed", buf, 0xCu);
    }

    v10 = *(*(*(a1 + 40) + 8) + 40);
    if (v10)
    {
      v11 = *v8;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = [v10 localizedDescription];
        *buf = 136315394;
        v16 = "[CSVTUIAudioRecorder _voiceControllerWithError:]_block_invoke";
        v17 = 2114;
        v18 = v13;
        _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      }
    }

    if (*(a1 + 48))
    {
      **(a1 + 48) = *(*(*(a1 + 40) + 8) + 40);
    }
  }
}

- (void)_destroyVoiceController
{
  v17 = *MEMORY[0x277D85DE8];
  voiceController = self->_voiceController;
  if (voiceController)
  {
    v4 = MEMORY[0x277D015D8];
    v5 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[CSVTUIAudioRecorder _destroyVoiceController]";
      _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
      voiceController = self->_voiceController;
    }

    v12 = 0;
    [(AVVoiceController *)voiceController teardownWithError:&v12];
    v6 = v12;
    if (v6)
    {
      v7 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v10 = v7;
        localizedDescription = [v6 localizedDescription];
        *buf = 136315394;
        v14 = "[CSVTUIAudioRecorder _destroyVoiceController]";
        v15 = 2114;
        v16 = localizedDescription;
        _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s Failed to teardown AVVC : %{public}@", buf, 0x16u);
      }
    }

    v8 = objc_autoreleasePoolPush();
    v9 = self->_voiceController;
    self->_voiceController = 0;

    objc_autoreleasePoolPop(v8);
  }
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  [(CSVTUIAudioRecorder *)self _destroyVoiceController];
  pNonInterleavedABL = self->_pNonInterleavedABL;
  if (pNonInterleavedABL)
  {
    free(pNonInterleavedABL);
  }

  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[CSVTUIAudioRecorder dealloc]";
    v8 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAudioRecorder %{public}p deallocated", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = CSVTUIAudioRecorder;
  [(CSVTUIAudioRecorder *)&v5 dealloc];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__CSVTUIAudioRecorder_unregisterObserver___block_invoke;
  v7[3] = &unk_278579350;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__CSVTUIAudioRecorder_registerObserver___block_invoke;
  v7[3] = &unk_278579350;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (CSVTUIAudioRecorder)initWithQueue:(id)queue error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v31.receiver = self;
  v31.super_class = CSVTUIAudioRecorder;
  v7 = [(CSVTUIAudioRecorder *)&v31 init];
  v8 = v7;
  if (v7)
  {
    if (queueCopy)
    {
      [(CSVTUIAudioRecorder *)v7 setQueue:queueCopy];
    }

    else
    {
      v9 = [objc_opt_class() description];
      uTF8String = [v9 UTF8String];
      v11 = dispatch_get_global_queue(33, 0);
      v12 = dispatch_queue_create_with_target_V2(uTF8String, 0, v11);
      queue = v8->_queue;
      v8->_queue = v12;
    }

    v14 = dispatch_get_global_queue(9, 0);
    v15 = dispatch_queue_create_with_target_V2("VoiceControllerCreationQueue", 0, v14);
    voiceControllerCreationQueue = v8->_voiceControllerCreationQueue;
    v8->_voiceControllerCreationQueue = v15;

    v30 = 0;
    v17 = [(CSVTUIAudioRecorder *)v8 _voiceControllerWithError:&v30];
    v18 = v30;
    voiceController = v8->_voiceController;
    v8->_voiceController = v17;

    if (v8->_voiceController)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 0;
    }

    if (!v20)
    {
      v21 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
      {
        v28 = v21;
        localizedDescription = [v18 localizedDescription];
        *buf = 136315394;
        v33 = "[CSVTUIAudioRecorder initWithQueue:error:]";
        v34 = 2114;
        v35 = localizedDescription;
        _os_log_error_impl(&dword_225E12000, v28, OS_LOG_TYPE_ERROR, "%s Failed to create AVVC : %{public}@", buf, 0x16u);

        if (error)
        {
          goto LABEL_11;
        }
      }

      else if (error)
      {
LABEL_11:
        v22 = v18;
        v23 = 0;
        *error = v18;
        goto LABEL_17;
      }

      v23 = 0;
      goto LABEL_17;
    }

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = weakObjectsHashTable;

    v8->_waitingForDidStart = 0;
    v26 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "[CSVTUIAudioRecorder initWithQueue:error:]";
      v34 = 2050;
      v35 = v8;
      _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Create new CSAudioRecorder = %{public}p", buf, 0x16u);
    }
  }

  if (error)
  {
    *error = 0;
  }

  v23 = v8;
  v18 = 0;
LABEL_17:

  return v23;
}

@end