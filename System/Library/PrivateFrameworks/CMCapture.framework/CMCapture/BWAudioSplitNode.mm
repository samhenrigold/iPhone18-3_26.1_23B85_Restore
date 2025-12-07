@interface BWAudioSplitNode
- (BWAudioSplitNode)initWithInputChannelLayoutTag:(unsigned int)tag output1ChannelLayoutTag:(unsigned int)layoutTag output2ChannelLayoutTag:(unsigned int)channelLayoutTag;
- (uint64_t)_createSplitAndInterleaveFromSampleBuffer:(const opaqueCMFormatDescription *)buffer outputFormat1:(CMSampleBufferRef *)format1 outputBuffer1:(const opaqueCMFormatDescription *)buffer1 outputFormat2:(CMSampleBufferRef *)format2 outputBuffer2:;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWAudioSplitNode

- (BWAudioSplitNode)initWithInputChannelLayoutTag:(unsigned int)tag output1ChannelLayoutTag:(unsigned int)layoutTag output2ChannelLayoutTag:(unsigned int)channelLayoutTag
{
  v18.receiver = self;
  v18.super_class = BWAudioSplitNode;
  v8 = [(BWNode *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_splitAtIndex = layoutTag;
    v8->_inputNumberOfChannels = tag;
    v8->_inputChannelLayoutTag = tag;
    v8->_output1ChannelLayoutTag = layoutTag;
    v8->_output2ChannelLayoutTag = channelLayoutTag;
    if (tag == -267386874)
    {
      if (channelLayoutTag == 12451844)
      {
        v10 = 1667853921;
      }

      else
      {
        v10 = 0;
      }

      if (v8->_output1ChannelLayoutTag == 12451844)
      {
        v11 = 1667853921;
      }

      else
      {
        v11 = v10;
      }
    }

    else
    {
      v11 = 0;
    }

    v8->_cinematicAudioIngestDomain = v11;
    if (v8->_inputNumberOfChannels == layoutTag + channelLayoutTag)
    {
      v12 = [[BWNodeInput alloc] initWithMediaType:1936684398 node:v8];
      if (v12)
      {
        v13 = v12;
        [(BWNode *)v9 addInput:v12];
        v9->_input = v13;

        v14 = [[BWNodeOutput alloc] initWithMediaType:1936684398 node:v9];
        [(BWNodeOutput *)v14 setIndexOfInputWhichDrivesThisOutput:0];
        [(BWNode *)v9 addOutput:v14];
        v9->_output1 = v14;

        v15 = [[BWNodeOutput alloc] initWithMediaType:1936684398 node:v9];
        [(BWNodeOutput *)v15 setIndexOfInputWhichDrivesThisOutput:0];
        [(BWNode *)v9 addOutput:v15];
        v9->_output2 = v15;

        [(BWNode *)v9 setSupportsLiveReconfiguration:1];
        [(BWNode *)v9 setSupportsPrepareWhileRunning:1];
        return v9;
      }

      v17 = 79;
    }

    else
    {
      v17 = 76;
    }

    [BWAudioSplitNode initWithInputChannelLayoutTag:v9 output1ChannelLayoutTag:v17 output2ChannelLayoutTag:&v19];
    return v19;
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWAudioSplitNode;
  [(BWNode *)&v2 dealloc];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (self->_input)
  {
    [(BWNodeOutput *)self->_output1 makeConfiguredFormatLive:d];
    output2 = self->_output2;

    [(BWNodeOutput *)output2 makeConfiguredFormatLive];
  }
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if (format)
  {
    splitAtIndex = self->_splitAtIndex;
    v19 = self->_inputNumberOfChannels - splitAtIndex;
    v39 = 0;
    v41 = 0;
    v40 = 0;
    output1ChannelLayoutTag = self->_output1ChannelLayoutTag;
    v42 = 0;
    v38 = output1ChannelLayoutTag;
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:{32, key}];
    cinematicAudioIngestDomain = self->_cinematicAudioIngestDomain;
    if (cinematicAudioIngestDomain && (self->_output1ChannelLayoutTag == 12451844 || self->_output2ChannelLayoutTag == 12451844))
    {
      v10 = v8;
      v11 = FigCaptureAudioIngestSignalingInfoAtomData(cinematicAudioIngestDomain);
      v12 = v11;
      if (self->_output1ChannelLayoutTag == 12451844)
      {
        v35 = v11;
        v36 = @"SampleDescriptionExtensionAtoms";
        v34 = @"ngst";
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      }

      else
      {
        v13 = 0;
      }

      v15 = v13;
      if (self->_output2ChannelLayoutTag == 12451844)
      {
        v31 = v12;
        v32 = @"SampleDescriptionExtensionAtoms";
        v30 = @"ngst";
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      }

      else
      {
        v17 = 0;
      }

      v8 = v10;
      v14 = v15;
    }

    else
    {
      v14 = 0;
      v17 = 0;
    }

    v29[0] = &unk_1F2243CF0;
    v28[0] = 0x1F2175490;
    v28[1] = 0x1F21754D0;
    v29[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{splitAtIndex, v17}];
    v29[2] = MEMORY[0x1E695E110];
    v28[2] = 0x1F2175550;
    v28[3] = 0x1F2175530;
    v29[3] = MEMORY[0x1E695E118];
    v29[4] = &unk_1F2243D08;
    v28[4] = 0x1F21754F0;
    v28[5] = 0x1F2175610;
    v29[5] = v8;
    -[BWNodeOutput setFormat:](self->_output1, "setFormat:", +[BWAudioFormat formatForAVAudioSettings:inputFormat:formatExtensions:](BWAudioFormat, "formatForAVAudioSettings:inputFormat:formatExtensions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:6], format, v14));
    v25 = 0;
    v24 = 0;
    v27 = 0;
    v26 = 0;
    output2ChannelLayoutTag = self->_output2ChannelLayoutTag;
    v16 = [MEMORY[0x1E695DEF0] dataWithBytes:&output2ChannelLayoutTag length:32];
    v22[0] = &unk_1F2243CF0;
    v21[0] = 0x1F2175490;
    v21[1] = 0x1F21754D0;
    v22[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v19];
    v22[2] = MEMORY[0x1E695E110];
    v21[2] = 0x1F2175550;
    v21[3] = 0x1F2175530;
    v22[3] = MEMORY[0x1E695E118];
    v22[4] = &unk_1F2243D08;
    v21[4] = 0x1F21754F0;
    v21[5] = 0x1F2175610;
    v22[5] = v16;
    -[BWNodeOutput setFormat:](self->_output2, "setFormat:", +[BWAudioFormat formatForAVAudioSettings:inputFormat:formatExtensions:](BWAudioFormat, "formatForAVAudioSettings:inputFormat:formatExtensions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6], format, v18));
  }

  else
  {
    [(BWAudioSplitNode *)self didSelectFormat:a2 forInput:0 forAttachedMediaKey:input, key];
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  [(BWNodeOutput *)self->_output1 markEndOfLiveOutputForConfigurationID:d, input];
  output2 = self->_output2;

  [(BWNodeOutput *)output2 markEndOfLiveOutputForConfigurationID:d];
}

- (uint64_t)_createSplitAndInterleaveFromSampleBuffer:(const opaqueCMFormatDescription *)buffer outputFormat1:(CMSampleBufferRef *)format1 outputBuffer1:(const opaqueCMFormatDescription *)buffer1 outputFormat2:(CMSampleBufferRef *)format2 outputBuffer2:
{
  if (!self)
  {
    return 0;
  }

  v79 = 0;
  blockBufferOut = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  memset(&timingInfoOut, 0, sizeof(timingInfoOut));
  if (!sbuf || !buffer || !format1 || !buffer1 || !format2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_43;
  }

  SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(sbuf, 0, &timingInfoOut);
  if (!SampleTimingInfo)
  {
    v13 = CMSampleBufferGetFormatDescription(sbuf);
    if (v13)
    {
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v13);
      if (StreamBasicDescription)
      {
        mBytesPerFrame = StreamBasicDescription->mBytesPerFrame;
        mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame;
        v17 = CMAudioFormatDescriptionGetStreamBasicDescription(buffer);
        if (v17)
        {
          format1Copy = format1;
          v18 = v17->mBytesPerFrame;
          v19 = v17->mChannelsPerFrame;
          v20 = CMAudioFormatDescriptionGetStreamBasicDescription(buffer1);
          if (v20)
          {
            v21 = v20->mChannelsPerFrame;
            if (v21 + v19 == mChannelsPerFrame)
            {
              format2Copy = format2;
              v22 = v20->mBytesPerFrame;
              v23 = malloc_type_malloc((16 * mChannelsPerFrame) | 8, 0x10800404ACF7207uLL);
              if (v23)
              {
                AudioBufferListWithRetainedBlockBuffer = CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(sbuf, 0, v23, (16 * mChannelsPerFrame) | 8, 0, 0, 1u, &blockBufferOut);
                if (AudioBufferListWithRetainedBlockBuffer)
                {
LABEL_48:
                  v53 = AudioBufferListWithRetainedBlockBuffer;
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_48();
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
                  goto LABEL_32;
                }

                if (v23->mNumberBuffers == mChannelsPerFrame)
                {
                  NumSamples = CMSampleBufferGetNumSamples(sbuf);
                  v76 = v22;
                  v77 = v18;
                  v26 = *MEMORY[0x1E695E480];
                  AudioBufferListWithRetainedBlockBuffer = OUTLINED_FUNCTION_4_40(NumSamples * v18, &v79, sampleTimingArray);
                  if (!AudioBufferListWithRetainedBlockBuffer)
                  {
                    AudioBufferListWithRetainedBlockBuffer = OUTLINED_FUNCTION_4_40(NumSamples * v22, &v78, sampleTimingArraya);
                    if (!AudioBufferListWithRetainedBlockBuffer)
                    {
                      v73 = 0;
                      dataPointerOut = 0;
                      DataPointer = CMBlockBufferGetDataPointer(v79, 0, 0, 0, &dataPointerOut);
                      if (DataPointer)
                      {
                        v53 = DataPointer;
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_0_48();
                        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
                      }

                      else
                      {
                        v28 = CMBlockBufferGetDataPointer(v78, 0, 0, 0, &v73);
                        if (v28)
                        {
                          v53 = v28;
                          fig_log_get_emitter();
                          OUTLINED_FUNCTION_0_48();
                          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
                        }

                        else
                        {
                          formatDescriptiona = buffer1;
                          v69 = v26;
                          v72 = v23;
                          if (NumSamples)
                          {
                            v29 = 0;
                            p_mData = &v23->mBuffers[0].mData;
                            v31 = &v23->mBuffers[v19].mData;
                            do
                            {
                              v32 = v29 * mBytesPerFrame;
                              if (v19)
                              {
                                v33 = dataPointerOut;
                                v34 = p_mData;
                                v35 = v19;
                                do
                                {
                                  v36 = *v34;
                                  v34 += 2;
                                  memcpy(v33, &v36[v32], mBytesPerFrame);
                                  v33 = &dataPointerOut[mBytesPerFrame];
                                  dataPointerOut += mBytesPerFrame;
                                  --v35;
                                }

                                while (v35);
                              }

                              if (v21)
                              {
                                v37 = v73;
                                v38 = v31;
                                v39 = v21;
                                do
                                {
                                  v40 = *v38;
                                  v38 += 2;
                                  memcpy(v37, (v40 + v32), mBytesPerFrame);
                                  v37 = &v73[mBytesPerFrame];
                                  v73 += mBytesPerFrame;
                                  --v39;
                                }

                                while (v39);
                              }

                              ++v29;
                            }

                            while (v29 != NumSamples);
                          }

                          v41 = OUTLINED_FUNCTION_5_41();
                          v47 = CMSampleBufferCreate(v41, v42, v43, v44, v45, v46, NumSamples, 1, &timingInfoOut, 1, &v77, format1Copy);
                          if (v47)
                          {
                            v53 = v47;
                            fig_log_get_emitter();
                            OUTLINED_FUNCTION_0_48();
                            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", sampleTimingArrayb, v59, sampleSizeArraya, v63, v64, v6, formatDescriptiona, v69);
                            v23 = v72;
                          }

                          else
                          {
                            v48 = OUTLINED_FUNCTION_5_41();
                            v53 = CMSampleBufferCreate(v48, v49, v50, v51, v52, formatDescriptiona, NumSamples, 1, &timingInfoOut, 1, &v76, format2Copy);
                            v23 = v72;
                            if (v53)
                            {
                              fig_log_get_emitter();
                              OUTLINED_FUNCTION_0_48();
                              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
                            }
                          }
                        }
                      }

                      goto LABEL_32;
                    }
                  }

                  goto LABEL_48;
                }
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_2_52();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
              goto LABEL_47;
            }
          }
        }
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_43:
    v23 = 0;
LABEL_47:
    v53 = 0;
    goto LABEL_32;
  }

  v53 = SampleTimingInfo;
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v53, v58, sampleSizeArray, v62, v64, v65, formatDescription, v68);
  v23 = 0;
LABEL_32:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  free(v23);
  return v53;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v9 = 0;
  cf = 0;
  v5 = [(BWAudioSplitNode *)self _createSplitAndInterleaveFromSampleBuffer:buffer outputFormat1:[(BWFormat *)[(BWNodeOutput *)self->_output1 format:buffer] formatDescription] outputBuffer1:&cf outputFormat2:[(BWFormat *)[(BWNodeOutput *)self->_output2 format] formatDescription] outputBuffer2:&v9];
  if (v5)
  {
    v6 = v5;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    v7 = v6;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v8, v9, cf, v11, v12, v13, v14);
  }

  else
  {
    [(BWNodeOutput *)self->_output1 emitSampleBuffer:cf];
    [(BWNodeOutput *)self->_output2 emitSampleBuffer:v9];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

- (void)initWithInputChannelLayoutTag:(void *)a1 output1ChannelLayoutTag:(void *)a2 output2ChannelLayoutTag:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  emitter = fig_log_get_emitter();
  if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< BWAudioSplitNode >>>>", a2, v3, v8, v9, v10))
  {

    a1 = 0;
  }

  *a3 = a1;
}

@end