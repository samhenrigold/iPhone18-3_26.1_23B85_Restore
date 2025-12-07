@interface BWStillImageDualPhotoFacePropagatorNode
- (BWStillImageDualPhotoFacePropagatorNode)initWithBaseZoomFactors:(id)factors;
- (id)_emitBuffersAndErrorsToOutputs;
- (void)_clearCaptureRequestState;
- (void)_processWiderAndNarrowerFOVInput;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImageDualPhotoFacePropagatorNode

- (BWStillImageDualPhotoFacePropagatorNode)initWithBaseZoomFactors:(id)factors
{
  v15.receiver = self;
  v15.super_class = BWStillImageDualPhotoFacePropagatorNode;
  v4 = [(BWNode *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_currentSettingsID = -1;
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:factors];
    v7 = 0;
    v5->_baseZoomFactors = v6;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v5 index:v7];
      v11 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeInput *)v10 setFormatRequirements:v11];

      [(BWNodeInput *)v10 setPassthroughMode:1];
      [(BWNodeInput *)v10 setRetainedBufferCount:1];
      [(BWNode *)v5 addInput:v10];

      v12 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v5];
      v13 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeOutput *)v12 setFormatRequirements:v13];
      [(BWNodeOutput *)v12 setPassthroughMode:1];
      [(BWNodeOutput *)v12 setIndexOfInputWhichDrivesThisOutput:v7];

      [(BWNode *)v5 addOutput:v12];
      v8 = 0;
      v7 = 1;
    }

    while ((v9 & 1) != 0);
    v5->_widerFOVInput = [(NSArray *)[(BWNode *)v5 inputs] objectAtIndexedSubscript:0];
    v5->_narrowerFOVInput = [(NSArray *)[(BWNode *)v5 inputs] objectAtIndexedSubscript:1];
    v5->_widerFOVOutput = [(NSArray *)[(BWNode *)v5 outputs] objectAtIndexedSubscript:0];
    v5->_narrowerFOVOutput = [(NSArray *)[(BWNode *)v5 outputs] objectAtIndexedSubscript:1];
  }

  return v5;
}

- (void)dealloc
{
  [(BWStillImageDualPhotoFacePropagatorNode *)self _clearCaptureRequestState];

  self->_baseZoomFactors = 0;
  v3.receiver = self;
  v3.super_class = BWStillImageDualPhotoFacePropagatorNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  v5 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [input index]);

  [v5 setFormat:format];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if ([(BWNode *)self allInputsHaveReachedState:1, format, input])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    outputs = [(BWNode *)self outputs];
    v7 = [(NSArray *)outputs countByEnumeratingWithState:&v12 objects:v11 count:16];
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
            objc_enumerationMutation(outputs);
          }

          [*(*(&v12 + 1) + 8 * v10++) makeConfiguredFormatLive];
        }

        while (v8 != v10);
        v8 = [(NSArray *)outputs countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v8);
    }
  }
}

- (void)didReachEndOfDataForInput:(id)input
{
  if ([(BWNode *)self allInputsHaveReachedState:0])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    outputs = [(BWNode *)self outputs];
    v5 = [(NSArray *)outputs countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(outputs);
          }

          [*(*(&v10 + 1) + 8 * v8++) markEndOfLiveOutput];
        }

        while (v6 != v8);
        v6 = [(NSArray *)outputs countByEnumeratingWithState:&v10 objects:v9 count:16];
      }

      while (v6);
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v7 = CMGetAttachment(buffer, @"StillSettings", 0);
  if ([v7 settingsID] != self->_currentSettingsID)
  {
    [(BWStillImageDualPhotoFacePropagatorNode *)self _clearCaptureRequestState];
    self->_currentSettingsID = [v7 settingsID];
  }

  if ([objc_msgSend(objc_msgSend(v7 "requestedSettings")] < 2)
  {
    goto LABEL_12;
  }

  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [CMGetAttachment(buffer @"BWStillImageCaptureSettings"];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v24;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v24 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v11 += [*(*(&v23 + 1) + 8 * i) hasValidFrames] & 1;
    }

    v10 = [v8 countByEnumeratingWithState:&v23 objects:v22 count:16];
  }

  while (v10);
  if (v11 <= 1)
  {
LABEL_12:
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self "outputs")];
    return;
  }

  if (self->_widerFOVInput == input)
  {
    v14 = 144;
    if (self->_widerFOVBuffer)
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v19 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v19, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageDualPhotoFacePropagatorNode.m", 186, @"LastShownDate:BWStillImageDualPhotoFacePropagatorNode.m:186", @"LastShownBuild:BWStillImageDualPhotoFacePropagatorNode.m:186", 0);
      free(v19);
      [(BWNodeOutput *)self->_widerFOVOutput emitSampleBuffer:self->_widerFOVBuffer];
      CFRelease(self->_widerFOVBuffer);
    }

    if (!buffer)
    {
LABEL_20:
      v20 = 0;
LABEL_23:
      *(&self->super.super.isa + v14) = v20;
      goto LABEL_24;
    }

LABEL_22:
    v20 = CFRetain(buffer);
    goto LABEL_23;
  }

  if (self->_narrowerFOVInput == input)
  {
    v14 = 152;
    if (self->_narrowerFOVBuffer)
    {
      v17 = FigCaptureGetFrameworkRadarComponent();
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v21 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v17, v21, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageDualPhotoFacePropagatorNode.m", 194, @"LastShownDate:BWStillImageDualPhotoFacePropagatorNode.m:194", @"LastShownBuild:BWStillImageDualPhotoFacePropagatorNode.m:194", 0);
      free(v21);
      [(BWNodeOutput *)self->_narrowerFOVOutput emitSampleBuffer:self->_narrowerFOVBuffer];
      CFRelease(self->_narrowerFOVBuffer);
    }

    if (!buffer)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_24:
  [(BWStillImageDualPhotoFacePropagatorNode *)&self->super.super.isa _processWiderAndNarrowerFOVInput];
}

- (void)_clearCaptureRequestState
{
  if (self)
  {
    v2 = *(self + 144);
    if (v2)
    {
      CFRelease(v2);
      *(self + 144) = 0;
    }

    v3 = *(self + 152);
    if (v3)
    {
      CFRelease(v3);
      *(self + 152) = 0;
    }

    *(self + 160) = 0;
    *(self + 168) = 0;
  }
}

- (void)_processWiderAndNarrowerFOVInput
{
  if (!self)
  {
    return;
  }

  v2 = self[18];
  if (!v2)
  {
    if (!self[20])
    {
      return;
    }

    if (self[19])
    {
      goto LABEL_9;
    }

LABEL_7:
    if (!self[21])
    {
      return;
    }

    goto LABEL_9;
  }

  v3 = self[19];
  if (!v3)
  {
    goto LABEL_7;
  }

  BWProcessWiderAndNarrowerFOVBuffersForFacePropagation(v2, v3, self[17]);
LABEL_9:
  [(BWStillImageDualPhotoFacePropagatorNode *)self _emitBuffersAndErrorsToOutputs];

  [(BWStillImageDualPhotoFacePropagatorNode *)self _clearCaptureRequestState];
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  stillImageSettings = [error stillImageSettings];
  if ([stillImageSettings settingsID] != self->_currentSettingsID)
  {
    [(BWStillImageDualPhotoFacePropagatorNode *)self _clearCaptureRequestState];
    self->_currentSettingsID = [stillImageSettings settingsID];
  }

  if ([objc_msgSend(objc_msgSend(stillImageSettings "requestedSettings")])
  {
    if (self->_widerFOVInput == input)
    {
      v9 = 160;
      if (self->_widerFOVError)
      {
        FigCaptureGetFrameworkRadarComponent();
        v10 = OUTLINED_FUNCTION_1_75();
        if (OUTLINED_FUNCTION_7_41(v10))
        {
          v17 = v4;
        }

        else
        {
          v17 = v4 & 0xFFFFFFFE;
        }

        if (v17)
        {
          LODWORD(v67) = 136315138;
          OUTLINED_FUNCTION_5_6();
          v17 = OUTLINED_FUNCTION_4_52(v28, v29, v30, v31, &dword_1AC90E000, v32, v33, "<<<< BWStillImageDualPhotoFacePropagatorNode >>>> %s: Received two widerFOV errors for the same still image settings", v65);
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        OUTLINED_FUNCTION_0_63(v17, v11, v12, v18, v13, v14, v15, v16, v65, v66, v67, v68, v69);
        OUTLINED_FUNCTION_5_51();
        v38 = OUTLINED_FUNCTION_6_0(v34, v35, v36, v37, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
        v39 = OUTLINED_FUNCTION_4_5();
        FigCapturePleaseFileRadar(v39, v40, v41, v42, v43, 221, v44, v45, 0);
        free(v38);
        v46 = 192;
LABEL_23:
        [*(&self->super.super.isa + v46) emitNodeError:*(&self->super.super.isa + v9)];
      }
    }

    else
    {
      if (self->_narrowerFOVInput != input)
      {
        goto LABEL_25;
      }

      v9 = 168;
      if (self->_narrowerFOVError)
      {
        FigCaptureGetFrameworkRadarComponent();
        v19 = OUTLINED_FUNCTION_1_75();
        if (OUTLINED_FUNCTION_7_41(v19))
        {
          v26 = v4;
        }

        else
        {
          v26 = v4 & 0xFFFFFFFE;
        }

        if (v26)
        {
          LODWORD(v67) = 136315138;
          OUTLINED_FUNCTION_5_6();
          v26 = OUTLINED_FUNCTION_4_52(v47, v48, v49, v50, &dword_1AC90E000, v51, v52, "<<<< BWStillImageDualPhotoFacePropagatorNode >>>> %s: Received two narrowerFOV errors for the same still image settings", v65);
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        OUTLINED_FUNCTION_0_63(v26, v20, v21, v27, v22, v23, v24, v25, v65, v66, v67, v68, v69);
        OUTLINED_FUNCTION_5_51();
        v57 = OUTLINED_FUNCTION_6_0(v53, v54, v55, v56, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
        v58 = OUTLINED_FUNCTION_4_5();
        FigCapturePleaseFileRadar(v58, v59, v60, v61, v62, 229, v63, v64, 0);
        free(v57);
        v46 = 200;
        goto LABEL_23;
      }
    }

    *(&self->super.super.isa + v9) = error;
    goto LABEL_25;
  }

  [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self "outputs")];
LABEL_25:
  [(BWStillImageDualPhotoFacePropagatorNode *)&self->super.super.isa _processWiderAndNarrowerFOVInput];
}

- (id)_emitBuffersAndErrorsToOutputs
{
  if (result)
  {
    v1 = result;
    if (result[18])
    {
      result = [result[24] emitSampleBuffer:?];
    }

    if (v1[20])
    {
      result = [v1[24] emitNodeError:?];
    }

    if (v1[19])
    {
      result = [v1[25] emitSampleBuffer:?];
    }

    if (v1[21])
    {
      v2 = v1[25];

      return [v2 emitNodeError:?];
    }
  }

  return result;
}

@end