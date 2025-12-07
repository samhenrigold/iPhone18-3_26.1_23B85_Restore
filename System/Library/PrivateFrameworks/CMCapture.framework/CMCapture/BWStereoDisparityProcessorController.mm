@interface BWStereoDisparityProcessorController
- (BWStereoDisparityProcessorController)initWithConfiguration:(id)configuration;
- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out;
- (int)prepare;
- (int)process;
- (int)processDisparityInferenceWithReferenceBuffer:(__CVBuffer *)buffer auxBuffer:(__CVBuffer *)auxBuffer outputDisparityBuffer:(__CVBuffer *)disparityBuffer;
- (uint64_t)_loadFSDNetForReferencePortType:(const char *)type auxiliaryPortType:;
- (uint64_t)_loadSetupAndPrepareDisparityProcessorWithConfiguration:(uint64_t)result;
- (void)dealloc;
- (void)inputReceivedNewInputData:(id)data;
- (void)reset;
@end

@implementation BWStereoDisparityProcessorController

- (BWStereoDisparityProcessorController)initWithConfiguration:(id)configuration
{
  v18.receiver = self;
  v18.super_class = BWStereoDisparityProcessorController;
  v4 = [(BWStillImageProcessorController *)&v18 initWithName:@"StereoDisparity" type:8 configuration:configuration];
  if (v4)
  {
    if (![objc_msgSend(configuration "sensorConfigurationsByPortType")] || objc_msgSend(configuration, "stillImageDepthDataType") != 2 && objc_msgSend(configuration, "stillImageDepthDataType") != 8)
    {
      goto LABEL_12;
    }

    if ([+[FigCaptureCameraParameters disparityVersion]>= 5 sharedInstance]
    {
      sensorConfigurationsByPortType = [configuration sensorConfigurationsByPortType];
      v6 = *off_1E798A0D0;
      v7 = [sensorConfigurationsByPortType objectForKeyedSubscript:*off_1E798A0D0];
      v8 = *off_1E798A0C0;
      if (v7 && [sensorConfigurationsByPortType objectForKeyedSubscript:*off_1E798A0C0])
      {
        p_isa = &v4->super.super.isa;
        v15 = v8;
        v16 = v6;
      }

      else
      {
        if (![sensorConfigurationsByPortType objectForKeyedSubscript:v8] || (v9 = *off_1E798A0D8, !objc_msgSend(sensorConfigurationsByPortType, "objectForKeyedSubscript:", *off_1E798A0D8)))
        {
          FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          [sensorConfigurationsByPortType allKeys];
          v12 = _os_log_send_and_compose_impl();
          FigCapturePleaseFileRadar(FrameworkRadarComponent, v12, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStereoDisparityProcessorController.m", 257, @"LastShownDate:BWStereoDisparityProcessorController.m:257", @"LastShownBuild:BWStereoDisparityProcessorController.m:257", 0);
          free(v12);
          v13 = 4294954516;
LABEL_11:
          [BWStereoDisparityProcessorController initWithConfiguration:v13];
LABEL_12:

          return 0;
        }

        p_isa = &v4->super.super.isa;
        v15 = v9;
        v16 = v8;
      }

      v13 = [(BWStereoDisparityProcessorController *)p_isa _loadFSDNetForReferencePortType:v15 auxiliaryPortType:v16];
      if (v13)
      {
        goto LABEL_11;
      }
    }

    if (![(BWStereoDisparityProcessorController *)v4 _loadSetupAndPrepareDisparityProcessorWithConfiguration:configuration])
    {
      return v4;
    }

    goto LABEL_12;
  }

  return v4;
}

- (void)dealloc
{
  [-[FigDisparityGenerator metalContext](self->_disparityProcessor "metalContext")];
  [(BWStereoDisparityProcessorController *)self reset];

  refFormatDescription = self->_refFormatDescription;
  if (refFormatDescription)
  {
    CFRelease(refFormatDescription);
  }

  auxFormatDescription = self->_auxFormatDescription;
  if (auxFormatDescription)
  {
    CFRelease(auxFormatDescription);
  }

  disparityFormatDescription = self->_disparityFormatDescription;
  if (disparityFormatDescription)
  {
    CFRelease(disparityFormatDescription);
  }

  v6.receiver = self;
  v6.super_class = BWStereoDisparityProcessorController;
  [(BWStillImageProcessorController *)&v6 dealloc];
}

- (void)inputReceivedNewInputData:(id)data
{
  [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input];

  [(BWStillImageProcessorController *)self currentRequestChanged];
}

- (void)reset
{
  [(FigDisparityGenerator *)self->_disparityProcessor setShouldComputeDisparityWhenCalibrationFails:0];
  [(FigDisparityGenerator *)self->_disparityProcessor setEqualizeTeleGainToMatchReference:0];
  [(FigDisparityGenerator *)self->_disparityProcessor setReferenceSampleBuffer:0];
  [(FigDisparityGenerator *)self->_disparityProcessor setAuxiliarySampleBuffer:0];
  [(FigDisparityGenerator *)self->_disparityProcessor setOutputShiftmap:0];
  [(FigDisparityGenerator *)self->_disparityProcessor setDisparityInferenceProcessorDelegate:0];
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  disparityProcessor = self->_disparityProcessor;
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);

  [(FigDisparityGenerator *)disparityProcessor setNormalizedReferenceCropRect:v3, v4, v6, v7];
}

- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWStereoDisparityRequest alloc] initWithInput:input delegate:delegate];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  if (out)
  {
    *out = v7;
  }

  return v6;
}

- (int)prepare
{
  input = [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input];
  if (-[FigCaptureCameraParameters disparityVersion](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "disparityVersion") < 5 || ([-[BWStillImageProcessorControllerInput expectedPortTypes](input "expectedPortTypes")] & 1) != 0)
  {
    return 0;
  }

  masterPortType = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)input captureSettings] masterPortType];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  portTypes = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)input captureSettings] portTypes];
  v8 = [(NSArray *)portTypes countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v8)
  {
    v11 = v8;
    v12 = *v16;
LABEL_10:
    v13 = 0;
    while (1)
    {
      if (*v16 != v12)
      {
        objc_enumerationMutation(portTypes);
      }

      v9 = *(*(&v15 + 1) + 8 * v13);
      if (!objc_msgSend_isEqualToString_(v9))
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [(NSArray *)portTypes countByEnumeratingWithState:&v15 objects:v14 count:16];
        if (v11)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  v10 = [(BWStereoDisparityProcessorController *)&self->super.super.isa _loadFSDNetForReferencePortType:masterPortType auxiliaryPortType:v9];
  v4 = v10;
  if (v10)
  {
    [(BWStereoDisparityProcessorController *)v10 prepare];
  }

  return v4;
}

- (int)process
{
  v122 = 0;
  sampleBufferOut = 0;
  v121 = 0;
  configuration = [(BWStillImageProcessorController *)self configuration];
  currentRequest = [(BWStillImageProcessorController *)self currentRequest];
  input = [(BWStillImageProcessorControllerRequest *)currentRequest input];
  v6 = [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)currentRequest delegate] processorController:self newOutputPixelBufferForProcessorInput:input type:2001];
  if (!v6)
  {
    [BWStereoDisparityProcessorController process];
    v23 = 4294954510;
    goto LABEL_18;
  }

  v116 = currentRequest;
  if ([(BWStillImageProcessorControllerConfiguration *)configuration stillImageDepthDataType]== 2)
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)input referenceSbuf], 0x1F21AAB10);
    v8 = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)input auxiliarySbuf], 0x1F21AAB10);
  }

  else
  {
    if ([(BWStillImageProcessorControllerConfiguration *)configuration stillImageDepthDataType]!= 8)
    {
      v23 = 4294954516;
      goto LABEL_18;
    }

    key = configuration;
    v114 = v6;
    referenceSbuf = [(BWStillImageProcessorControllerInput *)input referenceSbuf];
    v107 = input;
    auxiliarySbuf = [(BWStillImageProcessorControllerInput *)input auxiliarySbuf];
    v11 = *off_1E798A3C8;
    *v111 = referenceSbuf;
    v12 = CMGetAttachment(referenceSbuf, *off_1E798A3C8, 0);
    v13 = *off_1E798B540;
    v14 = [v12 objectForKeyedSubscript:*off_1E798B540];
    v15 = *off_1E798B7A0;
    v16 = [v12 objectForKeyedSubscript:*off_1E798B7A0];
    v17 = *off_1E798B7A8;
    [v12 setObject:v16 forKeyedSubscript:*off_1E798B7A8];
    v18 = *off_1E798B790;
    v19 = [v12 objectForKeyedSubscript:*off_1E798B790];
    v20 = *off_1E798B798;
    [v12 setObject:v19 forKeyedSubscript:*off_1E798B798];
    v109 = auxiliarySbuf;
    v21 = CMGetAttachment(auxiliarySbuf, v11, 0);
    v22 = [v21 objectForKeyedSubscript:v13];
    [v21 setObject:objc_msgSend(v21 forKeyedSubscript:{"objectForKeyedSubscript:", v15), v17}];
    [v21 setObject:objc_msgSend(v21 forKeyedSubscript:{"objectForKeyedSubscript:", v18), v20}];
    v23 = 4294954516;
    if (!v14)
    {
      v6 = v114;
      input = v107;
      goto LABEL_86;
    }

    v6 = v114;
    currentRequest = v116;
    configuration = key;
    input = v107;
    AttachedMedia = *v111;
    if (!v22)
    {
      goto LABEL_18;
    }

    v120[0] = v14;
    v120[1] = v22;
    if (![objc_msgSend(MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v120, 2)), "isEqualToSet:", -[BWStillImageProcessorControllerInput expectedPortTypes](v107, "expectedPortTypes")}])
    {
      goto LABEL_18;
    }

    v8 = v109;
  }

  v23 = 4294954516;
  if (!AttachedMedia || !v8)
  {
    goto LABEL_18;
  }

  [(FigDisparityGenerator *)self->_disparityProcessor setShouldComputeDisparityWhenCalibrationFails:[(BWStillImageProcessorControllerConfiguration *)configuration shouldComputeDisparityWhenCalibrationFails]];
  [(FigDisparityGenerator *)self->_disparityProcessor setEqualizeTeleGainToMatchReference:[(BWStillImageProcessorControllerInput *)input equalizeTeleGainToMatchReference]];
  [(FigDisparityGenerator *)self->_disparityProcessor setReferenceSampleBuffer:AttachedMedia];
  [(FigDisparityGenerator *)self->_disparityProcessor setAuxiliarySampleBuffer:v8];
  [(FigDisparityGenerator *)self->_disparityProcessor setOutputShiftmap:v6];
  [(FigDisparityGenerator *)self->_disparityProcessor setDisparityInferenceProcessorDelegate:self];
  keya = *off_1E798A3C8;
  CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0);
  v24 = *(MEMORY[0x1E695F050] + 16);
  v119.origin = *MEMORY[0x1E695F050];
  v119.size = v24;
  CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
  if (!CGRectIfPresent)
  {
    v46 = 1.0;
    [(FigDisparityGenerator *)self->_disparityProcessor setNormalizedReferenceCropRect:0.0, 0.0, 1.0, 1.0];
    v104 = 0;
    goto LABEL_28;
  }

  outputWidth = [(FigCaptureStillImageSettings *)[(BWStillImageSettings *)[(BWStillImageProcessorControllerInput *)input stillImageSettings] requestedSettings] outputWidth];
  v26 = outputWidth / [(FigCaptureStillImageSettings *)[(BWStillImageSettings *)[(BWStillImageProcessorControllerInput *)input stillImageSettings] requestedSettings] outputHeight];
  ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(ImageBuffer);
  v30 = Height;
  v31 = Height << 32;
  if (([(BWStillImageProcessorControllerConfiguration *)configuration zoomingDisparityAllowed]& 1) != 0)
  {
    v32.n128_u64[0] = *&v119.origin.x;
    v34.n128_u64[0] = *&v119.size.height;
    v33.n128_u64[0] = *&v119.size.width;
    v36.n128_u64[0] = 1.0;
    v35.n128_f64[0] = v26;
    v124.origin.x = FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia(Width, v31 >> 32, v32, v119.origin.y, v33, v34, v35, v36);
    x = v124.origin.x;
    y = v124.origin.y;
    v39 = v124.size.width;
    v40 = v124.size.height;
    if (CGRectIsNull(v124))
    {
      [BWStereoDisparityProcessorController process];
      v23 = 4294954516;
      goto LABEL_86;
    }

    FigCaptureMetadataUtilitiesNormalizeCropRect(x, y, v39, v40, Width, v30);
    v119.origin.x = v41;
    v119.origin.y = v42;
    v119.size.width = v43;
    v119.size.height = v44;
    v46 = 1.0 / v44;
    v47 = 2.5;
    if (1.0 / v44 <= 2.5)
    {
      v104 = 0;
      goto LABEL_27;
    }

    v48 = v46 / 2.5;
    v49 = FigCaptureMetadataUtilitiesScaleRect(v41, v42, v43, v44, v48, v45);
  }

  else
  {
    v56 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v31 | Width, v26);
    MidX = CGRectGetMidX(v119);
    CGRectGetMidY(v119);
    v58 = FigCaptureMetadataUtilitiesDenormalizedRectWithinBoundingDimensionsCenteredOnPoint(v31 | Width, v56, MidX);
    FigCaptureMetadataUtilitiesNormalizeCropRect(v58, v59, v60, v61, Width, v30);
    v47 = 1.0;
  }

  v119.origin.x = v49;
  v119.origin.y = v50;
  v104 = 1;
  v46 = v47;
  v119.size.width = v51;
  v119.size.height = v52;
LABEL_27:
  [(FigDisparityGenerator *)self->_disparityProcessor setNormalizedReferenceCropRect:?];
LABEL_28:
  process = [(FigDisparityGenerator *)self->_disparityProcessor process];
  if (dword_1EB58E320)
  {
    v118 = 0;
    v117 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v63 = process & 0xFFFFFFFE;
  if (process && (v63 != 2 || ![(BWStillImageProcessorControllerConfiguration *)configuration shouldComputeDisparityWhenCalibrationFails]))
  {
    v87 = [(BWStillImageProcessorControllerInput *)input referenceSbuf:v102];
    if (v87)
    {
      v87 = CFRetain(v87);
    }

    currentRequest = v116;
    sampleBufferOut = v87;
    auxiliarySbuf2 = [(BWStillImageProcessorControllerInput *)input auxiliarySbuf];
    if (auxiliarySbuf2)
    {
      auxiliarySbuf2 = CFRetain(auxiliarySbuf2);
    }

    v122 = auxiliarySbuf2;
    goto LABEL_58;
  }

  v115 = process;
  [-[FigDisparityGenerator metalContext](self->_disparityProcessor metalContext];
  shiftMapMetadata = [(FigDisparityGenerator *)self->_disparityProcessor shiftMapMetadata];
  v113 = shiftMapMetadata;
  v65 = input;
  if (shiftMapMetadata)
  {
    v66 = sdpc_depthMetadataAttachmentDictionaryFromStereoDisparityMetadata(shiftMapMetadata, [(BWStillImageProcessorControllerInput *)input referenceSbuf], 1, v63 == 2);
  }

  else
  {
    v66 = 0;
  }

  v67 = BWCMSampleBufferCreateCopyIncludingMetadata([(BWStillImageProcessorControllerInput *)v65 referenceSbuf], &sampleBufferOut);
  if (v67 || (v67 = BWCMSampleBufferCreateCopyWithNewPixelBuffer(sampleBufferOut, v6, &self->_disparityFormatDescription, &v121), v67))
  {
    v23 = v67;
    input = v65;
LABEL_86:
    currentRequest = v116;
    goto LABEL_18;
  }

  v68 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(v121);
  if (CGRectIfPresent)
  {
    v69 = v68;
    if (v66)
    {
      FigCaptureMetadataUtilitiesUpdateDepthDataMetadataForStillImageCropAndScale(v66, v119.origin.x, v119.origin.y, v119.size.width, v119.size.height, v46);
    }

    inputDimensions = [(BWStillImageProcessorControllerConfiguration *)configuration inputDimensions];
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v119.origin.x, v119.origin.y, v119.size.width, v119.size.height, inputDimensions, SHIDWORD(inputDimensions));
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    disparityOutputDimensions = [(BWStillImageProcessorControllerConfiguration *)configuration disparityOutputDimensions];
    v80.n128_u64[0] = v72;
    v81.n128_u64[0] = v74;
    v82.n128_u64[0] = v76;
    FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v69, inputDimensions, disparityOutputDimensions, v80, v81, v82, v78, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    if ((v104 & 1) == 0)
    {
      FigCaptureMetadataUtilitiesPreventFurtherCropping(v69, v83);
    }
  }

  BWSampleBufferSetAttachedMedia(sampleBufferOut, @"Depth", v121);
  if ([(FigDisparityGenerator *)self->_disparityProcessor disparityDiagnosticMetadata])
  {
    [CMGetAttachment(sampleBufferOut keya];
  }

  currentRequest = v116;
  if (v66)
  {
    if (([(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)v65 captureSettings] captureFlags]& 0x4000000000) != 0 && v63 != 2)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v110 = sdpc_depthMetadataAttachmentDictionaryFromStereoDisparityMetadata(v113, [(BWStillImageProcessorControllerInput *)v65 referenceSbuf], 1, 0);
      v95 = sdpc_depthMetadataAttachmentDictionaryFromStereoDisparityMetadata(v113, [(BWStillImageProcessorControllerInput *)v65 auxiliarySbuf], 0, 0);
      v96 = CMGetAttachment([(BWStillImageProcessorControllerInput *)v65 referenceSbuf], keya, 0);
      v97 = CMGetAttachment([(BWStillImageProcessorControllerInput *)v65 auxiliarySbuf], keya, 0);
      v98 = v6;
      v99 = *off_1E798A420;
      [v110 setObject:objc_msgSend(v96 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A420), *off_1E798A420}];
      v100 = [v97 objectForKeyedSubscript:v99];
      v101 = v99;
      v6 = v98;
      currentRequest = v116;
      [v95 setObject:v100 forKeyedSubscript:v101];
      [dictionary setObject:v110 forKeyedSubscript:@"Primary"];
      [dictionary setObject:v95 forKeyedSubscript:@"Secondary"];
      CMSetAttachment(sampleBufferOut, *off_1E798D2E8, dictionary, 1u);
    }

    CMSetAttachment(sampleBufferOut, *off_1E798D2B8, v66, 1u);
  }

  input = v65;
  emitAuxiliaryInput = [(BWStillImageProcessorControllerInput *)v65 emitAuxiliaryInput];
  process = v115;
  if (!emitAuxiliaryInput)
  {
    goto LABEL_58;
  }

  v85 = BWCMSampleBufferCreateCopyIncludingMetadata([(BWStillImageProcessorControllerInput *)input auxiliarySbuf], &v122);
  if (!v85)
  {
    v86 = sdpc_depthMetadataAttachmentDictionaryFromStereoDisparityMetadata(v113, [(BWStillImageProcessorControllerInput *)input auxiliarySbuf], 0, v63 == 2);
    if (v86)
    {
      CMSetAttachment(v122, *off_1E798D2B8, v86, 1u);
    }

LABEL_58:
    v89 = +[BWAggdDataReporter sharedInstance];
    if (process > 3)
    {
      v90 = 4294949886;
    }

    else
    {
      v90 = dword_1AD056160[process];
    }

    [(BWAggdDataReporter *)v89 reportSDOFSampleBufferProcessorProcessingStatus:v90];
LABEL_62:
    v23 = 0;
    goto LABEL_63;
  }

  v23 = v85;
LABEL_18:
  referenceSbuf2 = sampleBufferOut;
  if (!sampleBufferOut)
  {
    referenceSbuf2 = [(BWStillImageProcessorControllerInput *)input referenceSbuf];
    if (referenceSbuf2)
    {
      referenceSbuf2 = CFRetain(referenceSbuf2);
    }
  }

  sampleBufferOut = referenceSbuf2;
  v54 = v122;
  if (!v122)
  {
    auxiliarySbuf3 = [(BWStillImageProcessorControllerInput *)input auxiliarySbuf];
    if (auxiliarySbuf3)
    {
      v54 = CFRetain(auxiliarySbuf3);
    }

    else
    {
      v54 = 0;
    }

    referenceSbuf2 = sampleBufferOut;
  }

  v122 = v54;
  if (referenceSbuf2 && (v54 || ([(BWStillImageProcessorControllerInput *)input emitAuxiliaryInput]& 1) == 0))
  {
    goto LABEL_62;
  }

LABEL_63:
  CMSetAttachment(sampleBufferOut, @"NonProcessedReferenceFrame", MEMORY[0x1E695E118], 1u);
  delegate = [(BWStillImageProcessorControllerRequest *)currentRequest delegate];
  [(BWStillImageProcessorControllerDelegate *)delegate processorController:self didFinishProcessingSampleBuffer:sampleBufferOut type:20 processorInput:input err:v23];
  if ([(BWStillImageProcessorControllerInput *)input emitAuxiliaryInput])
  {
    CMSetAttachment(v122, @"NonProcessedReferenceFrame", MEMORY[0x1E695E118], 1u);
    delegate2 = [(BWStillImageProcessorControllerRequest *)currentRequest delegate];
    [(BWStillImageProcessorControllerDelegate *)delegate2 processorController:self didFinishProcessingSampleBuffer:v122 type:20 processorInput:input err:v23];
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (v122)
  {
    CFRelease(v122);
  }

  if (v121)
  {
    CFRelease(v121);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v23;
}

- (uint64_t)_loadFSDNetForReferencePortType:(const char *)type auxiliaryPortType:
{
  if (!self)
  {
    return 0;
  }

  configuration = [self configuration];
  if (![configuration inferenceScheduler] || !a2 || !type)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 4294954516;
  }

  self[10] = 0;
  v7 = -[BWInferenceEngine initWithScheduler:priority:shareIntermediateBuffer:]([BWInferenceEngine alloc], "initWithScheduler:priority:shareIntermediateBuffer:", [configuration inferenceScheduler], objc_msgSend(configuration, "figThreadPriority"), 1);
  self[9] = v7;
  if (!v7)
  {
    return 0;
  }

  v8 = [objc_msgSend(configuration "sensorConfigurationsByPortType")];
  v9 = -[FigCaptureCameraParameters fsdNetStereoImagesAlignmentForPortType:sensorIDString:](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "fsdNetStereoImagesAlignmentForPortType:sensorIDString:", [v8 portType], objc_msgSend(v8, "sensorIDString"));
  if (v9 == -1)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v50[0] = 0;
    v49 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v48 = 0;
    v29 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v29, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStereoDisparityProcessorController.m", 866, @"LastShownDate:BWStereoDisparityProcessorController.m:866", @"LastShownBuild:BWStereoDisparityProcessorController.m:866", 0);
    free(v29);
    return 4294954516;
  }

  v10 = [self[9] addInferenceOfType:108 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:{-[BWFastStereoDisparityConfiguration initWithInferenceType:fsdNetStereoImagesAlignment:disparityType:]([BWFastStereoDisparityConfiguration alloc], "initWithInferenceType:fsdNetStereoImagesAlignment:disparityType:", 108, v9, 2)}];
  if (v10)
  {
    v24 = v10;
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v28, v30, v31, v33, v35, v36, v37, v38);
    return v24;
  }

  v32 = a2;
  typeCopy = type;
  v11 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v11 setWidth:768];
  [(BWVideoFormatRequirements *)v11 setHeight:576];
  [(BWVideoFormatRequirements *)v11 setSupportedPixelFormats:&unk_1F22490A8];
  [(BWVideoFormatRequirements *)v11 setBytesPerRowAlignment:64];
  v47 = v11;
  v12 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1]);
  v13 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v13 setWidth:896];
  [(BWVideoFormatRequirements *)v13 setHeight:704];
  [(BWVideoFormatRequirements *)v13 setSupportedPixelFormats:&unk_1F22490C0];
  [(BWVideoFormatRequirements *)v13 setBytesPerRowAlignment:64];
  v46 = v13;
  v14 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1]);
  v15 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v15 setWidth:768];
  [(BWVideoFormatRequirements *)v15 setHeight:576];
  [(BWVideoFormatRequirements *)v15 setSupportedPixelFormats:&unk_1F22490D8];
  [(BWVideoFormatRequirements *)v15 setBytesPerRowAlignment:64];
  v45 = v15;
  v43[0] = 0x1F219E9F0;
  v43[1] = 0x1F219EA10;
  v44[0] = v12;
  v44[1] = v14;
  v43[2] = 0x1F219EA30;
  v44[2] = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1]);
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];
  self[14] = v16;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v39 objects:&v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v40;
LABEL_10:
    v20 = 0;
    while (1)
    {
      if (*v40 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = [self[9] prepareForInputVideoFormat:objc_msgSend(self[14] attachedMediaKey:"objectForKeyedSubscript:", *(*(&v39 + 1) + 8 * v20)), *(*(&v39 + 1) + 8 * v20)];
      if (v21)
      {
        return 0;
      }

      if (v18 == ++v20)
      {
        v18 = OUTLINED_FUNCTION_52(v21, v22, &v39, &v37);
        if (v18)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  if ([self[9] prepareForInferenceWithFormatProvider:self])
  {
    return 0;
  }

  v23 = objc_alloc(MEMORY[0x1E695DFD8]);
  v35 = v32;
  v36 = typeCopy;
  v24 = 0;
  self[10] = [v23 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v35, 2)}];
  return v24;
}

- (uint64_t)_loadSetupAndPrepareDisparityProcessorWithConfiguration:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (*(result + 64))
    {
      return 0;
    }

    v4 = +[FigCaptureCameraParameters sharedInstance];
    result = [(FigCaptureCameraParameters *)v4 stereoDisparityParameters];
    if (result)
    {
      v5 = result;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      sensorConfigurationsByPortType = [a2 sensorConfigurationsByPortType];
      v8 = [sensorConfigurationsByPortType countByEnumeratingWithState:&v35 objects:v34 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v36;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v36 != v10)
            {
              objc_enumerationMutation(sensorConfigurationsByPortType);
            }

            [dictionary setObject:objc_msgSend(objc_msgSend(objc_msgSend(a2 forKeyedSubscript:{"sensorConfigurationsByPortType"), "objectForKeyedSubscript:", *(*(&v35 + 1) + 8 * i)), "cameraInfo"), *(*(&v35 + 1) + 8 * i)}];
          }

          v9 = [sensorConfigurationsByPortType countByEnumeratingWithState:&v35 objects:v34 count:16];
        }

        while (v9);
      }

      result = [dictionary count];
      if (result)
      {
        v12 = *off_1E798A970;
        v32[0] = *off_1E798A9D0;
        v32[1] = v12;
        v33[0] = v5;
        v33[1] = dictionary;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
        if (!v13)
        {
          return 4294954510;
        }

        v14 = v13;
        disparityVersion = [(FigCaptureCameraParameters *)v4 disparityVersion];
        if (!disparityVersion)
        {
          return 4294954516;
        }

        v16 = BWLoadProcessorBundle(@"Disparity", disparityVersion);
        if (!v16)
        {
          return 4294954510;
        }

        v17 = [objc_alloc(objc_msgSend(v16 "principalClass"))];
        *(v2 + 64) = v17;
        if (!v17)
        {
          return 4294954510;
        }

        [v17 setOptions:v14];
        inputDimensions = [a2 inputDimensions];
        v19 = [a2 inputDimensions] >> 32;
        disparityOutputDimensions = [a2 disparityOutputDimensions];
        v21 = [a2 disparityOutputDimensions] >> 32;
        v22 = [a2 stillImageDepthDataType] == 8;
        v23 = *(v2 + 64);
        v24[0] = inputDimensions;
        v24[1] = v19;
        v25 = v22;
        memset(v26, 0, sizeof(v26));
        v27 = disparityOutputDimensions;
        v28 = v21;
        v29 = 1067030938;
        v30 = 0x1800000020;
        v31 = 0;
        [v23 setDisparityConfig:v24];
        result = [*(v2 + 64) prepareToProcess:0];
        if (result)
        {
          return 4294954510;
        }
      }
    }
  }

  return result;
}

- (int)processDisparityInferenceWithReferenceBuffer:(__CVBuffer *)buffer auxBuffer:(__CVBuffer *)auxBuffer outputDisparityBuffer:(__CVBuffer *)disparityBuffer
{
  v18 = 0;
  cf = 0;
  currentRequest = [(BWStillImageProcessorController *)self currentRequest];
  referenceSbuf = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] referenceSbuf];
  CMSampleBufferGetPresentationTimeStamp(&v17, referenceSbuf);
  v10 = BWSampleBufferCreateFromPixelBuffer(buffer, &v17, &self->_refFormatDescription, &cf);
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    CMSampleBufferGetPresentationTimeStamp(&v17, referenceSbuf);
    v11 = BWSampleBufferCreateFromPixelBuffer(auxBuffer, &v17, &self->_auxFormatDescription, &v18);
    if (v11 || (BWSampleBufferSetAttachedMedia(referenceSbuf, 0x1F219E9F0, cf), BWSampleBufferSetAttachedMedia(referenceSbuf, 0x1F219EA10, v18), [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)currentRequest delegate] processorControllerWillProcessInferences:self], (v11 = [(BWInferenceEngine *)self->_inferenceEngine performInferencesOnSampleBuffer:referenceSbuf attachingResultsToSampleBuffer:referenceSbuf]) != 0))
    {
      v13 = v11;
    }

    else
    {
      BWSampleBufferRemoveAttachedMedia(referenceSbuf, 0x1F219E9F0);
      BWSampleBufferRemoveAttachedMedia(referenceSbuf, 0x1F219EA10);
      AttachedMedia = BWSampleBufferGetAttachedMedia(referenceSbuf, 0x1F219EA30);
      if (AttachedMedia)
      {
        CMSampleBufferGetImageBuffer(AttachedMedia);
        v13 = CopyPixelBuffer();
        if (v13)
        {
          OUTLINED_FUNCTION_1_8();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v13, v15, v16, v17.value, v17.timescale, v17.epoch, v18, cf);
        }
      }

      else
      {
        v13 = 0;
      }
    }
  }

  BWSampleBufferRemoveAttachedMedia(referenceSbuf, 0x1F219EA30);
  BWSampleBufferRemoveAttachedMedia(referenceSbuf, 0x1F219E9F0);
  BWSampleBufferRemoveAttachedMedia(referenceSbuf, 0x1F219EA10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v13;
}

@end