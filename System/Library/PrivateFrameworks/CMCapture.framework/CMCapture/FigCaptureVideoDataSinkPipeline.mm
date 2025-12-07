@interface FigCaptureVideoDataSinkPipeline
- (id)initWithConfiguration:(BWNodeOutput *)configuration sourceVideoOutput:(void *)output captureDevice:(void *)device graph:(uint64_t)graph name:(uint64_t)name delegate:(void *)delegate sourceStillImageOutputsByPortType:;
- (id)liveReconfigureForOutputDimensions:(id *)result stabilizationCropDimensions:(uint64_t)dimensions;
- (id)prepareForRendering;
- (uint64_t)_buildVideoDataSinkPipelineWithConfiguration:(BWNodeOutput *)configuration sourceVideoOutput:(void *)output captureDevice:(void *)device graph:(uint64_t)graph delegate:(void *)delegate sourceStillImageOutputsByPortType:;
- (uint64_t)faceTrackingVideoCaptureOutput;
- (uint64_t)filterNode;
- (uint64_t)offlineVISMotionDataCaptureOutput;
- (uint64_t)optimizedForPreview;
- (uint64_t)sourceDeviceType;
- (uint64_t)sourceID;
- (void)dealloc;
- (void)setDiscardsSampleData:(BOOL)data;
- (void)setVideoHDRImageStatisticsEnabled:(void *)result;
- (void)videoHDRImageStatisticsEnabled;
@end

@implementation FigCaptureVideoDataSinkPipeline

- (uint64_t)faceTrackingVideoCaptureOutput
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (uint64_t)offlineVISMotionDataCaptureOutput
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

- (void)dealloc
{
  backgroundBlurNode = self->_backgroundBlurNode;
  if (backgroundBlurNode)
  {
  }

  v4.receiver = self;
  v4.super_class = FigCaptureVideoDataSinkPipeline;
  [(FigCaptureRemoteQueueSinkPipeline *)&v4 dealloc];
}

- (void)setDiscardsSampleData:(BOOL)data
{
  dataCopy = data;
  if ([(BWPipelineStage *)self->_visPipelineStage queue])
  {
    v5 = !dataCopy;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && ![(FigCaptureSinkPipeline *)self discardsSampleData])
  {
    objc_initWeak(&location, self);
    queue = [(BWPipelineStage *)self->_visPipelineStage queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__FigCaptureVideoDataSinkPipeline_setDiscardsSampleData___block_invoke;
    block[3] = &unk_1E798F9C0;
    objc_copyWeak(&v11, &location);
    dispatch_async(queue, block);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v9.receiver = self;
  v9.super_class = FigCaptureVideoDataSinkPipeline;
  [(FigCaptureSinkPipeline *)&v9 setDiscardsSampleData:dataCopy];
  if (objc_msgSend_isEqualToString_([(FigCaptureSinkPipeline *)self sinkID]))
  {
    [(BWFigVideoCaptureDevice *)self->_captureDevice setDeskCamActive:dataCopy ^ 1];
  }

  else if (objc_msgSend_isEqualToString_([(FigCaptureSinkPipeline *)self sinkID]))
  {
    captureDevice = self->_captureDevice;
    if (dataCopy)
    {
      [(BWFigVideoCaptureDevice *)captureDevice setCenterStageActive:0];
      [(BWFigVideoCaptureDevice *)self->_captureDevice setManualCinematicFramingActive:0];
      isManualCinematicFramingActive = 0;
    }

    else
    {
      [(BWFigVideoCaptureDevice *)self->_captureDevice setCenterStageActive:[(BWFigVideoCaptureDevice *)captureDevice cinematicFramingEnabled]];
      [(BWFigVideoCaptureDevice *)self->_captureDevice setManualCinematicFramingActive:[(BWFigVideoCaptureDevice *)self->_captureDevice manualCinematicFramingEnabled]];
      isManualCinematicFramingActive = [(BWFigVideoCaptureDevice *)self->_captureDevice cinematicFramingEnabled]|| [(BWFigVideoCaptureDevice *)self->_captureDevice isManualCinematicFramingActive];
    }

    [(BWFigVideoCaptureDevice *)self->_captureDevice setUltraWideActive:isManualCinematicFramingActive];
  }
}

void *__57__FigCaptureVideoDataSinkPipeline_setDiscardsSampleData___block_invoke(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v2 = [(FigCaptureVISPipeline *)result[8] visNode];

    return [v2 flush];
  }

  return result;
}

- (id)initWithConfiguration:(BWNodeOutput *)configuration sourceVideoOutput:(void *)output captureDevice:(void *)device graph:(uint64_t)graph name:(uint64_t)name delegate:(void *)delegate sourceStillImageOutputsByPortType:
{
  if (!self)
  {
    return 0;
  }

  if (a2)
  {
    v15 = *(a2 + 88);
  }

  else
  {
    v15 = 0;
  }

  v20.receiver = self;
  v20.super_class = FigCaptureVideoDataSinkPipeline;
  v16 = objc_msgSendSuper2(&v20, sel_initWithGraph_name_sinkID_, device, graph, [objc_msgSend(v15 "sinkConfiguration")]);
  if (!v16)
  {
    goto LABEL_7;
  }

  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
LABEL_11:

    return 0;
  }

  *(v16 + 7) = output;
  *(v16 + 16) = [*(a2 + 64) sourceID];
  *(v16 + 34) = *(a2 + 72);
  v17 = [(FigCaptureVideoDataSinkPipeline *)v16 _buildVideoDataSinkPipelineWithConfiguration:a2 sourceVideoOutput:configuration captureDevice:output graph:device delegate:name sourceStillImageOutputsByPortType:delegate];
  if (v17)
  {
    v19 = v17;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19);
    goto LABEL_11;
  }

LABEL_7:
  [objc_msgSend(device "memoryAnalyticsPayload")];
  return v16;
}

- (uint64_t)_buildVideoDataSinkPipelineWithConfiguration:(BWNodeOutput *)configuration sourceVideoOutput:(void *)output captureDevice:(void *)device graph:(uint64_t)graph delegate:(void *)delegate sourceStillImageOutputsByPortType:
{
  configurationCopy = configuration;
  if (!result)
  {
    return result;
  }

  v11 = result;
  v430[0] = 0;
  v429 = 0;
  graphCopy = graph;
  if (a2)
  {
    v12 = *(a2 + 88);
  }

  else
  {
    v12 = 0;
  }

  v394 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.videodata", [v12 sourceConfiguration]), 13);
  deviceCopy = device;
  outputCopy = output;
  if (a2)
  {
    v13 = *(a2 + 8);
    v14 = *(a2 + 16);
    v371 = HIDWORD(v13);
    v15 = *(a2 + 88);
    v16 = *(a2 + 64);
    v17 = *(a2 + 28);
    LODWORD(v383) = *(a2 + 32);
    requiredFormat = [v16 requiredFormat];
    LODWORD(v356) = *(a2 + 24);
    v362 = v13;
    v368 = v13;
  }

  else
  {
    requiredFormat = [0 requiredFormat];
    LODWORD(v383) = 0;
    v15 = 0;
    v368 = 0;
    v371 = 0;
    v362 = 0;
    v14 = 0;
    v17 = 0;
    v16 = 0;
    LODWORD(v356) = 0;
  }

  HIDWORD(v365) = v17;
  v18 = [FigCaptureVISPipeline visPipelineIsRequiredForFigCaptureVideoStabilizationType:v17];
  v374 = v16;
  imageControlMode = [v16 imageControlMode];
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v395 = v15;
  v21 = [objc_msgSend(v15 "sinkConfiguration")];
  v22 = 0;
  if (a2 && v21 == 6)
  {
    v22 = *(a2 + 128);
  }

  if ([objc_msgSend(v15 "sinkConfiguration")] != 6)
  {
    OUTLINED_FUNCTION_8_64();
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (a2)
  {
    v23 = *(a2 + 129);
LABEL_13:
    HIDWORD(v381) = *(a2 + 48);
    v25 = *(a2 + 36);
    v26 = *(a2 + 60);
    v24 = v26 & (v25 ^ 1);
    LODWORD(v365) = v26 & v25;
    LODWORD(v359) = v23;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_8_64();
LABEL_14:
  HIDWORD(v356) = v24;
  HIDWORD(v359) = v25;
  if ([objc_msgSend(v15 "sinkConfiguration")] == 6)
  {
    if (a2)
    {
      output = configurationCopy;
      if (*(a2 + 130) == 1)
      {
        v28 = CFPreferenceNumberWithDefault;
        v29 = [[BWPocketDetectionNode alloc] initWithMetalCommandQueue:[(FigCaptureMovieFileSinkTailPipeline *)v11 _metalCommandQueueWithName:[(BWPipelineStage *)v394 priority] priority:?] clientApplicationID:*(a2 + 160)];
        if (!v29)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_123();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          return 4294954510;
        }

        v30 = v29;
        [(BWNode *)v29 setName:@"Pocket Detection"];
        v428.receiver = v11;
        v428.super_class = FigCaptureVideoDataSinkPipeline;
        if ((objc_msgSendSuper2(&v428, sel_addNode_error_, v30, &v429) & 1) == 0 || ([deviceCopy connectOutput:configurationCopy toInput:-[BWNode input](v30 pipelineStage:{"input"), v394}] & 1) == 0)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_123();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          goto LABEL_169;
        }

        output = [(BWNode *)v30 output];
        CFPreferenceNumberWithDefault = v28;
      }

      goto LABEL_22;
    }
  }

  else
  {
    output = configurationCopy;
    if (a2)
    {
LABEL_22:
      if (!v18 && (*(a2 + 168) & 1) != 0)
      {
        LODWORD(v388) = CFPreferenceNumberWithDefault;
        v31 = -[BWSmartStyleApplyNode initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:]([BWSmartStyleApplyNode alloc], "initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:", 0, *(a2 + 172), [objc_msgSend(*(a2 + 64) "requiredFormat")]);
        if (!v31)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_123();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          return 4294954510;
        }

        v32 = v31;
        LODWORD(v347) = v18;
        [(BWNode *)v31 setName:@"SmartStyle Video Data Output Apply"];
        v33 = *(a2 + 56);
        if (v33 <= FigCapturePixelFormatGetLossyCompressionLevel([v395 outputFormat]))
        {
          LossyCompressionLevel = FigCapturePixelFormatGetLossyCompressionLevel([v395 outputFormat]);
        }

        else
        {
          LossyCompressionLevel = *(a2 + 56);
        }

        [(BWSmartStyleApplyNode *)v32 setMaxLossyCompressionLevel:LossyCompressionLevel];
        v427.receiver = v11;
        v427.super_class = FigCaptureVideoDataSinkPipeline;
        if ((objc_msgSendSuper2(&v427, sel_addNode_error_, v32, &v429) & 1) == 0 || (v35 = [(BWNode *)v32 input], (OUTLINED_FUNCTION_10_57(deviceCopy, v36, v37, v35, v38, v39, v40, v41, v268, v270, v273, v276, allKeys, v282, v285, v288, v291, v294, v297, v300, v303, v306, v309, v312, v315, v318, v324, v331, v14, v338, v341, graphCopy, v347, v353, v356, v359, v362, v365, v368, v371, v374, requiredFormat, v381, configurationCopy, v383, deviceCopy, outputCopy, v388, v394) & 1) == 0))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_123();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v268);
          goto LABEL_169;
        }

        output = [(BWNode *)v32 output];
        v14 = v334;
        v18 = v347;
      }

      if (![*(a2 + 64) cinematicFramingEnabled])
      {
        goto LABEL_37;
      }

      v42 = *(a2 + 64);
      goto LABEL_32;
    }
  }

  cinematicFramingEnabled = [0 cinematicFramingEnabled];
  v42 = 0;
  output = configurationCopy;
  if ((cinematicFramingEnabled & 1) == 0)
  {
    output = configurationCopy;
    goto LABEL_38;
  }

LABEL_32:
  if ([objc_msgSend(v42 "requiredFormat")])
  {
    if (a2)
    {
      v43 = *(a2 + 64);
    }

    else
    {
      v43 = 0;
    }

    v14 = [objc_msgSend(v43 "requiredFormat")];
  }

  if (a2)
  {
LABEL_37:
    v42 = *(a2 + 64);
    goto LABEL_38;
  }

  v42 = 0;
LABEL_38:
  output3 = FigCaptureConvertDimensionsForAspectRatio(v14, [v42 outputAspectRatio]);
  v389 = output3;
  if (v22)
  {
    output3 = [objc_msgSend(objc_msgSend(outputCopy "captureStreamsByFocalLength")];
    v46 = output3;
    if (!v18)
    {
LABEL_40:
      if (imageControlMode == 4 || CFPreferenceNumberWithDefault)
      {
        v54 = output;
        v55 = imageControlMode == 4;
        horizontalSensorBinningFactor = [requiredFormat horizontalSensorBinningFactor];
        verticalSensorBinningFactor = [requiredFormat verticalSensorBinningFactor];
        [requiredFormat maxSupportedFrameRate];
        output3 = FigCaptureBuildMotionAttachmentsNode(v11, v54, horizontalSensorBinningFactor, verticalSensorBinningFactor, v394, v383, [outputCopy sensorIDDictionaryByPortType], objc_msgSend(outputCopy, "cameraInfoByPortType"), v58, objc_msgSend(outputCopy, "activePortTypes"), v55, 0, objc_msgSend(objc_msgSend(v395, "irisSinkConfiguration"), "optimizesImagesForOfflineVideoStabilization"), 1, 0, v430);
        v59 = v430[0];
        v48 = deviceCopy;
        if (v430[0])
        {
          fig_log_get_emitter();
          LODWORD(v268) = v59;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v268);
          goto LABEL_169;
        }

        output = output3;
      }

      else
      {
        v47 = v22;
        v48 = deviceCopy;
        if ((v359 | v46))
        {
          if (BWDeviceTypeIsExtensionDeviceType(*(v11 + 136)))
          {
            v348 = *MEMORY[0x1E69E9B10];
            v325 = *(MEMORY[0x1E69E9B10] + 32);
            v335 = *(MEMORY[0x1E69E9B10] + 16);
          }

          else
          {
            v104 = [*(v11 + 56) position] == 2;
            *&v106 = FigCaptureGetDeviceToCameraTransform(v104, v105);
            v348 = v106;
            v325 = v108;
            v335 = v107;
          }

          dimensions = [requiredFormat dimensions];
          if (a2)
          {
            v110 = *(a2 + 64);
          }

          else
          {
            v110 = 0;
          }

          v393 = FigCaptureConvertDimensionsForAspectRatio(dimensions, [v110 outputAspectRatio]);
          if (v46)
          {
            v111 = 2;
          }

          else
          {
            v111 = 1;
          }

          v112 = [BWSmartCropNode alloc];
          cameraInfoByPortType = [outputCopy cameraInfoByPortType];
          horizontalSensorBinningFactor2 = [requiredFormat horizontalSensorBinningFactor];
          verticalSensorBinningFactor2 = [requiredFormat verticalSensorBinningFactor];
          if (a2)
          {
            v116 = *(a2 + 56);
          }

          else
          {
            v116 = 0;
          }

          LOBYTE(v268) = 0;
          v117 = [(BWSmartCropNode *)v112 initWithOutputDimensions:v393 cameraInfoByPortType:cameraInfoByPortType horizontalSensorBinningFactor:horizontalSensorBinningFactor2 verticalSensorBinningFactor:verticalSensorBinningFactor2 maxLossyCompressionLevel:v116 cameraExtrinsicMatrix:v111 processingMode:*&v348 stillCaptureEnabled:*&v335 objectMetadataIdentifiers:*&v325 captureDevice:v268];
          v118 = v117;
          if (v46)
          {
            v119 = @"Rolling Shutter Correction";
          }

          else
          {
            v119 = @"Low Latency Stabilization";
          }

          [(BWNode *)v117 setName:v119];
          v426.receiver = v11;
          v426.super_class = FigCaptureVideoDataSinkPipeline;
          if ((OUTLINED_FUNCTION_9_69(&v426, sel_addNode_error_) & 1) == 0 || (v120 = [(BWNode *)v118 input], v48 = deviceCopy, v61 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex, (OUTLINED_FUNCTION_10_57(deviceCopy, v121, v122, v120, v123, v124, v125, v126, v268, 0, outputCopy, v276, allKeys, v282, v285, v288, v291, v294, v297, v300, v303, v306, v309, v312, v315, v318, v325, *(&v325 + 1), v335, *(&v335 + 1), v341, graphCopy, v348, *(&v348 + 1), v356, v359, v362, v365, v368, v371, v374, requiredFormat, v381, configurationCopy, output, deviceCopy, outputCopy, v393, v394) & 1) == 0))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_123();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v268);
            goto LABEL_169;
          }

          output2 = [(BWNode *)v118 output];
          output3 = v118;
          *(v11 + 104) = output3;
          if (((v359 ^ 1) & v47 & 1) == 0)
          {
            LODWORD(v334) = 0;
            v49 = v395;
            output = output2;
            goto LABEL_58;
          }

          goto LABEL_94;
        }

        if (v47)
        {
          output2 = output;
          v61 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
LABEL_94:
          cameraInfoByPortType2 = [outputCopy cameraInfoByPortType];
          v128 = [outputCopy autoImageControlMode] == 0;
          [-[NSDictionary objectForKeyedSubscript:](-[FigCaptureCameraParameters previewStabilizationParameters](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters "sharedInstance")];
          v130 = v129;
          v131 = [BWPreviewStabilizationNode alloc];
          LODWORD(v132) = v130;
          v133 = [(BWPreviewStabilizationNode *)v131 initWithCameraInfoByPortType:cameraInfoByPortType2 forStillImagePreview:v128 updateFinalCropRectWithStabilizationShift:1 minimumSupportedUIZoomFactor:v132];
          if (v133)
          {
            v134 = v133;
            [(BWNode *)v133 setName:@"Preview Stabilization"];
            v425.receiver = v11;
            v425.super_class = FigCaptureVideoDataSinkPipeline;
            v49 = v395;
            if ((OUTLINED_FUNCTION_9_69(&v425, sel_addNode_error_) & 1) == 0 || ([v48 connectOutput:output2 toInput:-[BWNode input](v134 pipelineStage:{"input"), v394}] & 1) == 0)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_123();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v268);
              goto LABEL_169;
            }

            output3 = [(BWNode *)v134 output];
            output = output3;
            LODWORD(v334) = 1;
            goto LABEL_58;
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_123();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          return 4294954510;
        }
      }

      LODWORD(v334) = 0;
      v49 = v395;
      v61 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
      goto LABEL_58;
    }
  }

  else
  {
    v46 = 0;
    if (!v18)
    {
      goto LABEL_40;
    }
  }

  v49 = v395;
  IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw([v395 outputFormat]);
  *(v11 + 72) = [BWPipelineStage pipelineStageWithName:FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.videodata-stabilization" priority:v374), 13];
  *v411 = 0;
  source = [v374 source];
  v52 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v52)
  {
    v48 = deviceCopy;
    v52(source, @"AttributesDictionary", *MEMORY[0x1E695E480], v411);
    v53 = *v411;
  }

  else
  {
    v53 = 0;
    v48 = deviceCopy;
  }

  v62 = [objc_msgSend(v53 objectForKeyedSubscript:{@"HEVC", "BOOLValue"}];

  v63 = [FigCaptureVISPipeline alloc];
  if (a2)
  {
    v64 = *(a2 + 76);
    v65 = *(a2 + 188);
    v66 = *(a2 + 56);
    v67 = *(a2 + 61);
    v68 = *(a2 + 168);
    v69 = *(a2 + 40);
  }

  else
  {
    v68 = 0;
    v66 = 0;
    v64 = 0;
    v65 = 0;
    v67 = 0;
    v69 = 0;
  }

  v70 = [FigCaptureVISPipeline initWithUpstreamOutput:v63 graph:output name:v48 parentPipeline:0.0 videoCaptureConnectionConfiguration:@"Video Data Sink VIS Pipeline" pipelineStage:v11 sdofPipelineStage:v395 videoStabilizationType:*(v11 + 72) motionAttachmentsSource:0 fillExtendedRowsOfOutputBuffer:HIDWORD(v365) overCaptureEnabled:v383 stereoMode:v62 videoStabilizationOverscanOverride:0 videoStabilizationStrength:0 motionMetadataPreloadingEnabled:0 visExecutionMode:IsPackedBayerRaw pipelineTraceID:90 captureDevice:outputCopy outputDimensions:v64 generatedTransformsOutputDimensionsOverride:v65 P3ToBT2020ConversionEnabled:BYTE4(v381) & 1 stabilizeDepthAttachments:0 outputDepthDimensions:v66 maxLossyCompressionLevel:v67 & 1 videoSTFEnabled:0 videoGreenGhostMitigationEnabled:0 lightSourceMaskAndKeypointDescriptorDataEnabled:0 videoGreenGhostOfflineMetadataEnabled:0 videoGreenGhostOfflineLightSourceMaskEnabled:0 personSegmentationRenderingEnabled:v68 & 1 smartStyleRenderingEnabled:0 smartStyleReversibilityEnabled:0 lowResImageUsedByVideoEncoderEnabled:v69 portTypesWithGeometricDistortionCorrectionInVISEnabled:0 visProcessingSemaphore:?];
  *(v11 + 64) = v70;
  v61 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
  if (!v70)
  {
    goto LABEL_183;
  }

  [-[FigCaptureVISPipeline motionAttachmentsNode](v70) setAdjustsValidBufferRectForDarkShade:1];
  output = [-[FigCaptureVISPipeline visNode](*(v11 + 64)) output];
  output3 = [-[FigCaptureVISPipeline visNode](*(v11 + 64)) outputDimensions];
  v389 = output3;
  LODWORD(v334) = 0;
LABEL_58:
  IsRunningInMacCatalystEnvironment = BWCaptureIsRunningInMacCatalystEnvironment(output3, v45);
  v378 = v11;
  if (!a2)
  {
    output5 = output;
    if ((IsRunningInMacCatalystEnvironment & 1) == 0)
    {
      [OUTLINED_FUNCTION_13_46(56 v268];
    }

LABEL_167:
    v49 = v395;
    goto LABEL_119;
  }

  LODWORD(v347) = *(a2 + 149);
  if ((IsRunningInMacCatalystEnvironment & 1) == 0)
  {
    cameraInfoByPortType3 = [OUTLINED_FUNCTION_3_114() cameraInfoByPortType];
    v73 = cameraInfoByPortType3;
    if (*(a2 + 140) == 1)
    {
      v324 = cameraInfoByPortType3;
      outputWidth = [v49 outputWidth];
      outputHeight = [v49 outputHeight];
      *v411 = 0;
      source2 = [v374 source];
      v77 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v77)
      {
        v77(source2, @"OverheadCameraMode", *MEMORY[0x1E695E480], v411);
      }

      v78 = *v411;
      v383 = output;
      v390 = outputHeight;
      v79 = outputWidth;
      if (*v411)
      {
        intValue = [*v411 intValue];
      }

      else
      {
        intValue = *(a2 + 144);
      }

      v98 = [BWDeskCamNode alloc];
      v99 = [objc_msgSend(v374 "requiredFormat")];
      [objc_msgSend(v374 "requiredFormat")];
      v100 = *(a2 + 56);
      v101 = [objc_msgSend(OUTLINED_FUNCTION_3_114() "captureStream")];
      LOBYTE(allKeys) = v347;
      v276 = *(v11 + v61[190]);
      LODWORD(v273) = intValue;
      v270 = v101;
      LODWORD(v268) = v100;
      v389 = v79 | (v390 << 32);
      v102 = [BWDeskCamNode initWithOutputDimensions:v98 cameraInfoByPortType:"initWithOutputDimensions:cameraInfoByPortType:horizontalSensorBinningFactor:verticalSensorBinningFactor:stillImageCaptureEnabled:objectMetadataIdentifiers:maxLossyCompressionLevel:portType:overheadCameraMode:captureDevice:downStreamRequires10BitPixelFormat:" horizontalSensorBinningFactor:? verticalSensorBinningFactor:? stillImageCaptureEnabled:? objectMetadataIdentifiers:? maxLossyCompressionLevel:? portType:? overheadCameraMode:? captureDevice:? downStreamRequires10BitPixelFormat:?];
      [OUTLINED_FUNCTION_2_128() applicationID];
      [OUTLINED_FUNCTION_17() setClientApplicationID:?];
      v424.receiver = v11;
      v424.super_class = FigCaptureVideoDataSinkPipeline;
      if (OUTLINED_FUNCTION_9_69(&v424, sel_addNode_error_))
      {
        if ([v99 videoCaptureInput])
        {
          v48 = deviceCopy;
          if ([deviceCopy connectOutput:v383 toInput:objc_msgSend(v99 pipelineStage:{"videoCaptureInput"), v394}])
          {
            if ([v99 videoCaptureOutput])
            {
              output = [v99 videoCaptureOutput];
              [outputCopy deskViewCameraZoomFactor];
              [v99 setDeskViewCameraZoomFactor:v103];
              v49 = v395;
              goto LABEL_114;
            }
          }
        }
      }

LABEL_183:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_123();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v268);
      goto LABEL_169;
    }

    if (*(a2 + 131) != 1)
    {
      goto LABEL_114;
    }

    v384 = output;
    outputWidth2 = [v49 outputWidth];
    v81 = v49;
    outputHeight2 = [v49 outputHeight];
    v319 = [objc_msgSend(OUTLINED_FUNCTION_3_114() "captureStream")];
    v83 = v319 != 0;
    [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_3_114() "captureStream")];
    v85 = v84;
    v86 = v84 > 0.0;
    v326 = v73;
    v87 = [BWSubjectSelectionNode alloc];
    v88 = [objc_msgSend(v374 "requiredFormat")];
    v89 = [objc_msgSend(v374 "requiredFormat")];
    deviceOrientationCorrectionEnabled = [v81 deviceOrientationCorrectionEnabled];
    v268 = [objc_msgSend(OUTLINED_FUNCTION_13_46(v61[190] v268];
    v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v268 count:1];
    LOBYTE(v271) = *(a2 + 142);
    HIDWORD(v268) = *(a2 + 136);
    BYTE1(v268) = v86;
    LOBYTE(v268) = v83;
    v92 = [BWSubjectSelectionNode initWithOutputDimensions:v87 cameraInfoByPortType:"initWithOutputDimensions:cameraInfoByPortType:horizontalSensorBinningFactor:verticalSensorBinningFactor:deviceOrientationCorrectionEnabled:portTypes:cameraHasDistortionCoefficients:cameraHasCalibrationValidMaxRadius:centerStageFramingMode:gazeSelectionEnabled:" horizontalSensorBinningFactor:outputWidth2 | (outputHeight2 << 32) verticalSensorBinningFactor:v327 deviceOrientationCorrectionEnabled:v88 portTypes:v89 cameraHasDistortionCoefficients:deviceOrientationCorrectionEnabled cameraHasCalibrationValidMaxRadius:v91 centerStageFramingMode:? gazeSelectionEnabled:?];
    v422.receiver = v379;
    v422.super_class = FigCaptureVideoDataSinkPipeline;
    if ((objc_msgSendSuper2(&v422, sel_addNode_error_, v92, &v429) & 1) == 0)
    {
      goto LABEL_183;
    }

    [(BWSubjectSelectionNode *)v92 videoCaptureInputsByPortType];
    [objc_msgSend(OUTLINED_FUNCTION_2_128() "captureStream")];
    if (![OUTLINED_FUNCTION_17() objectForKeyedSubscript:?])
    {
      goto LABEL_183;
    }

    [(BWSubjectSelectionNode *)v92 videoCaptureInputsByPortType];
    [objc_msgSend(OUTLINED_FUNCTION_2_128() "captureStream")];
    if (([deviceCopy connectOutput:v384 toInput:objc_msgSend(OUTLINED_FUNCTION_17() pipelineStage:{"objectForKeyedSubscript:"), v394}] & 1) == 0)
    {
      goto LABEL_183;
    }

    [(BWSubjectSelectionNode *)v92 videoCaptureOutputsByPortType];
    [objc_msgSend(OUTLINED_FUNCTION_2_128() "captureStream")];
    if (![OUTLINED_FUNCTION_17() objectForKeyedSubscript:?])
    {
      goto LABEL_183;
    }

    [(BWSubjectSelectionNode *)v92 videoCaptureOutputsByPortType];
    [objc_msgSend(OUTLINED_FUNCTION_2_128() "captureStream")];
    v307 = [OUTLINED_FUNCTION_17() objectForKeyedSubscript:?];
    [OUTLINED_FUNCTION_3_114() setSubjectSelectionDelegate:v92];
    v93 = OUTLINED_FUNCTION_3_114();
    LODWORD(v94) = 1.0;
    [v93 setZoomFactor:v94];
    outputWidth3 = [v395 outputWidth];
    outputHeight3 = [v395 outputHeight];
    v421 = 0;
    source3 = [v375 source];
    v96 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v96)
    {
      v96(source3, @"AttributesDictionary", *MEMORY[0x1E695E480], &v421);
    }

    v383 = sel_addNode_error_;
    if (v421)
    {
      v97 = [v421 objectForKeyedSubscript:@"CinematicFramingVirtualCameraConfiguration"];
    }

    else
    {
      v97 = 0;
    }

    [*(a2 + 64) videoZoomFactor];
    v136 = v135;
    if (v135 < 1.0)
    {
      [objc_msgSend(v97 objectForKeyedSubscript:{@"ManualFramingDefaultZoomFactor", "floatValue"}];
      v136 = v137;
    }

    [*(a2 + 64) manualFramingPanningAngleX];
    v139 = v138;
    [*(a2 + 64) manualFramingPanningAngleY];
    v141 = v140;
    [objc_msgSend(v97 objectForKeyedSubscript:{@"ManualFramingDefaultZoomFactor", "floatValue"}];
    v143 = v142;
    v144 = [v97 objectForKeyedSubscript:@"DefaultVirtualCameraRotationAngleX"];
    v145 = [v97 objectForKeyedSubscript:@"DefaultVirtualCameraRotationAngleY"];
    v146 = [v97 objectForKeyedSubscript:@"DefaultVirtualCameraRotationAngleZ"];
    v147 = 0;
    v148 = 0;
    if (v144)
    {
      [v144 floatValue];
      v148 = v149;
    }

    if (v145)
    {
      [v145 floatValue];
      v147 = v150;
    }

    v151 = v143;
    if (v146)
    {
      [v146 floatValue];
      v153 = v152;
    }

    else
    {
      v153 = 0;
    }

    HIDWORD(v310) = v85 > 0.0;
    v154 = v320 != 0;
    v155 = *(a2 + 132);
    v156 = [objc_msgSend(v97 objectForKeyedSubscript:{@"FishEyeEffectEnabled", "BOOLValue"}];

    [OUTLINED_FUNCTION_11_57() setCenterStageRectOfInterest:{0.0, 0.0, 1.0, 1.0}];
    [OUTLINED_FUNCTION_11_57() setCinematicFramingSupported:1];
    [OUTLINED_FUNCTION_11_57() setCinematicFramingEnabled:v155];
    [OUTLINED_FUNCTION_11_57() setManualCinematicFramingEnabled:v155 ^ 1];
    v157 = [BWCinematicFramingNode alloc];
    [objc_msgSend(v375 "requiredFormat")];
    [objc_msgSend(v375 "requiredFormat")];
    [v395 deviceOrientationCorrectionEnabled];
    v158 = *(a2 + 56);
    v2682 = [OUTLINED_FUNCTION_13_46(56 v268];
    v411[0] = v155;
    v411[1] = v156;
    memset(&v411[2], 0, 22);
    __asm { FMOV            V0.2D, #1.0 }

    *&v411[24] = _Q0;
    v412 = 0;
    v413 = v136;
    v414 = v139;
    v415 = v141;
    v416 = v151;
    v417 = v148;
    v418 = v147;
    v419 = v153;
    v420 = 0;
    LOBYTE(v285) = v347;
    v282 = 1;
    *(&allKeys + 1) = BYTE4(v309);
    LOBYTE(allKeys) = v154;
    v273 = v2682;
    v276 = v411;
    LODWORD(v270) = v158;
    v11 = v378;
    v268 = 0;
    v389 = outputWidth3 | (v312 << 32);
    v165 = [BWCinematicFramingNode initWithOutputDimensions:v157 cameraInfoByPortType:"initWithOutputDimensions:cameraInfoByPortType:horizontalSensorBinningFactor:verticalSensorBinningFactor:deviceOrientationCorrectionEnabled:stillImageCaptureEnabled:objectMetadataIdentifiers:maxLossyCompressionLevel:portTypes:cinematicFramingControls:cameraHasDistortionCoefficients:cameraHasCalibrationValidMaxRadius:centerStageMetadataDeliveryEnabled:pipelineType:downStreamRequires10BitPixelFormat:" horizontalSensorBinningFactor:? verticalSensorBinningFactor:? deviceOrientationCorrectionEnabled:? stillImageCaptureEnabled:? objectMetadataIdentifiers:? maxLossyCompressionLevel:? portTypes:? cinematicFramingControls:? cameraHasDistortionCoefficients:? cameraHasCalibrationValidMaxRadius:? centerStageMetadataDeliveryEnabled:? pipelineType:? downStreamRequires10BitPixelFormat:?];
    [OUTLINED_FUNCTION_2_128() applicationID];
    [OUTLINED_FUNCTION_17() setClientApplicationID:?];
    v410.receiver = v378;
    v410.super_class = FigCaptureVideoDataSinkPipeline;
    if ((objc_msgSendSuper2(&v410, sel_addNode_error_, v155, &v429) & 1) == 0 || (v48 = deviceCopy, ![objc_msgSend(v155 "videoCaptureInputsByPortType")]) || (v49 = v395, (objc_msgSend(deviceCopy, "connectOutput:toInput:pipelineStage:", v306, objc_msgSend(objc_msgSend(v155, "videoCaptureInputsByPortType"), "objectForKeyedSubscript:", objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_3_114(), "captureStream"), "portType")), v394) & 1) == 0) || !objc_msgSend(v155, "videoCaptureOutput"))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_123();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
      goto LABEL_169;
    }

    output = [v155 videoCaptureOutput];
    [v155 setCinematicFramingControlMode:1];
    [OUTLINED_FUNCTION_3_114() setCenterStageDelegate:v155];
    [OUTLINED_FUNCTION_3_114() setManualCinematicFramingDelegate:v155];
  }

LABEL_114:
  if (*(a2 + 148) == 1)
  {
    v166 = *(a2 + 56);
    v167 = [objc_msgSend(OUTLINED_FUNCTION_3_114() "captureStream")];
    v168 = +[FigCaptureCameraParameters temporalFilterSessionConfigurationForPortType:sensorIDString:](FigCaptureCameraParameters, "temporalFilterSessionConfigurationForPortType:sensorIDString:", v167, [objc_msgSend(OUTLINED_FUNCTION_3_114() "captureStream")]);
    v169 = [[BWTemporalFilterNode alloc] initWithMaxLossyCompression:v166 filterSessionConfiguration:v168 lowLightBandingMitigationEnabled:v347];
    [v11 sinkID];
    [OUTLINED_FUNCTION_17() setName:?];
    v409.receiver = v11;
    v409.super_class = FigCaptureVideoDataSinkPipeline;
    if ((OUTLINED_FUNCTION_9_69(&v409, sel_addNode_error_) & 1) == 0 || (v170 = [v169 input], (OUTLINED_FUNCTION_10_57(v48, v171, v172, v170, v173, v174, v175, v176, v268, v270, v273, v276, allKeys, v282, v285, v288, v291, v294, v297, v300, v303, v306, v309, v312, v315, v318, v324, v331, v334, v338, v341, graphCopy, v347, v353, v356, v359, v362, v365, v368, v371, v374, v378, v381, configurationCopy, v383, deviceCopy, outputCopy, v389, v394) & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_123();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v268);
      goto LABEL_169;
    }

    output = [v169 output];
  }

  output5 = output;
  if (*(a2 + 150) == 1)
  {
    v215 = [objc_msgSend(*(a2 + 64) "requiredFormat")];
    v216 = [(FigCaptureMovieFileSinkTailPipeline *)v11 _metalCommandQueueWithName:13 priority:?];
    v217 = [BWStreamingFilterNode alloc];
    v218 = *(a2 + 56);
    v219 = *(a2 + 168);
    transform = [*(a2 + 88) transform];
    v221 = [*(a2 + 88) transform] >> 32;
    *(&v282 + 1) = 0;
    LOBYTE(v282) = v215;
    allKeys = [delegate allKeys];
    LODWORD(v276) = v221;
    BYTE4(v273) = transform & 1;
    LODWORD(v273) = 13;
    v270 = v216;
    LOBYTE(v268) = 0;
    v222 = [BWStreamingFilterNode initWithCaptureDevice:v217 maxLossyCompressionLevel:"initWithCaptureDevice:maxLossyCompressionLevel:semanticStyleRenderingEnabled:cinematicVideoEnabled:smartStyleRenderingEnabled:portraitPreviewForegroundBlurEnabled:depthFilterRenderingIsAfterPreviewStitcher:metalCommandQueue:priority:mirroredForMetadataAdjustment:rotationDegreesForMetadataAdjustment:sourceStillImageOutputPortTypes:squareAspectRatioConfigEnabled:cropDepthToPrimaryCaptureAspectRatio:disableDepthAndSegmentationRotationInLandscape:" semanticStyleRenderingEnabled:outputCopy cinematicVideoEnabled:v218 smartStyleRenderingEnabled:0 portraitPreviewForegroundBlurEnabled:1 depthFilterRenderingIsAfterPreviewStitcher:v219 metalCommandQueue:0 priority:? mirroredForMetadataAdjustment:? rotationDegreesForMetadataAdjustment:? sourceStillImageOutputPortTypes:? squareAspectRatioConfigEnabled:? cropDepthToPrimaryCaptureAspectRatio:? disableDepthAndSegmentationRotationInLandscape:?];
    v408 = [MEMORY[0x1E695F648] filterWithName:@"CIDepthEffect"];
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v408 count:1];
    [OUTLINED_FUNCTION_17() changeToFilters:? animated:?];
    [(BWStreamingFilterNode *)v222 setMetadataProcessingEnabled:1];
    LODWORD(v223) = *(a2 + 152);
    [(BWStreamingFilterNode *)v222 setSimulatedAperture:v223];
    v378[10] = v222;
    v407.receiver = v378;
    v407.super_class = FigCaptureVideoDataSinkPipeline;
    if (OUTLINED_FUNCTION_9_69(&v407, sel_addNode_error_) & 1) != 0 && ([deviceCopy connectOutput:output toInput:-[BWNode input](v222 pipelineStage:{"input"), v394}])
    {
      output4 = [(BWNode *)v222 output];
      v49 = v395;
      output5 = output4;
      if (!delegate)
      {
        goto LABEL_119;
      }

      v405 = 0u;
      v406 = 0u;
      v403 = 0u;
      v404 = 0u;
      v232 = OUTLINED_FUNCTION_14_45(output4, v225, v226, v227, v228, v229, v230, v231, v268, v216, v273, v276, allKeys, v282, v285, v288, v291, v294, v297, v300, v303, v306, v309, v312, v315, v318, v324, v331, v334, v338, v341, graphCopy, v347, v353, v356, v359, v362, v365, v368, v371, v374, v378, v381, configurationCopy, output4, deviceCopy, outputCopy, v389, v394, v395, v396.receiver, v396.super_class, v397.receiver, v397.super_class, v398.receiver, v398.super_class, v399.receiver, v399.super_class, v400.receiver, v400.super_class, v401.receiver, v401.super_class, v402);
      if (!v232)
      {
        goto LABEL_119;
      }

      v233 = v232;
      v234 = *v404;
LABEL_160:
      v235 = 0;
      while (1)
      {
        if (*v404 != v234)
        {
          objc_enumerationMutation(delegate);
        }

        v236 = *(*(&v403 + 1) + 8 * v235);
        v237 = [delegate objectForKeyedSubscript:v236];
        v238 = [objc_msgSend(v237 "connection")];
        if (!v238)
        {
          [(NSDictionary *)[(BWStreamingFilterNode *)v222 stillImageInputsByPortType] objectForKeyedSubscript:v236];
          v238 = [OUTLINED_FUNCTION_129() connectOutput:v237 toInput:? pipelineStage:?];
          if (!v238)
          {
            break;
          }
        }

        if (v233 == ++v235)
        {
          v233 = OUTLINED_FUNCTION_14_45(v238, v239, v240, v241, v242, v243, v244, v245, v268, v270, v273, v276, allKeys, v282, v285, v288, v291, v294, v297, v300, v303, v306, v309, v312, v315, v323, v330, v331, v334, v338, v341, graphCopy, v352, v353, v356, v359, v362, v365, v368, v371, v374, v378, v381, configurationCopy, output5, deviceCopy, outputCopy, v389, v394, v395, v396.receiver, v396.super_class, v397.receiver, v397.super_class, v398.receiver, v398.super_class, v399.receiver, v399.super_class, v400.receiver, v400.super_class, v401.receiver, v401.super_class, v402);
          if (v233)
          {
            goto LABEL_160;
          }

          goto LABEL_167;
        }
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_123();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v268);
    goto LABEL_169;
  }

LABEL_119:
  transform2 = [v49 transform];
  v321 = HIDWORD(transform2);
  v328 = v178;
  v179 = HIDWORD(transform2) != v371;
  v350 = transform2;
  v180 = transform2 ^ v368;
  v181 = [v49 requiresScalingForInputTransForm:v362 nodeName:{v389, @"Video Data Converter/Rotator/Scaler"}];
  v182 = (HIDWORD(v365) == 2) | v356;
  deviceOrientationCorrectionEnabled2 = [v49 deviceOrientationCorrectionEnabled];
  v184 = FigCaptureVideoAspectRatiosAreEqual(v389, [v49 nonRotatedOutputDimensions], 0.01);
  v185 = v179 | v180;
  v186 = v185 | v181;
  v187 = off_1E7989000;
  if (FigCapturePixelFormatIsPackedBayerRaw([v49 outputFormat]))
  {
    v188 = v186 | ~v182 | BYTE4(v381) | deviceOrientationCorrectionEnabled2 | !v184;
    v189 = v378;
    v190 = deviceCopy;
    v191 = outputCopy;
    if (v188)
    {
      fig_log_get_emitter();
      LODWORD(v268) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v268, v315, v273, v276, allKeys, v282, v285, v288);
      emitter = fig_log_get_emitter();
      LODWORD(result) = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE12, "<<<< FigCaptureVideoDataSinkPipeline >>>>", 0x330, v315, v193, v194, v269);
      goto LABEL_170;
    }

    goto LABEL_152;
  }

  LODWORD(v371) = !v184;
  v195 = v184 & ~(v186 | BYTE4(v381) | BYTE4(v356));
  [v49 outputFormat];
  v2683 = [OUTLINED_FUNCTION_13_46(56 v268];
  v197 = [[BWPixelTransferNode alloc] initWithfractionalSourceRectEnabled:((v337 | v361) | v2683) & 1];
  [(BWPixelTransferNode *)v197 setPassesBuffersThroughWhenPossible:v195 & 1];
  v198 = [MEMORY[0x1E696AD60] stringWithString:@"Video Data Converter"];
  v199 = v198;
  if (v185)
  {
    [v198 appendString:@"/Rotator"];
  }

  if (v181)
  {
    [v199 appendString:@"/Scaler"];
  }

  if ((v182 & 1) == 0)
  {
    [v199 appendString:@"/Zoomer"];
  }

  if ((v381 & 0x100000000) != 0)
  {
    [v199 appendString:@"/ColorConverter"];
  }

  if ((v358 & 0x100000000) == 0)
  {
    if (!deviceOrientationCorrectionEnabled2)
    {
      goto LABEL_132;
    }

LABEL_142:
    [v199 appendString:@"/DeviceOrientationCorrection"];
    if (v184)
    {
      goto LABEL_134;
    }

    goto LABEL_133;
  }

  [v199 appendString:@"/Copier"];
  if (deviceOrientationCorrectionEnabled2)
  {
    goto LABEL_142;
  }

LABEL_132:
  if (!v184)
  {
LABEL_133:
    [v199 appendString:@"/Cropper"];
  }

LABEL_134:
  [(BWNode *)v197 setName:v199];
  supportsWideColor = [outputCopy supportsWideColor];
  if (a2)
  {
    v202 = *(a2 + 52);
    v201 = *(a2 + 56);
  }

  else
  {
    v201 = 0;
    v202 = 0;
  }

  FigCaptureConfigureVideoDataConverterRotatorNode(v197, v395, v364, v389, supportsWideColor, BYTE4(v381) & 1, v201, v202);
  if (v186 & 1 | ((v182 & 1) == 0) | (HIDWORD(v381) | deviceOrientationCorrectionEnabled2) & 1 | v373 & 1)
  {
    v189 = v380;
    v187 = off_1E7989000;
    if ([v376 sourceDeviceType] == 8 && ((objc_msgSend(v376, "manualCinematicFramingEnabled") & 1) != 0 || objc_msgSend(v376, "cinematicFramingEnabled")))
    {
      [(BWPixelTransferNode *)v197 setCropMode:3];
    }

    else if (!v184)
    {
      [(BWPixelTransferNode *)v197 setCropMode:0];
      -[BWPixelTransferNode setInputCropRect:](v197, "setInputCropRect:", FigCaptureMakeRectWithAspectRatioInsideDimensions(v389, 1, [v395 nonRotatedOutputDimensions] / (objc_msgSend(v395, "nonRotatedOutputDimensions") >> 32)));
    }
  }

  else
  {
    [(BWPixelTransferNode *)v197 setCropMode:3];
    v189 = v380;
    v187 = off_1E7989000;
  }

  if (v367)
  {
    [(BWPixelTransferNode *)v197 setOutputPixelFormat:0];
  }

  v401.receiver = v189;
  v401.super_class = FigCaptureVideoDataSinkPipeline;
  v190 = deviceCopy;
  v191 = outputCopy;
  if ((objc_msgSendSuper2(&v401, sel_addNode_error_, v197, &v429) & 1) == 0 || (v189[11] = v197, [(BWNode *)v197 input], v203 = OUTLINED_FUNCTION_129(), (OUTLINED_FUNCTION_10_57(v203, v204, v205, v206, v207, v208, v209, v210, v268, v272, v275, v278, v281, v284, v287, v290, v293, v296, v299, v302, v305, v308, v311, v314, v317, v322, v329, v333, v337, v340, v343, v346, v351, v355, v358, v361, v364, v367, v370, v373, v376, v380, v381, configurationCopy, output5, deviceCopy, outputCopy, v389, v394) & 1) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_123();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v268);
    goto LABEL_169;
  }

  output5 = [(BWNode *)v197 output];
  v389 = v328;
  v368 = v350;
  v371 = v321;
  v49 = v395;
LABEL_152:
  if (a2)
  {
    v211 = *(a2 + 37);
    v212 = BYTE4(v359);
    if (*(a2 + 88))
    {
      v213 = 0;
      v214 = 1;
      goto LABEL_210;
    }
  }

  else
  {
    v211 = 0;
    v212 = BYTE4(v359);
  }

  v214 = 0;
  v213 = 1;
LABEL_210:
  v247 = (v211 & 1) + (v212 & 1u) + v214;
  if (v247 >= 2)
  {
    v248 = [[BWFanOutNode alloc] initWithFanOutCount:v247 mediaType:1986618469];
    [(BWNode *)v248 setName:@"Video Splitter"];
    v400.receiver = v189;
    v400.super_class = FigCaptureVideoDataSinkPipeline;
    if ((objc_msgSendSuper2(&v400, sel_addNode_error_, v248, &v429) & 1) == 0 || (-[BWNode input](v248, "input"), ([OUTLINED_FUNCTION_129() connectOutput:output5 toInput:? pipelineStage:?] & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_123();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v268);
      goto LABEL_169;
    }

    v249 = v190;
    v250 = v187;
    if (v213)
    {
      configurationCopy = 0;
      v251 = 0;
    }

    else
    {
      configurationCopy = [(NSArray *)[(BWNode *)v248 outputs] objectAtIndexedSubscript:0];
      v251 = 1;
    }

    if ((v359 & 0x100000000) != 0)
    {
      v189[14] = [(NSArray *)[(BWNode *)v248 outputs] objectAtIndexedSubscript:v251++];
    }

    if (v211)
    {
      v189[15] = [(NSArray *)[(BWNode *)v248 outputs] objectAtIndexedSubscript:v251];
    }

    if (v365)
    {
      v253 = [objc_alloc(v250[92]) initWithfractionalSourceRectEnabled:0];
      [v253 setName:@"Video Data Copier"];
      supportsWideColor2 = [v191 supportsWideColor];
      if (a2)
      {
        v256 = *(a2 + 52);
        v255 = *(a2 + 56);
      }

      else
      {
        v255 = 0;
        v256 = 0;
      }

      v190 = v249;
      FigCaptureConfigureVideoDataConverterRotatorNode(v253, v49, v368 | (v371 << 32), v389, supportsWideColor2, 0, v255, v256);
      v399.receiver = v189;
      v399.super_class = FigCaptureVideoDataSinkPipeline;
      if ((objc_msgSendSuper2(&v399, sel_addNode_error_, v253, &v429) & 1) == 0 || ([v253 input], (objc_msgSend(OUTLINED_FUNCTION_129(), "connectOutput:toInput:pipelineStage:", configurationCopy) & 1) == 0))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_123();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v268);
        goto LABEL_169;
      }

      [v253 output];
      v189[12] = v253;
      if (v213)
      {
        goto LABEL_245;
      }
    }

    else
    {
      v190 = v249;
      if (v213)
      {
        goto LABEL_245;
      }
    }

    goto LABEL_236;
  }

  if (v212)
  {
    v252 = 14;
    goto LABEL_219;
  }

  if (v211)
  {
    v252 = 15;
LABEL_219:
    v189[v252] = output5;
    if (v213)
    {
      goto LABEL_245;
    }

LABEL_236:
    v257 = [BWRemoteQueueSinkNode alloc];
    if (a2)
    {
      v258 = *(a2 + 112);
      *v411 = *(a2 + 96);
      *&v411[16] = v258;
    }

    else
    {
      memset(v411, 0, 32);
    }

    v259 = -[BWRemoteQueueSinkNode initWithMediaType:clientAuditToken:sinkID:cameraInfoByPortType:](v257, "initWithMediaType:clientAuditToken:sinkID:cameraInfoByPortType:", 1986618469, v411, [v189 sinkID], objc_msgSend(v191, "cameraInfoByPortTypeIncludingLSCGains:includeCameraInfoForSensorRawProcessing:", 1, 0));
    [(BWNode *)v259 setName:@"Video Data Remote Queue Sink"];
    [(BWRemoteQueueSinkNode *)v259 setDelegate:graphCopy];
    [(BWRemoteQueueSinkNode *)v259 setFrameSenderSupportEnabled:1];
    if ([objc_msgSend(v49 "videoDataSinkConfiguration")])
    {
      [v191 registerForAEMatrixMetadata];
    }

    [objc_msgSend(v49 "videoDataSinkConfiguration")];
    [OUTLINED_FUNCTION_17() setDiscardsLateSampleBuffers:?];
    [v49 retainedBufferCount];
    [OUTLINED_FUNCTION_17() setClientVideoRetainedBufferCount:?];
    -[BWRemoteQueueSinkNode setAttachPanoramaMetadata:](v259, "setAttachPanoramaMetadata:", [objc_msgSend(v49 "sourceConfiguration")] == 4);
    [v191 hasFlash];
    [OUTLINED_FUNCTION_17() setCameraSupportsFlash:?];
    -[BWRemoteQueueSinkNode setRemoveCameraIntrinsicMatrixAttachment:](v259, "setRemoveCameraIntrinsicMatrixAttachment:", [v49 cameraIntrinsicMatrixDeliveryEnabled] ^ 1);
    -[FigCaptureCameraParameters panoramaRequiresLTMLockingForPortType:sensorIDString:](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "panoramaRequiresLTMLockingForPortType:sensorIDString:", [objc_msgSend(v191 "captureStream")], objc_msgSend(objc_msgSend(v191, "captureStream"), "sensorIDString"));
    [OUTLINED_FUNCTION_17() setPanoramaRequiresLTMLocking:?];
    [objc_msgSend(v49 "videoDataSinkConfiguration")];
    [OUTLINED_FUNCTION_17() setSceneStabilityMetadataEnabled:?];
    [objc_msgSend(v49 "videoDataSinkConfiguration")];
    [OUTLINED_FUNCTION_17() setRequestedBufferAttachmentsTrie:?];
    [objc_msgSend(v49 "videoDataSinkConfiguration")];
    [OUTLINED_FUNCTION_17() setVideoHDRImageStatisticsEnabled:?];
    v398.receiver = v189;
    v398.super_class = FigCaptureVideoDataSinkPipeline;
    if (OUTLINED_FUNCTION_9_69(&v398, sel_addNode_error_))
    {
      [(BWNode *)v259 input];
      v260 = OUTLINED_FUNCTION_129();
      if (OUTLINED_FUNCTION_10_57(v260, v261, v262, v263, v264, v265, v266, v267, v268, v270, v273, v276, allKeys, v282, v285, v288, v291, v294, v297, v300, v303, v306, v309, v312, v315, v321, v328, v331, v334, v338, v341, graphCopy, v350, v353, v356, v359, v362, v365, v368, v371, v374, v378, v381, configurationCopy, output5, deviceCopy, outputCopy, v389, v394))
      {
        v397.receiver = v189;
        v397.super_class = FigCaptureVideoDataSinkPipeline;
        objc_msgSendSuper2(&v397, sel_setSinkNode_, v259);
        if ([v190 deferredNodePrepareSupported] && (objc_msgSend(objc_msgSend(v49, "sinkConfiguration"), "deferredStartEnabled") & 1) == 0)
        {
          [v190 enableDeferredPrepareForNodesNotInPathOfSinkNode:v259];
        }

        goto LABEL_245;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_123();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v268);
LABEL_169:
    LODWORD(result) = v430[0];
LABEL_170:
    if (result)
    {
      return result;
    }

    else
    {
      return 4294954516;
    }
  }

  if ((v213 & 1) == 0)
  {
    goto LABEL_236;
  }

LABEL_245:
  *(v189 + 140) = [objc_msgSend(v49 "videoDataSinkConfiguration")];
  v396.receiver = v189;
  v396.super_class = FigCaptureVideoDataSinkPipeline;
  objc_msgSendSuper2(&v396, sel_setUpstreamOutput_, configurationCopy);
  result = v430[0];
  if (!v430[0] && v429)
  {
    return [v429 code];
  }

  return result;
}

- (id)prepareForRendering
{
  if (result)
  {
    return [result[10] prepareForRenderingWithPreparedPixelBufferPool];
  }

  return result;
}

- (uint64_t)filterNode
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (void)setVideoHDRImageStatisticsEnabled:(void *)result
{
  if (result)
  {
    sinkNode = [result sinkNode];

    return [sinkNode setVideoHDRImageStatisticsEnabled:a2];
  }

  return result;
}

- (void)videoHDRImageStatisticsEnabled
{
  if (result)
  {
    sinkNode = [result sinkNode];

    return [sinkNode videoHDRImageStatisticsEnabled];
  }

  return result;
}

- (id)liveReconfigureForOutputDimensions:(id *)result stabilizationCropDimensions:(uint64_t)dimensions
{
  if (result)
  {
    v3 = result;
    [result[13] setOutputDimensions:?];
    [(FigCaptureVISPipeline *)v3[8] liveReconfigureForOutputDimensions:dimensions];
    dimensionsCopy = dimensions;
    [v3[11] setOutputWidth:dimensions];
    v5 = dimensions >> 32;
    [v3[11] setOutputHeight:v5];
    [v3[12] setOutputWidth:dimensionsCopy];
    v6 = v3[12];

    return [v6 setOutputHeight:v5];
  }

  return result;
}

- (uint64_t)sourceID
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

- (uint64_t)sourceDeviceType
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

- (uint64_t)optimizedForPreview
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 140));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

@end