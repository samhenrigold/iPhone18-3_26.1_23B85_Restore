@interface BWIntelligentDistortionCorrectionProcessorController
+ (BOOL)idcSupportedForCaptureType:(int)type captureFlags:(unint64_t)flags;
- (BWIntelligentDistortionCorrectionProcessorController)initWithConfiguration:(id)configuration;
- (id)_process;
- (id)_resetProcessor;
- (id)_serviceNextRequest;
- (id)_updateStateIfNeeded;
- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate;
- (uint64_t)_applyExistingCorrectionToDepthPixelBuffer:(uint64_t)buffer primaryImageDimensions:;
- (uint64_t)_determineWorkingBufferRequirementsWithProcessorConfig:(unint64_t)config processor:(void *)processor metalBufferSizeOut:(unint64_t *)out;
- (uint64_t)_prepareProcessor:(void *)processor;
- (void)_getAndAttachGDCInformationToDemosaicedRawSampleBuffer:(id *)buffer inputDimensions:(const void *)dimensions finalImageDimensions:(unint64_t)imageDimensions settingsID:(uint64_t)d;
- (void)_loadSetupAndPrepareProcessor;
- (void)_process;
- (void)cancelProcessing;
- (void)dealloc;
- (void)inputReceivedNewInputData:(id)data;
@end

@implementation BWIntelligentDistortionCorrectionProcessorController

- (BWIntelligentDistortionCorrectionProcessorController)initWithConfiguration:(id)configuration
{
  v50.receiver = self;
  v50.super_class = BWIntelligentDistortionCorrectionProcessorController;
  v4 = [(BWStillImageProcessorController *)&v50 initWithName:@"DistortionCorrectionPC" type:7 configuration:configuration];
  if (v4)
  {
    if (![objc_msgSend(configuration "sensorConfigurationsByPortType")])
    {
      [BWIntelligentDistortionCorrectionProcessorController initWithConfiguration:];
      goto LABEL_26;
    }

    if ([configuration horizontalSensorBinningFactor] > 1 || objc_msgSend(configuration, "verticalSensorBinningFactor") >= 2)
    {
      horizontalSensorBinningFactor = [configuration horizontalSensorBinningFactor];
      if (horizontalSensorBinningFactor != [configuration verticalSensorBinningFactor])
      {
        goto LABEL_26;
      }

      v35 = v4;
      v39 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(objc_msgSend(configuration, "sensorConfigurationsByPortType"), "count")}];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = [configuration sensorConfigurationsByPortType];
      v6 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
      if (v6)
      {
        v7 = v6;
        v38 = *v47;
        v8 = *off_1E7989F18;
        v9 = *off_1E7989F10;
        v37 = *MEMORY[0x1E695EFF8];
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v47 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v46 + 1) + 8 * i);
            v12 = [objc_msgSend(configuration "sensorConfigurationsByPortType")];
            v13 = [objc_msgSend(v12 "cameraInfo")];
            [objc_msgSend(v13 objectForKeyedSubscript:{v8), "floatValue"}];
            *&v15 = v14 * [configuration horizontalSensorBinningFactor];
            [v13 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v15), v8}];
            point = v37;
            if (CGPointMakeWithDictionaryRepresentation([v13 objectForKeyedSubscript:v9], &point))
            {
              horizontalSensorBinningFactor2 = [configuration horizontalSensorBinningFactor];
              point.x = point.x / horizontalSensorBinningFactor2;
              verticalSensorBinningFactor = [configuration verticalSensorBinningFactor];
              point.y = point.y / verticalSensorBinningFactor;
              DictionaryRepresentation = CGPointCreateDictionaryRepresentation(point);
              [v13 setObject:DictionaryRepresentation forKeyedSubscript:v9];
            }

            [v39 setObject:-[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:]([BWSensorConfiguration alloc] forKeyedSubscript:{"initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:", v11, objc_msgSend(v12, "sensorIDString"), objc_msgSend(v12, "sensorIDDictionary"), v13), v11}];
          }

          v7 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
        }

        while (v7);
      }

      [configuration setSensorConfigurationsByPortType:v39];
      v4 = v35;
    }

    if ([configuration depthDataCorrectionEnabled])
    {
      primaryFormat = [configuration primaryFormat];
      if (!primaryFormat)
      {
        [BWIntelligentDistortionCorrectionProcessorController initWithConfiguration:];
        goto LABEL_26;
      }

      v20 = primaryFormat;
      depthFormat = [configuration depthFormat];
      if (!depthFormat)
      {
        [BWIntelligentDistortionCorrectionProcessorController initWithConfiguration:];
        goto LABEL_26;
      }

      v22 = depthFormat;
      width = [v20 width];
      v24 = width >= [v20 height];
      width2 = [v22 width];
      if (v24 == width2 < [v22 height])
      {
        height = [v22 height];
        width3 = [v22 width];
      }

      else
      {
        height = [v22 width];
        width3 = [v22 height];
      }

      v28 = width3;
      v42[0] = *MEMORY[0x1E6966130];
      v43[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v22, "pixelFormat")}];
      v42[1] = *MEMORY[0x1E6966208];
      v43[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:height];
      v42[2] = *MEMORY[0x1E69660B8];
      v43[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v28];
      v42[3] = *MEMORY[0x1E69660D8];
      v29 = *MEMORY[0x1E696CFA0];
      v40[0] = *MEMORY[0x1E696CE60];
      v40[1] = v29;
      v41[0] = &unk_1F2247D40;
      v41[1] = MEMORY[0x1E695E118];
      v43[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:4];
      if ([configuration baseDepthRotationDegrees])
      {
        v31 = *MEMORY[0x1E695E480];
        if (CVPixelBufferCreate(*MEMORY[0x1E695E480], height, v28, [v22 pixelFormat], v30, &v4->_intermediateDepthInputBuffer))
        {
          [BWIntelligentDistortionCorrectionProcessorController initWithConfiguration:];
          goto LABEL_26;
        }

        if (CVPixelBufferCreate(v31, height, v28, [v22 pixelFormat], v30, &v4->_intermediateDepthOutputBuffer))
        {
          [BWIntelligentDistortionCorrectionProcessorController initWithConfiguration:];
          goto LABEL_26;
        }
      }
    }

    v4->_requestQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = [[FigStateMachine alloc] initWithLabel:@"BWIntelligentDistortionCorrectionProcessorController state machine" stateCount:4 initialState:1 owner:v4];
    [(FigStateMachine *)v32 setPerformsAtomicStateTransitions:0];
    [(FigStateMachine *)v32 setLabel:@"Idle" forState:1];
    [(FigStateMachine *)v32 setLabel:@"Ready" forState:2];
    [(FigStateMachine *)v32 setLabel:@"WaitingForFrames" forState:4];
    [(FigStateMachine *)v32 setLabel:@"ProcessIntelligentDistortionCorrection" forState:8];
    [(FigStateMachine *)v32 whenTransitioningToStates:1 callHandler:&__block_literal_global_139];
    [(FigStateMachine *)v32 whenTransitioningToStates:2 callHandler:&__block_literal_global_530];
    [(FigStateMachine *)v32 whenTransitioningToState:4 callHandler:&__block_literal_global_532];
    [(FigStateMachine *)v32 whenTransitioningToState:8 callHandler:&__block_literal_global_534];
    v4->_stateMachine = v32;
    v4->_outputFormatDescriptionByAttachedMediaKey = objc_alloc_init(MEMORY[0x1E695DF90]);
    v33 = objc_autoreleasePoolPush();
    LODWORD(v32) = [(BWIntelligentDistortionCorrectionProcessorController *)v4 _loadSetupAndPrepareProcessor];
    objc_autoreleasePoolPop(v33);
    if (v32)
    {
LABEL_26:

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  [(FigIntelligentDistortionCorrectionProcessor *)self->_processor finishProcessing];
  [(BWIntelligentDistortionCorrectionProcessorController *)&self->super.super.isa _resetProcessor];

  outputImageFormatDescription = self->_outputImageFormatDescription;
  if (outputImageFormatDescription)
  {
    CFRelease(outputImageFormatDescription);
  }

  CVPixelBufferRelease(self->_intermediateDepthInputBuffer);
  CVPixelBufferRelease(self->_intermediateDepthOutputBuffer);
  v4.receiver = self;
  v4.super_class = BWIntelligentDistortionCorrectionProcessorController;
  [(BWStillImageProcessorController *)&v4 dealloc];
}

- (void)inputReceivedNewInputData:(id)data
{
  [(BWIntelligentDistortionCorrectionProcessorRequest *)self->_currentRequest input];

  [(BWIntelligentDistortionCorrectionProcessorController *)&self->super.super.isa _updateStateIfNeeded];
}

+ (BOOL)idcSupportedForCaptureType:(int)type captureFlags:(unint64_t)flags
{
  v4 = (flags & 0x100000080) == 128;
  if (type != 1)
  {
    v4 = 0;
  }

  return (type - 10) < 4 || v4;
}

- (id)_process
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  configuration = [result configuration];
  input = [v1[14] input];
  settings = [input settings];
  v502[0] = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  image = [input image];
  v383 = dictionary;
  if (!image)
  {
    pixelBuffer = 0;
    v366 = 0;
    v9 = 4294954516;
    process = 0x7FFFFFFF;
    v463 = 0x7FFFFFFF;
    correctionType = 0x7FFFFFFF;
    makernoteEntry = 0;

LABEL_211:
    v214 = -10000;
    v340 = v502[0];
LABEL_215:
    CMSetAttachment(v340, @"IntelligentDistortionCorrectionMakernoteEntry", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{makernoteEntry, v350, v353}], 1u);
    if (process == 0x7FFFFFFF)
    {
      v341 = v214;
    }

    else
    {
      v341 = process;
    }

    CMSetAttachment(v340, @"IntelligentDistortionCorrectionStatusCode", [MEMORY[0x1E696AD98] numberWithInt:v341], 1u);
    v7 = v340;
    if (v463 != 0x7FFFFFFF)
    {
      CMSetAttachment(v340, @"IntelligentDistortionCorrectionGainMapProcessingStatusCode", [MEMORY[0x1E696AD98] numberWithInt:?], 1u);
    }

    if (correctionType != 0x7FFFFFFF)
    {
      CMSetAttachment(v340, @"IntelligentDistortionCorrectionCorrectionType", [MEMORY[0x1E696AD98] numberWithUnsignedInt:?], 1u);
    }

    dictionary = v383;
    goto LABEL_223;
  }

  v7 = image;
  ImageBuffer = CMSampleBufferGetImageBuffer(image);
  v9 = ImageBuffer;
  if (!ImageBuffer)
  {
    v366 = 0;
    pixelBuffer = 0;
    v214 = -10000;
    correctionType = 0x7FFFFFFF;
    makernoteEntry = 0;
    v463 = 0x7FFFFFFF;
    v340 = v7;
    process = 0x7FFFFFFF;
    goto LABEL_215;
  }

  Width = CVPixelBufferGetWidth(ImageBuffer);
  v11 = v9;
  v12 = Width;
  v414 = v11;
  Height = CVPixelBufferGetHeight(v11);
  v14 = [MEMORY[0x1E695DFA8] set];
  [v14 addObject:?];
  rect2_16 = [objc_msgSend(objc_msgSend(input "stillImageSettings")];
  if ((rect2_16 & 4) != 0 && ([v14 addObject:0x1F21AAE10], (v15 = objc_msgSend(objc_msgSend(configuration, "providedInferenceAttachedMediaByMode"), "objectForKeyedSubscript:", &unk_1F2247D58)) != 0))
  {
    v365 = v15;
    [v14 addObjectsFromArray:v15];
  }

  else
  {
    v365 = 0;
  }

  if ([configuration depthDataCorrectionEnabled])
  {
    [v14 addObject:@"Depth"];
    v16 = [objc_msgSend(configuration "providedInferenceAttachedMediaByMode")];
    if (v16)
    {
      [v14 addObjectsFromArray:v16];
    }
  }

  [v14 addObject:?];
  v362 = [objc_msgSend(configuration "providedInferenceAttachedMediaByMode")];
  if (v362)
  {
    [v14 addObjectsFromArray:v362];
  }

  v458 = configuration;
  if ([settings constantColorEnabled])
  {
    [v14 addObject:0x1F21AB170];
  }

  v435 = v12;
  v439 = Height;
  v407 = v12 | (Height << 32);
  v409 = input;
  v441 = [objc_msgSend(v1[14] "delegate")];
  v498 = 0u;
  v499 = 0u;
  v500 = 0u;
  v501 = 0u;
  v17 = [v14 countByEnumeratingWithState:&v498 objects:v497 count:16];
  v450 = v7;
  obj = v14;
  if (v17)
  {
    v18 = v17;
    v19 = *v499;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v499 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v498 + 1) + 8 * i);
        AttachedMedia = BWSampleBufferGetAttachedMedia(v7, v21);
        if (AttachedMedia)
        {
          v23 = AttachedMedia;
          [dictionary setObject:AttachedMedia forKeyedSubscript:v21];
LABEL_32:
          [dictionary2 setObject:CMSampleBufferGetImageBuffer(v23) forKeyedSubscript:v21];
          continue;
        }

        v24 = [v441 inferenceBufferForAttachedMediaKey:v21];
        if (v24)
        {
          v25 = v24;
          v26 = [v441 metadataForAttachedMediaKey:v21];
          v27 = [v1[11] objectForKeyedSubscript:v21];
          if (v27)
          {
            v27 = CFRetain(v27);
          }

          cf[0] = v27;
          v29 = BWMetadataAttachmentKeyForAttachedMediaKey(v21, v28);
          v30 = [objc_msgSend(v441 "inferenceAttachedMediaMetadata")];
          v31 = 0;
          if (v29 && v30)
          {
            v495 = v29;
            v496 = v30;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v496 forKeys:&v495 count:{1, 0}];
          }

          v7 = v450;
          BWSampleBufferSetAttachedMediaFromPixelBuffer(v450, v21, v25, cf, v26, v31, 1);
          [v1[11] setObject:cf[0] forKeyedSubscript:v21];
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          dictionary = v383;
        }

        v23 = BWSampleBufferGetAttachedMedia(v7, v21);
        [dictionary setObject:v23 forKeyedSubscript:v21];
        if (v23)
        {
          goto LABEL_32;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v498 objects:v497 count:16];
    }

    while (v18);
  }

  key = *off_1E798A3C8;
  v32 = CMGetAttachment(v7, *off_1E798A3C8, 0);
  v361 = [objc_msgSend(settings "bravoConstituentImageDeliveryDeviceTypes")];
  if (v361)
  {
    v33 = 1.0;
    FinalCropRect = 0.0;
    v35 = 0.0;
    v36 = 1.0;
  }

  else
  {
    FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect(v32);
    v35 = v37;
    v33 = v38;
    v36 = v39;
  }

  input = v409;
  v380 = v32;
  rect2 = FigCaptureMetadataUtilitiesGetValidBufferRect(v32);
  r2 = v40;
  v378 = v42;
  v379 = v41;
  processGeometricDistortionCorrection = [v409 processGeometricDistortionCorrection];
  processIntelligentDistortionCorrection = [v409 processIntelligentDistortionCorrection];
  replicatePixelsOutsideOfFinalImageDimensions = [v458 replicatePixelsOutsideOfFinalImageDimensions];
  v44 = [v441 inferenceBufferForAttachedMediaKey:0x1F219E750];
  v437 = [v441 inferenceForAttachmentKey:0x1F219E5F0];
  v408 = v44;
  if (!processIntelligentDistortionCorrection)
  {
    v433 = 0;
    v49 = v380;
    v45 = v439;
    goto LABEL_59;
  }

  v45 = v439;
  if (!v44)
  {
    v494 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v47 = v494;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v48 = v47;
    }

    else
    {
      v48 = v47 & 0xFFFFFFFE;
    }

    if (v48)
    {
      *v469 = 136315138;
      *&v469[4] = "[BWIntelligentDistortionCorrectionProcessorController _process]";
      LODWORD(v353) = 12;
      v350 = v469;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v437)
  {
    v494 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v51 = v494;
    if (os_log_type_enabled(v50, type))
    {
      v52 = v51;
    }

    else
    {
      v52 = v51 & 0xFFFFFFFE;
    }

    if (v52)
    {
      *v469 = 136315138;
      *&v469[4] = "[BWIntelligentDistortionCorrectionProcessorController _process]";
      LODWORD(v353) = 12;
      v350 = v469;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(v1[8] objectForKeyedSubscript:{objc_msgSend(v409, "portType", v350, v353)), "floatValue"}];
  v54 = v53;
  if (v53 <= 1.0)
  {
    v433 = 1;
    v49 = v380;
LABEL_59:
    v56 = [objc_msgSend(v409 "captureSettings")];
    v354 = *off_1E798A698;
    v57 = [objc_msgSend(v49 "objectForKeyedSubscript:"intValue"")];
    if (v57)
    {
      v58 = processGeometricDistortionCorrection;
    }

    else
    {
      v58 = 0;
    }

    if (v58 == 1)
    {
      v342 = v57;
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      v494 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v344 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v345 = v494;
      if (os_log_type_enabled(v344, type))
      {
        v346 = v345;
      }

      else
      {
        v346 = v345 & 0xFFFFFFFE;
      }

      if (v346)
      {
        v347 = BWPhotoEncoderStringFromEncodingScheme(v342);
        *v469 = 136315394;
        *&v469[4] = "[BWIntelligentDistortionCorrectionProcessorController _process]";
        *&v469[12] = 2112;
        *&v469[14] = v347;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v348 = BWPhotoEncoderStringFromEncodingScheme(v342);
      LODWORD(cf[0]) = 138412290;
      *(cf + 4) = v348;
      v349 = _os_log_send_and_compose_impl();
      v353 = 0;
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v349, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWIntelligentDistortionCorrectionProcessorController.m", 738, @"LastShownDate:BWIntelligentDistortionCorrectionProcessorController.m:738", @"LastShownBuild:BWIntelligentDistortionCorrectionProcessorController.m:738", 0);
      free(v349);
      makernoteEntry = 0;
      v366 = 0;
      pixelBuffer = 0;
      goto LABEL_243;
    }

    if ([v409 imageBufferType] == 38)
    {
      v59 = 38;
    }

    else
    {
      v59 = 1;
    }

    v60 = [objc_msgSend(v1[14] "delegate")];
    if (!v60)
    {
      makernoteEntry = 0;
      v366 = 0;
      pixelBuffer = 0;
      v214 = -10001;
LABEL_244:
      correctionType = 0x7FFFFFFF;
      v463 = 0x7FFFFFFF;
      process = 0x7FFFFFFF;
      goto LABEL_214;
    }

    v61 = v60;
    pixelBuffer = v60;
    if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(v7, v60, v1 + 10, v502))
    {
      makernoteEntry = 0;
      v366 = 0;
LABEL_243:
      v214 = -10000;
      goto LABEL_244;
    }

    v366 = [v380 mutableCopy];
    CMSetAttachment(v502[0], key, v366, 1u);
    v394 = CVPixelBufferGetWidth(v61);
    v392 = CVPixelBufferGetHeight(v61);
    v416 = v56;
    if ([v409 imageBufferType] == 38)
    {
      v62 = v458;
      stereoPhotoOutputDimensions = [v458 stereoPhotoOutputDimensions];
      outputHeight = HIDWORD(stereoPhotoOutputDimensions);
    }

    else
    {
      v62 = v458;
      if ([v458 intelligentDistortionCorrectionAppliesFinalDimensions])
      {
        outputWidth = [settings outputWidth];
        outputHeight = [settings outputHeight];
        if (CVPixelBufferGetWidth(v61) < outputWidth || CVPixelBufferGetHeight(v61) < outputHeight)
        {
LABEL_242:
          makernoteEntry = 0;
          goto LABEL_243;
        }

        LODWORD(stereoPhotoOutputDimensions) = outputWidth;
      }

      else
      {
        v65 = CVPixelBufferGetWidth(v61);
        v66 = CVPixelBufferGetHeight(pixelBuffer);
        FigCaptureMakeRectWithAspectRatioInsideDimensions(v65 | (v66 << 32), 1, [settings outputWidth] / objc_msgSend(settings, "outputHeight"));
        LODWORD(stereoPhotoOutputDimensions) = v67;
        outputHeight = v68;
      }
    }

    outputWidth2 = [settings outputWidth];
    v70 = outputWidth2 / [settings outputHeight];
    geometricDistortionCorrectionExpandedImageDimensions = [v62 geometricDistortionCorrectionExpandedImageDimensions];
    if (geometricDistortionCorrectionExpandedImageDimensions < 1 || SHIDWORD(geometricDistortionCorrectionExpandedImageDimensions) < 1)
    {
      v72.n128_f64[0] = FinalCropRect;
      v73.n128_u64[0] = v33;
      v74.n128_u64[0] = v36;
      v75.n128_f64[0] = v70;
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v435, v45, v72, v35, v73, v74, v75, v76);
      x = v505.origin.x;
      y = v505.origin.y;
      v88 = v505.size.width;
      v89 = v505.size.height;
      if (!CGRectIsNull(v505))
      {
        v94 = y;
        goto LABEL_84;
      }

      [BWIntelligentDistortionCorrectionProcessorController _process];
    }

    else
    {
      geometricDistortionCorrectionExpandedImageDimensions2 = [v62 geometricDistortionCorrectionExpandedImageDimensions];
      v78 = [v62 geometricDistortionCorrectionExpandedImageDimensions] >> 32;
      geometricDistortionCorrectionExpandedImageDimensions3 = [v62 geometricDistortionCorrectionExpandedImageDimensions];
      geometricDistortionCorrectionExpandedImageDimensions4 = [v62 geometricDistortionCorrectionExpandedImageDimensions];
      v81.n128_f64[0] = FinalCropRect;
      v82.n128_u64[0] = v33;
      v83.n128_u64[0] = v36;
      v84.n128_f64[0] = v70;
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(geometricDistortionCorrectionExpandedImageDimensions3, HIDWORD(geometricDistortionCorrectionExpandedImageDimensions4), v81, v35, v82, v83, v84, v85);
      v86 = v504.origin.x;
      v87 = v504.origin.y;
      v88 = v504.size.width;
      v89 = v504.size.height;
      if (!CGRectIsNull(v504))
      {
        x = v86 + ((v435 - geometricDistortionCorrectionExpandedImageDimensions2) / 2);
        v91 = v87 + ((v45 - v78) / 2);
        if (!processGeometricDistortionCorrection || ([v62 geometricDistortionCorrectionInputCropOffset], v93 == *MEMORY[0x1E695EFF8]) && v92 == *(MEMORY[0x1E695EFF8] + 8))
        {
          v94 = v87 + ((v45 - v78) / 2);
        }

        else
        {
          [v62 geometricDistortionCorrectionInputCropOffset];
          v421 = x + v156;
          [v62 geometricDistortionCorrectionInputCropOffset];
          rect2_24 = v91 + v157;
          FigCaptureMetadataUtilitiesNormalizeCropRect(v421, v91 + v157, v88, v89, v435, v45);
          v159 = v158;
          v161 = v160;
          v163 = v162;
          v165 = v164;
          v431 = v88;
          v166 = FigCaptureUnityRect();
          FigCaptureMetadataUtilitiesNormalizedRectEnforcedWithinValidRegionAfterGDC(v159, v161, v163, v165, v166, v167, v168, v169, [objc_msgSend(objc_msgSend(v62 "sensorConfigurationsByPortType")], v380, v407);
          v170.n128_f64[0] = v70;
          FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v435, v45, v171, v172, v173, v174, v170, v175);
          v176 = v511.origin.x;
          v177 = v511.origin.y;
          v178 = v511.size.width;
          v179 = v511.size.height;
          if (CGRectIsNull(v511))
          {
            v94 = rect2_24;
            v88 = v431;
            x = v421;
          }

          else
          {
            v513.origin.x = v176;
            v513.origin.y = v177;
            v513.size.width = v178;
            v513.size.height = v179;
            x = v421;
            v518.origin.x = v421;
            v518.origin.y = rect2_24;
            v94 = rect2_24;
            v88 = v431;
            v518.size.width = v431;
            v518.size.height = v89;
            if (!CGRectEqualToRect(v513, v518))
            {
              v89 = v179;
              v88 = v178;
              v94 = v177;
              x = v176;
            }
          }
        }

LABEL_84:
        v403 = [objc_msgSend(v409 "captureSettings")];
        if ((v403 & 0x200000000) != 0)
        {
          v459 = *(MEMORY[0x1E695F058] + 16);
          v462 = *MEMORY[0x1E695F058];
          *cf = *MEMORY[0x1E695F058];
          v492 = v459;
          v419 = 1.0;
          v424 = 1.0;
          v96 = v94;
          if (FigCFDictionaryGetCGRectIfPresent())
          {
            v97 = CVPixelBufferGetWidth(v414);
            v98 = *&v492;
            v424 = v97 / v98;
            v99 = CVPixelBufferGetHeight(v414);
            v100 = *(&v492 + 1);
            v419 = v99 / v100;
          }

          *v469 = v462;
          *&v469[16] = v459;
          if (FigCFDictionaryGetCGRectIfPresent())
          {
            v101 = vsub_f32(0, vcvt_f32_f64(*v469));
            v397 = v424 * v101.f32[0];
            v405 = *&v101;
            v398 = vmuls_lane_f32(v419, v101, 1);
          }

          else
          {
            v405 = 0.0;
            v398 = 0.0;
            v397 = 0.0;
          }
        }

        else
        {
          v405 = 0.0;
          v419 = 1.0;
          v398 = 0.0;
          v397 = 0.0;
          v424 = 1.0;
          v96 = v94;
        }

        v446 = outputHeight;
        v490 = 0u;
        v489 = 0u;
        v488 = 0u;
        v487 = 0u;
        v102 = [dictionary2 countByEnumeratingWithState:&v487 objects:v486 count:16];
        if (v102)
        {
          v103 = v102;
          v104 = *v488;
          v463 = 0x7FFFFFFF;
          do
          {
            for (j = 0; j != v103; ++j)
            {
              if (*v488 != v104)
              {
                objc_enumerationMutation(dictionary2);
              }

              v106 = *(*(&v487 + 1) + 8 * j);
              if ((objc_msgSend_isEqualToString_(v106) & 1) == 0)
              {
                cf[0] = 0;
                delegate = [v1[14] delegate];
                v109 = [delegate processorController:v1 newOutputPixelBufferForProcessorInput:v409 type:BWStillImageBufferTypeForAttachedMediaKey(v106 attachedMediaKey:{v108), v106}];
                if (v109)
                {
                  v110 = v109;
                  v111 = [v1[11] objectForKeyedSubscript:v106];
                  if (v111)
                  {
                    v111 = CFRetain(v111);
                  }

                  *v469 = v111;
                  if (!BWCMSampleBufferCreateCopyWithNewPixelBuffer([v383 objectForKeyedSubscript:v106], v110, v469, cf))
                  {
                    BWCMSampleBufferCopyReattachAndReturnMutableMetadata(cf[0]);
                    [v1[11] setObject:*v469 forKeyedSubscript:v106];
                    [dictionary3 setObject:cf[0] forKeyedSubscript:v106];
                    [dictionary4 setObject:v110 forKeyedSubscript:v106];
                    if (cf[0])
                    {
                      CFRelease(cf[0]);
                    }
                  }

                  CVPixelBufferRelease(v110);
                  if (*v469)
                  {
                    CFRelease(*v469);
                  }
                }

                if (!cf[0])
                {
                  if (objc_msgSend_isEqualToString_(v106))
                  {
                    v112 = -10001;
                  }

                  else
                  {
                    v112 = v463;
                  }

                  v463 = v112;
                }
              }
            }

            v103 = [dictionary2 countByEnumeratingWithState:&v487 objects:v486 count:16];
          }

          while (v103);
        }

        else
        {
          v463 = 0x7FFFFFFF;
        }

        v460 = dictionary2;
        v457 = v1;
        string = [MEMORY[0x1E696AD60] string];
        v482 = 0u;
        v483 = 0u;
        v484 = 0u;
        v485 = 0u;
        v114 = [obj countByEnumeratingWithState:&v482 objects:v481 count:16];
        if (v114)
        {
          v115 = v114;
          v116 = *v483;
          do
          {
            for (k = 0; k != v115; ++k)
            {
              if (*v483 != v116)
              {
                objc_enumerationMutation(obj);
              }

              [string appendFormat:@"%@:%d, ", objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v482 + 1) + 8 * k), "stringByReplacingOccurrencesOfString:withString:", @"PersonSemantics", &stru_1F216A3D0), "stringByReplacingOccurrencesOfString:withString:", @"LowResPerson", &stru_1F216A3D0), "lowercaseString"), objc_msgSend(v460, "objectForKeyedSubscript:", *(*(&v482 + 1) + 8 * k)) != 0];
            }

            v115 = [obj countByEnumeratingWithState:&v482 objects:v481 count:16];
          }

          while (v115);
        }

        v417 = v416 & 0x2000;
        v118 = v408;
        input = v409;
        if (dword_1EB58E320)
        {
          v494 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v119 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v120 = v494;
          if (os_log_type_enabled(v119, type))
          {
            v121 = v120;
          }

          else
          {
            v121 = v120 & 0xFFFFFFFE;
          }

          if (v121)
          {
            applyZoom = [v409 applyZoom];
            v123 = [v437 count];
            v124 = BWStringFromCGRect(x, v96, v88, v89);
            v125 = BWStringFromCGRect(rect2, r2, v379, v378);
            *v469 = 136318722;
            *&v469[4] = "[BWIntelligentDistortionCorrectionProcessorController _process]";
            *&v469[12] = 1026;
            *&v469[14] = processGeometricDistortionCorrection;
            *&v469[18] = 1026;
            *&v469[20] = v433;
            *&v469[24] = 1026;
            *&v469[26] = applyZoom;
            *&v469[30] = 1026;
            *&v469[32] = 1;
            *v470 = 1026;
            *&v470[2] = v408 != 0;
            *v471 = 2114;
            *&v471[2] = string;
            LOWORD(v472) = 2050;
            *(&v472 + 2) = v123;
            v118 = v408;
            WORD5(v472) = 1026;
            HIDWORD(v472) = v417 >> 13;
            *v473 = 2114;
            *&v473[2] = v124;
            input = v409;
            v474 = 2114;
            *v475 = v125;
            *&v475[8] = 1026;
            *v476 = 1;
            *&v476[4] = 1026;
            *&v476[6] = stereoPhotoOutputDimensions;
            v477 = 1026;
            v478 = v446;
            v479 = 1026;
            v480 = replicatePixelsOutsideOfFinalImageDimensions;
            LODWORD(v353) = 112;
            v350 = v469;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v1 = v457;
        v126 = stereoPhotoOutputDimensions;
        if ([input applyZoom])
        {
          v372 = 0.0;
          rect2_8 = 0.5;
          v127 = v88;
          v128 = v89;
          v374 = 0.0;
          v376 = 0.5;
          dictionary2 = v460;
          v129 = v439;
          v130 = v446;
        }

        else
        {
          v506.origin.x = x;
          v506.origin.y = v96;
          v506.size.width = v88;
          v506.size.height = v89;
          MidX = CGRectGetMidX(v506);
          v507.origin.x = x;
          v507.origin.y = v96;
          v426 = v89;
          v429 = v88;
          v507.size.width = v88;
          v507.size.height = v89;
          MidY = CGRectGetMidY(v507);
          v133 = MidX - vcvtd_n_f64_s32(stereoPhotoOutputDimensions, 1uLL);
          v134 = MidY - vcvtd_n_f64_s32(v446, 1uLL);
          v508.origin.x = v133;
          v508.origin.y = v134;
          v508.size.width = stereoPhotoOutputDimensions;
          v508.size.height = v446;
          v516.origin.x = rect2;
          v516.origin.y = r2;
          v516.size.height = v378;
          v516.size.width = v379;
          CGRectIntersection(v508, v516);
          FigCaptureMetadataUtilitiesRoundRectToEvenCoordinates();
          x = v509.origin.x;
          v96 = v509.origin.y;
          v517.origin.x = v133;
          v127 = v509.size.width;
          v517.origin.y = v134;
          v517.size.width = stereoPhotoOutputDimensions;
          v128 = v509.size.height;
          v517.size.height = v446;
          v135 = CGRectEqualToRect(v509, v517);
          v136 = 0.5;
          v137 = 0.5;
          v129 = v439;
          if (!v135)
          {
            v137 = FigCaptureTransformPointToCoordinateSpaceOfRect(MidX, MidY, x, v96, v127);
          }

          v376 = v137;
          rect2_8 = v136;
          v126 = v127;
          v130 = v128;
          v89 = v128;
          v372 = v127 / v429;
          v374 = v128 / v426;
          v88 = v127;
          dictionary2 = v460;
        }

        [v457[9] setProcessIntelligentDistortionCorrection:v433];
        [v457[9] setProcessGeometricDistortionCorrection:processGeometricDistortionCorrection];
        v396 = (v403 >> 33) & 1;
        [v457[9] setUseDeepTransferAccommodations:v396];
        [v457[9] setApplyZoom:1];
        [v457[9] setApplyStereoRectificationHomography:{objc_msgSend(input, "applyStereoRectificationHomography")}];
        [input stereoRectificationInverseHomography];
        [v457[9] setStereoRectificationInverseHomography:?];
        [v457[9] setUseBilinearInterpolation:{objc_msgSend(input, "useBilinearInterpolation")}];
        [v457[9] setGdcForwardPolynomial:{objc_msgSend(input, "geometricDistortionCorrectionForwardPolynomial")}];
        [v457[9] setGdcInversePolynomial:{objc_msgSend(input, "geometricDistortionCorrectionInversePolynomial")}];
        [input geometricDistortionCorrectionOpticalCenterOffset];
        [v457[9] setOpticalCenterOffset:?];
        [v457[9] setUsePrecomputedPolynomialsAndOpticalCenterOffset:{objc_msgSend(input, "geometricDistortionCorrectionUsePrecomputedPolynomialsAndOpticalCenterOffset")}];
        [v457[9] setInputImage:v414];
        [v457[9] setInputImageMetadataDictionary:v380];
        [v457[9] setLowResSegmentationMask:v118];
        [v457[9] setFaceObservations:v437];
        [v457[9] setDeviceWasStationaryDuringCapture:v417 != 0];
        obja = v128;
        [v457[9] setInputImageCropRect:{x, v96, v127, v128}];
        v138 = pixelBuffer;
        [v457[9] setOutputImage:pixelBuffer];
        v447 = v130;
        v139 = v126 | (v130 << 32);
        [v457[9] setFinalImageDimensions:v139];
        [v457[9] setReplicatePixelsOutsideOfFinalImageDimensions:replicatePixelsOutsideOfFinalImageDimensions];
        [v457[9] setInputImageAppliedScalingFactors:{COERCE_DOUBLE(__PAIR64__(LODWORD(v419), LODWORD(v424)))}];
        [v457[9] setInputImageAppliedOffsets:v405];
        process = [v457[9] process];
        [v457[9] outputValidBufferRect];
        v142 = v141;
        v144 = v143;
        v404 = v145;
        v147 = v146;
        makernoteEntry = [v457[9] makernoteEntry];
        correctionType = [v457[9] correctionType];
        v430 = v88;
        if (dword_1EB58E320)
        {
          v443 = v126;
          v494 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v148 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v149 = v494;
          if (os_log_type_enabled(v148, type))
          {
            v150 = v149;
          }

          else
          {
            v150 = v149 & 0xFFFFFFFE;
          }

          if (v150)
          {
            v420 = v139;
            v151 = [objc_msgSend(input "captureSettings")];
            applyZoom2 = [input applyZoom];
            v153 = [v437 count];
            v154 = BWStringFromCGRect(x, v96, v127, obja);
            v510.origin.x = v142;
            v510.origin.y = v144;
            v510.size.width = v404;
            v510.size.height = v147;
            if (CGRectIsNull(v510))
            {
              v351 = &stru_1F216A3D0;
            }

            else
            {
              v180 = MEMORY[0x1E696AEC0];
              v351 = BWStringFromCGRect(v142, v144, v404, v147);
              v181 = v180;
              v1 = v457;
              v351 = [v181 stringWithFormat:@"outputROI:%@", v351];
            }

            *v469 = 136318466;
            *&v469[4] = "[BWIntelligentDistortionCorrectionProcessorController _process]";
            *&v469[12] = 2048;
            *&v469[14] = v151;
            *&v469[22] = 1024;
            *&v469[24] = v433;
            *&v469[28] = 1024;
            *&v469[30] = processGeometricDistortionCorrection;
            *&v469[34] = 1024;
            *v470 = applyZoom2;
            *&v470[4] = 2048;
            *v471 = v153;
            *&v471[8] = 1024;
            LODWORD(v472) = v417 >> 13;
            WORD2(v472) = 2112;
            *(&v472 + 6) = v154;
            HIWORD(v472) = 1024;
            *v473 = v443;
            *&v473[4] = 1024;
            *&v473[6] = v447;
            v474 = 1024;
            *v475 = process;
            *&v475[4] = 1024;
            *&v475[6] = makernoteEntry;
            *v476 = 2112;
            *&v476[2] = v351;
            v477 = 1024;
            v478 = correctionType;
            LODWORD(v353) = 106;
            v350 = v469;
            _os_log_send_and_compose_impl();
            dictionary2 = v460;
            input = v409;
            v129 = v439;
            v139 = v420;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v138 = pixelBuffer;
          v126 = v443;
        }

        if (process)
        {
LABEL_213:
          v214 = -10000;
LABEL_214:

          v9 = 0;
          v340 = v450;
          goto LABEL_215;
        }

        *&v422 = x;
        v182 = x;
        *&v183 = v96;
        v359 = v129;
        v360 = v435;
        FigCaptureMetadataUtilitiesNormalizeCropRect(v182, v96, v127, obja, v435, v129);
        v438 = v185;
        v440 = v184;
        v434 = v187;
        v436 = v186;
        v512.origin.x = v142;
        v188 = v144;
        v512.origin.y = v144;
        v512.size.width = v404;
        v512.size.height = v147;
        if (CGRectIsNull(v512))
        {
          v189 = v142;
          v402 = v188;
          v190 = v147;
          goto LABEL_168;
        }

        v427 = v89;
        FigCaptureMetadataUtilitiesRoundRectToMultipleOf();
        v189 = v191;
        v194 = v193;
        v196 = v195;
        v197 = v192;
        rect2_24a = *&v183;
        if (v361)
        {
          v198 = CVPixelBufferGetWidth(v138);
          v199 = v198 | (CVPixelBufferGetHeight(v138) << 32);
          v200 = v366;
          v201 = v407;
          v202 = *&v422;
          v203.n128_u64[0] = v422;
          v204.n128_u64[0] = v183;
          v205 = v127;
          v206.n128_f64[0] = v127;
          v207 = obja;
          v208 = obja;
          v209 = v199;
          v210 = v189;
          v211 = v194;
          v212 = v196;
        }

        else
        {
          v399 = v192;
          v213 = v191;
          v205 = v127;
          if (![v1[9] zoomWasApplied])
          {
            v215 = v126;
            v216 = FigCaptureGetFrameworkRadarComponent();
            v494 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v217 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v218 = v494;
            if (os_log_type_enabled(v217, type))
            {
              v219 = v218;
            }

            else
            {
              v219 = v218 & 0xFFFFFFFE;
            }

            if (v219)
            {
              *v469 = 136315138;
              *&v469[4] = "[BWIntelligentDistortionCorrectionProcessorController _process]";
              _os_log_send_and_compose_impl();
            }

            v202 = *&v422;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            LOWORD(cf[0]) = 0;
            v220 = _os_log_send_and_compose_impl();
            v353 = 0;
            FigCapturePleaseFileRadar(v216, v220, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWIntelligentDistortionCorrectionProcessorController.m", 1165, @"LastShownDate:BWIntelligentDistortionCorrectionProcessorController.m:1165", @"LastShownBuild:BWIntelligentDistortionCorrectionProcessorController.m:1165", 0);
            free(v220);
            v126 = v215;
            v197 = v399;
            v207 = obja;
            goto LABEL_167;
          }

          process = 0;
          v214 = -10000;
          if (v189 != 0.0)
          {
            goto LABEL_214;
          }

          if (v194 != 0.0)
          {
            goto LABEL_214;
          }

          process = 0;
          if (v196 != v126 || v399 != v447)
          {
            goto LABEL_214;
          }

          if (![input applyZoom])
          {
            v221 = psn_pixelBufferDimensions(v138);
            v222.n128_u64[0] = v422;
            v223.n128_u64[0] = v183;
            v224.n128_f64[0] = v127;
            v207 = obja;
            v197 = v399;
            FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v366, v407, v221, v222, v223, v224, obja, v189, v194, v196, v399);
            FigCaptureMetadataUtilitiesNormalizeCropRect(v213, v194, v196, v399, v394, v392);
            v226 = v225;
            v228 = v227;
            v231 = FigCaptureTransformNormalizedPointFromCoordinateSpaceOfNormalizedRect(v376, rect2_8, v229, v230, v225);
            v514.size.width = v226 / v372;
            v202 = *&v422;
            v514.size.height = v228 / v374;
            v205 = v127;
            v514.origin.x = v231 - v514.size.width * 0.5;
            v514.origin.y = v232 - v514.size.height * 0.5;
            v519.origin.x = 0.0;
            v519.origin.y = 0.0;
            v519.size.width = 1.0;
            v519.size.height = 1.0;
            CGRectIntersection(v514, v519);
            FigCFDictionarySetCGRect();
            goto LABEL_167;
          }

          FigCFDictionarySetCGRect();
          v205 = v127;
          FigCFDictionarySetCGRect();
          v209 = psn_pixelBufferDimensions(v138);
          v200 = v366;
          v201 = v407;
          v203.n128_u64[0] = v422;
          v204.n128_u64[0] = v183;
          v206.n128_f64[0] = v127;
          v207 = obja;
          v208 = obja;
          v189 = v213;
          v202 = *&v422;
          v210 = v189;
          v211 = v194;
          v212 = v196;
          v197 = v399;
        }

        FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v200, v201, v209, v203, v204, v206, v208, v210, v211, v212, v197);
LABEL_167:
        v402 = v194;
        v503.width = v394;
        v503.height = v392;
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v503);
        CMSetAttachment(v502[0], @"OriginalCameraIntrinsicMatrixReferenceDimensions", DictionaryRepresentation, 1u);

        v404 = v196;
        v234 = BWUpdateCameraIntrinsicsMatrixOnSampleBuffer(v502[0], @"OriginalCameraIntrinsicMatrix", 0, 0, v202, rect2_24a, v205, v207, v189, v194, v196, v197);
        v89 = v427;
        v190 = v197;
        if (!v234)
        {
LABEL_168:
          processingSettings = [objc_msgSend(input processingSettings];
          if ((rect2_16 & 4) == 0 && (processingSettings & processGeometricDistortionCorrection) != 0)
          {
            v236 = v502[0];
            [objc_msgSend(input "settings")];
            [BWIntelligentDistortionCorrectionProcessorController _getAndAttachGDCInformationToDemosaicedRawSampleBuffer:v1 inputDimensions:v236 finalImageDimensions:v407 settingsID:v139];
          }

          BWSampleBufferRemoveAttachedMedia(v502[0], 0x1F217BF50);
          if ([v1[9] globalTransformIsValid])
          {
            if (CMGetAttachment(v502[0], @"StillImageProcessingHomography", 0))
            {
              objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"BWIntelligentDistortionCorrectionProcessorController does not support merging StillImageProcessingHomography -- this support must be implemented!" userInfo:0]);
            }

            [(BWIntelligentDistortionCorrectionProcessorController *)v1 _process];
          }

          v467 = 0u;
          v468 = 0u;
          v465 = 0u;
          v466 = 0u;
          v411 = [dictionary2 countByEnumeratingWithState:&v465 objects:v464 count:16];
          if (v411)
          {
            v375 = *(MEMORY[0x1E695F050] + 8);
            v377 = *MEMORY[0x1E695F050];
            v371 = *(MEMORY[0x1E695F050] + 24);
            v373 = *(MEMORY[0x1E695F050] + 16);
            v406 = *v466;
            v393 = v392;
            v395 = v394;
            v237 = v404 / v430;
            rect2_24b = v237;
            v238 = v190 / v89;
            rect2_16a = v238;
            v239 = v379 / v360;
            v240 = v378 / v359;
            v369 = v240;
            v370 = v239;
            v241 = rect2;
            v242 = r2;
            v367 = v242;
            v368 = v241;
            v364 = v126;
            v363 = *off_1E798A788;
            r2a = v189;
            v400 = v190;
            do
            {
              v243 = 0;
              do
              {
                if (*v466 != v406)
                {
                  objc_enumerationMutation(dictionary2);
                }

                v244 = *(*(&v465 + 1) + 8 * v243);
                isEqualToString = objc_msgSend_isEqualToString_(v244);
                v246 = [dictionary2 objectForKeyedSubscript:v244];
                v247 = v246;
                if (isEqualToString)
                {
                  v315 = CVPixelBufferGetWidth(v246);
                  v316 = CVPixelBufferGetHeight(v247);
                  if ([(BWIntelligentDistortionCorrectionProcessorController *)v1 _applyExistingCorrectionToDepthPixelBuffer:v247 primaryImageDimensions:v407])
                  {
                    BWSampleBufferRemoveAttachedMedia(v502[0], v244);
                  }

                  else if ([v1[9] zoomWasApplied])
                  {
                    v515.origin.x = v189;
                    v515.origin.y = v402;
                    v515.size.width = v404;
                    v515.size.height = v190;
                    if (!CGRectIsNull(v515) && !v361)
                    {
                      v317 = BWSampleBufferGetAttachedMedia(v502[0], @"Depth");
                      v318 = CMGetAttachment(v317, key, 0);
                      FigCaptureMetadataUtilitiesDenormalizeCropRect(v440, v438, v436, v434, v315, v316);
                      objc = v319;
                      v452 = v320;
                      v322 = v321;
                      v449 = v323;
                      FigCaptureMetadataUtilitiesNormalizeCropRect(r2a, v402, v404, v190, v360, v359);
                      FigCaptureMetadataUtilitiesDenormalizeCropRect(v324, v325, v326, v327, v315, v316);
                      v329 = v328;
                      v331 = v330;
                      v445 = v332;
                      v334 = v333;
                      FigCFDictionarySetCGRect();
                      FigCFDictionarySetCGRect();
                      v335.n128_u64[0] = objc;
                      v336.n128_u64[0] = v452;
                      v337.n128_u64[0] = v322;
                      v189 = r2a;
                      v338 = v334;
                      v190 = v400;
                      FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v318, v315 | (v316 << 32), v315 | (v316 << 32), v335, v336, v337, v449, v329, v331, v445, v338);
                      FigCFDictionarySetCGRect();
                    }
                  }
                }

                else
                {
                  v248 = [dictionary4 objectForKeyedSubscript:v244];
                  v444 = [dictionary3 objectForKeyedSubscript:v244];
                  v249 = CMGetAttachment(v444, key, 0);
                  v250 = CVPixelBufferGetWidth(v247);
                  v251 = CVPixelBufferGetHeight(v247);
                  FigCaptureMetadataUtilitiesDenormalizeCropRect(v440, v438, v436, v434, v250, v251);
                  v428 = v253;
                  v432 = v252;
                  objb = v254;
                  v451 = v255;
                  v256 = CVPixelBufferGetWidth(v248);
                  v257 = CVPixelBufferGetHeight(v248);
                  FigCaptureMetadataUtilitiesNormalizeCropRect(v189, v402, v404, v190, v395, v393);
                  FigCaptureMetadataUtilitiesDenormalizeCropRect(v258, v259, v260, v261, v256, v257);
                  v263 = v262;
                  v265 = v264;
                  v448 = v266;
                  v268 = v267;
                  v269 = objc_msgSend_isEqualToString_(v244);
                  v270 = v269 | objc_msgSend_isEqualToString_(v244);
                  if (v270)
                  {
                    v423 = v257;
                    v425 = v256;
                    v275 = FigCaptureMetadataUtilitiesGetFinalCropRect(v249);
                    FigCaptureMetadataUtilitiesDenormalizeCropRect(v275, v276, v277, v278, v250, v251);
                    v280 = v279;
                    v282 = v281;
                    v284 = v283;
                    rect2a = v268;
                    v286 = v285;
                    v418 = 0.0;
                    TotalSensorCropRect = FigCaptureMetadataUtilitiesGetTotalSensorCropRect(v380);
                    v289 = v288;
                    v291 = v290;
                    v293 = v292;
                    v294 = FigCaptureMetadataUtilitiesGetTotalSensorCropRect(v249);
                    v295 = v286;
                    *&v296 = v296 / v291;
                    *&v297 = v297 / v293;
                    v298 = v379 / v291;
                    v272 = v378 / v293;
                    *&v272 = v378 / v293;
                    *&v294 = (v294 - TotalSensorCropRect) * v298;
                    v300 = r2a;
                    v271 = *&v272;
                    *&v299 = (v299 - v289) * *&v272;
                    *&v271 = v370 * *&v296;
                    *&v272 = v369 * *&v297;
                    v301 = v368 + *&v294;
                    v302 = v367 + *&v299;
                    v415 = 0;
                    v268 = rect2a;
                    v303 = v448;
                  }

                  else
                  {
                    v415 = v265;
                    v418 = v263;
                    v300 = v189;
                    v301 = 0.0;
                    LODWORD(v271) = 1.0;
                    v303 = v448;
                    v425 = v448;
                    v423 = v268;
                    LODWORD(v272) = 1.0;
                    v282 = v375;
                    v280 = v377;
                    v302 = 0.0;
                    v295 = v371;
                    v284 = v373;
                  }

                  v304 = v303 / *&objb;
                  v306 = v304 / rect2_24b;
                  *&v273 = v397 + v301;
                  *&v274 = v398 + v302;
                  if ((v396 & v270) != 0)
                  {
                    *&v273 = v301;
                    *&v274 = v302;
                  }

                  *&v352 = v306;
                  v305 = v268 / v451;
                  *(&v352 + 1) = v305 / rect2_16a;
                  v307 = [v457[9] applyExistingCorrectionToSecondaryAsset:v247 inputCrop:v407 primaryImageDimensions:v248 inputHorizontalSecondaryToPrimaryScaleFactor:v280 inputVerticalSecondaryToPrimaryScaleFactor:v282 inputHorizontalSecondaryToPrimaryShift:v284 inputVerticalSecondaryToPrimaryShift:v295 outputPixelBuffer:v271 outputHorizontalAdditionalScaleFactor:v272 outputVerticalAdditionalScaleFactor:{v273, v274, v352}];
                  v190 = v400;
                  if (!v307)
                  {
                    if ([v409 applyZoom])
                    {
                      FigCFDictionarySetCGRect();
                      FigCFDictionarySetCGRect();
                      v309.n128_u64[0] = v428;
                      v308.n128_u64[0] = v432;
                      v310.n128_u64[0] = objb;
                      FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v249, v250 | (v251 << 32), v256 | (v257 << 32), v308, v309, v310, v451, v418, *&v415, v425, v423);
                    }

                    else
                    {
                      FigCaptureMetadataUtilitiesCopyZoomRelatedMetadata(v366, v249);
                    }

                    if (v270)
                    {
                      FigCaptureMetadataUtilitiesPreventFurtherCropping(v249, v311);
                    }

                    if ([objc_msgSend(v457[14] "input")] - 3 <= 3 && ((objc_msgSend(v365, "containsObject:", v244) & 1) != 0 || objc_msgSend(v362, "containsObject:", v244)))
                    {
                      *&v312 = v364 / v256;
                      [v249 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v312), v363}];
                    }

                    BWSampleBufferSetAttachedMedia(v502[0], v244, v444);
                  }

                  v313 = objc_msgSend_isEqualToString_(v244);
                  v314 = v463;
                  if (v313)
                  {
                    v314 = v307;
                  }

                  v463 = v314;
                  v1 = v457;
                  dictionary2 = v460;
                  v189 = v300;
                }

                ++v243;
              }

              while (v411 != v243);
              v339 = [dictionary2 countByEnumeratingWithState:&v465 objects:v464 count:16];
              v411 = v339;
            }

            while (v339);
          }

          if (processGeometricDistortionCorrection)
          {
            [v366 setObject:&unk_1F2247D70 forKeyedSubscript:v354];
            [v366 setObject:0 forKeyedSubscript:*off_1E798A7A0];
          }

          process = 0;
          v9 = 0;
          input = v409;

          goto LABEL_211;
        }

        process = 0;
        goto LABEL_213;
      }

      [BWIntelligentDistortionCorrectionProcessorController _process];
    }

    goto LABEL_242;
  }

  [objc_msgSend(objc_msgSend(v409 "captureSettings")];
  v433 = v55 < v54;
  v49 = v380;
  if (v433 | processGeometricDistortionCorrection & 1)
  {
    goto LABEL_59;
  }

  v9 = 0;
  v366 = 0;
  pixelBuffer = 0;
LABEL_223:
  [objc_msgSend(v1[14] "delegate")];
  [(BWIntelligentDistortionCorrectionProcessorController *)v1 _resetProcessor];
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  if (v502[0])
  {
    CFRelease(v502[0]);
  }

  [dictionary removeAllObjects];
  [dictionary2 removeAllObjects];
  [dictionary3 removeAllObjects];
  [dictionary4 removeAllObjects];
  return [(BWIntelligentDistortionCorrectionProcessorController *)v1 _updateStateIfNeeded];
}

- (void)_loadSetupAndPrepareProcessor
{
  if (result)
  {
    v1 = result;
    configuration = [result configuration];
    intelligentDistortionCorrectionVersion = [configuration intelligentDistortionCorrectionVersion];
    intelligentDistortionCorrectionVersion2 = [configuration intelligentDistortionCorrectionVersion];
    sensorConfigurationsByPortType = [configuration sensorConfigurationsByPortType];
    metalCommandQueue = [configuration metalCommandQueue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __85__BWIntelligentDistortionCorrectionProcessorController__loadSetupAndPrepareProcessor__block_invoke;
    v20[3] = &unk_1E7991C78;
    v20[4] = v1;
    result = BWLoadCreateSetupAndPrepareMetalImageBufferProcessor(@"IntelligentDistortionCorrection", intelligentDistortionCorrectionVersion, @"Fig", @"IntelligentDistortionCorrection", intelligentDistortionCorrectionVersion2, &unk_1F22C4790, 1, sensorConfigurationsByPortType, metalCommandQueue, 0, v20, 0, v1 + 9);
    if (!result)
    {
      v14 = v1;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      sensorConfigurationsByPortType2 = [configuration sensorConfigurationsByPortType];
      v9 = [sensorConfigurationsByPortType2 countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(sensorConfigurationsByPortType2);
            }

            [dictionary setObject:objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(configuration forKeyedSubscript:{"sensorConfigurationsByPortType"), "objectForKeyedSubscript:", *(*(&v16 + 1) + 8 * i)), "sensorIDDictionary"), "objectForKeyedSubscript:", @"IntelligentDistortionCorrectionParameters", "objectForKeyedSubscript:", @"CaptureConfiguration", "objectForKeyedSubscript:", @"IDCMaxZoomScaleFactor", *(*(&v16 + 1) + 8 * i)}];
          }

          v10 = [sensorConfigurationsByPortType2 countByEnumeratingWithState:&v16 objects:v15 count:16];
        }

        while (v10);
      }

      result = [dictionary count];
      if (result)
      {
        v13 = dictionary;
        result = 0;
        v14[8] = v13;
      }
    }
  }

  return result;
}

- (id)_resetProcessor
{
  if (result)
  {
    v1 = result;
    [result[9] setProcessIntelligentDistortionCorrection:0];
    [OUTLINED_FUNCTION_2_130() setProcessGeometricDistortionCorrection:?];
    [OUTLINED_FUNCTION_2_130() setUseDeepTransferAccommodations:?];
    [OUTLINED_FUNCTION_3_116() setApplyZoom:1];
    [OUTLINED_FUNCTION_2_130() setApplyStereoRectificationHomography:?];
    [v1[9] setStereoRectificationInverseHomography:{*MEMORY[0x1E69E9B10], *(MEMORY[0x1E69E9B10] + 16), *(MEMORY[0x1E69E9B10] + 32)}];
    [OUTLINED_FUNCTION_2_130() setUseBilinearInterpolation:?];
    [OUTLINED_FUNCTION_1_136() setGdcForwardPolynomial:?];
    [OUTLINED_FUNCTION_1_136() setGdcInversePolynomial:?];
    [OUTLINED_FUNCTION_3_116() setOpticalCenterOffset:{0.0, 0.0}];
    [OUTLINED_FUNCTION_2_130() setUsePrecomputedPolynomialsAndOpticalCenterOffset:?];
    [OUTLINED_FUNCTION_1_136() setInputImage:?];
    [OUTLINED_FUNCTION_1_136() setInputImageMetadataDictionary:?];
    [OUTLINED_FUNCTION_1_136() setLowResSegmentationMask:?];
    [OUTLINED_FUNCTION_1_136() setFaceObservations:?];
    [OUTLINED_FUNCTION_2_130() setDeviceWasStationaryDuringCapture:?];
    [OUTLINED_FUNCTION_3_116() setInputImageCropRect:?];
    [OUTLINED_FUNCTION_1_136() setOutputImage:?];
    [OUTLINED_FUNCTION_1_136() setFinalImageDimensions:?];
    [OUTLINED_FUNCTION_2_130() setReplicatePixelsOutsideOfFinalImageDimensions:?];
    v2 = OUTLINED_FUNCTION_3_116();
    __asm { FMOV            V0.2S, #1.0 }

    [v2 setInputImageAppliedScalingFactors:_D0];
    [OUTLINED_FUNCTION_3_116() setInputImageAppliedOffsets:0.0];
    v8 = OUTLINED_FUNCTION_3_116();

    return [v8 resetState];
  }

  return result;
}

- (id)_updateStateIfNeeded
{
  if (result)
  {
    v1 = result;
    v2 = result[14];
    currentState = [result[12] currentState];
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

    result = [v1[12] currentState];
    if (v4 != result)
    {
      v5 = v1[12];

      return [v5 transitionToState:v4];
    }
  }

  return result;
}

- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate
{
  v5 = [[BWIntelligentDistortionCorrectionProcessorRequest alloc] initWithInput:processing delegate:delegate];
  [(NSMutableArray *)self->_requestQueue addObject:v5];

  if ([(FigStateMachine *)self->_stateMachine currentState]== 1)
  {
    [(FigStateMachine *)self->_stateMachine transitionToState:2];
  }

  return 0;
}

- (void)cancelProcessing
{
  [(NSMutableArray *)self->_requestQueue removeAllObjects];
  [(BWIntelligentDistortionCorrectionProcessorRequest *)self->_currentRequest setErr:4294950490];
  [(BWIntelligentDistortionCorrectionProcessorController *)&self->super.super.isa _serviceNextRequest];

  [(BWIntelligentDistortionCorrectionProcessorController *)&self->super.super.isa _resetProcessor];
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

    return [(BWIntelligentDistortionCorrectionProcessorController *)v1 _updateStateIfNeeded];
  }

  return result;
}

- (void)_getAndAttachGDCInformationToDemosaicedRawSampleBuffer:(id *)buffer inputDimensions:(const void *)dimensions finalImageDimensions:(unint64_t)imageDimensions settingsID:(uint64_t)d
{
  if (buffer)
  {
    configuration = [buffer configuration];
    AttachedMedia = BWSampleBufferGetAttachedMedia(dimensions, 0x1F21AAE10);
    if (AttachedMedia)
    {
      v10 = AttachedMedia;
      v11 = CMGetAttachment(AttachedMedia, @"RawDNGDictionary", 0);
      if (!v11 || (v12 = v11, v68 = 0, v66 = 0u, v67 = 0u, v64 = 0u, v65 = 0u, [buffer[9] getAdjustedGDCInformation:&v64]) || (LODWORD(v13) = v66, v60 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v13), LODWORD(v14) = DWORD1(v66), v61 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v14), LODWORD(v15) = DWORD2(v66), v62 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v15), LODWORD(v16) = HIDWORD(v66), v63 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v16), v17 = objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v60, 4), v18 = BWPixelBufferDimensionsFromSampleBuffer(v10), (v19 = BWCreateDNGDictionaryWithZoomedGDCParameters(v12, v17, v18, *&v64, *(&v64 + 1), *&v65, *(&v65 + 1), *(&v67 + 1), *&v68)) == 0))
      {
        BWSampleBufferRemoveAttachedMedia(dimensions, 0x1F21AAE10);
        return;
      }

      v59 = v19;
      CMSetAttachment(v10, @"RawDNGDictionary", v19, 1u);
      if (imageDimensions == v18 && HIDWORD(imageDimensions) == HIDWORD(v18))
      {
        v21 = llround(vabdd_f64(d, *&v65));
        v22 = llround(vabdd_f64(SHIDWORD(d), *(&v65 + 1)));
        if (v21 <= 4 && v22 <= 4)
        {
          v74.origin.x = *&v64 - (v21 / 2);
          v74.origin.y = *(&v64 + 1) - (v22 / 2);
          imageDimensionsCopy2 = imageDimensions;
          v29 = SHIDWORD(imageDimensions);
          v75.origin.x = 0.0;
          v75.origin.y = 0.0;
          v75.size.width = imageDimensions;
          v75.size.height = SHIDWORD(imageDimensions);
          v74.size.width = d;
          v74.size.height = SHIDWORD(d);
          *&v24 = CGRectIntersection(v74, v75);
        }

        else
        {
          FigCaptureMetadataUtilitiesRoundRectToMultipleOf();
          imageDimensionsCopy2 = imageDimensions;
          v29 = SHIDWORD(imageDimensions);
        }

        FigCaptureMetadataUtilitiesNormalizeCropRect(v24, v25, v26, v27, imageDimensionsCopy2, v29);
        v30 = [MEMORY[0x1E695DF70] arrayWithObject:0x1F21AAE10];
        v31 = [objc_msgSend(configuration "providedInferenceAttachedMediaByMode")];
        v32 = [v31 count];
        if (v32)
        {
          v32 = [v30 addObjectsFromArray:v31];
        }

        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v40 = OUTLINED_FUNCTION_5_92(v32, v33, v34, v35, v36, v37, v38, v39, v57, v59, v60, v61, v62, v63, v64, *(&v64 + 1), v65, *(&v65 + 1), v66, *(&v66 + 1), v67, *(&v67 + 1), v68, v69);
        if (v40)
        {
          v41 = v40;
          v42 = *v71;
          v43 = *off_1E798A3C8;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v71 != v42)
              {
                objc_enumerationMutation(v30);
              }

              v45 = *(*(&v70 + 1) + 8 * i);
              v46 = BWSampleBufferGetAttachedMedia(dimensions, v45);
              if (v46)
              {
                v54 = v46;
                v55 = [CMGetAttachment(v46 v43];
                CMSetAttachment(v54, v43, v55, 1u);

                v46 = FigCFDictionarySetCGRect();
                if (v46)
                {
                  BWSampleBufferRemoveAttachedMedia(dimensions, v45);
                }
              }
            }

            v41 = OUTLINED_FUNCTION_5_92(v46, v47, v48, v49, v50, v51, v52, v53, v58, v59, v60, v61, v62, v63, v64, *(&v64 + 1), v65, *(&v65 + 1), v66, *(&v66 + 1), v67, *(&v67 + 1), v68, v69);
          }

          while (v41);
        }
      }

      v56 = v59;
    }

    else
    {
      v56 = 0;
    }
  }
}

- (uint64_t)_applyExistingCorrectionToDepthPixelBuffer:(uint64_t)buffer primaryImageDimensions:
{
  if (!self)
  {
    return 0;
  }

  v6 = [objc_msgSend(self "configuration")];
  if (!v6)
  {
    v24 = *(self + 128);
    if (!v24)
    {
      Width = CVPixelBufferGetWidth(a2);
      Height = CVPixelBufferGetHeight(a2);
      PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
      v40[0] = *MEMORY[0x1E6966130];
      v41[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
      v40[1] = *MEMORY[0x1E6966208];
      v41[1] = [MEMORY[0x1E696AD98] numberWithInt:Width];
      v40[2] = *MEMORY[0x1E69660B8];
      v41[2] = [MEMORY[0x1E696AD98] numberWithInt:Height];
      v40[3] = *MEMORY[0x1E69660D8];
      v28 = *MEMORY[0x1E696CFA0];
      v38[0] = *MEMORY[0x1E696CE60];
      v38[1] = v28;
      v39[0] = &unk_1F2247D40;
      v39[1] = MEMORY[0x1E695E118];
      v41[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:4];
      if (CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, Height, PixelFormatType, v29, (self + 128)))
      {
        goto LABEL_17;
      }

      v24 = *(self + 128);
    }

    v30 = [*(self + 72) applyExistingCorrectionToSecondaryAsset:a2 outputPixelBuffer:v24 primaryImageDimensions:buffer];
    if (v30)
    {
      v23 = v30;
      OUTLINED_FUNCTION_0_26();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v34, "<<<< BWStillImageProcessing >>>> Fig", "status == 0 ", "bail", 0, "BWIntelligentDistortionCorrectionProcessorController.m", 1521);
      return v23;
    }

    if (!BWScalePixelBuffer(*(self + 128), a2, 0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)))
    {
      return 0;
    }

LABEL_17:
    OUTLINED_FUNCTION_0_26();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 4294967281;
  }

  v7 = v6;
  v8 = FigCaptureConvertRotationAndMirroringToExifOrientation(360 - v6, 0);
  v14 = FigDepthRotateBuffer(a2, *(self + 120), v8, v9, v10, v11, v12, v13, v35);
  if (v14)
  {
    v23 = v14;
    OUTLINED_FUNCTION_0_26();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v32, "<<<< BWStillImageProcessing >>>> Fig", "status == 0 ", "bail", 0, "BWIntelligentDistortionCorrectionProcessorController.m", 1531, v36);
  }

  else
  {
    v15 = [*(self + 72) applyExistingCorrectionToSecondaryAsset:*(self + 120) outputPixelBuffer:*(self + 128) primaryImageDimensions:buffer];
    if (v15)
    {
      v23 = v15;
      OUTLINED_FUNCTION_0_26();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v33, "<<<< BWStillImageProcessing >>>> Fig", "status == 0 ", "bail", 0, "BWIntelligentDistortionCorrectionProcessorController.m", 1535, v36);
    }

    else
    {
      v16 = FigCaptureConvertRotationAndMirroringToExifOrientation(v7, 0);
      v22 = FigDepthRotateBuffer(*(self + 128), a2, v16, v17, v18, v19, v20, v21, v36);
      v23 = v22;
      if (v22)
      {
        LODWORD(v37) = v22;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", qword_1EB58E318, "<<<< BWStillImageProcessing >>>> Fig", "status == 0 ", "bail", 0, "BWIntelligentDistortionCorrectionProcessorController.m", 1540, v37);
      }
    }
  }

  return v23;
}

- (uint64_t)_prepareProcessor:(void *)processor
{
  if (!processor)
  {
    return 0;
  }

  v17 = 0;
  v5 = [objc_msgSend(processor "configuration")];
  v7 = [(BWIntelligentDistortionCorrectionProcessorController *)processor _determineWorkingBufferRequirementsWithProcessorConfig:v5 processor:v6 metalBufferSizeOut:a2, &v17];
  if (v7)
  {
    goto LABEL_10;
  }

  metalDevice = [MEMORY[0x1E6991778] metalDevice];
  if (!metalDevice)
  {
    v10 = 0;
    v11 = 4294954510;
    goto LABEL_6;
  }

  v9 = [metalDevice newBufferWithLength:v17 options:0];
  if (!v9)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v16, v17, v18, v19, v20, v21);
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E318, 0xFFFFCE0ELL, "<<<< BWStillImageProcessing >>>>", 0x6DE, v2, v13, v14, v15);
LABEL_10:
    v11 = v7;
    v10 = 0;
    goto LABEL_6;
  }

  v10 = v9;
  v11 = [a2 setSharedMetalBuffer:v9 offset:0 size:{objc_msgSend(v9, "allocatedSize")}];
LABEL_6:

  return v11;
}

- (uint64_t)_determineWorkingBufferRequirementsWithProcessorConfig:(unint64_t)config processor:(void *)processor metalBufferSizeOut:(unint64_t *)out
{
  if (result)
  {
    v9 = 0;
    result = [processor determineWorkingBufferRequirements:&v9 maximumInputImageWidth:a2 maximumInputImageHeight:HIDWORD(a2) maximumSegmentationMaskWidth:config maximumSegmentationMaskHeight:HIDWORD(config)];
    if (!result)
    {
      if (v9)
      {
        if (v9 >> 23 < 0x19)
        {
          result = 0;
          if (out)
          {
            *out = v9;
          }

          return result;
        }

        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v8 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v8, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWIntelligentDistortionCorrectionProcessorController.m", 1734, @"LastShownDate:BWIntelligentDistortionCorrectionProcessorController.m:1734", @"LastShownBuild:BWIntelligentDistortionCorrectionProcessorController.m:1734", 0);
        free(v8);
      }

      return 4294954516;
    }
  }

  return result;
}

- (void)_process
{
  [*(self + 72) globalTransform];
  v8 = BWRowMajorArrayFrom3x3Matrix(v5, v6, v7);
  CMSetAttachment(*a2, a3, v8, 1u);
}

@end