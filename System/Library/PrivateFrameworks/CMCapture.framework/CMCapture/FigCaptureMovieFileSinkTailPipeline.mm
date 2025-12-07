@interface FigCaptureMovieFileSinkTailPipeline
- ($2825F4736939C4A6D3AD43837233062D)offlineVISDimensions;
- (BWNodeOutput)_appendBackPressureNodeToPreviousVideoOutput:(void *)output graph:(void *)graph parentPipeline:(uint64_t)pipeline pipelineStage:(uint64_t)stage nodeName:(void *)name backPressureNodeOut:;
- (CGRect)irisVISCleanOutputRectForCLAP;
- (FigCaptureMovieFileSinkTailPipeline)initWithConfiguration:(id)configuration tailIndex:(unint64_t)index numTailPipelines:(unint64_t)pipelines graph:(id)graph parentPipeline:(id)pipeline captureDevicesByConnectionID:(id)d inferenceScheduler:(id)scheduler recordingStatusDelegate:(id)self0 multiCamClientCompositingCallback:(id)self1 workgroup:(id)self2;
- (id)_buildFaceDetectionNode:(uint64_t)node parentPipeline:objectDetectionSourceOutput:faceDetectionNodeOut:;
- (id)_metalCommandQueueWithName:(uint64_t)name priority:;
- (id)setUpBackPressureSemaphoresWithIrisIntermediateJPEGPhotoDecompressorNode:(void *)node videoDefringingNode:;
- (unsigned)_buildMovieFileSinkTailPipeline:(unsigned __int8 *)result tailIndex:(void *)index numTailPipelines:(BWBackPressureNode *)pipelines graph:(uint64_t)graph parentPipeline:(void *)pipeline captureDevicesByConnectionID:(id *)d inferenceScheduler:(void *)scheduler recordingStatusDelegate:(uint64_t)delegate multiCamClientCompositingCallback:(uint64_t)callback workgroup:(uint64_t)self0;
- (void)dealloc;
@end

@implementation FigCaptureMovieFileSinkTailPipeline

- (FigCaptureMovieFileSinkTailPipeline)initWithConfiguration:(id)configuration tailIndex:(unint64_t)index numTailPipelines:(unint64_t)pipelines graph:(id)graph parentPipeline:(id)pipeline captureDevicesByConnectionID:(id)d inferenceScheduler:(id)scheduler recordingStatusDelegate:(id)self0 multiCamClientCompositingCallback:(id)self1 workgroup:(id)self2
{
  v22.receiver = self;
  v22.super_class = FigCaptureMovieFileSinkTailPipeline;
  v18 = -[FigCapturePipeline initWithGraph:name:](&v22, sel_initWithGraph_name_, graph, [MEMORY[0x1E696AEC0] stringWithFormat:@"Tail Pipeline %d", index]);
  v19 = v18;
  if (v18)
  {
    v21 = [FigCaptureMovieFileSinkTailPipeline _buildMovieFileSinkTailPipeline:v18 tailIndex:configuration numTailPipelines:index graph:pipelines parentPipeline:graph captureDevicesByConnectionID:pipeline inferenceScheduler:d recordingStatusDelegate:scheduler multiCamClientCompositingCallback:delegate workgroup:callback];
    if (v21)
    {
      [FigCaptureMovieFileSinkTailPipeline initWithConfiguration:v21 tailIndex:v19 numTailPipelines:? graph:? parentPipeline:? captureDevicesByConnectionID:? inferenceScheduler:? recordingStatusDelegate:? multiCamClientCompositingCallback:? workgroup:?];
      return 0;
    }
  }

  return v19;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMovieFileSinkTailPipeline;
  [(FigCapturePipeline *)&v3 dealloc];
}

- (CGRect)irisVISCleanOutputRectForCLAP
{
  visPipeline = self->_visPipeline;
  if (visPipeline)
  {
    irisVISCleanOutputRect = [(FigCaptureVISPipeline *)visPipeline irisVISCleanOutputRect];
  }

  else
  {
    irisVISCleanOutputRect = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = irisVISCleanOutputRect;
  return result;
}

- ($2825F4736939C4A6D3AD43837233062D)offlineVISDimensions
{
  if (self->_offlineVISEnabled)
  {
    videoFormat = [(BWNodeInput *)[(BWNode *)self->_videoCompressorNode input] videoFormat];
    width = [(BWVideoFormat *)videoFormat width];
    return (width | ([(BWVideoFormat *)videoFormat height]<< 32));
  }

  else
  {
    return 0;
  }
}

- (unsigned)_buildMovieFileSinkTailPipeline:(unsigned __int8 *)result tailIndex:(void *)index numTailPipelines:(BWBackPressureNode *)pipelines graph:(uint64_t)graph parentPipeline:(void *)pipeline captureDevicesByConnectionID:(id *)d inferenceScheduler:(void *)scheduler recordingStatusDelegate:(uint64_t)delegate multiCamClientCompositingCallback:(uint64_t)callback workgroup:(uint64_t)self0
{
  delegateCopy = delegate;
  if (!result)
  {
    return result;
  }

  pipelinesCopy = pipelines;
  v13 = result;
  graphCopy = graph;
  v676[0] = 0;
  v675 = 0;
  *(result + 17) = pipelines;
  movieFileSinkPipelineConfiguration = [index movieFileSinkPipelineConfiguration];
  if (movieFileSinkPipelineConfiguration)
  {
    v15 = *(movieFileSinkPipelineConfiguration + 16);
  }

  else
  {
    v15 = 0;
  }

  v16 = movieFileSinkPipelineConfiguration;
  schedulerCopy = scheduler;
  v595 = [scheduler objectForKeyedSubscript:{-[__CFString connectionID](v15, "connectionID")}];
  v628 = [v595 cameraInfoByPortTypeIncludingLSCGains:1 includeCameraInfoForSensorRawProcessing:0];
  if (v16)
  {
    HIDWORD(v559) = *(v16 + 215);
  }

  else
  {
    HIDWORD(v559) = 0;
  }

  v17 = v16;
  irisSinkConfiguration = [(__CFString *)v15 irisSinkConfiguration];
  HIDWORD(v533) = [(__CFString *)v15 irisVISEnabled];
  irisSDOFEnabled = [(__CFString *)v15 irisSDOFEnabled];
  v641 = v17;
  if (v17)
  {
    v20 = *(v17 + 56);
  }

  else
  {
    v20 = 0;
  }

  if ([v20 enabled])
  {
    HIDWORD(v603) = 1;
  }

  else
  {
    HIDWORD(v603) = [-[__CFString sourceConfiguration](v15 "sourceConfiguration")];
  }

  movieFileSinkPipelineConfiguration2 = [index movieFileSinkPipelineConfiguration];
  if (movieFileSinkPipelineConfiguration2)
  {
    v604 = *(movieFileSinkPipelineConfiguration2 + 211);
  }

  else
  {
    v604 = 0;
  }

  if ([index videoSourceOutput])
  {
    if (irisSinkConfiguration)
    {
      livePhotoMetadataWritingEnabled = 1;
    }

    else
    {
      livePhotoMetadataWritingEnabled = [(__CFString *)v15 livePhotoMetadataWritingEnabled];
    }
  }

  else
  {
    livePhotoMetadataWritingEnabled = 0;
  }

  videoSourceOutput = [index videoSourceOutput];
  v630 = 0;
  v576 = irisSinkConfiguration;
  v610 = livePhotoMetadataWritingEnabled;
  if (v641 && videoSourceOutput)
  {
    v630 = *(v641 + 40) != 0;
  }

  [index videoSourceOutput];
  array = [MEMORY[0x1E695DF70] array];
  v25 = array;
  if (v604)
  {
    [array addObject:0x1F21AB110];
    [v25 addObject:0x1F21AB130];
    [v25 addObject:0x1F21AAED0];
    [v25 addObject:0x1F21AAEF0];
    [v25 addObject:0x1F21AAF30];
  }

  videoSourceOutput2 = [index videoSourceOutput];
  v27 = videoSourceOutput2 != 0;
  v28 = 1;
  if (videoSourceOutput2)
  {
    v28 = 2;
  }

  if (irisSDOFEnabled)
  {
    v27 = v28;
  }

  v569 = v27;
  v567 = [v25 count];
  audioSourceOutput = [index audioSourceOutput];
  v30 = [index cinematicAudioSourceOutput] != 0;
  if (audioSourceOutput)
  {
    ++v30;
  }

  v568 = v30;
  if (videoSourceOutput2)
  {
    if (v641)
    {
      v31 = *(v641 + 8);
    }

    else
    {
      v31 = 0;
    }

    HIDWORD(v599) = BWColorSpaceIsHDR([v31 colorSpace]);
  }

  else
  {
    HIDWORD(v599) = 0;
  }

  metadataSourceOutputs = [index metadataSourceOutputs];
  indexesOfDetectedObjectsInMetadataOutputs = [index indexesOfDetectedObjectsInMetadataOutputs];
  v609 = [metadataSourceOutputs count];
  videoSourceOutput3 = [index videoSourceOutput];
  audioSourceOutput2 = [index audioSourceOutput];
  cinematicAudioSourceOutput = [index cinematicAudioSourceOutput];
  lowercaseString = pipelinesCopy;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.capture.moviefile.tail.%d"];
  v623 = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:? workgroup:?];
  stereoVideoCaptureEnabled = [(__CFString *)v15 stereoVideoCaptureEnabled];
  if (stereoVideoCaptureEnabled)
  {
    [OUTLINED_FUNCTION_7_18() stringWithFormat:@"com.apple.coremedia.capture.moviefile.stereo.companion.vis.tail.%d"];
    v590 = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:? workgroup:?];
  }

  else
  {
    v590 = 0;
  }

  [OUTLINED_FUNCTION_7_18() stringWithFormat:@"com.apple.coremedia.capture.moviefile.compressor.tail.%d"];
  obj = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:? workgroup:?];
  v601 = metadataSourceOutputs;
  if (irisSDOFEnabled)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.capture.moviefile.sdof-vis.tail.%d", pipelinesCopy];
    v585 = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:? workgroup:?];
    lowercaseString = pipelinesCopy;
    [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.capture.moviefile.sdof-compressor.tail.%d"];
    v542 = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:? workgroup:?];
  }

  else
  {
    v585 = 0;
    v542 = 0;
  }

  if (HIDWORD(v603))
  {
    [OUTLINED_FUNCTION_7_18() stringWithFormat:@"com.apple.coremedia.capture.moviefile.depth-compressor.tail.%d"];
    v539 = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:? workgroup:?];
  }

  else
  {
    v539 = 0;
  }

  indexCopy = index;
  v606 = v15;
  v626 = pipelinesCopy;
  if ([v25 count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v671 = 0u;
    v672 = 0u;
    v673 = 0u;
    v674 = 0u;
    v33 = OUTLINED_FUNCTION_58_5();
    if (v33)
    {
      v35 = v33;
      v36 = *v672;
      v37 = pipelinesCopy;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v672 != v36)
          {
            objc_enumerationMutation(v25);
          }

          v39 = *(*(&v671 + 1) + 8 * i);
          v40 = mfsp_pipelineNameFromSmartStyleAttachedMediaKey(v39, v34);
          v41 = MEMORY[0x1E696AEC0];
          lowercaseString = [(__CFString *)v40 lowercaseString];
          v477 = v37;
          [v41 stringWithFormat:@"com.apple.coremedia.capture.moviefile.%@-compressor.tail.%d"];
          [dictionary setObject:objc_msgSend(OUTLINED_FUNCTION_28() forKeyedSubscript:{"pipelineStageWithName:priority:workgroup:"), v39}];
        }

        v35 = OUTLINED_FUNCTION_58_5();
      }

      while (v35);
      v15 = v606;
      pipelinesCopy = v626;
    }
  }

  else
  {
    dictionary = 0;
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  array2 = [MEMORY[0x1E695DF70] array];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v558 = array2;
  if (v641)
  {
    v579 = *(v641 + 96);
    v581 = *(v641 + 88);
  }

  else
  {
    v579 = 0;
    v581 = 0;
  }

  irisIntermediateJPEGPhotoDecompressorNode = [index irisIntermediateJPEGPhotoDecompressorNode];
  HIDWORD(v544) = irisIntermediateJPEGPhotoDecompressorNode != 0;
  if (irisIntermediateJPEGPhotoDecompressorNode)
  {
    [OUTLINED_FUNCTION_7_18() stringWithFormat:@"com.apple.coremedia.capture.moviefile.iris.decompression.backpressure.%d"];
    v535 = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:?];
  }

  else
  {
    v535 = 0;
  }

  dCopy3 = d;
  [(__CFString *)v15 connectionID];
  v46 = [OUTLINED_FUNCTION_17() objectForKeyedSubscript:?];
  if (v46)
  {
    v47 = *(v46 + 16);
  }

  else
  {
    v47 = 0;
  }

  *(v13 + 37) = v47;
  if (v641)
  {
    v48 = *(v641 + 138);
  }

  else
  {
    v48 = 0;
  }

  v614 = v46;
  if (d)
  {
    v49 = [d[7] irisStagingNode] == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = v641;
  if (v641)
  {
    v50 = *(v641 + 120);
  }

  HIDWORD(v577) = 0;
  v612 = v48;
  array4 = v48 ^ 1u;
  if ((v50 & 1) == 0 && ((v48 ^ 1) & 1) == 0)
  {
    if (pipelinesCopy)
    {
      v49 = 0;
    }

    HIDWORD(v577) = v49;
  }

  v619 = mfsp_avVideoCodec(v15);
  LODWORD(v608) = objc_msgSend_isEqualToString_(v619);
  v52 = v641;
  if (v641)
  {
    v53 = *(v641 + 8);
  }

  else
  {
    v53 = 0;
  }

  v54 = [objc_msgSend(v53 "depthDataFormat")];
  v644 = v13;
  if (v641)
  {
    v55 = *(v641 + 64);
    if (HIDWORD(v55))
    {
      v56 = v55 == 0;
    }

    else
    {
      v56 = 1;
    }

    if (!v56)
    {
      v54 = *(v641 + 64);
    }

    v57 = v614;
    v546 = v54;
    v540 = HIDWORD(v54);
    if (!v15)
    {
      v61 = indexCopy;
      vitalityScoringEnabled = [indexCopy vitalityScoringEnabled];
      output2 = 0;
      OUTLINED_FUNCTION_52_4();
      goto LABEL_186;
    }

    v58 = *(v641 + 120);
  }

  else
  {
    v546 = v54;
    v540 = HIDWORD(v54);
    if (!v15)
    {
      vitalityScoringEnabled = [indexCopy vitalityScoringEnabled];
      output2 = 0;
      v197 = 0;
      OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_52_4();
      goto LABEL_191;
    }

    v58 = 0;
    pipelinesCopy = v626;
    v57 = v614;
  }

  v13[152] = v58 & 1;
  if (v57)
  {
    v59 = *(v57 + 16);
  }

  else
  {
    v59 = 0;
  }

  if ([FigCaptureVISPipeline visPipelineIsRequiredForFigCaptureVideoStabilizationType:v59])
  {
    v60 = 1;
  }

  else
  {
    v60 = v13[152];
  }

  ShouldIncludeDiagnosticMetadata = FigCaptureMetadataUtilitiesShouldIncludeDiagnosticMetadata();
  v64 = ShouldIncludeDiagnosticMetadata & v612;
  dCopy3 = (!(v13[152] & (pipelinesCopy == 0) & v612) | ShouldIncludeDiagnosticMetadata & v612) & (HIDWORD(v577) ^ 1u);
  v65 = ([(__CFString *)v606 irisVISMethod]== 3 || [(__CFString *)v606 irisVISMethod]== 5) && graphCopy == 1;
  pipelinesCopy = (dCopy3 & v60);
  if (*(v644 + 152) == 1)
  {
    dCopy3 = !v65 & dCopy3;
    pipelinesCopy = (!v65 & pipelinesCopy);
  }

  if (v641)
  {
    LODWORD(graphCopy) = *(v641 + 141);
  }

  else
  {
    LODWORD(graphCopy) = 0;
  }

  movieFileSinkPipelineConfiguration3 = [indexCopy movieFileSinkPipelineConfiguration];
  if (movieFileSinkPipelineConfiguration3 && !(pipelinesCopy & 1 | ((*(movieFileSinkPipelineConfiguration3 + 210) & 1) == 0)))
  {
    v67 = [objc_msgSend(-[__CFString sourceConfiguration](v606 "sourceConfiguration")];
    v68 = [BWSmartStyleApplyNode alloc];
    movieFileSinkPipelineConfiguration4 = [indexCopy movieFileSinkPipelineConfiguration];
    if (movieFileSinkPipelineConfiguration4)
    {
      v70 = *(movieFileSinkPipelineConfiguration4 + 216);
    }

    else
    {
      v70 = 0;
    }

    v71 = [(BWSmartStyleApplyNode *)v68 initWithMetalCommandQueue:0 renderingMethod:v70 squareAspectRatioConfigEnabled:v67];
    if (!v71)
    {
      OUTLINED_FUNCTION_0_31();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", lowercaseString, v477, v479, v485, v487, v489, v494, v497);
      v676[0] = -12786;
      goto LABEL_579;
    }

    v72 = v71;
    [(BWNode *)v71 setName:@"SmartStyle Movie File Apply"];
    movieFileSinkPipelineConfiguration5 = [indexCopy movieFileSinkPipelineConfiguration];
    if (movieFileSinkPipelineConfiguration5)
    {
      v74 = *(movieFileSinkPipelineConfiguration5 + 144);
    }

    else
    {
      v74 = 0;
    }

    [(BWSmartStyleApplyNode *)v72 setMaxLossyCompressionLevel:v74];
    if (([OUTLINED_FUNCTION_32_3() addNode:v72 error:?] & 1) == 0)
    {
      goto LABEL_649;
    }

    [(BWNode *)v72 input];
    v75 = OUTLINED_FUNCTION_6_21();
    if ((OUTLINED_FUNCTION_65_0(v75, v76, v77, v78, v79, v80, v81, v82, lowercaseString, v477, v479, v485, v487, v489, v494, v497, v500, v504, v515, v524, v529, v533, v535, v537, v539, v540, v542, v543, v544, v546, v548, schedulerCopy, v554, cinematicAudioSourceOutput, audioSourceOutput2, v558, v559, v561, v563, v565, v567, v568, v569, v570, v572, v575, v576, v577, v579, v581, v585, v589, v590, v594, v595, graphCopy, v599, v601, v603, v604, v606, delegateCopy, v608) & 1) == 0)
    {
      goto LABEL_649;
    }

    videoSourceOutput3 = [(BWNode *)v72 output];
  }

  if ((pipelinesCopy & 1) == 0)
  {
    if ((dCopy3 & 1) == 0)
    {
      output2 = 0;
      v13 = v644;
      v61 = indexCopy;
      OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_52_4();
      goto LABEL_185;
    }

    v13 = v644;
    v84 = v606;
    array4 = 0x1E696A000;
    if (CFPreferenceNumberWithDefault)
    {
      v85 = [-[__CFString sourceConfiguration](v606 "sourceConfiguration")];
      v86 = [-[__CFString sourceConfiguration](v606 "sourceConfiguration")];
      horizontalSensorBinningFactor = [v85 horizontalSensorBinningFactor];
      verticalSensorBinningFactor = [v85 verticalSensorBinningFactor];
      [v85 maxSupportedFrameRate];
      v90 = v89;
      if (v614)
      {
        v91 = *(v614 + 24);
      }

      else
      {
        v91 = 0;
      }

      pipelinesCopy = (v86 == 4);
      dCopy3 = [v595 sensorIDDictionaryByPortType];
      v92 = FigCaptureBuildMotionAttachmentsNode(d, videoSourceOutput3, horizontalSensorBinningFactor, verticalSensorBinningFactor, v623, v91, dCopy3, [v595 cameraInfoByPortType], v90, objc_msgSend(v595, "activePortTypes"), pipelinesCopy, 0, objc_msgSend(v576, "optimizesImagesForOfflineVideoStabilization"), 1, 0, v676);
      if (v676[0])
      {
        LODWORD(lowercaseString) = v676[0];
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", lowercaseString);
        goto LABEL_579;
      }

      CFPreferenceNumberWithDefault = v92;
      v84 = v606;
      OUTLINED_FUNCTION_25_4();
      v93 = v641;
      array4 = 0x1E696A000;
      if (v641)
      {
        goto LABEL_115;
      }
    }

    else
    {
      OUTLINED_FUNCTION_25_4();
      v93 = v641;
      CFPreferenceNumberWithDefault = videoSourceOutput3;
      if (v641)
      {
LABEL_115:
        if (*(v93 + 214) == 1)
        {
          if (dCopy3)
          {
            videoSourceDeviceType = [*(dCopy3 + 56) videoSourceDeviceType];
          }

          else
          {
            videoSourceDeviceType = 0;
          }

          if (BWDeviceTypeIsExtensionDeviceType(videoSourceDeviceType))
          {
            v587 = *(MEMORY[0x1E69E9B10] + 16);
            v591 = *MEMORY[0x1E69E9B10];
            v573 = *(MEMORY[0x1E69E9B10] + 32);
            v95 = v595;
          }

          else
          {
            v95 = v595;
            v175 = [v595 position] == 2;
            *&v177 = FigCaptureGetDeviceToCameraTransform(v175, v176);
            v587 = v178;
            v591 = v177;
            v573 = v179;
          }

          v180 = [-[__CFString sourceConfiguration](v84 "sourceConfiguration")];
          v181 = FigCaptureConvertDimensionsForAspectRatio([v180 dimensions], objc_msgSend(-[__CFString sourceConfiguration](v84, "sourceConfiguration"), "outputAspectRatio"));
          v182 = [BWSmartCropNode alloc];
          dCopy3 = [v95 cameraInfoByPortType];
          v482 = v95;
          LOBYTE(lowercaseString) = 0;
          v183 = -[BWSmartCropNode initWithOutputDimensions:cameraInfoByPortType:horizontalSensorBinningFactor:verticalSensorBinningFactor:maxLossyCompressionLevel:cameraExtrinsicMatrix:processingMode:stillCaptureEnabled:objectMetadataIdentifiers:captureDevice:](v182, "initWithOutputDimensions:cameraInfoByPortType:horizontalSensorBinningFactor:verticalSensorBinningFactor:maxLossyCompressionLevel:cameraExtrinsicMatrix:processingMode:stillCaptureEnabled:objectMetadataIdentifiers:captureDevice:", v181, dCopy3, [v180 horizontalSensorBinningFactor], objc_msgSend(v180, "verticalSensorBinningFactor"), *(v641 + 144), 1, *&v591, *&v587, *&v573);
          [(BWNode *)v183 setName:@"Low Latency Stabilization"];
          if ((OUTLINED_FUNCTION_62_1() & 1) == 0)
          {
            goto LABEL_671;
          }

          [(BWNode *)v183 input];
          v184 = OUTLINED_FUNCTION_6_21();
          pipelinesCopy = v626;
          array4 = 0x1E696A000uLL;
          if ((OUTLINED_FUNCTION_65_0(v184, v185, v186, v187, v188, v189, v190, v191, lowercaseString, 0, v482, v485, v487, v489, v494, v497, v500, v504, v515, v524, v529, v533, v535, v537, v539, v540, v542, v543, v544, v546, v548, schedulerCopy, v554, cinematicAudioSourceOutput, audioSourceOutput2, v558, v559, v561, v563, v565, v567, v568, v569, v570, v573, *(&v573 + 1), v576, v577, v579, v581, v587, *(&v587 + 1), v591, *(&v591 + 1), v595, graphCopy, v599, v601, v603, v604, v606, delegateCopy, v608) & 1) == 0)
          {
            goto LABEL_671;
          }

          CFPreferenceNumberWithDefault = [(BWNode *)v183 output];
          *(v644 + 160) = v183;
          v93 = v641;
        }

        if ((v559 & 0x100000000) != 0)
        {
          goto LABEL_179;
        }

        v193 = v93;
        [v644 name];
        v194 = *(v193 + 144);
        goto LABEL_181;
      }
    }

    if ((v559 & 0x100000000) != 0)
    {
      v13 = v644;
      OUTLINED_FUNCTION_25_4();
LABEL_179:
      v192 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      goto LABEL_182;
    }

    v13 = v644;
    [v644 name];
    v84 = v606;
    OUTLINED_FUNCTION_25_4();
LABEL_181:
    v192 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    CFPreferenceNumberWithDefault = mfsp_buildMovieFileScalerNode(v84, CFPreferenceNumberWithDefault, v581, v579, pipeline, dCopy3, v623, v13 + 4, graphCopy & 1, v194);
LABEL_182:
    [irisIntermediateJPEGPhotoDecompressorNode setDownstreamIsSharingOutputPool:{objc_msgSend(*&v13[v192[693]], "passesBuffersThroughWhenPossible") | objc_msgSend(irisIntermediateJPEGPhotoDecompressorNode, "downstreamIsSharingOutputPool")}];
    output2 = 0;
    if (([*(v13 + 4) passesBuffersThroughWhenPossible] & 1) != 0 || !irisIntermediateJPEGPhotoDecompressorNode)
    {
      goto LABEL_184;
    }

    v471 = OUTLINED_FUNCTION_12_12(@"Iris Intermediate JPEG Decompression Back Pressure", 88, lowercaseString, v477, v479, v485, v487, v489, v494, v497, v500, v504, v515, v524, v529, v533, v535);
    if (v471)
    {
      CFPreferenceNumberWithDefault = v471;
      HIDWORD(v544) = 0;
      output2 = 0;
LABEL_184:
      v61 = indexCopy;
      goto LABEL_185;
    }

LABEL_671:
    OUTLINED_FUNCTION_0_31();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", lowercaseString);
    goto LABEL_579;
  }

  if (v614)
  {
    pipelinesCopy = v626;
    dCopy3 = d;
    if ((*(v614 + 16) - 3) > 1)
    {
      v579 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_13_12();
      [v83 stringWithFormat:@"com.apple.coremedia.capture.moviefile.post-isp-digital-zoom.tail.%d"];
      v579 = [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:?];
    }
  }

  else
  {
    v579 = 0;
    OUTLINED_FUNCTION_25_4();
  }

  v96 = [-[__CFString irisSinkConfiguration](v606 "irisSinkConfiguration")];
  v97 = v96;
  if (v96)
  {
    if (FigCaptureOptimizedBWInferenceScalingPathSupported())
    {
      v98 = objc_alloc_init(BWInferenceProcessingConfiguration);
      [(BWInferenceProcessingConfiguration *)v98 setScalingStrategy:10];
      [(BWInferenceProcessingConfiguration *)v98 setFilterType:2];
    }

    else
    {
      v98 = 0;
    }

    v99 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:v595 scheduler:delegateCopy priority:13 processingConfiguration:v98];
    OUTLINED_FUNCTION_13_12();
    [v100 stringWithFormat:@"Tail Pipeline %d Person Segmentation Inference Node"];
    [OUTLINED_FUNCTION_17() setName:?];
    if (([OUTLINED_FUNCTION_9_11() addNode:v99 error:?] & 1) == 0)
    {
      goto LABEL_649;
    }

    v101 = [(BWInferenceConfiguration *)[BWStreamingPersonSegmentationConfiguration alloc] initWithInferenceType:105];
    [(BWStreamingPersonSegmentationConfiguration *)v101 setInputRotationAngle:0];
    [(BWStreamingPersonSegmentationConfiguration *)v101 setPropagateColorInput:0];
    LODWORD(v102) = 10.0;
    [(BWInferenceConfiguration *)v101 setMaximumFramesPerSecond:v102];
    [(BWInferenceConfiguration *)v101 setPropagatesFrameRatePrevention:1];
    [(BWStreamingPersonSegmentationConfiguration *)v101 setUseLowFrameRateOptimizedNetwork:1];
    [(BWInferenceNode *)v99 addInferenceOfType:105 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:v101];

    v103 = [(BWInferenceConfiguration *)[BWOpticalFlowInferenceConfiguration alloc] initWithInferenceType:117];
    [(BWOpticalFlowInferenceConfiguration *)v103 setInputDimensions:0xC000000100];
    [(BWOpticalFlowInferenceConfiguration *)v103 setOutputDimensions:0xC000000100];
    [(BWOpticalFlowInferenceConfiguration *)v103 setConcurrencyWidth:2];
    [(BWOpticalFlowInferenceConfiguration *)v103 setAttachedMediaKeyForPropagatedColorInput:0x1F219EA70];
    [(BWInferenceNode *)v99 addInferenceOfType:117 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:v103];

    [(BWNode *)v99 input];
    v104 = OUTLINED_FUNCTION_6_21();
    if ((OUTLINED_FUNCTION_65_0(v104, v105, v106, v107, v108, v109, v110, v111, lowercaseString, v477, v479, v485, v487, v489, v494, v497, v500, v504, v515, v524, v529, v533, v535, v537, v539, v540, v542, v543, v544, v546, v548, schedulerCopy, v554, cinematicAudioSourceOutput, audioSourceOutput2, v558, v559, v561, v563, v565, v567, v568, v569, v570, v572, v575, v576, v577, v579, v581, v585, v589, v590, v594, v595, graphCopy, v599, v601, v603, v604, v606, delegateCopy, v608) & 1) == 0)
    {
      goto LABEL_649;
    }

    output = [(BWNode *)v99 output];
    v113 = [[BWPersonSegmentationFilteringNode alloc] initWithGPUPriority:1 frameRateUpsamplingEnabled:1 metalCommandQueue:[(FigCaptureMovieFileSinkTailPipeline *)v644 _metalCommandQueueWithName:14 priority:?]];
    OUTLINED_FUNCTION_13_12();
    [v114 stringWithFormat:@"Tail Pipeline %d Person Segmentation Filtering Node"];
    [OUTLINED_FUNCTION_8() setName:?];
    if (([OUTLINED_FUNCTION_9_11() addNode:v113 error:?] & 1) == 0)
    {
      goto LABEL_649;
    }

    [(BWNode *)v113 input];
    if (([OUTLINED_FUNCTION_6_21() connectOutput:output toInput:? pipelineStage:?] & 1) == 0)
    {
      goto LABEL_649;
    }

    videoSourceOutput3 = [(BWNode *)v113 output];
  }

  if (!stereoVideoCaptureEnabled)
  {
    goto LABEL_136;
  }

  v115 = [BWStereoVideoMetadataNode alloc];
  dCopy3 = *off_1E798A0D0;
  [v595 cameraInfoByPortType];
  v116 = [OUTLINED_FUNCTION_12_0() initWithPorts:? secondaryPort:? cameraInfoByPortType:? errStatus:?];
  if (!v116 || (v117 = v116, [v116 setName:@"Stereo Video Metadata Node"], (OUTLINED_FUNCTION_62_1() & 1) == 0) || (objc_msgSend(v117, "input"), v118 = OUTLINED_FUNCTION_6_21(), (OUTLINED_FUNCTION_65_0(v118, v119, v120, v121, v122, v123, v124, v125, lowercaseString, v477, v479, v485, v487, v489, v494, v497, v500, v504, v515, v524, v529, v533, v535, v537, v539, v540, v542, v543, v544, v546, v548, schedulerCopy, v554, cinematicAudioSourceOutput, audioSourceOutput2, v558, v559, v561, v563, v565, v567, v568, v569, v570, v572, v575, v576, v577, v579, v581, v585, v589, v590, v594, v595, graphCopy, v599, v601, v603, v604, v606, delegateCopy, v608) & 1) == 0))
  {
LABEL_649:
    OUTLINED_FUNCTION_0_31();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", lowercaseString);
    goto LABEL_579;
  }

  videoSourceOutput3 = [v117 output];
LABEL_136:
  if ((v559 & 0x100000000) != 0)
  {
    v126 = 1;
  }

  else if (*(v644 + 152))
  {
    v126 = 4;
  }

  else
  {
    if (v65)
    {
      v127 = 3;
    }

    else
    {
      v127 = 0;
    }

    if ((array4 | v64))
    {
      v126 = v127;
    }

    else
    {
      v126 = 3;
    }
  }

  v128 = [FigCaptureVISPipeline alloc];
  array4 = 0x1E696A000;
  [OUTLINED_FUNCTION_7_18() stringWithFormat:@"Tail %d VIS Pipeline"];
  v13 = v644;
  v129 = v614;
  if (v614)
  {
    v130 = *(v614 + 20);
    v131 = *(v614 + 8);
    v132 = *(v614 + 44);
  }

  else
  {
    v131 = 0;
    v130 = 0;
    v132 = 0;
  }

  v133 = v641;
  if (v641)
  {
    v134 = *(v641 + 144);
    v135 = *(v641 + 148);
    v136 = *(v641 + 149);
    v137 = *(v641 + 176);
    v138 = *(v641 + 212);
    v139 = *(v641 + 213);
    v140 = *(v641 + 210);
    v141 = *(v641 + 211);
    v142 = *(v641 + 209);
    v133 = *(v641 + 128);
    if (!v614)
    {
      goto LABEL_151;
    }

    goto LABEL_150;
  }

  v142 = 0;
  v140 = 0;
  v138 = 0;
  v136 = 0;
  v134 = 0;
  v135 = 0;
  v137 = 0;
  v139 = 0;
  v141 = 0;
  if (v614)
  {
LABEL_150:
    v129 = *(v614 + 32);
  }

LABEL_151:
  v525 = v133;
  v530 = v129;
  v522 = v142 & 1;
  v520 = v141 & 1;
  v518 = v140 & 1;
  v516 = v139 & 1;
  v514 = v138 & 1;
  v513 = v137 & 1;
  v511 = v136 & 1;
  v509 = v135 & 1;
  v505 = v134;
  LOBYTE(v498) = graphCopy & 1;
  v490 = v131;
  v495 = v132;
  HIBYTE(v498) = BYTE4(v603);
  v480 = v130;
  BYTE1(v477) = v612 & 1;
  OUTLINED_FUNCTION_35_4();
  v146 = [FigCaptureVISPipeline initWithUpstreamOutput:v128 graph:videoSourceOutput3 name:pipeline parentPipeline:v145 videoCaptureConnectionConfiguration:v143 pipelineStage:dCopy3 sdofPipelineStage:v606 videoStabilizationType:v623 motionAttachmentsSource:v144 fillExtendedRowsOfOutputBuffer:lowercaseString overCaptureEnabled:HIDWORD(lowercaseString) stereoMode:v477 videoStabilizationOverscanOverride:stereoVideoCaptureEnabled videoStabilizationStrength:v480 motionMetadataPreloadingEnabled:0 visExecutionMode:v126 pipelineTraceID:81 captureDevice:v595 outputDimensions:v490 generatedTransformsOutputDimensionsOverride:v495 P3ToBT2020ConversionEnabled:v498 stabilizeDepthAttachments:v546 outputDepthDimensions:v505 maxLossyCompressionLevel:v509 videoSTFEnabled:v511 videoGreenGhostMitigationEnabled:v513 lightSourceMaskAndKeypointDescriptorDataEnabled:v514 videoGreenGhostOfflineMetadataEnabled:v516 videoGreenGhostOfflineLightSourceMaskEnabled:v97 personSegmentationRenderingEnabled:v518 smartStyleRenderingEnabled:v520 smartStyleReversibilityEnabled:v522 lowResImageUsedByVideoEncoderEnabled:v525 portTypesWithGeometricDistortionCorrectionInVISEnabled:v530 visProcessingSemaphore:?];
  *(v644 + 40) = v146;
  if (!v146)
  {
    OUTLINED_FUNCTION_16_13();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", lowercaseString, v477, v479, v485, v487, v489, v494, v497);
    v676[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED8440A8, 0xFFFFCE0ELL, "<<<< FigCaptureMovieFileSinkPipeline >>>>", 0xAB9, &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled, v472, v473, v476);
    goto LABEL_579;
  }

  CFPreferenceNumberWithDefault = [-[FigCaptureVISPipeline visNode](v146) output];
  output2 = [-[FigCaptureVISPipeline sdofVISNode](*(v644 + 40)) output];
  if (stereoVideoCaptureEnabled)
  {
    v147 = CFPreferenceNumberWithDefault;
    v148 = [BWAttachedMediaSwapNode alloc];
    v670[0] = *off_1E798D468;
    v149 = -[BWAttachedMediaSwapNode initWithPrimaryFormatToAttachedMediaKey:attachedMediaKeyToPrimaryFormat:sampleBufferAttachmentsToTransfer:generatesDroppedSampleMarkerBuffers:](v148, "initWithPrimaryFormatToAttachedMediaKey:attachedMediaKeyToPrimaryFormat:sampleBufferAttachmentsToTransfer:generatesDroppedSampleMarkerBuffers:", 0x1F216E930, @"SynchronizedSlaveFrame", [MEMORY[0x1E695DEC8] arrayWithObjects:v670 count:1], 0);
    if (!v149)
    {
      goto LABEL_608;
    }

    v150 = v149;
    [(BWNode *)v149 setName:@"Swap Primary and Synchronized Slave"];
    if (([OUTLINED_FUNCTION_9_11() addNode:v150 error:?] & 1) == 0)
    {
      goto LABEL_608;
    }

    [(BWNode *)v150 input];
    if (([OUTLINED_FUNCTION_6_21() connectOutput:v147 toInput:? pipelineStage:?] & 1) == 0)
    {
      goto LABEL_608;
    }

    output3 = [(BWNode *)v150 output];
    v152 = [FigCaptureVISPipeline alloc];
    OUTLINED_FUNCTION_13_12();
    [v153 stringWithFormat:@"Tail %d stereo video companion VIS Pipeline"];
    v154 = v614;
    if (v614)
    {
      v155 = *(v614 + 20);
      v154 = *(v614 + 8);
    }

    else
    {
      v155 = 0;
    }

    v156 = v641;
    if (v641)
    {
      v157 = *(v641 + 144);
      v158 = *(v641 + 148);
      v159 = *(v641 + 149);
      v160 = *(v641 + 210);
      v161 = *(v641 + 211);
      v162 = *(v641 + 209);
      v156 = *(v641 + 128);
    }

    else
    {
      v162 = 0;
      v160 = 0;
      v158 = 0;
      v157 = 0;
      v159 = 0;
      v161 = 0;
    }

    v526 = v156;
    v523 = v162 & 1;
    v521 = v161 & 1;
    v519 = v160 & 1;
    v512 = v159 & 1;
    v510 = v158 & 1;
    v506 = v157;
    v501 = *MEMORY[0x1E6960CF8];
    v491 = v154;
    v481 = v155;
    OUTLINED_FUNCTION_35_4();
    v163 = v152;
    dCopy3 = d;
    v166 = [FigCaptureVISPipeline initWithUpstreamOutput:v163 graph:output3 name:pipeline parentPipeline:v165 videoCaptureConnectionConfiguration:v164 pipelineStage:d sdofPipelineStage:v606 videoStabilizationType:v590 motionAttachmentsSource:0 fillExtendedRowsOfOutputBuffer:lowercaseString overCaptureEnabled:HIDWORD(lowercaseString) stereoMode:v477 videoStabilizationOverscanOverride:2u videoStabilizationStrength:v481 motionMetadataPreloadingEnabled:0 visExecutionMode:0 pipelineTraceID:81 captureDevice:v595 outputDimensions:v491 generatedTransformsOutputDimensionsOverride:0 P3ToBT2020ConversionEnabled:0 stabilizeDepthAttachments:v501 outputDepthDimensions:v506 maxLossyCompressionLevel:v510 videoSTFEnabled:v512 videoGreenGhostMitigationEnabled:SBYTE1(v512) lightSourceMaskAndKeypointDescriptorDataEnabled:BYTE2(v512) videoGreenGhostOfflineMetadataEnabled:HIBYTE(v512) videoGreenGhostOfflineLightSourceMaskEnabled:0 personSegmentationRenderingEnabled:v519 smartStyleRenderingEnabled:v521 smartStyleReversibilityEnabled:v523 lowResImageUsedByVideoEncoderEnabled:v526 portTypesWithGeometricDistortionCorrectionInVISEnabled:0 visProcessingSemaphore:?];
    *(v644 + 48) = v166;
    output4 = [-[FigCaptureVISPipeline visNode](v166) output];
    v168 = [BWAttachedMediaSwapNode alloc];
    OUTLINED_FUNCTION_53();
    v170 = [v169 initWithPrimaryFormatToAttachedMediaKey:? attachedMediaKeyToPrimaryFormat:? sampleBufferAttachmentsToTransfer:? generatesDroppedSampleMarkerBuffers:?];
    if (!v170)
    {
      goto LABEL_608;
    }

    v171 = v170;
    [v170 setName:@"Unswap Primary and Synchronized Slave"];
    array4 = 0x1E696A000;
    if (([OUTLINED_FUNCTION_9_11() addNode:v171 error:?] & 1) == 0)
    {
      goto LABEL_608;
    }

    [v171 input];
    if (([OUTLINED_FUNCTION_6_21() connectOutput:output4 toInput:? pipelineStage:?] & 1) == 0)
    {
      goto LABEL_608;
    }

    CFPreferenceNumberWithDefault = [v171 output];
  }

  v172 = v614;
  if (!irisIntermediateJPEGPhotoDecompressorNode || (*(v644 + 152) & 1) != 0)
  {
    v61 = indexCopy;
    if (!v614)
    {
      goto LABEL_185;
    }

    goto LABEL_167;
  }

  v470 = OUTLINED_FUNCTION_12_12(@"Iris Intermediate JPEG Decompression Back Pressure", 88, lowercaseString, v477, v479, v485, v487, v489, v494, v497, v500, v504, v515, v524, v529, v533, v535);
  v61 = indexCopy;
  if (!v470)
  {
    goto LABEL_608;
  }

  CFPreferenceNumberWithDefault = v470;
  HIDWORD(v544) = 0;
  v172 = v614;
  if (v614)
  {
LABEL_167:
    if ((*(v172 + 16) - 3) <= 1)
    {
      outputDimensions = [-[FigCaptureVISPipeline visNode](*(v644 + 40)) outputDimensions];
      [v644 name];
      v174 = v641;
      if (v641)
      {
        v174 = *(v641 + 144);
      }

      CFPreferenceNumberWithDefault = mfsp_buildMovieFileScalerNode(v606, CFPreferenceNumberWithDefault, v581, outputDimensions, pipeline, dCopy3, v579, (v644 + 32), graphCopy & 1, v174);
    }
  }

LABEL_185:
  vitalityScoringEnabled = [v61 vitalityScoringEnabled];
  v52 = v641;
  if (!v641)
  {
LABEL_190:
    v197 = 0;
LABEL_191:
    v196 = v610;
    goto LABEL_192;
  }

LABEL_186:
  if (*(v52 + 112) != 1)
  {
    goto LABEL_190;
  }

  movieFileSinkPipelineConfiguration6 = [v61 movieFileSinkPipelineConfiguration];
  if (movieFileSinkPipelineConfiguration6)
  {
    movieFileSinkPipelineConfiguration6 = movieFileSinkPipelineConfiguration6[6];
  }

  v196 = v610;
  v197 = [movieFileSinkPipelineConfiguration6 count];
LABEL_192:
  v592 = v196 | v630;
  if ((v196 | v630))
  {
    v198 = 2;
  }

  else
  {
    v198 = 1;
  }

  HIDWORD(v537) = v198 + (v604 & 1) + HIDWORD(v599) + vitalityScoringEnabled;
  v199 = (HIDWORD(v537) + v197);
  LODWORD(v572) = vitalityScoringEnabled;
  if (v199 < 2)
  {
    v210 = 0;
  }

  else
  {
    v200 = array4;
    v201 = [[BWFanOutNode alloc] initWithFanOutCount:v199 mediaType:1986618469];
    if (([dCopy3 addNode:v201 error:&v675] & 1) == 0)
    {
      goto LABEL_608;
    }

    [(BWNode *)v201 input];
    v202 = OUTLINED_FUNCTION_6_21();
    if ((OUTLINED_FUNCTION_63_1(v202, v203, v204, v205, v206, v207, v208, v209, lowercaseString, v477, v479, v485, v487, v489, v494, v497, v500, v504, v515, v524, v529, v533, v535, v537, v539, v540, v542, v543, v544, v546, v548, schedulerCopy, v554, cinematicAudioSourceOutput, audioSourceOutput2, v558, v559, v561, v563, v565, v567, v568, v569, v570, v572, v575, v576, v577, v579, v581, output2, v589, v592, v594, v595, graphCopy, v599, v601, v603, v604, v606, delegateCopy, v608) & 1) == 0)
    {
      goto LABEL_608;
    }

    CFPreferenceNumberWithDefault = [(NSArray *)[(BWNode *)v201 outputs] objectAtIndexedSubscript:(v199 - 1)];
    v210 = v201;
    array4 = v200;
  }

  v624 = v210;
  if (v592)
  {
    v211 = [(NSArray *)[(BWNode *)v210 outputs] objectAtIndexedSubscript:0];
    v212 = [[BWCameraInfoMetadataNode alloc] initForLivePhotosMetadata:v196 generateDebugMetadata:v630 generateMotionMetadata:0];
    if (([OUTLINED_FUNCTION_9_11() addNode:v212 error:?] & 1) == 0)
    {
      goto LABEL_608;
    }

    [v212 input];
    if (([OUTLINED_FUNCTION_6_21() connectOutput:v211 toInput:? pipelineStage:?] & 1) == 0)
    {
      goto LABEL_608;
    }

    boxedMetadataOutput = [v212 boxedMetadataOutput];
    v213 = 1;
    v214 = v601;
    v210 = v624;
  }

  else
  {
    v213 = 0;
    boxedMetadataOutput = 0;
    v214 = v601;
  }

  if (HIDWORD(v599))
  {
    v215 = [(NSArray *)[(BWNode *)v210 outputs] objectAtIndexedSubscript:v213];
    v216 = objc_alloc_init(BWVideoPlaybackSupportMetadataNode);
    if (([OUTLINED_FUNCTION_9_11() addNode:v216 error:?] & 1) == 0)
    {
      goto LABEL_608;
    }

    [(BWNode *)v216 input];
    if (([OUTLINED_FUNCTION_6_21() connectOutput:v215 toInput:? pipelineStage:?] & 1) == 0)
    {
      goto LABEL_608;
    }

    ++v213;
    boxedMetadataOutput2 = [(BWVideoPlaybackSupportMetadataNode *)v216 boxedMetadataOutput];
    v214 = v601;
    v210 = v624;
  }

  else
  {
    boxedMetadataOutput2 = 0;
  }

  if (v604)
  {
    v217 = [(NSArray *)[(BWNode *)v210 outputs] objectAtIndexedSubscript:v213];
    v218 = objc_alloc_init(BWSmartStyleInfoMetadataNode);
    if ([OUTLINED_FUNCTION_9_11() addNode:v218 error:?])
    {
      [(BWNode *)v218 input];
      if ([OUTLINED_FUNCTION_6_21() connectOutput:v217 toInput:? pipelineStage:?])
      {
        ++v213;
        boxedMetadataOutput3 = [(BWSmartStyleInfoMetadataNode *)v218 boxedMetadataOutput];
        v214 = v601;
        v210 = v624;
        goto LABEL_215;
      }
    }

LABEL_608:
    OUTLINED_FUNCTION_0_31();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", lowercaseString);
    goto LABEL_579;
  }

  boxedMetadataOutput3 = 0;
LABEL_215:
  v580 = (v604 & 1) + (v592 & 1) + HIDWORD(v603) + HIDWORD(v599) + v609;
  movieFileSinkPipelineConfiguration7 = [indexCopy movieFileSinkPipelineConfiguration];
  if (!movieFileSinkPipelineConfiguration7 || !v197 || !*(movieFileSinkPipelineConfiguration7 + 48))
  {
    v220 = indexCopy;
    goto LABEL_219;
  }

  [(NSArray *)[(BWNode *)v210 outputs] objectAtIndexedSubscript:v213];
  time.value = 0;
  [indexCopy movieFileSinkPipelineConfiguration];
  v676[0] = [FigCaptureMovieFileSinkTailPipeline _buildFaceDetectionNode:v13 parentPipeline:? objectDetectionSourceOutput:? faceDetectionNodeOut:?];
  if (!v676[0])
  {
    v457 = MEMORY[0x1E695E0F0];
    ++v213;
    if (!v214)
    {
      v214 = MEMORY[0x1E695E0F0];
    }

    if (indexesOfDetectedObjectsInMetadataOutputs)
    {
      v457 = indexesOfDetectedObjectsInMetadataOutputs;
    }

    v640 = v457;
    array3 = [MEMORY[0x1E695DF70] array];
    array4 = [MEMORY[0x1E695DF70] array];
    v633 = v214;
    v459 = [v214 count];
    v666 = 0u;
    v667 = 0u;
    v668 = 0u;
    v669 = 0u;
    boxedMetadataOutputs = [time.value boxedMetadataOutputs];
    v461 = [boxedMetadataOutputs countByEnumeratingWithState:&v666 objects:v665 count:16];
    if (v461)
    {
      v462 = v461;
      v463 = *v667;
      do
      {
        CFPreferenceNumberWithDefault = 0;
        v464 = v459;
        do
        {
          if (*v667 != v463)
          {
            objc_enumerationMutation(boxedMetadataOutputs);
          }

          [array3 addObject:*(*(&v666 + 1) + 8 * CFPreferenceNumberWithDefault)];
          v459 = v464 + 1;
          [array4 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v464)}];
          ++CFPreferenceNumberWithDefault;
          ++v464;
        }

        while (v462 != CFPreferenceNumberWithDefault);
        v462 = [boxedMetadataOutputs countByEnumeratingWithState:&v666 objects:v665 count:16];
      }

      while (v462);
    }

    v214 = [v633 arrayByAddingObjectsFromArray:array3];
    indexesOfDetectedObjectsInMetadataOutputs = [v640 arrayByAddingObjectsFromArray:array4];
    v580 += [objc_msgSend(time.value "boxedMetadataOutputs")];
    v13 = v644;
    v220 = indexCopy;
    v210 = v624;
    pipelinesCopy = v626;
    OUTLINED_FUNCTION_52_4();
LABEL_219:
    v602 = v214;
    if (v572)
    {
      v221 = CFPreferenceNumberWithDefault;
      v222 = [(NSArray *)[(BWNode *)v210 outputs] objectAtIndexedSubscript:v213];
      [OUTLINED_FUNCTION_7_18() stringWithFormat:@"com.apple.coremedia.capture.moviefile.metadata.tail.%d"];
      [OUTLINED_FUNCTION_8() pipelineStageWithName:? priority:?];
      v223 = [[BWInferenceBufferingNode alloc] initWithConvEngineSupportWithCaptureDevice:v595 scheduler:delegateCopy priority:13];
      lowercaseString = pipelinesCopy;
      [*(array4 + 3776) stringWithFormat:@"Tail Pipeline %lu Motion Analysis Inference Node"];
      [OUTLINED_FUNCTION_7() setName:?];
      [(BWInferenceNode *)v223 setEndOfDataBehavior:2];
      if (v576)
      {
        objc_msgSend_irisMovieDuration(v576);
      }

      else
      {
        OUTLINED_FUNCTION_36_5();
      }

      v225 = (CMTimeGetSeconds(&time) * 15.0 + 2.0);
      v226 = [[BWInferenceConfiguration alloc] initWithInferenceType:2001];
      LODWORD(v227) = 15.0;
      [(BWInferenceConfiguration *)v226 setMaximumFramesPerSecond:v227];
      [(BWInferenceBufferingNode *)v223 addInferenceOfType:2001 version:BWInferenceVersionMake(1u configuration:0 ringBufferCapacity:0) & 0xFFFFFFFFFFFFLL, v226, v225];
      ringBuffers = [(BWInferenceBufferingNode *)v223 ringBuffers];
      v224 = v606;
      if (([OUTLINED_FUNCTION_32_3() addNode:v223 error:?] & 1) == 0)
      {
        goto LABEL_614;
      }

      [(BWNode *)v223 input];
      if (([OUTLINED_FUNCTION_6_21() connectOutput:v222 toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_614;
      }

      v566 = ringBuffers;
      output5 = [(BWNode *)v223 output];
      CFPreferenceNumberWithDefault = v221;
      v220 = indexCopy;
    }

    else
    {
      v566 = 0;
      output5 = 0;
      v224 = v606;
    }

    if (((CFPreferenceNumberWithDefault != 0) & BYTE4(v603)) != 1)
    {
      metadataOutput = 0;
      output8 = 0;
      if (!CFPreferenceNumberWithDefault)
      {
        goto LABEL_238;
      }

      goto LABEL_240;
    }

    v229 = [[BWRefinedCinematographyNode alloc] initWithAudioEnabled:0];
    v230 = MEMORY[0x1E696AEC0];
    lowercaseString = [v13 name];
    [v230 stringWithFormat:@"%@ %@"];
    [OUTLINED_FUNCTION_17() setName:?];
    if ([v13 addNode:v229 error:&v675] & 1) != 0 && (objc_msgSend(OUTLINED_FUNCTION_32_3(), "addNode:error:", v229))
    {
      [(BWRefinedCinematographyNode *)v229 videoInput];
      v231 = OUTLINED_FUNCTION_6_21();
      if (OUTLINED_FUNCTION_63_1(v231, v232, v233, v234, v235, v236, v237, v238, lowercaseString, @"Refined Cinematography", v479, v485, v487, v489, v494, v497, v500, v504, v515, v524, v529, v533, v535, v537, v539, v540, v542, v543, v544, v546, output5, schedulerCopy, v554, cinematicAudioSourceOutput, audioSourceOutput2, v558, v559, boxedMetadataOutput3, boxedMetadataOutput2, v566, v567, v568, v569, boxedMetadataOutput, v572, v575, v576, v577, v580, v581, output2, v589, v592, v594, v595, graphCopy, v599, v602, v603, v604, v606, delegateCopy, v608))
      {
        videoOutput = [(BWRefinedCinematographyNode *)v229 videoOutput];
        v240 = objc_alloc_init(BWCinematicVideoMetadataNode);
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", objc_msgSend(v13, "name"), @"Cinematic Video Metadata"];
        [OUTLINED_FUNCTION_8() setName:?];
        if ([OUTLINED_FUNCTION_20_5() addNode:? error:?] & 1) != 0 && (objc_msgSend(OUTLINED_FUNCTION_32_3(), "addNode:error:", v240))
        {
          [(BWNode *)v240 input];
          if ([OUTLINED_FUNCTION_6_21() connectOutput:videoOutput toInput:? pipelineStage:?])
          {
            passthruOutput = [(BWCinematicVideoMetadataNode *)v240 passthruOutput];
            metadataOutput = [(BWCinematicVideoMetadataNode *)v240 metadataOutput];
            v663[0] = @"PrimaryFormat";
            v663[1] = @"Depth";
            v242 = -[BWAttachedMediaSplitNode initWithAttachedMediaKeys:]([BWAttachedMediaSplitNode alloc], "initWithAttachedMediaKeys:", [MEMORY[0x1E695DEC8] arrayWithObjects:v663 count:2]);
            v243 = MEMORY[0x1E696AEC0];
            lowercaseString = [v13 name];
            v477 = @"Depth/YUV Splitter";
            [v243 stringWithFormat:@"%@ %@"];
            [OUTLINED_FUNCTION_8() setName:?];
            if (([OUTLINED_FUNCTION_20_5() addNode:? error:?] & 1) == 0)
            {
              goto LABEL_620;
            }

            if (([OUTLINED_FUNCTION_32_3() addNode:v242 error:?] & 1) == 0)
            {
              goto LABEL_620;
            }

            [(BWNode *)v242 input];
            if (([OUTLINED_FUNCTION_6_21() connectOutput:passthruOutput toInput:? pipelineStage:?] & 1) == 0)
            {
              goto LABEL_620;
            }

            CFPreferenceNumberWithDefault = [(NSArray *)[(BWNode *)v242 outputs] objectAtIndexedSubscript:0];
            [CFPreferenceNumberWithDefault setName:@"Primary"];
            output8 = [(NSArray *)[(BWNode *)v242 outputs] objectAtIndexedSubscript:1];
            [output8 setName:@"Depth"];
            if (!CFPreferenceNumberWithDefault)
            {
LABEL_238:
              v647 = 0;
              v552 = 0;
              dCopy12 = d;
              v245 = 0x1E696A000;
LABEL_357:
              v362 = -[BWQuickTimeMovieFileSinkNode initWithNumberOfVideoInputs:numberOfAuxiliaryPictureInputs:numberOfAudioInputs:numberOfMetadataInputs:cameraInfoByPortType:pipelineIndex:sinkID:]([BWQuickTimeMovieFileSinkNode alloc], "initWithNumberOfVideoInputs:numberOfAuxiliaryPictureInputs:numberOfAudioInputs:numberOfMetadataInputs:cameraInfoByPortType:pipelineIndex:sinkID:", v569, v567 + HIDWORD(v603), v568, v580, v628, pipelinesCopy, [dCopy12 sinkID]);
              [(BWQuickTimeMovieFileSinkNode *)v362 setIrisMotionAnalysisRingBuffer:v566];
              if (v641)
              {
                v363 = *(v641 + 160);
              }

              else
              {
                v363 = 0;
              }

              [(BWQuickTimeMovieFileSinkNode *)v362 setClientApplicationID:v363];
              if (pipelinesCopy == 1)
              {
                v364 = 82;
              }

              else
              {
                v364 = 81;
              }

              [(BWQuickTimeMovieFileSinkNode *)v362 setPipelineTraceID:v364];
              if (v641)
              {
                v365 = *(v641 + 168);
              }

              else
              {
                v365 = 0;
              }

              [(BWQuickTimeMovieFileSinkNode *)v362 setMaximumAllowedInFlightCompressedBytes:v365];
              if (v576)
              {
                objc_msgSend_irisMovieDuration(v576);
              }

              else
              {
                OUTLINED_FUNCTION_36_5();
              }

              v366 = CMTimeGetSeconds(&time) + 2.0;
              v367 = v366;
              if (v576)
              {
                objc_msgSend_irisMovieVideoFrameDuration(v576);
              }

              else
              {
                OUTLINED_FUNCTION_36_5();
              }

              v368 = ceil(v367 / CMTimeGetSeconds(&time));
              v369 = v368;
              if (pipelinesCopy == 1)
              {
                [(BWQuickTimeMovieFileSinkNode *)v362 setupOverCaptureQualityMetricsForLivePhotoHistory:v369];
              }

              if ([v576 irisMovieCaptureEnabled])
              {
                [(BWQuickTimeMovieFileSinkNode *)v362 setupRingBufferForStabilizedTrajectoryHomographies:v369];
              }

              if (([OUTLINED_FUNCTION_9_11() addNode:v362 error:?] & 1) == 0)
              {
                goto LABEL_578;
              }

              *(v13 + 15) = v362;
              [(BWQuickTimeMovieFileSinkNode *)v362 setIrisSampleReferenceMoviesEnabled:0];
              [(BWFileSinkNode *)v362 setRecordingStatusDelegate:callback];
              if (dCopy12)
              {
                videoOrientationMetadataNode = [dCopy12[7] videoOrientationMetadataNode];
              }

              else
              {
                videoOrientationMetadataNode = 0;
              }

              [videoOrientationMetadataNode videoOrientationTimeMachine];
              [OUTLINED_FUNCTION_36() setVideoOrientationTimeMachine:?];
              [*(v245 + 3776) stringWithFormat:@"Tail Pipeline %lu Movie File Sink Node", pipelinesCopy];
              [OUTLINED_FUNCTION_36() setName:?];
              v583 = CFPreferenceNumberWithDefault;
              if (CFPreferenceNumberWithDefault)
              {
                v371 = [OUTLINED_FUNCTION_46_4() objectAtIndexedSubscript:0];
                [v220 movieFilePipelineStage];
                if (([OUTLINED_FUNCTION_11_16() connectOutput:CFPreferenceNumberWithDefault toInput:v371 pipelineStage:?] & 1) == 0)
                {
                  goto LABEL_578;
                }

                CFPreferenceNumberWithDefault = 1;
              }

              if (!output2)
              {
                v645 = -1;
                goto LABEL_384;
              }

              [OUTLINED_FUNCTION_46_4() objectAtIndexedSubscript:CFPreferenceNumberWithDefault];
              [v220 movieFilePipelineStage];
              OUTLINED_FUNCTION_11_16();
              OUTLINED_FUNCTION_53();
              if ([v372 connectOutput:? toInput:? pipelineStage:?])
              {
                v645 = CFPreferenceNumberWithDefault;
                OUTLINED_FUNCTION_21_6();
LABEL_384:
                [(BWQuickTimeMovieFileSinkNode *)v362 setStereoVideoCaptureEnabled:stereoVideoCaptureEnabled];
                -[BWQuickTimeMovieFileSinkNode setCinematicVideoEnabled:](v362, "setCinematicVideoEnabled:", [v595 cinematicVideoEnabled]);
                -[BWQuickTimeMovieFileSinkNode setFrontRearSimultaneousVideoRecording:](v362, "setFrontRearSimultaneousVideoRecording:", [-[__CFString sinkConfiguration](v606 "sinkConfiguration")]);
                if (!output8)
                {
                  v375 = -1;
                  v374 = v647;
LABEL_388:
                  v642 = v375;
                  memset(v655, 0, sizeof(v655));
                  allKeys = [v374 allKeys];
                  v377 = [allKeys countByEnumeratingWithState:v655 objects:v654 count:16];
                  if (v377)
                  {
                    v378 = v377;
                    array5 = 0;
                    v380 = CFPreferenceNumberWithDefault;
LABEL_390:
                    v381 = 0;
                    CFPreferenceNumberWithDefault = v380;
                    while (1)
                    {
                      OUTLINED_FUNCTION_50_3();
                      if (!v56)
                      {
                        objc_enumerationMutation(allKeys);
                      }

                      v382 = *(*(&v655[0] + 1) + 8 * v381);
                      [v374 objectForKeyedSubscript:v382];
                      [OUTLINED_FUNCTION_46_4() objectAtIndexedSubscript:CFPreferenceNumberWithDefault];
                      [indexCopy movieFilePipelineStage];
                      if (![OUTLINED_FUNCTION_4_26() connectOutput:? toInput:? pipelineStage:?])
                      {
                        goto LABEL_442;
                      }

                      [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", CFPreferenceNumberWithDefault), v382}];
                      if (!array5)
                      {
                        array5 = [MEMORY[0x1E695DF70] array];
                      }

                      [MEMORY[0x1E696AD98] numberWithInt:CFPreferenceNumberWithDefault];
                      [OUTLINED_FUNCTION_36() addObject:?];
                      ++CFPreferenceNumberWithDefault;
                      ++v381;
                      v374 = v647;
                      if (v378 == v381)
                      {
                        v378 = [allKeys countByEnumeratingWithState:v655 objects:v654 count:16];
                        v380 = CFPreferenceNumberWithDefault;
                        if (v378)
                        {
                          goto LABEL_390;
                        }

                        goto LABEL_400;
                      }
                    }
                  }

                  array5 = 0;
LABEL_400:
                  if (audioSourceOutput2)
                  {
                    v383 = OUTLINED_FUNCTION_46_4();
                    OUTLINED_FUNCTION_43_4(v383, v384);
                    v385 = indexCopy;
                    [indexCopy movieFilePipelineStage];
                    v386 = v558;
                    v387 = v602;
                    v388 = 0x1E696A000;
                    if (([OUTLINED_FUNCTION_4_26() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                    {
                      goto LABEL_442;
                    }

                    v635 = CFPreferenceNumberWithDefault;
                    OUTLINED_FUNCTION_21_6();
                  }

                  else
                  {
                    v635 = -1;
                    v385 = indexCopy;
                    v386 = v558;
                    v387 = v602;
                    v388 = 0x1E696A000uLL;
                  }

                  if (cinematicAudioSourceOutput)
                  {
                    inputs = [*(v13 + 15) inputs];
                    OUTLINED_FUNCTION_43_4(inputs, v390);
                    OUTLINED_FUNCTION_44_4();
                    if (([OUTLINED_FUNCTION_4_26() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                    {
                      goto LABEL_442;
                    }

                    v632 = CFPreferenceNumberWithDefault;
                    OUTLINED_FUNCTION_21_6();
                  }

                  else
                  {
                    v632 = -1;
                  }

                  if (metadataOutput)
                  {
                    inputs2 = [*(v13 + 15) inputs];
                    OUTLINED_FUNCTION_43_4(inputs2, v392);
                    OUTLINED_FUNCTION_44_4();
                    if (([OUTLINED_FUNCTION_4_26() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                    {
                      goto LABEL_442;
                    }

                    v625 = CFPreferenceNumberWithDefault;
                    OUTLINED_FUNCTION_21_6();
                  }

                  else
                  {
                    v625 = -1;
                  }

                  if ([v387 count])
                  {
                    v393 = 0;
                    CFPreferenceNumberWithDefault = CFPreferenceNumberWithDefault;
                    do
                    {
                      [v387 objectAtIndexedSubscript:v393];
                      [objc_msgSend(*(v13 + 15) "inputs")];
                      [v385 movieFilePipelineStage];
                      if (([OUTLINED_FUNCTION_4_26() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                      {
                        goto LABEL_442;
                      }

                      ++CFPreferenceNumberWithDefault;
                    }

                    while (++v393 < [v387 count]);
                  }

                  if ([v385 indexOfAudioRemixInMetadataOutputs] == -1)
                  {
                    v395 = -1;
                  }

                  else
                  {
                    v394 = CFPreferenceNumberWithDefault - [v387 count];
                    v395 = v394 + [v385 indexOfAudioRemixInMetadataOutputs];
                  }

                  v629 = v395;
                  v396 = [v387 count];
                  v397 = OUTLINED_FUNCTION_56_3();
                  if (v397)
                  {
                    v398 = v397;
                    v399 = MEMORY[0];
                    v400 = CFPreferenceNumberWithDefault - v396;
                    do
                    {
                      for (j = 0; j != v398; ++j)
                      {
                        if (MEMORY[0] != v399)
                        {
                          objc_enumerationMutation(indexesOfDetectedObjectsInMetadataOutputs);
                        }

                        [v386 addObject:{objc_msgSend(*(v388 + 3480), "numberWithInteger:", v400 + objc_msgSend(*(8 * j), "integerValue"))}];
                      }

                      v398 = OUTLINED_FUNCTION_56_3();
                    }

                    while (v398);
                  }

                  if (([v385 indexOfVideoOrientationInMetadataOutputs] & 0x80000000) != 0)
                  {
                    v403 = -1;
                  }

                  else
                  {
                    v402 = CFPreferenceNumberWithDefault - [v602 count];
                    v403 = v402 + [v385 indexOfVideoOrientationInMetadataOutputs];
                  }

                  objb = v403;
                  if (boxedMetadataOutput)
                  {
                    inputs3 = [*(v13 + 15) inputs];
                    OUTLINED_FUNCTION_43_4(inputs3, v405);
                    OUTLINED_FUNCTION_44_4();
                    if (([OUTLINED_FUNCTION_4_26() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                    {
                      goto LABEL_442;
                    }

                    v615 = CFPreferenceNumberWithDefault;
                    OUTLINED_FUNCTION_21_6();
                    if (boxedMetadataOutput2)
                    {
                      goto LABEL_432;
                    }
                  }

                  else
                  {
                    v615 = -1;
                    if (boxedMetadataOutput2)
                    {
LABEL_432:
                      inputs4 = [*(v13 + 15) inputs];
                      OUTLINED_FUNCTION_43_4(inputs4, v407);
                      OUTLINED_FUNCTION_44_4();
                      OUTLINED_FUNCTION_11_16();
                      OUTLINED_FUNCTION_53();
                      if (([v408 connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                      {
                        goto LABEL_442;
                      }

                      OUTLINED_FUNCTION_21_6();
LABEL_436:
                      v613 = v409;
                      if (boxedMetadataOutput3)
                      {
                        inputs5 = [*(v13 + 15) inputs];
                        OUTLINED_FUNCTION_43_4(inputs5, v411);
                        OUTLINED_FUNCTION_44_4();
                        if (([OUTLINED_FUNCTION_4_26() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                        {
                          goto LABEL_442;
                        }

                        v622 = CFPreferenceNumberWithDefault;
                        OUTLINED_FUNCTION_21_6();
                      }

                      else
                      {
                        v622 = -1;
                      }

                      if (v552)
                      {
                        inputs6 = [*(v13 + 15) inputs];
                        OUTLINED_FUNCTION_43_4(inputs6, v413);
                        OUTLINED_FUNCTION_44_4();
                        OUTLINED_FUNCTION_11_16();
                        OUTLINED_FUNCTION_53();
                        if (([v414 connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                        {
LABEL_442:
                          OUTLINED_FUNCTION_0_31();
                          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", lowercaseString);
                          goto LABEL_579;
                        }
                      }

                      else
                      {
                        CFPreferenceNumberWithDefault = 0xFFFFFFFFLL;
                      }

                      [*(v13 + 15) setNonCriticalAudioVideoTrackInputIndices:array5];
                      v415 = [v647 count];
                      v416 = [v647 count];
                      v652 = [MEMORY[0x1E695DF70] arrayWithCapacity:12];
                      v639 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
                      v637 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
                      v650 = [MEMORY[0x1E695DF70] arrayWithCapacity:2 * v415 + 2];
                      v627 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
                      v417 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
                      v418 = [MEMORY[0x1E695DF70] arrayWithCapacity:2 * v416 + 6];
                      if (v583)
                      {
                        if (v645 != -1 || v642 != -1 || v625 != -1)
                        {
                          v421 = [*(v388 + 3480) numberWithInt:0];
                          if (v645 != -1)
                          {
                            [v652 addObject:OUTLINED_FUNCTION_66_0()];
                            [OUTLINED_FUNCTION_12_0() addObject:?];
                          }

                          v422 = v639;
                          v611 = v417;
                          if (v642 == -1 || (v423 = [*(v388 + 3480) numberWithInt:v642], objc_msgSend(OUTLINED_FUNCTION_40(), "addObject:"), objc_msgSend(v650, "addObject:", v423), objc_msgSend(v418, "addObject:", v423), objc_msgSend(v418, "addObject:", @"com.apple.quicktime.video-map"), objc_msgSend(v418, "addObject:", v423), objc_msgSend(v418, "addObject:", @"com.apple.quicktime.video-map.depth"), v625 == -1))
                          {
                            v424 = v418;
                          }

                          else
                          {
                            [v652 addObject:{objc_msgSend(*(v388 + 3480), "numberWithInt:", v625)}];
                            [OUTLINED_FUNCTION_40() addObject:?];
                            [v639 addObject:{objc_msgSend(*(v388 + 3480), "numberWithInt:", v625)}];
                            [OUTLINED_FUNCTION_20_5() addObject:?];
                            [v418 addObject:v423];
                            v424 = v418;
                            [v418 addObject:@"com.apple.quicktime.cinematic-video-map.depth"];
                          }

                          goto LABEL_474;
                        }

                        if ([dictionary2 count] || (v622 == -1 ? (v425 = CFPreferenceNumberWithDefault == -1) : (v425 = 0), !v425 || objc_msgSend(v386, "count") || (objb == -1 ? (v426 = v615 == -1) : (v426 = 0), v426 ? (v427 = v613 == -1) : (v427 = 0), !v427)))
                        {
                          v611 = v417;
                          v424 = v418;
                          v421 = [*(v388 + 3480) numberWithInt:0];
                          v422 = v639;
LABEL_474:
                          v428 = OUTLINED_FUNCTION_61_0();
                          if (v428)
                          {
                            v429 = v428;
                            v430 = MEMORY[0];
                            do
                            {
                              for (k = 0; k != v429; ++k)
                              {
                                if (MEMORY[0] != v430)
                                {
                                  objc_enumerationMutation(v386);
                                }

                                v432 = *(8 * k);
                                [v652 addObject:v432];
                                [v652 addObject:v421];
                                [v422 addObject:v432];
                                [OUTLINED_FUNCTION_20_5() addObject:?];
                              }

                              v429 = OUTLINED_FUNCTION_61_0();
                            }

                            while (v429);
                          }

                          if (objb != -1)
                          {
                            OUTLINED_FUNCTION_64_3();
                            [OUTLINED_FUNCTION_17() addObject:?];
                            [OUTLINED_FUNCTION_12_0() addObject:?];
                            [v422 addObject:OUTLINED_FUNCTION_64_3()];
                            [OUTLINED_FUNCTION_20_5() addObject:?];
                          }

                          if (v615 != -1)
                          {
                            OUTLINED_FUNCTION_64_3();
                            [OUTLINED_FUNCTION_17() addObject:?];
                            [OUTLINED_FUNCTION_12_0() addObject:?];
                            [v422 addObject:OUTLINED_FUNCTION_64_3()];
                            [OUTLINED_FUNCTION_20_5() addObject:?];
                          }

                          if (v613 != -1)
                          {
                            [v637 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:")}];
                            [OUTLINED_FUNCTION_12_0() addObject:?];
                          }

                          v433 = OUTLINED_FUNCTION_60_4();
                          if (v433)
                          {
                            v434 = v433;
                            v435 = MEMORY[0];
                            do
                            {
                              for (m = 0; m != v434; ++m)
                              {
                                if (MEMORY[0] != v435)
                                {
                                  objc_enumerationMutation(dictionary2);
                                }

                                v437 = *(8 * m);
                                v438 = [dictionary2 objectForKeyedSubscript:v437];
                                [v650 addObject:v438];
                                [v650 addObject:v421];
                                [v424 addObject:v438];
                                isEqualToString = objc_msgSend_isEqualToString_(v437);
                                v440 = @"com.apple.quicktime.video-map.person";
                                if ((isEqualToString & 1) == 0)
                                {
                                  v441 = objc_msgSend_isEqualToString_(v437);
                                  v440 = @"com.apple.quicktime.video-map.skin";
                                  if ((v441 & 1) == 0)
                                  {
                                    v442 = objc_msgSend_isEqualToString_(v437);
                                    v440 = @"com.apple.quicktime.video-map.sky";
                                    if ((v442 & 1) == 0)
                                    {
                                      v443 = objc_msgSend_isEqualToString_(v437);
                                      v440 = @"com.apple.quicktime.video-map.smart-style-linear-thumbnail";
                                      if ((v443 & 1) == 0)
                                      {
                                        if (objc_msgSend_isEqualToString_(v437))
                                        {
                                          v440 = @"com.apple.quicktime.video-map.smart-style-delta-map";
                                        }

                                        else
                                        {
                                          v440 = @"Unknown";
                                        }
                                      }
                                    }
                                  }
                                }

                                [v424 addObject:v440];
                              }

                              v434 = OUTLINED_FUNCTION_60_4();
                            }

                            while (v434);
                          }

                          v388 = 0x1E696A000uLL;
                          if (v622 != -1)
                          {
                            [v652 addObject:OUTLINED_FUNCTION_66_0()];
                            [OUTLINED_FUNCTION_12_0() addObject:?];
                            [v639 addObject:OUTLINED_FUNCTION_66_0()];
                            [OUTLINED_FUNCTION_12_0() addObject:?];
                          }

                          v13 = v644;
                          v418 = v424;
                          v417 = v611;
                          if (CFPreferenceNumberWithDefault != -1)
                          {
                            [v652 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", CFPreferenceNumberWithDefault)}];
                            [OUTLINED_FUNCTION_40() addObject:?];
                            [v639 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", CFPreferenceNumberWithDefault)}];
                            [OUTLINED_FUNCTION_40() addObject:?];
                          }
                        }
                      }

                      if (v635 != -1 && v632 != -1)
                      {
                        [*(v388 + 3480) numberWithInt:v632];
                        [OUTLINED_FUNCTION_7() addObject:?];
                        OUTLINED_FUNCTION_66_0();
                        [OUTLINED_FUNCTION_7() addObject:?];
                      }

                      if (v632 != -1 && v629 != -1)
                      {
                        [*(v388 + 3480) numberWithInt:?];
                        [OUTLINED_FUNCTION_36() addObject:?];
                        [*(v388 + 3480) numberWithInt:v632];
                        [OUTLINED_FUNCTION_36() addObject:?];
                      }

                      if ([v652 count])
                      {
                        [OUTLINED_FUNCTION_17_7() setTrackReferenceListForMetadataInputs:?];
                      }

                      if ([v637 count])
                      {
                        [OUTLINED_FUNCTION_17_7() setTrackReferenceListForRenderMetadataInputs:?];
                      }

                      if ([v639 count])
                      {
                        [OUTLINED_FUNCTION_17_7() setStructuralDependentTrackReferenceListForMetadataInputs:?];
                      }

                      if ([v650 count])
                      {
                        [OUTLINED_FUNCTION_17_7() setTrackReferenceListForVideoInputs:?];
                      }

                      if ([v627 count])
                      {
                        [*(v13 + 15) setTrackReferenceListForAudioInputs:v627];
                      }

                      if ([v417 count])
                      {
                        [*(v13 + 15) setTrackReferenceListForAudioRemixInputs:v417];
                      }

                      if ([v418 count])
                      {
                        [*(v13 + 15) setTaggedMediaCharacteristicsForInputs:v418];
                      }

                      goto LABEL_579;
                    }
                  }

                  v409 = -1;
                  goto LABEL_436;
                }

                v373 = [OUTLINED_FUNCTION_46_4() objectAtIndexedSubscript:CFPreferenceNumberWithDefault];
                [v220 movieFilePipelineStage];
                v374 = v647;
                if ([OUTLINED_FUNCTION_11_16() connectOutput:output8 toInput:v373 pipelineStage:?])
                {
                  OUTLINED_FUNCTION_21_6();
                  goto LABEL_388;
                }
              }

LABEL_578:
              OUTLINED_FUNCTION_0_31();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", lowercaseString);
              goto LABEL_579;
            }

LABEL_240:
            if ([v25 count])
            {
              v246 = [MEMORY[0x1E695DF70] arrayWithObject:@"PrimaryFormat"];
              [v246 addObjectsFromArray:v25];
              v247 = [[BWAttachedMediaSplitNode alloc] initWithAttachedMediaKeys:v246];
              v248 = MEMORY[0x1E696AEC0];
              lowercaseString = [v13 name];
              [v248 stringWithFormat:@"%@ %@"];
              [OUTLINED_FUNCTION_8() setName:?];
              [(BWAttachedMediaSplitNode *)v247 setEmitsDroppedSampleForMissingAttachedMedia:1];
              if (([OUTLINED_FUNCTION_20_5() addNode:? error:?] & 1) == 0)
              {
                goto LABEL_620;
              }

              if (([OUTLINED_FUNCTION_32_3() addNode:v247 error:?] & 1) == 0)
              {
                goto LABEL_620;
              }

              [(BWNode *)v247 input];
              v249 = OUTLINED_FUNCTION_6_21();
              if ((OUTLINED_FUNCTION_63_1(v249, v250, v251, v252, v253, v254, v255, v256, lowercaseString, @"Smart Style Media Splitter", v479, v485, v487, v489, v494, v497, v500, v504, v515, v524, v529, v533, v535, v537, v539, v540, v542, v543, v544, v546, output5, schedulerCopy, metadataOutput, cinematicAudioSourceOutput, audioSourceOutput2, v558, v559, boxedMetadataOutput3, boxedMetadataOutput2, v566, v567, v568, v569, boxedMetadataOutput, v572, v575, v576, v577, v580, v581, output2, v589, v592, v594, v595, output8, v599, v602, v603, v604, v606, delegateCopy, v608) & 1) == 0)
              {
                goto LABEL_620;
              }

              v257 = v220;
              v258 = [(NSArray *)[(BWNode *)v247 outputs] objectAtIndexedSubscript:0];
              [v258 setName:@"Primary"];
              dictionary3 = [MEMORY[0x1E695DF90] dictionary];
              if ([v246 count] >= 2)
              {
                v260 = 1;
                do
                {
                  v261 = [(NSArray *)[(BWNode *)v247 outputs] objectAtIndexedSubscript:v260];
                  v262 = [v246 objectAtIndexedSubscript:v260];
                  mfsp_pipelineNameFromSmartStyleAttachedMediaKey(v262, v263);
                  [OUTLINED_FUNCTION_28() setName:?];
                  [dictionary3 setObject:v261 forKeyedSubscript:v262];
                  ++v260;
                }

                while ([v246 count] > v260);
              }

              v647 = dictionary3;
              v264 = stereoVideoCaptureEnabled;
              CFPreferenceNumberWithDefault = v258;
              if (!v258)
              {
                v552 = 0;
                dCopy12 = d;
                v245 = 0x1E696A000;
                v220 = v257;
                goto LABEL_357;
              }

              dCopy12 = d;
              v265 = 0x1E696A000;
              v220 = v257;
              v224 = v606;
            }

            else
            {
              v647 = 0;
              dCopy12 = d;
              v264 = stereoVideoCaptureEnabled;
              v265 = 0x1E696A000uLL;
            }

            v631 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
            [v631 setObject:v619 forKeyedSubscript:@"AVVideoCodecKey"];
            if (![(__CFString *)v224 outputFormat])
            {
              [v631 setObject:&unk_1F224A9F0 forKeyedSubscript:@"AVVideoCompressionPropertiesKey"];
              objc_msgSend_isEqualToString_(v619);
            }

            if (v13[152] == 1)
            {
              [v631 setObject:0 forKeyedSubscript:@"AVVideoWidthKey"];
              v266 = v631;
              v267 = 0;
              goto LABEL_265;
            }

            if ([(__CFString *)v224 outputWidth]< 1 || [(__CFString *)v224 outputHeight]< 1)
            {
              v277 = [objc_msgSend(-[__CFString sourceConfiguration](v224 "sourceConfiguration")];
              v278 = HIDWORD(v277);
              if (v277 < 1 || SHIDWORD(v277) < 1)
              {
                [v631 setObject:&unk_1F2242FB8 forKeyedSubscript:@"AVVideoWidthKey"];
                v267 = &unk_1F2242FD0;
                v266 = v631;
                goto LABEL_265;
              }

              v272 = v631;
              [v631 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"AVVideoWidthKey"}];
              v276 = MEMORY[0x1E696AD98];
              outputHeight = v278;
            }

            else
            {
              v268 = [MEMORY[0x1E696AD98] numberWithInt:{-[__CFString outputWidth](v224, "outputWidth")}];
              v269 = v220;
              v270 = v265;
              v271 = v224;
              v272 = v631;
              [v631 setObject:v268 forKeyedSubscript:@"AVVideoWidthKey"];
              v273 = MEMORY[0x1E696AD98];
              v274 = v271;
              v265 = v270;
              v220 = v269;
              outputHeight = [(__CFString *)v274 outputHeight];
              v276 = v273;
            }

            v267 = [v276 numberWithInt:outputHeight];
            v266 = v272;
LABEL_265:
            [v266 setObject:v267 forKeyedSubscript:@"AVVideoHeightKey"];
            if (v641)
            {
              v280 = *(v641 + 8);
            }

            else
            {
              v280 = 0;
            }

            [objc_msgSend(v280 "requiredFormat")];
            *(v13 + 36) = 2;
            if (v264)
            {
              ++*(v13 + 36);
            }

            [v631 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(v13 + 36)), @"CVPixelBufferRecyclingSlop"}];
            if (objc_msgSend_isEqualToString_(v619))
            {
              [v631 setObject:&unk_1F2242FE8 forKeyedSubscript:@"AVVideoHEVCExtraRetainedBufferCount"];
            }

            if (!workgroup)
            {
              compositionPictureInPictureRectMetadataOutput = 0;
              goto LABEL_293;
            }

            v281 = CFPreferenceNumberWithDefault;
            if (v641)
            {
              v282 = *(v641 + 24);
            }

            else
            {
              v282 = 0;
            }

            v283 = [v282 objectAtIndex:1];
            v284 = [[BWMultiCamClientCompositingNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:0 compositingStrategy:0 gainMapSupported:0 clientCompositingCallback:workgroup];
            if (!v284)
            {
              goto LABEL_620;
            }

            v285 = v284;
            if (([OUTLINED_FUNCTION_9_11() addNode:v284 error:?] & 1) == 0)
            {
              goto LABEL_620;
            }

            [(BWNode *)v285 input];
            if (([OUTLINED_FUNCTION_6_21() connectOutput:v281 toInput:? pipelineStage:?] & 1) == 0)
            {
              goto LABEL_620;
            }

            [(BWNode *)v285 setName:@"Movie File Client Compositing"];
            output9 = [objc_msgSend(objc_msgSend(objc_msgSend(dCopy12 "headPipeline")];
            [v220 movieFileSinkPipelineConfiguration];
            [v283 connectionID];
            v287 = [OUTLINED_FUNCTION_28() objectForKeyedSubscript:?];
            if (v287)
            {
              v288 = *(v287 + 16);
            }

            else
            {
              v288 = 0;
            }

            if (![FigCaptureVISPipeline visPipelineIsRequiredForFigCaptureVideoStabilizationType:v288]&& (!v641 || *(v641 + 120) != 1))
            {
              dCopy12 = d;
LABEL_291:
              [(NSArray *)[(BWNode *)v285 inputs] objectAtIndexedSubscript:1];
              if (([OUTLINED_FUNCTION_6_21() connectOutput:output9 toInput:? pipelineStage:?] & 1) == 0)
              {
                goto LABEL_620;
              }

              [(BWNode *)v285 output];
              ++v580;
              compositionPictureInPictureRectMetadataOutput = [(BWMultiCamClientCompositingNode *)v285 compositionPictureInPictureRectMetadataOutput];
LABEL_293:
              [v220 delayedCompressorCleanupEnabled];
              v300 = [BWVideoCompressorNode alloc];
              OUTLINED_FUNCTION_34_4();
              *&v301 = OUTLINED_FUNCTION_55_3();
              v303 = [v302 initWithCompressionSettings:v301 overCaptureEnabled:? stereoVideoCompressionEnabled:? maxVideoFrameRate:? delayedCompressorCleanupEnabled:? maxLossyCompressionLevel:? cameraInfoByPortType:?];
              if ([OUTLINED_FUNCTION_9_11() addNode:v303 error:?])
              {
                *(v13 + 7) = v303;
                v475 = OUTLINED_FUNCTION_33_6();
                [v303 stringWithFormat:@"%@ Video Compressor"];
                [OUTLINED_FUNCTION_19_8() setName:?];
                v304 = OUTLINED_FUNCTION_19_8();
                v620 = v305;
                [v304 setPipelineTraceID:?];
                [OUTLINED_FUNCTION_19_8() setMaximumAllowedInFlightCompressedBytes:?];
                if (v614 && *(v614 + 20) >= 3 && (v13[152] & 1) == 0)
                {
                  [OUTLINED_FUNCTION_19_8() setCompressionDimensionsFromInputEnabled:1];
                }

                if (v264)
                {
                  LODWORD(time.value) = 0;
                  v676[0] = BWStereoUtilitiesComputeStereoBaseline(*off_1E798A0C0, *off_1E798A0D0, [v595 cameraInfoByPortType], &time);
                  if (v676[0])
                  {
                    OUTLINED_FUNCTION_1_5();
                    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v475);
                    goto LABEL_579;
                  }

                  [OUTLINED_FUNCTION_19_8() setStereoVideoBaseline:?];
                }

                if (v612)
                {
                  [OUTLINED_FUNCTION_19_8() setPrioritizeEncodingSpeedOverQuality:1];
                }

                [OUTLINED_FUNCTION_19_8() input];
                v306 = OUTLINED_FUNCTION_6_21();
                if (OUTLINED_FUNCTION_63_1(v306, v307, v308, v309, v310, v311, v312, v313, v475, v477, v479, v485, v487, v489, v494, v497, v500, v504, v515, v524, v529, v533, v535, v537, v539, v540, v542, v543, v544, v546, output5, compositionPictureInPictureRectMetadataOutput, metadataOutput, cinematicAudioSourceOutput, audioSourceOutput2, v558, v559, boxedMetadataOutput3, boxedMetadataOutput2, v566, v567, v568, v569, boxedMetadataOutput, v572, v575, v576, v577, v580, v581, output2, v589, v592, v594, v595, output8, v599, v602, v603, v604, v606, delegateCopy, v608))
                {
                  output6 = [OUTLINED_FUNCTION_19_8() output];
                  if (!v598)
                  {
                    output8 = 0;
LABEL_309:
                    v662 = 0u;
                    v661 = 0u;
                    v660 = 0u;
                    v659 = 0u;
                    obja = [v647 allKeys];
                    v319 = [obja countByEnumeratingWithState:&v659 objects:v658 count:16];
                    if (v319)
                    {
                      v320 = v319;
                      v321 = *v660;
LABEL_311:
                      v322 = 0;
                      while (1)
                      {
                        if (*v660 != v321)
                        {
                          objc_enumerationMutation(obja);
                        }

                        v323 = *(*(&v659 + 1) + 8 * v322);
                        v324 = [BWVideoCompressorNode alloc];
                        OUTLINED_FUNCTION_34_4();
                        *&v325 = OUTLINED_FUNCTION_55_3();
                        v327 = [v326 initWithCompressionSettings:v325 overCaptureEnabled:? stereoVideoCompressionEnabled:? maxVideoFrameRate:? delayedCompressorCleanupEnabled:? maxLossyCompressionLevel:? cameraInfoByPortType:?];
                        if (([OUTLINED_FUNCTION_9_11() addNode:v327 error:?] & 1) == 0)
                        {
                          goto LABEL_648;
                        }

                        v328 = MEMORY[0x1E696AEC0];
                        name = [v644 name];
                        v478 = mfsp_pipelineNameFromSmartStyleAttachedMediaKey(v323, v330);
                        [v328 stringWithFormat:@"%@ %@ Compressor", name];
                        [OUTLINED_FUNCTION_24_1() setName:?];
                        [v327 setPipelineTraceID:v620];
                        if (v641)
                        {
                          v331 = *(v641 + 168);
                        }

                        else
                        {
                          v331 = 0;
                        }

                        [v327 setMaximumAllowedInFlightCompressedBytes:v331];
                        [v327 setCompressionDimensionsFromInputEnabled:1];
                        v332 = objc_msgSend_isEqualToString_(v323);
                        v333 = 0x1F21A9870;
                        if ((v332 & 1) == 0)
                        {
                          v334 = objc_msgSend_isEqualToString_(v323);
                          v333 = 0x1F21A9870;
                          if ((v334 & 1) == 0)
                          {
                            v335 = objc_msgSend_isEqualToString_(v323);
                            v333 = 0x1F21A9870;
                            if ((v335 & 1) == 0)
                            {
                              v336 = objc_msgSend_isEqualToString_(v323);
                              v333 = 0x1F21A9890;
                              if ((v336 & 1) == 0)
                              {
                                if (objc_msgSend_isEqualToString_(v323))
                                {
                                  v333 = 0x1F21A98B0;
                                }

                                else
                                {
                                  v333 = 0;
                                }
                              }
                            }
                          }
                        }

                        [v327 setAlternateCompressionSettingsKey:v333];
                        v337 = [v647 objectForKeyedSubscript:v323];
                        input = [v327 input];
                        [dictionary objectForKeyedSubscript:v323];
                        if (([OUTLINED_FUNCTION_11_16() connectOutput:v337 toInput:input pipelineStage:?] & 1) == 0)
                        {
                          goto LABEL_648;
                        }

                        [v327 output];
                        [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
                        v339 = *(v644 + 80);
                        if (!v339)
                        {
                          v339 = objc_alloc_init(MEMORY[0x1E695DF90]);
                          *(v644 + 80) = v339;
                        }

                        [v339 setObject:v327 forKeyedSubscript:v323];
                        ++v322;
                        pipelinesCopy = v626;
                        dCopy12 = d;
                        if (v320 == v322)
                        {
                          v340 = [obja countByEnumeratingWithState:&v659 objects:v658 count:16];
                          v320 = v340;
                          if (v340)
                          {
                            goto LABEL_311;
                          }

                          break;
                        }
                      }
                    }

                    v13 = v644;
                    if ([(FigCaptureVISPipeline *)*(v644 + 40) visNode])
                    {
                      v341 = (*(v644 + 152) | v560) ^ 1;
                    }

                    else
                    {
                      v341 = 0;
                    }

                    v342 = 0;
                    v343 = v341 | v578;
                    v220 = indexCopy;
                    CFPreferenceNumberWithDefault = output6;
                    if (((v341 | v578) & 1) == 0 && !v550)
                    {
                      v342 = 0;
                      if (dCopy12)
                      {
                        if (*(v644 + 32))
                        {
                          v344 = v341;
                          irisStagingNode = [dCopy12[7] irisStagingNode];
                          LOBYTE(v341) = v344;
                          v342 = irisStagingNode != 0;
                        }
                      }
                    }

                    v346 = 0x1E7988000uLL;
                    if (((v545 | v343) & 1) == 0 && !v550 && !v342)
                    {
                      goto LABEL_342;
                    }

                    v621 = v342;
                    v649 = v341;
                    v245 = output6;
                    v357 = [v647 count];
                    if (output8)
                    {
                      v358 = v538 + 1;
                    }

                    else
                    {
                      v358 = v538;
                    }

                    pipelinesCopy = [[BWBackPressureNode alloc] initWithNumberOfInputsAndOutputs:(v358 + v357) initialSemaphoreValue:0];
                    if ([OUTLINED_FUNCTION_9_11() addNode:pipelinesCopy error:?])
                    {
                      [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.capture.moviefile.post-compressor-backpressure.tail.%d", v626];
                      [OUTLINED_FUNCTION_2_31() pipelineStageWithName:? priority:? workgroup:?];
                      v359 = boxedMetadataOutput;
                      v360 = v647;
                      if (v593)
                      {
                        [(NSArray *)[(BWNode *)pipelinesCopy inputs] objectAtIndexedSubscript:0];
                        if (([OUTLINED_FUNCTION_6_21() connectOutput:boxedMetadataOutput toInput:? pipelineStage:?] & 1) == 0)
                        {
                          goto LABEL_648;
                        }

                        v359 = [(NSArray *)[(BWNode *)pipelinesCopy outputs] objectAtIndexedSubscript:0];
                        v361 = 1;
                      }

                      else
                      {
                        v361 = 0;
                      }

                      if (v600)
                      {
                        [(NSArray *)[(BWNode *)pipelinesCopy inputs] objectAtIndexedSubscript:v361];
                        if (([OUTLINED_FUNCTION_6_21() connectOutput:boxedMetadataOutput2 toInput:? pipelineStage:?] & 1) == 0)
                        {
                          goto LABEL_648;
                        }

                        boxedMetadataOutput2 = [(NSArray *)[(BWNode *)pipelinesCopy outputs] objectAtIndexedSubscript:v361++];
                      }

                      if (v605)
                      {
                        [(NSArray *)[(BWNode *)pipelinesCopy inputs] objectAtIndexedSubscript:v361];
                        if (([OUTLINED_FUNCTION_6_21() connectOutput:boxedMetadataOutput3 toInput:? pipelineStage:?] & 1) == 0)
                        {
                          goto LABEL_648;
                        }

                        boxedMetadataOutput3 = [(NSArray *)[(BWNode *)pipelinesCopy outputs] objectAtIndexedSubscript:v361++];
                      }

                      if (v574)
                      {
                        [(NSArray *)[(BWNode *)pipelinesCopy inputs] objectAtIndexedSubscript:v361];
                        if (([OUTLINED_FUNCTION_6_21() connectOutput:v550 toInput:? pipelineStage:?] & 1) == 0)
                        {
                          goto LABEL_648;
                        }

                        ++v361;
                      }

                      [(NSArray *)[(BWNode *)pipelinesCopy inputs] objectAtIndexedSubscript:v361];
                      if ([OUTLINED_FUNCTION_6_21() connectOutput:output6 toInput:? pipelineStage:?])
                      {
                        v446 = [objc_msgSend(output6 "connection")];
                        if (v446 != [objc_msgSend(objc_msgSend(*(v644 + 56) "output")])
                        {
                          OUTLINED_FUNCTION_0_31();
                          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", lowercaseString, v478, v484, v486, v488, v493, v496, v499);
                        }

                        v584 = [(NSArray *)[(BWNode *)pipelinesCopy outputs] objectAtIndexedSubscript:v361];
                        v447 = (v361 + 1);
                        boxedMetadataOutput = v359;
                        if (!output8)
                        {
                          output8 = 0;
                          goto LABEL_550;
                        }

                        [(NSArray *)[(BWNode *)pipelinesCopy inputs] objectAtIndexedSubscript:v361 + 1];
                        if ([OUTLINED_FUNCTION_6_21() connectOutput:output8 toInput:? pipelineStage:?])
                        {
                          v448 = [objc_msgSend(output8 "connection")];
                          if (v448 != [objc_msgSend(objc_msgSend(*(v644 + 72) "output")])
                          {
                            OUTLINED_FUNCTION_0_31();
                            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", lowercaseString, v478, v484, v486, v488, v493, v496, v499);
                          }

                          output8 = [(NSArray *)[(BWNode *)pipelinesCopy outputs] objectAtIndexedSubscript:v361 + 1];
                          v447 = (v361 + 2);
                          v360 = v647;
LABEL_550:
                          memset(v657, 0, sizeof(v657));
                          allKeys2 = [v360 allKeys];
                          v450 = [allKeys2 countByEnumeratingWithState:v657 objects:v656 count:16];
                          if (v450)
                          {
                            v451 = v450;
LABEL_552:
                            v452 = 0;
                            while (1)
                            {
                              OUTLINED_FUNCTION_50_3();
                              if (!v56)
                              {
                                objc_enumerationMutation(allKeys2);
                              }

                              v245 = [v360 objectForKeyedSubscript:*(*(&v657[0] + 1) + 8 * v452)];
                              [(NSArray *)[(BWNode *)pipelinesCopy inputs] objectAtIndexedSubscript:v447];
                              if (![OUTLINED_FUNCTION_6_21() connectOutput:v245 toInput:? pipelineStage:?])
                              {
                                goto LABEL_578;
                              }

                              [(NSArray *)[(BWNode *)pipelinesCopy outputs] objectAtIndexedSubscript:v447];
                              [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
                              ++v447;
                              if (v451 == ++v452)
                              {
                                v451 = [allKeys2 countByEnumeratingWithState:v657 objects:v656 count:16];
                                if (v451)
                                {
                                  goto LABEL_552;
                                }

                                break;
                              }
                            }
                          }

                          v346 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                          if (v649)
                          {
                            v245 = 0x1E696A000uLL;
                            v453 = MEMORY[0x1E696AEC0];
                            v13 = v644;
                            lowercaseString = [v644 name];
                            [v453 stringWithFormat:@"%@ VIS Back Pressure"];
                            [OUTLINED_FUNCTION_24_1() setName:?];
                            *(v644 + 96) = pipelinesCopy;
                            v220 = indexCopy;
                            dCopy12 = d;
                            CFPreferenceNumberWithDefault = v584;
                            if ([v576 irisMovieCaptureEnabled])
                            {
                              pipelinesCopy = v626;
                              v346 = 0x1E7988000;
                              if (HIDWORD(v534))
                              {
                                v454 = OUTLINED_FUNCTION_54_4();
                                *(v644 + 128) = [(FigCaptureVISPipeline *)v454 visNode];
                              }

                              else
                              {
                                *(v644 + 128) = *(v644 + 32);
                              }

                              if (v545)
                              {
LABEL_593:
                                CFPreferenceNumberWithDefault = OUTLINED_FUNCTION_12_12(@"Iris Intermediate JPEG Decompression Back Pressure", 88, lowercaseString, v478, v484, v486, v488, v493, v496, v499, v503, v508, v517, v528, v532, v534, v536);
                                if (!CFPreferenceNumberWithDefault)
                                {
                                  goto LABEL_578;
                                }
                              }
                            }

                            else
                            {
                              v465 = OUTLINED_FUNCTION_54_4();
                              visNode = [(FigCaptureVISPipeline *)v465 visNode];
                              OUTLINED_FUNCTION_41_4(visNode);
                              if (v467)
                              {
                                goto LABEL_593;
                              }
                            }

LABEL_343:
                            if (v588)
                            {
                              v347 = [BWVideoCompressorNode alloc];
                              OUTLINED_FUNCTION_34_4();
                              *&v348 = OUTLINED_FUNCTION_55_3();
                              v350 = [v349 initWithCompressionSettings:v348 overCaptureEnabled:? stereoVideoCompressionEnabled:? maxVideoFrameRate:? delayedCompressorCleanupEnabled:? maxLossyCompressionLevel:? cameraInfoByPortType:?];
                              if (([OUTLINED_FUNCTION_9_11() addNode:v350 error:?] & 1) == 0)
                              {
                                goto LABEL_578;
                              }

                              v351 = v350;
                              *(v13 + 8) = v351;
                              [v351 input];
                              if (([OUTLINED_FUNCTION_6_21() connectOutput:v588 toInput:? pipelineStage:?] & 1) == 0)
                              {
                                goto LABEL_578;
                              }

                              output7 = [*(v13 + 8) output];
                              *(v13 + 14) = [objc_alloc(*(v346 + 3472)) initWithNumberOfInputsAndOutputs:1 initialSemaphoreValue:0];
                              [*(v13 + 14) setName:{objc_msgSend(*(v245 + 3776), "stringWithFormat:", @"%@ Iris SDOF Back Pressure", objc_msgSend(v13, "name"))}];
                              if (([OUTLINED_FUNCTION_9_11() addNode:? error:?] & 1) == 0)
                              {
                                goto LABEL_578;
                              }

                              [objc_msgSend(*(v13 + 14) "inputs")];
                              if (([OUTLINED_FUNCTION_6_21() connectOutput:output7 toInput:? pipelineStage:?] & 1) == 0)
                              {
                                goto LABEL_578;
                              }

                              output2 = [objc_msgSend(*(v13 + 14) "outputs")];
                              v353 = [output7 stringWithFormat:@"%@ Iris SDOF VIS", OUTLINED_FUNCTION_33_6()];
                              v354 = OUTLINED_FUNCTION_54_4();
                              [-[FigCaptureVISPipeline sdofVISNode](v354) setName:v353];
                              [*(v13 + 8) setName:{objc_msgSend(v353, "stringWithFormat:", @"%@ Iris SDOF Compressor", OUTLINED_FUNCTION_33_6())}];
                              v355 = [v353 stringWithFormat:@"%@ Iris VIS", OUTLINED_FUNCTION_33_6()];
                              v356 = OUTLINED_FUNCTION_54_4();
                              [-[FigCaptureVISPipeline visNode](v356) setName:v355];
                              [*(v13 + 7) setName:{objc_msgSend(v355, "stringWithFormat:", @"%@ Iris Compressor", OUTLINED_FUNCTION_33_6())}];
                              v220 = indexCopy;
                            }

                            else
                            {
                              output2 = 0;
                            }

                            goto LABEL_357;
                          }

                          v13 = v644;
                          v220 = indexCopy;
                          dCopy12 = d;
                          CFPreferenceNumberWithDefault = v584;
                          if (v578)
                          {
                            lowercaseString = OUTLINED_FUNCTION_30_2();
                            [v447 stringWithFormat:@"%@ Middle Pipeline VIS Back Pressure"];
                            [OUTLINED_FUNCTION_24_1() setName:?];
                            *(v644 + 96) = pipelinesCopy;
                            v455 = -[FigCaptureVISPipeline visNode]([objc_msgSend(d "middlePipeline")]);
                            OUTLINED_FUNCTION_41_4(v455);
                            if (v456)
                            {
                              goto LABEL_593;
                            }

                            goto LABEL_343;
                          }

                          v346 = 0x1E7988000;
                          if (v545)
                          {
                            [v447 stringWithFormat:@"%@ Iris Intermediate JPEG Decompression Back Pressure", OUTLINED_FUNCTION_30_2()];
                            [OUTLINED_FUNCTION_24_1() setName:?];
                            v468 = pipelinesCopy;
                            v469 = 88;
                          }

                          else
                          {
                            if (v550)
                            {
                              [v447 stringWithFormat:@"%@ Motion Analysius Back Pressure", OUTLINED_FUNCTION_30_2()];
                              [OUTLINED_FUNCTION_24_1() setName:?];
                              goto LABEL_597;
                            }

                            if (!v621)
                            {
                              pipelinesCopy = v626;
LABEL_342:
                              v245 = 0x1E696A000uLL;
                              goto LABEL_343;
                            }

                            [v447 stringWithFormat:@"%@ Scaler Back Pressure Node", OUTLINED_FUNCTION_30_2()];
                            [OUTLINED_FUNCTION_24_1() setName:?];
                            v468 = pipelinesCopy;
                            v469 = 104;
                          }

                          *(v644 + v469) = v468;
LABEL_597:
                          pipelinesCopy = v626;
                          goto LABEL_343;
                        }
                      }
                    }

LABEL_648:
                    OUTLINED_FUNCTION_0_31();
                    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", lowercaseString);
                    goto LABEL_579;
                  }

                  v314 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v631];
                  [v314 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v547), @"AVVideoWidthKey"}];
                  [v314 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v541), @"AVVideoHeightKey"}];
                  v315 = [BWVideoCompressorNode alloc];
                  *&v316 = OUTLINED_FUNCTION_55_3();
                  v318 = [v317 initWithCompressionSettings:v316 overCaptureEnabled:? stereoVideoCompressionEnabled:? maxVideoFrameRate:? delayedCompressorCleanupEnabled:? maxLossyCompressionLevel:? cameraInfoByPortType:?];
                  [*(v265 + 3776) stringWithFormat:@"%@ Depth Compressor", objc_msgSend(v13, "name")];
                  [OUTLINED_FUNCTION_17() setName:?];
                  [v318 setAlternateCompressionSettingsKey:0x1F21A9850];
                  if ([OUTLINED_FUNCTION_9_11() addNode:v318 error:?])
                  {
                    [v318 input];
                    if ([OUTLINED_FUNCTION_6_21() connectOutput:v598 toInput:? pipelineStage:?])
                    {
                      output8 = [v318 output];
                      *(v13 + 9) = v318;
                      goto LABEL_309;
                    }
                  }
                }
              }

LABEL_620:
              OUTLINED_FUNCTION_0_31();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", lowercaseString);
              goto LABEL_579;
            }

            v289 = [schedulerCopy objectForKeyedSubscript:{objc_msgSend(v283, "connectionID")}];
            v290 = [FigCaptureVISPipeline alloc];
            OUTLINED_FUNCTION_13_12();
            [v291 stringWithFormat:@"Tail %d Secondary VIS Pipeline"];
            if (v287)
            {
              v292 = *(v287 + 20);
              v293 = *(v287 + 8);
            }

            else
            {
              v292 = 0;
              v293 = 0;
            }

            v294 = v641;
            if (v641)
            {
              v295 = *(v641 + 144);
              v294 = *(v641 + 128);
              if (v287)
              {
LABEL_286:
                v296 = *(v287 + 32);
LABEL_287:
                v527 = v294;
                v531 = v296;
                v507 = v295;
                v502 = *MEMORY[0x1E6960CF8];
                v492 = v293;
                v483 = v292;
                OUTLINED_FUNCTION_35_4();
                dCopy12 = d;
                v299 = [FigCaptureVISPipeline initWithUpstreamOutput:v290 graph:output9 name:pipeline parentPipeline:v298 videoCaptureConnectionConfiguration:v297 pipelineStage:d sdofPipelineStage:v283 videoStabilizationType:obj motionAttachmentsSource:0 fillExtendedRowsOfOutputBuffer:lowercaseString overCaptureEnabled:HIDWORD(lowercaseString) stereoMode:v477 videoStabilizationOverscanOverride:0 videoStabilizationStrength:v483 motionMetadataPreloadingEnabled:0 visExecutionMode:0 pipelineTraceID:82 captureDevice:v289 outputDimensions:v492 generatedTransformsOutputDimensionsOverride:0 P3ToBT2020ConversionEnabled:0 stabilizeDepthAttachments:v502 outputDepthDimensions:v507 maxLossyCompressionLevel:0 videoSTFEnabled:0 videoGreenGhostMitigationEnabled:0 lightSourceMaskAndKeypointDescriptorDataEnabled:0 videoGreenGhostOfflineMetadataEnabled:0 videoGreenGhostOfflineLightSourceMaskEnabled:0 personSegmentationRenderingEnabled:0 smartStyleRenderingEnabled:0 smartStyleReversibilityEnabled:0 lowResImageUsedByVideoEncoderEnabled:v527 portTypesWithGeometricDistortionCorrectionInVISEnabled:v531 visProcessingSemaphore:?];
                if (!v299)
                {
                  goto LABEL_620;
                }

                output9 = [-[FigCaptureVISPipeline visNode](v299) output];
                v265 = 0x1E696A000;
                goto LABEL_291;
              }
            }

            else
            {
              v295 = 0;
              if (v287)
              {
                goto LABEL_286;
              }
            }

            v296 = 0;
            goto LABEL_287;
          }
        }
      }
    }

LABEL_614:
    OUTLINED_FUNCTION_0_31();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", lowercaseString);
    goto LABEL_579;
  }

  OUTLINED_FUNCTION_1_5();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", lowercaseString);
LABEL_579:
  result = v676[0];
  if (!v676[0])
  {
    if (v675)
    {
      return [v675 code];
    }
  }

  return result;
}

- (id)setUpBackPressureSemaphoresWithIrisIntermediateJPEGPhotoDecompressorNode:(void *)node videoDefringingNode:
{
  if (result)
  {
    v5 = result;
    if (result[12])
    {
      OUTLINED_FUNCTION_45_5([objc_msgSend(objc_msgSend(result[16] "output")]);
      [v5[16] setEmitSampleBufferSemaphore:{objc_msgSend(v5[12], "semaphore")}];
      result = [v5[12] setBackPressureSourceNode:v5[16]];
      if (v5[14])
      {
        v6 = [objc_msgSend(objc_msgSend(-[FigCaptureVISPipeline sdofVISNode](v5[5]) "output")];
        OUTLINED_FUNCTION_45_5(v6);
        result = [-[FigCaptureVISPipeline sdofVISNode](v5[5]) setEmitSampleBufferSemaphore:{objc_msgSend(v5[14], "semaphore")}];
      }
    }

    if (v5[11])
    {
      if (!v5[17])
      {
        v7 = [objc_msgSend(objc_msgSend(a2 "output")];
        if ((v7 - [objc_msgSend(node "input")] + 1) <= 0)
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14, v15, v16, v17, v18, v19, v20, v21);
        }

        [OUTLINED_FUNCTION_31_5() setInitialSemaphoreValue:?];
        [OUTLINED_FUNCTION_31_5() semaphore];
        [OUTLINED_FUNCTION_4() addEmitSampleBufferSemaphore:?];
        v8 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_31_5() "input")];
        [objc_msgSend(objc_msgSend(objc_msgSend(a2 "input")];
        result = [OUTLINED_FUNCTION_28() isEqual:?];
        if ((result & 1) == 0)
        {
          result = [OUTLINED_FUNCTION_31_5() setSemaphoreSignalQueue:v8];
        }
      }

      if (v5[17] == 1)
      {
        v9 = @"SynchronizedSlaveFrame";
        v10 = [objc_msgSend(objc_msgSend(a2 "output")];
        if (!v5[17])
        {
          v9 = @"PrimaryFormat";
        }

        v11 = v10 - [objc_msgSend(objc_msgSend(node "input")] + 1;
        if (v11 <= 0)
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14, v15, v16, v17, v18, v19, v20, v21);
        }

        [OUTLINED_FUNCTION_31_5() setInitialSemaphoreValue:v11];
        [OUTLINED_FUNCTION_31_5() semaphore];
        result = [OUTLINED_FUNCTION_4() addEmitSynchronizedSlaveSampleBufferSemaphore:?];
      }
    }

    if (v5[13])
    {
      [v5[13] setInitialSemaphoreValue:{objc_msgSend(objc_msgSend(objc_msgSend(v5[4], "output"), "primaryMediaProperties"), "resolvedRetainedBufferCount") + 1}];
      semaphore = [v5[13] semaphore];
      v13 = v5[4];

      return [v13 setEmitSampleBufferSemaphore:semaphore];
    }
  }

  return result;
}

- (id)_buildFaceDetectionNode:(uint64_t)node parentPipeline:objectDetectionSourceOutput:faceDetectionNodeOut:
{
  if (!node)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_4();
  if (v3)
  {
    v4 = v2[6];
  }

  else
  {
    v4 = 0;
  }

  if ([v4 count])
  {
    [MEMORY[0x1E695DF70] array];
    v17 = OUTLINED_FUNCTION_51_3();
    if (v2)
    {
      v2 = v2[6];
    }

    v18 = OUTLINED_FUNCTION_14_8(v9, v10, v11, v12, v13, v14, v15, v16, v32, v33, v34, v35, v36, v37, v38, v39, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v17);
    if (v18)
    {
      v19 = v18;
      do
      {
        v20 = 0;
        do
        {
          OUTLINED_FUNCTION_50_3();
          if (!v21)
          {
            objc_enumerationMutation(v2);
          }

          CMMetadataFormatDescriptionGetIdentifiers([*(v60 + 8 * v20) formatDescription]);
          v22 = [OUTLINED_FUNCTION_28() addObject:?];
          ++v20;
        }

        while (v19 != v20);
        v19 = OUTLINED_FUNCTION_14_8(v22, v23, v24, v25, v26, v27, v28, v29, v32, v33, v34, v35, v36, v37, v38, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59);
      }

      while (v19);
    }
  }

  v30 = OUTLINED_FUNCTION_18_8(v5, v6, v7, v8);
  if (v30)
  {
    OUTLINED_FUNCTION_48_3();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v32, v33, v34, v35, v36, v37, v38, v39);
  }

  else
  {
    *v1 = v61;
  }

  return v30;
}

- (id)_metalCommandQueueWithName:(uint64_t)name priority:
{
  if (!self)
  {
    return 0;
  }

  v3 = [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")];
  v4 = FigDispatchQueueCreateWithPriority();
  [v3 setCompletionQueue:v4];
  [v3 setSubmissionQueue:v4];

  return v3;
}

- (BWNodeOutput)_appendBackPressureNodeToPreviousVideoOutput:(void *)output graph:(void *)graph parentPipeline:(uint64_t)pipeline pipelineStage:(uint64_t)stage nodeName:(void *)name backPressureNodeOut:
{
  if (!self)
  {
    return 0;
  }

  v17 = 0;
  v14 = [[BWBackPressureNode alloc] initWithNumberOfInputsAndOutputs:1 initialSemaphoreValue:0];
  -[BWNode setName:](v14, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", objc_msgSend(self, "name"), stage]);
  if (([graph addNode:v14 error:&v17] & 1) == 0 || (objc_msgSend(output, "connectOutput:toInput:pipelineStage:", a2, -[BWNode input](v14, "input"), pipeline) & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  output = [(BWNode *)v14 output];
  if (name)
  {
    *name = v14;
  }

  return output;
}

@end