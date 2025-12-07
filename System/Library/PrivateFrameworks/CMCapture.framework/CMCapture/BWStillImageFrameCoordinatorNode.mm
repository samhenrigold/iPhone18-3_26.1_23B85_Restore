@interface BWStillImageFrameCoordinatorNode
+ (void)initialize;
- (BWStillImageFrameCoordinatorNode)initWithNodeConfiguration:(id)configuration inputPortTypes:(id)types sensorRawInputPortTypes:(id)portTypes;
- (id)_addMetadataVersionToMutableMetadata:(id *)result;
- (id)_handleSampleBuffer:(void *)buffer forInput:;
- (id)_handleZeroShutterLagSampleBuffer:(void *)buffer forInput:;
- (id)_resetStillImageCaptureState;
- (uint64_t)_isCaptureComplete;
- (uint64_t)_setupStillImageCaptureStateWithStillImageSettings:(uint64_t)settings;
- (void)_cacheOrUpdateMetadataForOptimizedProcessingForZoomFOVWithMetadata:(uint64_t)metadata inputDimensions:(void *)dimensions settingsID:(uint64_t)d;
- (void)_deliverQueuedMessages;
- (void)_handleMessage:(id)message fromInput:(id)input;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)handleStillImagePrewarmWithSettings:(id)settings resourceConfig:(id)config forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImageFrameCoordinatorNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWStillImageFrameCoordinatorNode)initWithNodeConfiguration:(id)configuration inputPortTypes:(id)types sensorRawInputPortTypes:(id)portTypes
{
  v48.receiver = self;
  v48.super_class = BWStillImageFrameCoordinatorNode;
  v7 = [(BWNode *)&v48 init];
  v8 = v7;
  if (v7)
  {
    [(BWNode *)v7 setSupportsLiveReconfiguration:1];
    v8->_nodeConfiguration = configuration;
    v8->_holdMessagesUntilAllInputsAreLive = 1;
    v8->_queuedMessages = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_inputsForQueuedMessages = objc_alloc_init(MEMORY[0x1E695DF70]);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = [types countByEnumeratingWithState:&v44 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      LODWORD(v12) = 0;
      v13 = *v45;
      obj = types;
      do
      {
        v14 = 0;
        v12 = v12;
        do
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v44 + 1) + 8 * v14);
          v16 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v8 index:v12];
          v17 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWNodeInput *)v16 setFormatRequirements:v17];

          [(BWNodeInput *)v16 setPassthroughMode:1];
          [(BWNodeInput *)v16 setName:BWPortTypeToDisplayString(v15, v18)];
          [(BWNode *)v8 addInput:v16];
          [dictionary setObject:v16 forKeyedSubscript:v15];
          ++v12;
          v19 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v8];
          v20 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWNodeOutput *)v19 setFormatRequirements:v20];

          [(BWNodeOutput *)v19 setPassthroughMode:1];
          [(BWNodeOutput *)v19 setIndexOfInputWhichDrivesThisOutput:[(BWNodeInput *)v16 index]];
          [(BWNodeOutput *)v19 setName:BWPortTypeToDisplayString(v15, v21)];
          [(BWNode *)v8 addOutput:v19];
          [dictionary2 setObject:v19 forKeyedSubscript:v15];

          ++v14;
        }

        while (v11 != v14);
        v11 = [obj countByEnumeratingWithState:&v44 objects:v43 count:16];
      }

      while (v11);
    }

    else
    {
      LODWORD(v12) = 0;
    }

    v8->_portTypeToInput = [dictionary copy];
    v8->_portTypeToOutput = [dictionary2 copy];
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    obja = [MEMORY[0x1E695DF90] dictionary];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v37 = [portTypes countByEnumeratingWithState:&v39 objects:v38 count:16];
    if (v37)
    {
      v32 = *v40;
      do
      {
        v22 = 0;
        v12 = v12;
        do
        {
          if (*v40 != v32)
          {
            objc_enumerationMutation(portTypes);
          }

          v23 = *(*(&v39 + 1) + 8 * v22);
          v24 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v8 index:v12];
          v25 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWNodeInput *)v24 setFormatRequirements:v25];

          [(BWNodeInput *)v24 setPassthroughMode:1];
          -[BWNodeInput setName:](v24, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", BWPortTypeToDisplayString(v23, v26), @"SensorRaw"]);
          [(BWNode *)v8 addInput:v24];
          [dictionary3 setObject:v24 forKeyedSubscript:v23];
          ++v12;
          v27 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v8];
          v28 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWNodeOutput *)v27 setFormatRequirements:v28];

          [(BWNodeOutput *)v27 setPassthroughMode:1];
          [(BWNodeOutput *)v27 setIndexOfInputWhichDrivesThisOutput:[(BWNodeInput *)v24 index]];
          -[BWNodeInput setName:](v24, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", BWPortTypeToDisplayString(v23, v29), @"SensorRaw"]);
          [(BWNode *)v8 addOutput:v27];
          [obja setObject:v27 forKeyedSubscript:v23];

          ++v22;
        }

        while (v37 != v22);
        v37 = [portTypes countByEnumeratingWithState:&v39 objects:v38 count:16];
      }

      while (v37);
    }

    v8->_portTypeToSensorRawInput = [dictionary3 copy];
    v8->_portTypeToSensorRawOutput = [obja copy];
    if ([(BWStillImageNodeConfiguration *)v8->_nodeConfiguration optimizedProcessingForZoomFOVSupported])
    {
      v8->_lockedFinalCropRectForOptimizedProcessingForZoomFOVByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8->_lockedNormalizedMinimumValidBufferRectForGDCForOptimizedProcessingForZoomFOVByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
    }
  }

  return v8;
}

- (void)dealloc
{
  [(BWStillImageFrameCoordinatorNode *)&self->super.super.isa _resetStillImageCaptureState];

  v3.receiver = self;
  v3.super_class = BWStillImageFrameCoordinatorNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  v5 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [input index]);

  [v5 setFormat:format];
}

- (void)_handleMessage:(id)message fromInput:(id)input
{
  if (!self->_holdMessagesUntilAllInputsAreLive)
  {
    goto LABEL_7;
  }

  if ([(BWNode *)self allInputsHaveReachedState:1])
  {
    [(BWStillImageFrameCoordinatorNode *)self _deliverQueuedMessages];
LABEL_7:
    v8.receiver = self;
    v8.super_class = BWStillImageFrameCoordinatorNode;
    [(BWNode *)&v8 _handleMessage:message fromInput:input];
    return;
  }

  [(NSMutableArray *)self->_queuedMessages addObject:message];
  inputsForQueuedMessages = self->_inputsForQueuedMessages;

  [(NSMutableArray *)inputsForQueuedMessages addObject:input];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (dword_1EB58DFE0)
  {
    v34 = 0;
    v33 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(BWNode *)self allInputsHaveReachedState:1, format, input, v18, v20])
  {
    if (dword_1EB58DFE0)
    {
      v34 = 0;
      v33 = OS_LOG_TYPE_DEFAULT;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = v34;
      if (os_log_type_enabled(v8, v33))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = [(NSArray *)[(BWNode *)self outputs] count];
        v27 = 136315650;
        v28 = "[BWStillImageFrameCoordinatorNode configurationWithID:updatedFormat:didBecomeLiveForInput:]";
        v29 = 1026;
        v30 = v11;
        v31 = 2050;
        dCopy = d;
        LODWORD(v21) = 28;
        v19 = &v27;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [(BWNode *)self outputs:v19];
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if (![v17 liveFormat])
          {
            [v17 makeConfiguredFormatLive];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (dword_1EB58DFE0)
  {
    v32 = 0;
    v31 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(BWNode *)self allInputsHaveReachedState:0, input, v16, v18])
  {
    if (dword_1EB58DFE0)
    {
      v32 = 0;
      v31 = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v8 = v32;
      if (os_log_type_enabled(v7, v31))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = [(NSArray *)[(BWNode *)self outputs] count];
        v25 = 136315650;
        v26 = "[BWStillImageFrameCoordinatorNode didReachEndOfDataForConfigurationID:input:]";
        v27 = 1026;
        v28 = v10;
        v29 = 2114;
        dCopy = d;
        LODWORD(v19) = 28;
        v17 = &v25;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [(BWNode *)self outputs:v17];
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v21 + 1) + 8 * i) markEndOfLiveOutputForConfigurationID:d];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (!buffer)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v21 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v21, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFrameCoordinatorNode.m", 462, @"LastShownDate:BWStillImageFrameCoordinatorNode.m:462", @"LastShownBuild:BWStillImageFrameCoordinatorNode.m:462", 0);
LABEL_26:
    free(v21);
    goto LABEL_18;
  }

  v7 = BWPixelBufferDimensionsFromSampleBuffer(buffer);
  v8 = v7;
  if (v7 < 1 || v7 <= 0)
  {
    v15 = FigCaptureGetFrameworkRadarComponent();
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v21 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v15, v21, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFrameCoordinatorNode.m", 465, @"LastShownDate:BWStillImageFrameCoordinatorNode.m:465", @"LastShownBuild:BWStillImageFrameCoordinatorNode.m:465", 0);
    goto LABEL_26;
  }

  v9 = CMGetAttachment(buffer, @"StillSettings", 0);
  if (!v9)
  {
    v17 = FigCaptureGetFrameworkRadarComponent();
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v22 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v17, v22, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFrameCoordinatorNode.m", 468, @"LastShownDate:BWStillImageFrameCoordinatorNode.m:468", @"LastShownBuild:BWStillImageFrameCoordinatorNode.m:468", 0);
LABEL_27:
    free(v22);
    v23 = [BWNodeError newError:4294954516 sourceNode:self stillImageSettings:v9 metadata:0];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self "outputs")];

    goto LABEL_18;
  }

  v10 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v10)
  {
    v19 = FigCaptureGetFrameworkRadarComponent();
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v22 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v19, v22, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFrameCoordinatorNode.m", 471, @"LastShownDate:BWStillImageFrameCoordinatorNode.m:471", @"LastShownBuild:BWStillImageFrameCoordinatorNode.m:471", 0);
    goto LABEL_27;
  }

  v11 = v10;
  if (!self->_currentStillImageSettings)
  {
    goto LABEL_10;
  }

  settingsID = [v9 settingsID];
  if (settingsID != [(BWStillImageSettings *)self->_currentStillImageSettings settingsID])
  {
    [(BWStillImageFrameCoordinatorNode *)&self->super.super.isa _resetStillImageCaptureState];
  }

  if (!self->_currentStillImageSettings)
  {
LABEL_10:
    [(BWStillImageFrameCoordinatorNode *)self _setupStillImageCaptureStateWithStillImageSettings:v9];
  }

  if ([objc_msgSend(v9 "processingSettings")])
  {
    [v9 settingsID];
    [BWStillImageFrameCoordinatorNode _cacheOrUpdateMetadataForOptimizedProcessingForZoomFOVWithMetadata:v11 inputDimensions:v8 settingsID:?];
  }

  if (([(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] captureFlags]& 0x2000) != 0)
  {
    [(BWStillImageFrameCoordinatorNode *)&self->super.super.isa _handleZeroShutterLagSampleBuffer:buffer forInput:input];
  }

  else
  {
    [(BWStillImageFrameCoordinatorNode *)&self->super.super.isa _handleSampleBuffer:buffer forInput:input];
  }

  if (([objc_msgSend(v9 "captureSettings")] & 4) == 0)
  {
    CMRemoveAttachment(buffer, *off_1E798A448);
    CMRemoveAttachment(buffer, *off_1E798A468);
  }

LABEL_18:
  if (self->_currentStillImageSettings)
  {
    if ([(BWStillImageFrameCoordinatorNode *)self _isCaptureComplete])
    {
      [(BWStillImageFrameCoordinatorNode *)&self->super.super.isa _resetStillImageCaptureState];
    }
  }
}

- (void)handleStillImagePrewarmWithSettings:(id)settings resourceConfig:(id)config forInput:(id)input
{
  v7 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [input index]);

  [v7 emitStillImagePrewarmMessageWithSettings:settings resourceConfig:config];
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  v5 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [input index]);

  [v5 emitNodeError:error];
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  v5 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [input index]);

  [v5 emitDroppedSample:sample];
}

- (id)_resetStillImageCaptureState
{
  if (result)
  {
    v1 = result;

    v1[21] = 0;
    v1[22] = 0;
    [v1[23] removeAllObjects];
    v2 = v1[24];

    return [v2 removeAllObjects];
  }

  return result;
}

- (void)_deliverQueuedMessages
{
  if (self)
  {
    if ([*(self + 208) count])
    {
      v2 = 0;
      do
      {
        v3 = [*(self + 208) objectAtIndexedSubscript:v2];
        v4 = [*(self + 216) objectAtIndexedSubscript:v2];
        v5.receiver = self;
        v5.super_class = BWStillImageFrameCoordinatorNode;
        objc_msgSendSuper2(&v5, sel__handleMessage_fromInput_, v3, v4);
        ++v2;
      }

      while (v2 < [*(self + 208) count]);
    }

    [*(self + 208) removeAllObjects];

    *(self + 208) = 0;
    [*(self + 216) removeAllObjects];

    *(self + 216) = 0;
    *(self + 200) = 0;
  }
}

- (uint64_t)_setupStillImageCaptureStateWithStillImageSettings:(uint64_t)settings
{
  if (settings)
  {
    *(settings + 176) = a2;

    *(settings + 168) = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [objc_msgSend(*(settings + 176) "captureSettings")];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * v7);
          v9 = objc_alloc_init(BWStillImageCaptureStreamFrameCounters);
          v9->expectedTimeMachineFrames = [v8 expectedTimeMachineFrameCaptureCount];
          if ([v8 adaptiveBracketingParameters])
          {
            expectedFrameCaptureCount = 0x7FFFFFFF;
          }

          else
          {
            expectedFrameCaptureCount = [v8 expectedFrameCaptureCount];
          }

          v9->expectedFrames = expectedFrameCaptureCount;
          [*(settings + 168) setObject:v9 forKeyedSubscript:{objc_msgSend(v8, "portType")}];
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v5);
    }
  }

  return 0;
}

- (void)_cacheOrUpdateMetadataForOptimizedProcessingForZoomFOVWithMetadata:(uint64_t)metadata inputDimensions:(void *)dimensions settingsID:(uint64_t)d
{
  if (!metadata)
  {
    return;
  }

  v10 = [dimensions objectForKeyedSubscript:*off_1E798B540];
  v11 = [*(metadata + 184) objectForKeyedSubscript:v10];
  v12 = [*(metadata + 192) objectForKeyedSubscript:v10];
  v13 = v12;
  if (v11)
  {
    [dimensions setObject:v11 forKeyedSubscript:*off_1E798A5C8];
    FigCaptureMetadataUtilitiesGetValidBufferRect(dimensions);
    v14 = OUTLINED_FUNCTION_8_32();
    FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect(v14);
    FigCaptureDenormalizeCropRect(d, FinalCropRect, v16, v17, v18);
    OUTLINED_FUNCTION_26_2();
    v113.origin.x = OUTLINED_FUNCTION_3();
    v118.origin.x = v3;
    v118.origin.y = v4;
    v118.size.width = v5;
    v118.size.height = v6;
    if (!CGRectContainsRect(v113, v118))
    {
      OUTLINED_FUNCTION_3_55();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v111))
      {
        v20 = v112;
      }

      else
      {
        v20 = v112 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v21 = OUTLINED_FUNCTION_3_0();
        BWStringFromCGRect(v21, v22, v23, v24);
        v25 = OUTLINED_FUNCTION_3();
        BWStringFromCGRect(v25, v26, v27, v28);
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_2_62();
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v51 = OUTLINED_FUNCTION_3_0();
      v55 = BWStringFromCGRect(v51, v52, v53, v54);
      v56 = OUTLINED_FUNCTION_3();
      BWStringFromCGRect(v56, v57, v58, v59);
      LODWORD(rect.origin.x) = 138543874;
      *(&rect.origin.x + 4) = v55;
      OUTLINED_FUNCTION_5_48();
      v64 = OUTLINED_FUNCTION_6_0(v60, v61, v62, v63, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      v107 = 0;
      FigCapturePleaseFileRadar(7, v64, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFrameCoordinatorNode.m", 581, @"LastShownDate:BWStillImageFrameCoordinatorNode.m:581", @"LastShownBuild:BWStillImageFrameCoordinatorNode.m:581", 0);
      free(v64);
    }

    if (v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v12)
    {
LABEL_18:
      v65 = *(MEMORY[0x1E695F050] + 16);
      rect.origin = *MEMORY[0x1E695F050];
      rect.size = v65;
      CGRectMakeWithDictionaryRepresentation(v13, &rect);
      FigCaptureDenormalizeCropRect(d, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
      v67 = round(v66);
      v69 = round(v68);
      v71 = round(v70);
      v73 = round(v72);
      v114.origin.x = OUTLINED_FUNCTION_3();
      [dimensions setObject:CGRectCreateDictionaryRepresentation(v114) forKeyedSubscript:*off_1E798A7A0];
      FigCaptureMetadataUtilitiesGetValidBufferRect(dimensions);
      OUTLINED_FUNCTION_26_2();
      v119.origin.x = v67;
      v119.origin.y = v69;
      v119.size.width = v71;
      v119.size.height = v73;
      if (!CGRectContainsRect(v115, v119))
      {
        OUTLINED_FUNCTION_3_55();
        v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v75 = v112;
        if (os_log_type_enabled(v74, v111))
        {
          v76 = v75;
        }

        else
        {
          v76 = v75 & 0xFFFFFFFE;
        }

        if (v76)
        {
          v77 = OUTLINED_FUNCTION_3();
          v81 = BWStringFromCGRect(v77, v78, v79, v80);
          v82 = OUTLINED_FUNCTION_3_0();
          BWStringFromCGRect(v82, v83, v84, v85);
          LODWORD(v108) = 136315906;
          OUTLINED_FUNCTION_23_8();
          *(&v109 + 6) = v81;
          OUTLINED_FUNCTION_2_62();
          OUTLINED_FUNCTION_7_38(v86, v87, v88, v89, &dword_1AC90E000, v90, v91, "<<<< BWStillImageFrameCoordinatorNode >>>> %s: Updated MinimumValidBufferRectForGDC is larger than ValidBufferRect (%{public}@ vs. %{public}@), processing might produce corrupted photos for captureID:%{public}lld", v106, v107, v108, v109, *(&v109 + 1));
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v92 = OUTLINED_FUNCTION_3();
        v96 = BWStringFromCGRect(v92, v93, v94, v95);
        v97 = OUTLINED_FUNCTION_3_0();
        BWStringFromCGRect(v97, v98, v99, v100);
        LODWORD(rect.origin.x) = 138543874;
        *(&rect.origin.x + 4) = v96;
        OUTLINED_FUNCTION_5_48();
        v105 = OUTLINED_FUNCTION_6_0(v101, v102, v103, v104, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
        FigCapturePleaseFileRadar(7, v105, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFrameCoordinatorNode.m", 600, @"LastShownDate:BWStillImageFrameCoordinatorNode.m:600", @"LastShownBuild:BWStillImageFrameCoordinatorNode.m:600", 0);
        free(v105);
      }

      return;
    }

    FigCaptureMetadataUtilitiesGetFinalCropRect(dimensions);
    v29 = OUTLINED_FUNCTION_8_32();
    MinimumValidBufferRectForGDC = FigCaptureMetadataUtilitiesGetMinimumValidBufferRectForGDC(v29);
    FigCaptureNormalizeCropRect(d, MinimumValidBufferRectForGDC, v31, v32, v33);
    OUTLINED_FUNCTION_26_2();
    if (dword_1EB58DFE0)
    {
      OUTLINED_FUNCTION_3_55();
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(v34, v111))
      {
        v35 = v112;
      }

      else
      {
        v35 = v112 & 0xFFFFFFFE;
      }

      if (v35)
      {
        v36 = OUTLINED_FUNCTION_3();
        v40 = BWStringFromCGRect(v36, v37, v38, v39);
        v41 = OUTLINED_FUNCTION_3_0();
        BWStringFromCGRect(v41, v42, v43, v44);
        LODWORD(v108) = 136315906;
        OUTLINED_FUNCTION_23_8();
        *(&v109 + 6) = v40;
        OUTLINED_FUNCTION_2_62();
        OUTLINED_FUNCTION_7_38(v45, v46, v47, v48, &dword_1AC90E000, v49, v50, "<<<< BWStillImageFrameCoordinatorNode >>>> %s: Locking FinalCropRect to %{public}@ and NormalizedMinimumValidBufferRectForGDC to %{public}@ for captureID:%{public}lld with optimizedProcessingForZoomFOVEnabled", v106, v107, v108, v109, *(&v109 + 1));
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v116.origin.x = OUTLINED_FUNCTION_3();
    [*(metadata + 184) setObject:CGRectCreateDictionaryRepresentation(v116) forKeyedSubscript:v10];
    v117.origin.x = OUTLINED_FUNCTION_3_0();
    [*(metadata + 192) setObject:CGRectCreateDictionaryRepresentation(v117) forKeyedSubscript:v10];
  }
}

- (id)_handleZeroShutterLagSampleBuffer:(void *)buffer forInput:
{
  if (result)
  {
    v5 = result;
    v6 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v7 = [v6 objectForKeyedSubscript:*off_1E798B540];
    v8 = [v5[21] objectForKeyedSubscript:v7];
    v9 = [objc_msgSend(v5[22] "captureSettings")];
    if (!v8)
    {
      goto LABEL_9;
    }

    if (v8[4] < 1)
    {
      goto LABEL_9;
    }

    v10 = v9;
    ++v8[3];
    [(BWStillImageFrameCoordinatorNode *)v5 _addMetadataVersionToMutableMetadata:v6];
    if (v8[4] < 1)
    {
      goto LABEL_9;
    }

    v11 = [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
    v12 = [v6 objectForKeyedSubscript:*off_1E798B1B8];
    result = [v10 isFrameCapturedForProcessing:target];
    v13 = result;
    if ((v11 & 1) == 0 && !v12)
    {
      [v5[19] objectForKeyedSubscript:v7];
      result = [v10 captureFlags];
      ++v8[5];
    }

    if (v13)
    {
LABEL_9:
      v14 = [objc_msgSend(v5 "outputs")];

      return [v14 emitSampleBuffer:target];
    }
  }

  return result;
}

- (id)_handleSampleBuffer:(void *)buffer forInput:
{
  if (result)
  {
    v5 = result;
    v6 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v7 = [v6 objectForKeyedSubscript:*off_1E798B540];
    v8 = [v5[21] objectForKeyedSubscript:v7];
    v9 = [objc_msgSend(v5[22] "captureSettings")];
    [(BWStillImageFrameCoordinatorNode *)v5 _addMetadataVersionToMutableMetadata:v6];
    if (!v8)
    {
      goto LABEL_6;
    }

    v10 = [v9 isFrameCapturedForProcessing:target];
    ++*(v8 + 12);
    result = BWIsLastAdaptiveBracketingFrame(target);
    if (result)
    {
      *(v8 + 8) = *(v8 + 12);
    }

    if (v10)
    {
LABEL_6:
      v11 = [objc_msgSend(v5 "outputs")];

      return [v11 emitSampleBuffer:target];
    }
  }

  return result;
}

- (uint64_t)_isCaptureComplete
{
  if (result)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    allValues = [*(result + 168) allValues];
    v2 = [allValues countByEnumeratingWithState:&v7 objects:v6 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v8;
      while (2)
      {
        v5 = 0;
        do
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(allValues);
          }

          if (*(*(*(&v7 + 1) + 8 * v5) + 12) != *(*(*(&v7 + 1) + 8 * v5) + 8))
          {
            return 0;
          }

          ++v5;
        }

        while (v3 != v5);
        v3 = [allValues countByEnumeratingWithState:&v7 objects:v6 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

    return 1;
  }

  return result;
}

- (id)_addMetadataVersionToMutableMetadata:(id *)result
{
  if (result)
  {
    stillImageProcessingMode = [result[16] stillImageProcessingMode];
    if (stillImageProcessingMode >= 2)
    {
      if (stillImageProcessingMode == 2)
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Reprocessing%@", @"CameraCaptureStillImageMetadataVersion"];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = @"CameraCaptureStillImageMetadataVersion";
    }

    return [a2 setObject:&unk_1F22443B0 forKeyedSubscript:v4];
  }

  return result;
}

@end