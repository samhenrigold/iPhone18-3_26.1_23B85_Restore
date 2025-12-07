@interface CSVTUIEndpointAnalyzer
+ (id)timeStampString;
- (CSVTUIEndpointAnalyzer)init;
- (CSVTUIEndpointAnalyzerDelegate)delegate;
- (double)_effectiveAudioTimeInSecsForSNObservation:(id)observation;
- (id)_pcmBufferForAudioChunk:(id)chunk;
- (void)_checkSNObservationForEndpoint:(id)endpoint;
- (void)_checkSNObservationForStartpoint:(id)startpoint;
- (void)_reportEndpointAtTsInSecs:(double)secs;
- (void)_reportStartpointAtTsInSecs:(double)secs;
- (void)handleVoiceTriggerWithActivationInfo:(id)info;
- (void)processAudioSamplesAsynchronously:(id)asynchronously;
- (void)recordingStoppedForReason:(int64_t)reason;
- (void)request:(id)request didFailWithError:(id)error;
- (void)request:(id)request didProduceResult:(id)result;
- (void)resetForNewRequestWithSampleRate:(unint64_t)rate;
- (void)setEndWaitTime:(double)time;
- (void)setStartWaitTime:(double)time;
- (void)stopEndpointer;
@end

@implementation CSVTUIEndpointAnalyzer

- (CSVTUIEndpointAnalyzerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setEndWaitTime:(double)time
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__CSVTUIEndpointAnalyzer_setEndWaitTime___block_invoke;
  v4[3] = &unk_278578170;
  v4[4] = self;
  *&v4[5] = time;
  dispatch_async(queue, v4);
}

double __41__CSVTUIEndpointAnalyzer_setEndWaitTime___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 176) = result;
  return result;
}

- (void)setStartWaitTime:(double)time
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__CSVTUIEndpointAnalyzer_setStartWaitTime___block_invoke;
  v4[3] = &unk_278578170;
  v4[4] = self;
  *&v4[5] = time;
  dispatch_async(queue, v4);
}

double __43__CSVTUIEndpointAnalyzer_setStartWaitTime___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 168) = result;
  return result;
}

- (void)_reportStartpointAtTsInSecs:(double)secs
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSVTUIEndpointAnalyzer _reportStartpointAtTsInSecs:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Reporting start speech", &v7, 0xCu);
  }

  self->_nnvadState = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained endpointer:self didDetectStartpointAtTime:secs];
}

- (void)_reportEndpointAtTsInSecs:(double)secs
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D01970];
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[CSVTUIEndpointAnalyzer _reportEndpointAtTsInSecs:]";
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Reporting end speech", &v17, 0xCu);
  }

  self->_nnvadState = 2;
  v7 = self->_vtExtraAudioAtStartInMs / 1000.0 + secs;
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  v9 = (v7 * v8);
  v10 = MEMORY[0x277D01798];
  numSamplesProcessedBeforeAnchorTime = self->_numSamplesProcessedBeforeAnchorTime;
  anchorMachAbsTime = self->_anchorMachAbsTime;
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  v13 = [v10 hostTimeFromSampleCount:v9 anchorHostTime:anchorMachAbsTime anchorSampleCount:numSamplesProcessedBeforeAnchorTime sampleRate:?];
  v14 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    isAnchorTimeBuffered = self->_isAnchorTimeBuffered;
    v17 = 136315650;
    v18 = "[CSVTUIEndpointAnalyzer _reportEndpointAtTsInSecs:]";
    v19 = 2050;
    v20 = v13;
    v21 = 1026;
    v22 = isAnchorTimeBuffered;
    _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s endpointedBuffer.hostTime=%{public}llu, isAnchorTimeBuffered=%{public}d", &v17, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained endpointer:self didDetectHardEndpointAtTime:secs];
}

- (void)request:(id)request didFailWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  v7 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CSVTUIEndpointAnalyzer request:didFailWithError:]";
    v10 = 2114;
    v11 = requestCopy;
    v12 = 2114;
    v13 = errorCopy;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s request: %{public}@, returnedError: %{public}@", &v8, 0x20u);
  }
}

- (void)request:(id)request didProduceResult:(id)result
{
  v16 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  resultCopy = result;
  v8 = resultCopy;
  if (self->_nnvadState == 2)
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[CSVTUIEndpointAnalyzer request:didProduceResult:]";
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Processing finished. Not scheduling", buf, 0xCu);
    }
  }

  else
  {
    queue = self->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__CSVTUIEndpointAnalyzer_request_didProduceResult___block_invoke;
    v11[3] = &unk_278579350;
    v12 = resultCopy;
    selfCopy = self;
    dispatch_async(queue, v11);
  }
}

void __51__CSVTUIEndpointAnalyzer_request_didProduceResult___block_invoke(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_timeRange(v3, a2);
    if (v7 >= 1)
    {
      v4 = *(a1 + 40);
      v5 = v4[6];
      switch(v5)
      {
        case 2:
          v6 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v9 = "[CSVTUIEndpointAnalyzer request:didProduceResult:]_block_invoke";
            _os_log_debug_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEBUG, "%s Processing finished. Ignoring", buf, 0xCu);
          }

          break;
        case 1:
          [v4 _checkSNObservationForEndpoint:*(a1 + 32)];
          break;
        case 0:
          [v4 _checkSNObservationForStartpoint:*(a1 + 32)];
          break;
      }
    }
  }
}

- (void)_checkSNObservationForEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (([endpointCopy detected] & 1) == 0)
  {
    [(CSVTUIEndpointAnalyzer *)self _effectiveAudioTimeInSecsForSNObservation:endpointCopy];
    [(CSVTUIEndpointAnalyzer *)self _reportEndpointAtTsInSecs:?];
  }
}

- (void)_checkSNObservationForStartpoint:(id)startpoint
{
  v16 = *MEMORY[0x277D85DE8];
  startpointCopy = startpoint;
  [(CSVTUIEndpointAnalyzer *)self _effectiveAudioTimeInSecsForSNObservation:startpointCopy];
  v6 = v5;
  detected = [startpointCopy detected];

  if (detected)
  {

    [(CSVTUIEndpointAnalyzer *)self _reportStartpointAtTsInSecs:v6];
  }

  else
  {
    startWaitTime = self->_startWaitTime;
    if (v6 > startWaitTime)
    {
      v9 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = "[CSVTUIEndpointAnalyzer _checkSNObservationForStartpoint:]";
        v12 = 2050;
        v13 = v6;
        v14 = 2050;
        v15 = startWaitTime;
        _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s No Startpt detected even after %{public}f secs. startWaitTime=%{public}f secs", &v10, 0x20u);
      }

      [(CSVTUIEndpointAnalyzer *)self _reportEndpointAtTsInSecs:v6];
    }
  }
}

- (double)_effectiveAudioTimeInSecsForSNObservation:(id)observation
{
  if (observation)
  {
    objc_msgSend_timeRange(observation, a2);
    v4 = v6;
  }

  else
  {
    v4 = 0.0;
  }

  return self->_vtEndInSecs + v4 / self->_currentRequestSampleRate;
}

- (void)recordingStoppedForReason:(int64_t)reason
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__CSVTUIEndpointAnalyzer_recordingStoppedForReason___block_invoke;
  v4[3] = &unk_278578170;
  v4[4] = self;
  v4[5] = reason;
  dispatch_async(queue, v4);
}

void __52__CSVTUIEndpointAnalyzer_recordingStoppedForReason___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[CSVTUIEndpointAnalyzer recordingStoppedForReason:]_block_invoke";
    v8 = 2050;
    v9 = v3;
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Recording Stopped For Reason: %{public}ld", &v6, 0x16u);
  }

  *(*(a1 + 32) + 48) = 2;
  [*(*(a1 + 32) + 136) endAudio];
  v4 = *(a1 + 32);
  v5 = *(v4 + 136);
  *(v4 + 136) = 0;
}

- (void)stopEndpointer
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSVTUIEndpointAnalyzer stopEndpointer]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  self->_nnvadState = 2;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CSVTUIEndpointAnalyzer_stopEndpointer__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __40__CSVTUIEndpointAnalyzer_stopEndpointer__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 136) endAudio];
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  *(v2 + 136) = 0;
}

- (void)processAudioSamplesAsynchronously:(id)asynchronously
{
  asynchronouslyCopy = asynchronously;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__CSVTUIEndpointAnalyzer_processAudioSamplesAsynchronously___block_invoke;
  v7[3] = &unk_278579350;
  v7[4] = self;
  v8 = asynchronouslyCopy;
  v6 = asynchronouslyCopy;
  dispatch_async(queue, v7);
}

void __60__CSVTUIEndpointAnalyzer_processAudioSamplesAsynchronously___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1[6] == 2)
  {
    v2 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[CSVTUIEndpointAnalyzer processAudioSamplesAsynchronously:]_block_invoke";
      _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Processing Done. Returning", buf, 0xCu);
    }
  }

  else
  {
    if ((v1[19] & 0x8000000000000000) != 0)
    {
      *(*(a1 + 32) + 144) = [*(a1 + 40) hostTime];
      *(*(a1 + 32) + 152) = [*(a1 + 40) startSampleCount];
      v4 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = v5[19];
        v7 = v5[7];
        v8 = v5[13];
        *buf = 136315906;
        v16 = "[CSVTUIEndpointAnalyzer processAudioSamplesAsynchronously:]_block_invoke";
        v17 = 2050;
        v18 = v6;
        v19 = 2050;
        v20 = v7;
        v21 = 2050;
        v22 = v8;
        _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Rx first sample: %{public}ld, _numSamplesReceived=%{public}lu, _vtEndInSampleCount=%{public}lu", buf, 0x2Au);
      }

      v1 = *(a1 + 32);
    }

    v1[8] = v1[7];
    *(*(a1 + 32) + 72) = [*(a1 + 40) hostTime];
    *(*(a1 + 32) + 8) = [*(a1 + 40) wasBuffered];
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(v10 + 56);
    v12 = *(v10 + 104);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__CSVTUIEndpointAnalyzer_processAudioSamplesAsynchronously___block_invoke_13;
    v14[3] = &unk_278577D10;
    v14[4] = v10;
    [v9 skipSamplesAtStartSuchThatNumSamplesReceivedSoFar:v11 reachesACountOf:v12 completionHandler:v14];
    *(*(a1 + 32) + 56) += [*(a1 + 40) numSamples];
    v13 = [*(a1 + 40) dataForChannel:*(*(a1 + 32) + 24)];
    [*(*(a1 + 32) + 136) addSamples:objc_msgSend(v13 numSamples:{"bytes"), objc_msgSend(*(a1 + 40), "numSamples")}];
  }
}

void __60__CSVTUIEndpointAnalyzer_processAudioSamplesAsynchronously___block_invoke_13(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  *(*(a1 + 32) + 160) += a3;
  v6 = *(a1 + 32);
  if ((*(v6 + 11) & 1) == 0 && *(v6 + 160) >= *(v6 + 104))
  {
    *(v6 + 11) = 1;
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 160);
      LODWORD(v8) = *(v8 + 11);
      v11 = 136315650;
      v12 = "[CSVTUIEndpointAnalyzer processAudioSamplesAsynchronously:]_block_invoke";
      v13 = 2050;
      v14 = v9;
      v15 = 1026;
      v16 = v8;
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s _numSamplesSkippedForVT=%{public}lu, _finishedSkippingSamplesForVT=%{public}d", &v11, 0x1Cu);
    }
  }

  if ([v5 numSamples])
  {
    v10 = [*(a1 + 32) _pcmBufferForAudioChunk:v5];
    [*(*(a1 + 32) + 32) analyzeAudioBuffer:v10 atAudioFramePosition:*(*(a1 + 32) + 40)];
    *(*(a1 + 32) + 40) += [v10 frameLength];
  }
}

- (id)_pcmBufferForAudioChunk:(id)chunk
{
  activeChannel = self->_activeChannel;
  chunkCopy = chunk;
  v6 = [chunkCopy dataForChannel:activeChannel];
  numSamples = [chunkCopy numSamples];
  v8 = [objc_alloc(MEMORY[0x277CB83C0]) initWithPCMFormat:self->_currentRequestAudioFormat frameCapacity:numSamples];
  [v8 setFrameLength:numSamples];
  v9 = *([v8 mutableAudioBufferList] + 16);
  bytes = [v6 bytes];
  numSamples2 = [chunkCopy numSamples];
  sampleByteDepth = [chunkCopy sampleByteDepth];

  memcpy(v9, bytes, sampleByteDepth * numSamples2);

  return v8;
}

- (void)handleVoiceTriggerWithActivationInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__CSVTUIEndpointAnalyzer_handleVoiceTriggerWithActivationInfo___block_invoke;
  v7[3] = &unk_278579350;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_sync(queue, v7);
}

void __63__CSVTUIEndpointAnalyzer_handleVoiceTriggerWithActivationInfo___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) objectForKeyedSubscript:@"triggerEndSeconds"];
  [v2 floatValue];
  *(*(a1 + 32) + 96) = v3;

  v4 = [*(a1 + 40) objectForKeyedSubscript:@"extraSamplesAtStart"];
  v5 = [v4 unsignedIntegerValue];

  *(*(a1 + 32) + 104) = (*(*(a1 + 32) + 96) * *(*(a1 + 32) + 80));
  *(*(a1 + 32) + 112) = ((v5 / *(*(a1 + 32) + 80)) * 1000.0);
  *(*(a1 + 32) + 120) = -(*(*(a1 + 32) + 112) - *(*(a1 + 32) + 96) * 1000.0);
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(v7 + 96);
    v10 = *(v7 + 104);
    v11 = *(v7 + 112);
    v12 = *(v7 + 120);
    v13 = *(v7 + 160);
    LODWORD(v7) = *(v7 + 11);
    v14 = 136316930;
    v15 = "[CSVTUIEndpointAnalyzer handleVoiceTriggerWithActivationInfo:]_block_invoke";
    v16 = 2050;
    v17 = v9;
    v18 = 2050;
    v19 = v10;
    v20 = 2050;
    v21 = v11;
    v22 = 2050;
    v23 = v12;
    v24 = 2050;
    v25 = v13;
    v26 = 1026;
    v27 = v7;
    v28 = 2114;
    v29 = v8;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s triggerEndSeconds: %{public}f, _vtEndInSampleCount: %{public}lu, _vtExtraAudioAtStartInMs: %{public}lu,  _nnvadAudioOriginInMs: %{public}f, _numSamplesSkippedForVT: %{public}lu, _finishedSkippingSamplesForVT: %{public}d, voiceTriggerInfo: %{public}@,", &v14, 0x4Eu);
  }
}

- (void)resetForNewRequestWithSampleRate:(unint64_t)rate
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__CSVTUIEndpointAnalyzer_resetForNewRequestWithSampleRate___block_invoke;
  v4[3] = &unk_278578170;
  v4[4] = self;
  v4[5] = rate;
  dispatch_async(queue, v4);
}

void __59__CSVTUIEndpointAnalyzer_resetForNewRequestWithSampleRate___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D01970];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 136315394;
    v22 = "[CSVTUIEndpointAnalyzer resetForNewRequestWithSampleRate:]_block_invoke";
    v23 = 2048;
    v24 = v4;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s NewReq: sampleRate: %lu", buf, 0x16u);
  }

  *(*(a1 + 32) + 144) = 0;
  *(*(a1 + 32) + 152) = -1;
  *(*(a1 + 32) + 64) = 0;
  *(*(a1 + 32) + 72) = 0;
  *(*(a1 + 32) + 8) = 0;
  *(*(a1 + 32) + 80) = *(a1 + 40);
  *(*(a1 + 32) + 168) = 0x4014000000000000;
  *(*(a1 + 32) + 176) = 0x3FE8A3D70A3D70A4;
  *(*(a1 + 32) + 40) = 0;
  *(*(a1 + 32) + 48) = 0;
  *(*(a1 + 32) + 56) = 0;
  *(*(a1 + 32) + 96) = 0;
  *(*(a1 + 32) + 104) = 0;
  *(*(a1 + 32) + 120) = 0;
  *(*(a1 + 32) + 112) = 0;
  *(*(a1 + 32) + 160) = 0;
  *(*(a1 + 32) + 11) = 0;
  v5 = objc_alloc(MEMORY[0x277CB83A0]);
  if ([MEMORY[0x277D016E0] inputRecordingIsFloat])
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  v7 = [v5 initWithCommonFormat:v6 sampleRate:1 channels:0 interleaved:*(*(a1 + 32) + 80)];
  v8 = *(a1 + 32);
  v9 = *(v8 + 88);
  *(v8 + 88) = v7;

  v10 = [objc_alloc(MEMORY[0x277CDC8E8]) initWithFormat:*(*(a1 + 32) + 88)];
  v11 = *(a1 + 32);
  v12 = *(v11 + 32);
  *(v11 + 32) = v10;

  v13 = [objc_alloc(MEMORY[0x277CDC920]) initWithRequestType:0];
  v14 = *(a1 + 32);
  v15 = *(v14 + 32);
  v20 = 0;
  v16 = [v15 addRequest:v13 withObserver:v14 error:&v20];
  v17 = v20;
  v18 = v17;
  if (!v16 || v17)
  {
    v19 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[CSVTUIEndpointAnalyzer resetForNewRequestWithSampleRate:]_block_invoke";
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s Err: %@", buf, 0x16u);
    }
  }
}

- (CSVTUIEndpointAnalyzer)init
{
  v7.receiver = self;
  v7.super_class = CSVTUIEndpointAnalyzer;
  v2 = [(CSVTUIEndpointAnalyzer *)&v7 init];
  if (v2)
  {
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    v2->_currentRequestSampleRate = v3;
    v2->_firstAudioSampleSensorTimestamp = 0.0;
    v2->_firstSampleId = -1;
    v4 = [MEMORY[0x277D018F8] getSerialQueueWithQOS:33 name:@"com.apple.corespeech.vtui.nnvad" fixedPriority:*MEMORY[0x277D019B0]];
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

+ (id)timeStampString
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyyMMdd-HHmmss"];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [v2 stringFromDate:date];

  return v5;
}

@end