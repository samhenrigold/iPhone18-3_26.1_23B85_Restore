@interface BWAudioRemixAnalysisMetadataNode
+ (void)initialize;
- (BWAudioRemixAnalysisMetadataNode)init;
- (__n128)_sendRemixMetadataSampleBuffer;
- (void)_emitCopyOfMarkerBuffer:(void *)buffer onOutput:(int)output isStartMarkerBuffer:;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)resetAnalyzer;
@end

@implementation BWAudioRemixAnalysisMetadataNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWAudioRemixAnalysisMetadataNode)init
{
  v36.receiver = self;
  v36.super_class = BWAudioRemixAnalysisMetadataNode;
  v2 = [(BWNode *)&v36 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 26) = 0;
    *(v2 + 16) = 0;
    v2[136] = 0;
    *(v2 + 18) = 0;
    v4 = MEMORY[0x1E6960C70];
    v5 = *MEMORY[0x1E6960C70];
    *(v2 + 156) = *MEMORY[0x1E6960C70];
    v6 = *(v4 + 16);
    *(v2 + 172) = v6;
    *(v2 + 180) = v5;
    *(v2 + 196) = v6;
    v7 = [[BWNodeInput alloc] initWithMediaType:1936684398 node:v2];
    if (v7)
    {
      v15 = v7;
      [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v7 primaryMediaConfiguration] setPassthroughMode:1];
      [(BWNodeInput *)v15 setName:@"AudioRemixAnalysisPassthroughInput"];
      [(BWNode *)v3 addInput:v15];

      v16 = [[BWNodeOutput alloc] initWithMediaType:1936684398 node:v3];
      [(BWNodeOutput *)v16 setIndexOfInputWhichDrivesThisOutput:0];
      [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v16 primaryMediaConfiguration] setPassthroughMode:1];
      [(BWNodeOutput *)v16 setName:@"AudioRemixAnalysisPassthroughOutput"];
      [(BWNode *)v3 addOutput:v16];

      v3->_metadataOutput = 0;
      v17 = *MEMORY[0x1E6960338];
      v34[0] = *MEMORY[0x1E6960348];
      v34[1] = v17;
      v18 = *MEMORY[0x1E6960260];
      v35[0] = @"mdta/com.apple.quicktime.cinematic-audio";
      v35[1] = v18;
      v34[2] = *MEMORY[0x1E6960358];
      v32 = *MEMORY[0x1E6960360];
      v33 = *MEMORY[0x1E695E4C0];
      v35[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
      if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v19, &v3->_audioMetadataFormatDescription))
      {
        [BWAudioRemixAnalysisMetadataNode init];
      }

      else
      {
        v20 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v3];
        if (v20)
        {
          v21 = v20;
          [(BWNodeOutput *)v20 setName:@"AudioRemixAnalysisMetadataOutput"];
          [(BWNodeOutput *)v21 setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:v3->_audioMetadataFormatDescription]];
          [(BWNode *)v3 addOutput:v21];
          v3->_metadataOutput = v21;

          v22 = [[AudioRemixSessionManager alloc] initWithNodeMetadataOutput:v3->_metadataOutput];
          v3->_movieRemixSessionManager = v22;
          if (v22)
          {
            [(BWNode *)v3 setSupportsLiveReconfiguration:1];
            [(BWNode *)v3 setSupportsPrepareWhileRunning:1];
            return v3;
          }

          [(BWAudioRemixAnalysisMetadataNode *)0 init:v23];
        }

        else
        {
          [BWAudioRemixAnalysisMetadataNode init];
        }
      }
    }

    else
    {
      [(BWAudioRemixAnalysisMetadataNode *)0 init:v8];
    }

    return 0;
  }

  return v3;
}

- (void)dealloc
{
  audioMetadataFormatDescription = self->_audioMetadataFormatDescription;
  if (audioMetadataFormatDescription)
  {
    CFRelease(audioMetadataFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWAudioRemixAnalysisMetadataNode;
  [(BWNode *)&v4 dealloc];
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  [(AudioRemixSessionManager *)self->_movieRemixSessionManager abortSessionIfNeeded];
  [(AudioRemixSessionManager *)self->_movieRemixSessionManager setFormatSampleRate:0 andChannelCount:0.0];
  [(BWNodeOutput *)self->super._output markEndOfLiveOutputForConfigurationID:d];
  metadataOutput = self->_metadataOutput;

  [(BWNodeOutput *)metadataOutput markEndOfLiveOutputForConfigurationID:d];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  memset(&v46, 0, sizeof(v46));
  CMSampleBufferGetPresentationTimeStamp(&v46, buffer);
  *(&self->_startRecordingPTS.epoch + 4) = *&v46.value;
  *&self->_currentPTS.flags = v46.epoch;
  if (!BWSampleBufferIsMarkerBuffer(buffer))
  {
    if (!self->_shouldSendData || ![(AudioRemixSessionManager *)self->_movieRemixSessionManager sessionReady])
    {
      goto LABEL_15;
    }

    if (buffer)
    {
      FormatDescription = CMSampleBufferGetFormatDescription(buffer);
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
      if (!FormatDescription)
      {
        [(BWAudioRemixAnalysisMetadataNode *)v43 renderSampleBuffer:v18 forInput:v19, v20, v21, v22, v23, v24];
        v30 = 0;
        v25 = 0;
LABEL_32:
        v29 = v43[0];
LABEL_12:

        if (v29)
        {
          [BWAudioRemixAnalysisMetadataNode renderSampleBuffer:v29 forInput:?];
        }

        else if (v30)
        {
          [(AudioRemixSessionManager *)self->_movieRemixSessionManager submitAudioBuffer:v30];
        }

        else
        {
          [(BWAudioRemixAnalysisMetadataNode *)v31 renderSampleBuffer:v32 forInput:v33, v34, v35, v36, v37, v38];
        }

        goto LABEL_15;
      }

      v25 = StreamBasicDescription;
      if (StreamBasicDescription)
      {
        0x930000 = [objc_alloc(MEMORY[0x1E69583D0]) initWithLayoutTag:StreamBasicDescription->mChannelsPerFrame | 0x930000];
        v25 = [objc_alloc(MEMORY[0x1E6958418]) initWithStreamDescription:v25 channelLayout:0x930000];

        NumSamples = CMSampleBufferGetNumSamples(buffer);
        FormatDescription = [objc_alloc(MEMORY[0x1E6958440]) initWithPCMFormat:v25 frameCapacity:NumSamples];
        [(opaqueCMFormatDescription *)FormatDescription setFrameLength:NumSamples];
        v28 = CMSampleBufferCopyPCMDataIntoAudioBufferList(buffer, 0, NumSamples, [(opaqueCMFormatDescription *)FormatDescription mutableAudioBufferList]);
        v29 = v28;
        if (v28)
        {
          [BWAudioRemixAnalysisMetadataNode renderSampleBuffer:v28 forInput:?];
          v30 = 0;
        }

        else
        {
          v30 = FormatDescription;
        }

        goto LABEL_12;
      }

      [(BWAudioRemixAnalysisMetadataNode *)v43 renderSampleBuffer:v18 forInput:v19, v20, v21, v22, v23, v24];
      v30 = 0;
    }

    else
    {
      [(BWAudioRemixAnalysisMetadataNode *)v43 renderSampleBuffer:v9 forInput:v10, v11, v12, v13, v14, v15];
      v30 = 0;
      v25 = 0;
    }

    FormatDescription = 0;
    goto LABEL_32;
  }

  v6 = CMGetAttachment(buffer, @"FileWriterAction", 0);
  v7 = CFEqual(v6, @"Start");
  v8 = CFEqual(v6, @"Stop");
  if (v6)
  {
    if (v7)
    {
      *(&self->_expectsToRecordOnlyOnce + 3) = v46;
    }

    else
    {
      v39 = v8;
      if (!CFEqual(v6, @"Resume"))
      {
        if (!v39)
        {
          [BWAudioRemixAnalysisMetadataNode renderSampleBuffer:v6 forInput:self];
          goto LABEL_21;
        }

        if ([BWAudioRemixAnalysisMetadataNode renderSampleBuffer:? forInput:?])
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }
    }

    if (!self->_expectsToRecordOnlyOnce || [(AudioRemixSessionManager *)self->_movieRemixSessionManager sessionReady]|| ([(AudioRemixSessionManager *)self->_movieRemixSessionManager setMultiCamClientCompositingEnabled:self->_multiCamClientCompositingEnabled], v45 = 0, v44 = 0, os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), ![(AudioRemixSessionManager *)self->_movieRemixSessionManager startNewSessionBlocking]))
    {
      self->_shouldSendData = 1;
      goto LABEL_21;
    }

LABEL_15:
    [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer, v41, v42];
    return;
  }

LABEL_21:
  [(BWAudioRemixAnalysisMetadataNode *)self renderSampleBuffer:buffer forInput:v7 != 0];
}

- (void)resetAnalyzer
{
  [(AudioRemixSessionManager *)self->_movieRemixSessionManager abortSessionIfNeeded];
  [(AudioRemixSessionManager *)self->_movieRemixSessionManager setFormatSampleRate:0 andChannelCount:0.0];
  v3 = MEMORY[0x1E6960C70];
  v4 = *MEMORY[0x1E6960C70];
  *(&self->_expectsToRecordOnlyOnce + 3) = *MEMORY[0x1E6960C70];
  v5 = *(v3 + 16);
  *&self->_startRecordingPTS.flags = v5;
  *(&self->_startRecordingPTS.epoch + 4) = v4;
  *&self->_currentPTS.flags = v5;
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  [(BWNodeOutput *)self->super._output makeConfiguredFormatLive:d];
  [(BWNodeOutput *)self->_metadataOutput makeConfiguredFormatLive];
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription([format audioFormatDescription]);
  movieRemixSessionManager = self->_movieRemixSessionManager;
  if (movieRemixSessionManager)
  {
    mSampleRate = StreamBasicDescription->mSampleRate;
    [(AudioRemixSessionManager *)movieRemixSessionManager sampleRate];
    if (mSampleRate != v10 || (mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame, mChannelsPerFrame != [(AudioRemixSessionManager *)self->_movieRemixSessionManager channelCount]))
    {
      [(AudioRemixSessionManager *)self->_movieRemixSessionManager setFormatSampleRate:StreamBasicDescription->mChannelsPerFrame andChannelCount:StreamBasicDescription->mSampleRate];
      [(AudioRemixSessionManager *)self->_movieRemixSessionManager setMultiCamClientCompositingEnabled:self->_multiCamClientCompositingEnabled];
      v12 = self->_movieRemixSessionManager;

      [(AudioRemixSessionManager *)v12 startNewSessionBlocking];
    }
  }
}

- (__n128)_sendRemixMetadataSampleBuffer
{
  if (self)
  {
    v2 = (self + 180);
    if (*(self + 192))
    {
      v3 = (self + 156);
      if (*(self + 168))
      {
        v4 = *(self + 128);
        v9 = *v3;
        v10 = *(self + 172);
        v7 = *v2;
        v8 = *(v2 + 2);
        [v4 finishAndGetResultsBlockingWithStartingPTS:&v9 andEndingPTS:&v7];
        v5 = MEMORY[0x1E6960C70];
        result = *MEMORY[0x1E6960C70];
        *(self + 156) = *MEMORY[0x1E6960C70];
        *(self + 172) = *(v5 + 16);
      }
    }
  }

  return result;
}

- (void)_emitCopyOfMarkerBuffer:(void *)buffer onOutput:(int)output isStartMarkerBuffer:
{
  if (self && buffer)
  {
    sampleBufferOut = 0;
    memset(&v11, 0, sizeof(v11));
    CMSampleBufferGetPresentationTimeStamp(&v11, sbuf);
    if (CMSampleBufferCreateCopy(*MEMORY[0x1E695E480], sbuf, &sampleBufferOut))
    {
      if (*(self + 144) == buffer)
      {
        v8 = &BWDroppedSampleReasonCinematicVideoMetadataFailure;
      }

      else
      {
        v8 = BWDroppedSampleReasonCinematicAudioMetadataFailure;
      }

      v9 = *v8;
      v10 = v11;
      [buffer emitDroppedSample:{+[BWDroppedSample newDroppedSampleWithReason:pts:](BWDroppedSample, "newDroppedSampleWithReason:pts:", v9, &v10)}];
    }

    else
    {
      if (output && *(self + 144) == buffer)
      {
        CMSetAttachment(sampleBufferOut, @"TrackFormatDescription", *(self + 208), 1u);
      }

      [buffer emitSampleBuffer:sampleBufferOut];
      if (sampleBufferOut)
      {
        CFRelease(sampleBufferOut);
      }
    }
  }
}

- (uint64_t)renderSampleBuffer:(uint64_t)a3 forInput:(uint64_t)a4 .cold.2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E578, 0xFFFFBDA0, "<<<< BWAudioRemixAnalysisMetadataNode >>>>", 0x7A, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

- (uint64_t)renderSampleBuffer:(uint64_t)a3 forInput:(uint64_t)a4 .cold.3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E578, 0xFFFFBDA0, "<<<< BWAudioRemixAnalysisMetadataNode >>>>", 0x79, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

- (uint64_t)renderSampleBuffer:(uint64_t)a3 forInput:(uint64_t)a4 .cold.4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E578, 0xFFFFBDA0, "<<<< BWAudioRemixAnalysisMetadataNode >>>>", 0x73, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

- (BOOL)renderSampleBuffer:(uint64_t)a1 forInput:.cold.7(uint64_t a1)
{
  *(a1 + 136) = 0;
  *&v2 = [(BWAudioRemixAnalysisMetadataNode *)a1 _sendRemixMetadataSampleBuffer].n128_u64[0];
  v3 = *(a1 + 128);
  if (*(a1 + 153) == 1)
  {
    [v3 abortSessionIfNeeded];
    return 1;
  }

  [v3 setMultiCamClientCompositingEnabled:{*(a1 + 152), v2}];
  return ![*(a1 + 128) startNewSessionBlocking];
}

- (uint64_t)renderSampleBuffer:(const void *)a1 forInput:(uint64_t)a2 .cold.8(const void *a1, uint64_t a2)
{
  result = CFEqual(a1, @"Terminate");
  if (result || (result = CFEqual(a1, @"Pause"), result))
  {
    *(a2 + 136) = 0;
  }

  return result;
}

@end