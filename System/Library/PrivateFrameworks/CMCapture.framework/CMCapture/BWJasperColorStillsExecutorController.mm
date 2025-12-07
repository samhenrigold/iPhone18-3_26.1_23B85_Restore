@interface BWJasperColorStillsExecutorController
+ (void)initialize;
- (BOOL)_sourceDimensionsAreTargetDimensions;
- (BOOL)finishProcessingCurrentInputNow;
- (BWJasperColorStillsExecutorController)initWithConfiguration:(id)configuration;
- (id)_execute;
- (id)_serviceNextRequest;
- (id)_updateStateIfNeeded;
- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate;
- (uint64_t)_setupJasperColorStillsExecutor;
- (void)cancelProcessing;
- (void)dealloc;
@end

@implementation BWJasperColorStillsExecutorController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWJasperColorStillsExecutorController)initWithConfiguration:(id)configuration
{
  v10.receiver = self;
  v10.super_class = BWJasperColorStillsExecutorController;
  v4 = [(BWJasperColorStillsExecutorController *)&v10 init];
  if (v4)
  {
    v4->_configuration = configuration;
    v4->_requestQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [[FigStateMachine alloc] initWithLabel:@"BWJasperColorStillsExecutorController state machine" stateCount:4 initialState:1 owner:v4];
    [(FigStateMachine *)v5 setPerformsAtomicStateTransitions:0];
    [(FigStateMachine *)v5 setLabel:@"Idle" forState:1];
    [(FigStateMachine *)v5 setLabel:@"Ready" forState:2];
    [(FigStateMachine *)v5 setLabel:@"Waiting" forState:4];
    [(FigStateMachine *)v5 setLabel:@"Processing" forState:8];
    [(FigStateMachine *)v5 whenTransitioningToStates:1 callHandler:&__block_literal_global_45];
    [(FigStateMachine *)v5 whenTransitioningToStates:2 callHandler:&__block_literal_global_224];
    [(FigStateMachine *)v5 whenTransitioningToState:4 callHandler:&__block_literal_global_226];
    [(FigStateMachine *)v5 whenTransitioningToState:8 callHandler:&__block_literal_global_228];
    v4->_stateMachine = v5;
    *v4->_anon_80 = 1065353216;
    *&v4->_anon_80[20] = 1065353216;
    *&v4->_anon_80[40] = 1065353216;
    v6 = *(MEMORY[0x1E695F050] + 16);
    v4->_inputROI.origin = *MEMORY[0x1E695F050];
    v4->_inputROI.size = v6;
    if (([configuration postponeProcessorSetup] & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      _setupJasperColorStillsExecutor = [(BWJasperColorStillsExecutorController *)v4 _setupJasperColorStillsExecutor];
      objc_autoreleasePoolPop(v8);
      if (_setupJasperColorStillsExecutor)
      {

        return 0;
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  depthFormatDescription = self->_depthFormatDescription;
  if (depthFormatDescription)
  {
    CFRelease(depthFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWJasperColorStillsExecutorController;
  [(BWStillImageProcessorController *)&v4 dealloc];
}

- (void)cancelProcessing
{
  [(NSMutableArray *)self->_requestQueue removeAllObjects];
  [(BWJasperColorStillsExecutorRequest *)self->_currentRequest setErr:4294950490];

  [(BWJasperColorStillsExecutorController *)&self->super.super.isa _serviceNextRequest];
}

- (uint64_t)_setupJasperColorStillsExecutor
{
  if (!self || *(self + 88))
  {
    return 0;
  }

  v3 = [objc_msgSend(OUTLINED_FUNCTION_6_31() "outputDepthFormat")];
  if (!FigCapturePixelFormatIsDepthData(v3))
  {
    v11 = 4294954516;
LABEL_9:

    *(self + 88) = 0;
    return v11;
  }

  v4 = [objc_alloc(getADJasperColorStillsExecutorClass()) init];
  *(self + 88) = v4;
  if (!v4)
  {
    v13 = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v13, v1, v14, v15, v16, v17, v18, v19);
    v11 = 4294954510;
    goto LABEL_9;
  }

  *(self + 96) = 3;
  if ([(BWJasperColorStillsExecutorController *)self _sourceDimensionsAreTargetDimensions])
  {
    v5 = [objc_msgSend(OUTLINED_FUNCTION_6_31() "inputColorFormat")];
    v6 = [objc_msgSend(OUTLINED_FUNCTION_6_31() "inputColorFormat")];
    *(self + 192) = 0;
    *(self + 200) = 0;
    *(self + 208) = v5;
  }

  else
  {
    v7 = [objc_msgSend(OUTLINED_FUNCTION_6_31() "inputColorFormat")];
    [objc_msgSend(OUTLINED_FUNCTION_6_31() "inputColorFormat")];
    standardFormatDimensions = [OUTLINED_FUNCTION_6_31() standardFormatDimensions];
    *(self + 192) = FigCaptureMetadataUtilitiesDenormalizedRectWithinBoundingDimensionsCenteredOnPoint(v7, standardFormatDimensions, 0.5);
    *(self + 200) = v9;
    *(self + 208) = v10;
  }

  *(self + 216) = v6;
  v11 = [*(self + 88) prepareForEngineType:*(self + 96) inputROI:{*(self + 192), *(self + 200), *(self + 208), *(self + 216)}];
  if (v11)
  {
    goto LABEL_9;
  }

  return v11;
}

- (id)_updateStateIfNeeded
{
  if (result)
  {
    v1 = result;
    v2 = result[14];
    currentState = [result[9] currentState];
    if (v2)
    {
      if (currentState == 2)
      {
        v4 = 4;
      }

      else if (currentState == 4)
      {
        v4 = [objc_msgSend(v2 "input")] ? 8 : 4;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }

    result = [v1[9] currentState];
    if (v4 != result)
    {
      v5 = v1[9];

      return [v5 transitionToState:v4];
    }
  }

  return result;
}

- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate
{
  v5 = [[BWJasperColorStillsExecutorRequest alloc] initWithInput:processing delegate:delegate];
  [(NSMutableArray *)self->_requestQueue addObject:v5];

  if ([(FigStateMachine *)self->_stateMachine currentState]== 1)
  {
    [(FigStateMachine *)self->_stateMachine transitionToState:2];
  }

  return 0;
}

- (BOOL)finishProcessingCurrentInputNow
{
  v2 = self->_currentRequest;
  input = [(BWJasperColorStillsExecutorRequest *)v2 input];
  if (input)
  {
    [*(input + 40) inputReadyToExecute:input];
  }

  v4 = [(BWJasperColorStillsExecutorRequest *)v2 err]== 0;

  return v4;
}

- (id)_serviceNextRequest
{
  if (result)
  {
    v1 = result;
    delegate = [result[14] delegate];
    input = [v1[14] input];
    v4 = [v1[14] err];

    v1[14] = 0;
    [delegate processorController:v1 didFinishProcessingInput:input err:v4];

    firstObject = [v1[13] firstObject];
    v1[14] = firstObject;
    if (firstObject)
    {
      [v1[13] removeObjectAtIndex:0];
      [objc_msgSend(v1[14] "input")];
    }

    return [(BWJasperColorStillsExecutorController *)v1 _updateStateIfNeeded];
  }

  return result;
}

- (id)_execute
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v2 = [objc_msgSend(result[14] "input")];
  v3 = OUTLINED_FUNCTION_1_48();
  if (!v2)
  {
    goto LABEL_25;
  }

  if (![v3 err])
  {
    if ([objc_msgSend(OUTLINED_FUNCTION_1_48() "input")])
    {
      if (dword_1EB58DEA0)
      {
        v59 = 0;
        v58 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_21;
    }

    v4 = *off_1E798A3C8;
    v5 = [CMGetAttachment(v2 *off_1E798A3C8];
    v6 = *off_1E798A0C8;
    v7 = [objc_msgSend(OUTLINED_FUNCTION_5_37() "sensorConfigurationsByPortType")];
    v8 = [objc_msgSend(OUTLINED_FUNCTION_5_37() "sensorConfigurationsByPortType")];
    ImageBuffer = CMSampleBufferGetImageBuffer(v2);
    v3 = OUTLINED_FUNCTION_1_48();
    if (ImageBuffer)
    {
      v10 = -[BWJasperColorStillsExecutorInput jasperPointCloudsForColorBuffer]([v3 input]);
      v11 = [v10 count];
      v3 = v1[14];
      if (v11)
      {
        key = v4;
        v62 = [objc_msgSend(v3 "delegate")];
        if (v62)
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          FigCaptureCreateJasperToColorCameraTransformForJasperSensorConfiguration(v8, &v53);
          [OUTLINED_FUNCTION_1_48() setErr:?];
          if (![OUTLINED_FUNCTION_1_48() err])
          {
            horizontalSensorBinningFactor = [OUTLINED_FUNCTION_5_37() horizontalSensorBinningFactor];
            verticalSensorBinningFactor = [OUTLINED_FUNCTION_5_37() verticalSensorBinningFactor];
            FigCaptureCreateColorCameraCalibrationForColorSampleBuffer(v2, v7, horizontalSensorBinningFactor, verticalSensorBinningFactor, &v61);
            [OUTLINED_FUNCTION_1_48() setErr:?];
            if (![OUTLINED_FUNCTION_1_48() err])
            {
              if (v61)
              {
                FigCaptureCreateDepthMetadataForColorCameraCalibration(v61, 1, &v60);
                [OUTLINED_FUNCTION_1_48() setErr:?];
                if (![OUTLINED_FUNCTION_1_48() err])
                {
                  _sourceDimensionsAreTargetDimensions = [(BWJasperColorStillsExecutorController *)v1 _sourceDimensionsAreTargetDimensions];
                  v15 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                  v16 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                  v17 = MEMORY[0x1E695F050];
                  if (_sourceDimensionsAreTargetDimensions)
                  {
                    goto LABEL_18;
                  }

                  v18 = [objc_msgSend(OUTLINED_FUNCTION_5_37() "inputColorFormat")];
                  [objc_msgSend(OUTLINED_FUNCTION_5_37() "inputColorFormat")];
                  v19 = v17[1];
                  v57.origin = *v17;
                  v57.size = v19;
                  if (FigCFDictionaryGetCGRectIfPresent())
                  {
                    y = v57.origin.y;
                    x = v57.origin.x;
                    height = v57.size.height;
                    width = v57.size.width;
                  }

                  else
                  {
                    v57.origin = 0uLL;
                    __asm { FMOV            V0.2D, #1.0 }

                    v57.size = _Q0;
                    y = 0.0;
                    height = 1.0;
                    width = 1.0;
                    x = 0.0;
                  }

                  MidX = CGRectGetMidX(*&x);
                  CGRectGetMidY(v57);
                  standardFormatDimensions = [OUTLINED_FUNCTION_5_37() standardFormatDimensions];
                  v63.origin.x = FigCaptureMetadataUtilitiesDenormalizedRectWithinBoundingDimensionsCenteredOnPoint(v18, standardFormatDimensions, MidX);
                  v31 = v63.origin.x;
                  v32 = v63.origin.y;
                  v33 = v63.size.width;
                  v34 = v63.size.height;
                  v16 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                  v15 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                  if (CGRectEqualToRect(v63, *(v1 + 6)) || (*(v1 + 24) = v31, *(v1 + 25) = v32, *(v1 + 26) = v33, *(v1 + 27) = v34, [v1[11] prepareForEngineType:v1[12] inputROI:{v31, v32, v33, v34}], objc_msgSend(OUTLINED_FUNCTION_1_48(), "setErr:"), !objc_msgSend(OUTLINED_FUNCTION_1_48(), "err")))
                  {
LABEL_18:
                    [*(v1 + v15[662]) executeWithColor:ImageBuffer pointCloudArray:v10 pointCloud2ColorTransform:v61 colorCameraCalibration:&v62 outDepthMap:{*&v53, *&v54, *&v55, *&v56}];
                    [OUTLINED_FUNCTION_1_48() setErr:?];
                    if (![OUTLINED_FUNCTION_1_48() err])
                    {
                      v35 = *off_1E798D2B8;
                      CMSetAttachment(v62, *off_1E798D2B8, v60, 1u);
                      CMSetAttachment(v2, v35, v60, 1u);
                      BWSampleBufferSetAttachedMediaFromPixelBuffer(v2, @"Depth", v62, v1 + 15, 0, 0, 1);
                      if (![(BWJasperColorStillsExecutorController *)v1 _sourceDimensionsAreTargetDimensions])
                      {
                        AttachedMedia = BWSampleBufferGetAttachedMedia(v2, @"Depth");
                        v37 = CMGetAttachment(AttachedMedia, key, 0);
                        v38 = CVPixelBufferGetWidth(ImageBuffer);
                        v39 = v38 | (CVPixelBufferGetHeight(ImageBuffer) << 32);
                        v40 = v1 + v16[661];
                        v41 = v62;
                        v42 = CVPixelBufferGetWidth(v62);
                        v43 = CVPixelBufferGetHeight(v41);
                        v44.n128_u64[0] = *v40;
                        v45.n128_u64[0] = *(v40 + 1);
                        v46.n128_u64[0] = *(v40 + 2);
                        FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v37, v39, v42 | (v43 << 32), v44, v45, v46, *(v40 + 3), v17->x, v17->y, v17[1].x, v17[1].y);
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_21;
        }

        v3 = OUTLINED_FUNCTION_1_48();
        v50 = 4294954510;
        goto LABEL_29;
      }
    }

LABEL_25:
    v50 = 4294954516;
LABEL_29:
    [v3 setErr:v50];
  }

LABEL_21:
  delegate = [OUTLINED_FUNCTION_1_48() delegate];
  v48 = [objc_msgSend(OUTLINED_FUNCTION_1_48() "input")];
  input = [OUTLINED_FUNCTION_1_48() input];
  [delegate processorController:v1 didFinishProcessingSampleBuffer:v2 type:v48 processorInput:input err:{objc_msgSend(OUTLINED_FUNCTION_1_48(), "err")}];
  if (v62)
  {
    CFRelease(v62);
  }

  return [(BWJasperColorStillsExecutorController *)v1 _updateStateIfNeeded];
}

- (BOOL)_sourceDimensionsAreTargetDimensions
{
  if (self)
  {
    standardFormatDimensions = [*(self + 80) standardFormatDimensions];
    v3 = standardFormatDimensions < 1 || SHIDWORD(standardFormatDimensions) < 1;
    v4 = [objc_msgSend(OUTLINED_FUNCTION_11_21() "inputColorFormat")];
    if (v4 == [OUTLINED_FUNCTION_11_21() standardFormatDimensions])
    {
      v5 = [objc_msgSend(OUTLINED_FUNCTION_11_21() "inputColorFormat")];
      v6 = v5 == [OUTLINED_FUNCTION_11_21() standardFormatDimensions];
    }

    else
    {
      v6 = 0;
    }

    return v3 || v6;
  }

  else
  {
    return 0;
  }
}

@end