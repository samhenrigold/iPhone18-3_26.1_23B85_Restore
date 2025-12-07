@interface FigCaptureMovieFileSinkMiddlePipeline
- (FigCaptureMovieFileSinkMiddlePipeline)initWithConfiguration:(id)configuration graph:(id)graph parentPipeline:(id)pipeline headPipeline:(id)headPipeline captureDevicesByConnectionID:(id)d workgroup:(id)workgroup;
- (id)audioOutputForTailIndex:(unint64_t)index;
- (id)metadataOutputsForTailIndex:(unint64_t)index;
- (id)videoOutputForTailIndex:(unint64_t)index;
- (void)_buildMovieFileSinkExtendedCVISMiddleWithConfiguration:(char *)configuration graph:(id *)graph parentPipeline:(void *)pipeline headPipeline:(uint64_t)headPipeline captureDevicesByConnectionID:(uint64_t)d workgroup:;
- (void)dealloc;
@end

@implementation FigCaptureMovieFileSinkMiddlePipeline

- (FigCaptureMovieFileSinkMiddlePipeline)initWithConfiguration:(id)configuration graph:(id)graph parentPipeline:(id)pipeline headPipeline:(id)headPipeline captureDevicesByConnectionID:(id)d workgroup:(id)workgroup
{
  v23.receiver = self;
  v23.super_class = FigCaptureMovieFileSinkMiddlePipeline;
  v14 = [(FigCapturePipeline *)&v23 initWithGraph:graph name:@"Middle Pipeline"];
  if (v14)
  {
    movieFileSinkPipelineConfiguration = [configuration movieFileSinkPipelineConfiguration];
    if (movieFileSinkPipelineConfiguration)
    {
      v16 = 1;
      if (*(movieFileSinkPipelineConfiguration + 138))
      {
        v16 = 2;
      }
    }

    else
    {
      v16 = 1;
    }

    v14->_numberOfTailsToSupport = v16;
    movieFileSinkPipelineConfiguration2 = [configuration movieFileSinkPipelineConfiguration];
    if (movieFileSinkPipelineConfiguration2)
    {
      v18 = *(movieFileSinkPipelineConfiguration2 + 16);
    }

    else
    {
      v18 = 0;
    }

    v19 = ([v18 irisVISMethod] == 3 || objc_msgSend(v18, "irisVISMethod") == 5) && v14->_numberOfTailsToSupport == 1;
    v14->_headPipeline = headPipeline;
    movieFileSinkPipelineConfiguration3 = [configuration movieFileSinkPipelineConfiguration];
    if (movieFileSinkPipelineConfiguration3)
    {
      if (((*(movieFileSinkPipelineConfiguration3 + 138) | v19) & 1) == 0)
      {
        return v14;
      }
    }

    else if (!v19)
    {
      return v14;
    }

    v22 = [(FigCaptureMovieFileSinkMiddlePipeline *)v14 _buildMovieFileSinkExtendedCVISMiddleWithConfiguration:configuration graph:graph parentPipeline:pipeline headPipeline:headPipeline captureDevicesByConnectionID:d workgroup:workgroup];
    if (v22)
    {
      [FigCaptureMovieFileSinkMiddlePipeline initWithConfiguration:v22 graph:v14 parentPipeline:? headPipeline:? captureDevicesByConnectionID:? workgroup:?];
      return 0;
    }
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMovieFileSinkMiddlePipeline;
  [(FigCapturePipeline *)&v3 dealloc];
}

- (id)videoOutputForTailIndex:(unint64_t)index
{
  if (self->_videoFanOut)
  {
    outputs = [(BWNode *)self->_videoFanOut outputs];

    return [(NSArray *)outputs objectAtIndexedSubscript:index];
  }

  else
  {
    headPipeline = self->_headPipeline;

    return [(FigCaptureMovieFileSinkHeadPipeline *)headPipeline videoOutput];
  }
}

- (id)audioOutputForTailIndex:(unint64_t)index
{
  if (self->_audioFanOut)
  {
    outputs = [(BWNode *)self->_audioFanOut outputs];

    return [(NSArray *)outputs objectAtIndexedSubscript:index];
  }

  else
  {
    headPipeline = self->_headPipeline;

    return [(FigCaptureMovieFileSinkHeadPipeline *)headPipeline audioOutput];
  }
}

- (id)metadataOutputsForTailIndex:(unint64_t)index
{
  metadataFanOuts = self->_metadataFanOuts;
  if (metadataFanOuts)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](metadataFanOuts, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_metadataFanOuts;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 addObject:{objc_msgSend(objc_msgSend(*(*(&v15 + 1) + 8 * i), "outputs"), "objectAtIndexedSubscript:", index)}];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v9);
    }

    return v6;
  }

  else
  {
    headPipeline = self->_headPipeline;

    return [(FigCaptureMovieFileSinkHeadPipeline *)headPipeline metadataOutputs];
  }
}

- (void)_buildMovieFileSinkExtendedCVISMiddleWithConfiguration:(char *)configuration graph:(id *)graph parentPipeline:(void *)pipeline headPipeline:(uint64_t)headPipeline captureDevicesByConnectionID:(uint64_t)d workgroup:
{
  if (result)
  {
    v11 = result;
    v122[0] = 0;
    movieFileSinkPipelineConfiguration = [a2 movieFileSinkPipelineConfiguration];
    [a2 movieFilePipelineStage];
    v13 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.moviefile.middle" priority:14 workgroup:d];
    videoOutput = [OUTLINED_FUNCTION_22_4() videoOutput];
    if (!videoOutput)
    {
      goto LABEL_61;
    }

    output = videoOutput;
    movieFileSinkPipelineConfiguration2 = [a2 movieFileSinkPipelineConfiguration];
    if (movieFileSinkPipelineConfiguration2)
    {
      v120 = *(movieFileSinkPipelineConfiguration2 + 16);
      if (movieFileSinkPipelineConfiguration)
      {
LABEL_5:
        v116 = *(movieFileSinkPipelineConfiguration + 215);
        goto LABEL_6;
      }
    }

    else
    {
      v120 = 0;
      if (movieFileSinkPipelineConfiguration)
      {
        goto LABEL_5;
      }
    }

    v116 = 0;
LABEL_6:
    [(__CFString *)v120 connectionID];
    v17 = [OUTLINED_FUNCTION_17() objectForKeyedSubscript:?];
    if (v17)
    {
      v18 = v17[4];
    }

    else
    {
      v18 = 0;
    }

    v19 = [FigCaptureVISPipeline visPipelineIsRequiredForFigCaptureVideoStabilizationType:v18];
    v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    if (!v19 && (!movieFileSinkPipelineConfiguration || *(movieFileSinkPipelineConfiguration + 120) != 1))
    {
      v23 = 0;
LABEL_52:
      if (graph)
      {
        [*(graph + v20[715]) irisStagingNode];
      }

      if (movieFileSinkPipelineConfiguration && *(movieFileSinkPipelineConfiguration + 138) == 1)
      {
        v62 = [[BWOverCaptureAttachedMediaSplitNode alloc] initWithBackPressureExtraRetainBufferCount:0];
      }

      else
      {
        v62 = [[BWFanOutNode alloc] initWithFanOutCount:1 mediaType:1986618469];
        [(BWNode *)v62 setName:@"Just Here To Drop Tagged Buffers"];
      }

      [(BWNodeInput *)[(BWNode *)v62 input] setDiscardsSampleDataTaggedToBeDropped:v23];
      if (([graph addNode:v62 error:0] & 1) == 0)
      {
        goto LABEL_77;
      }

      [(BWNode *)v62 input];
      if (([OUTLINED_FUNCTION_24_0() connectOutput:output toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_77;
      }

      *(v11 + 5) = v62;
LABEL_61:
      if ([OUTLINED_FUNCTION_22_4() audioOutput] && *(v11 + 10) >= 2uLL)
      {
        v63 = [(BWFanOutNode *)[BWOverCaptureFanOutNode alloc] initWithFanOutCount:2 mediaType:1936684398];
        if (([graph addNode:v63 error:0] & 1) == 0)
        {
          goto LABEL_77;
        }

        audioOutput = [OUTLINED_FUNCTION_22_4() audioOutput];
        [(BWNode *)v63 input];
        if (([OUTLINED_FUNCTION_24_0() connectOutput:audioOutput toInput:? pipelineStage:?] & 1) == 0)
        {
          goto LABEL_77;
        }

        *(v11 + 7) = v63;
      }

      result = [objc_msgSend(OUTLINED_FUNCTION_22_4() "metadataOutputs")];
      if (!result)
      {
        goto LABEL_74;
      }

      if (*(v11 + 10) < 2uLL)
      {
        goto LABEL_73;
      }

      v65 = objc_alloc(MEMORY[0x1E695DF70]);
      [objc_msgSend(OUTLINED_FUNCTION_22_4() "metadataOutputs")];
      *(v11 + 8) = [OUTLINED_FUNCTION_17() initWithCapacity:?];
      result = [objc_msgSend(OUTLINED_FUNCTION_22_4() "metadataOutputs")];
      if (!result)
      {
        goto LABEL_74;
      }

      v66 = 0;
      while (1)
      {
        v67 = [(BWFanOutNode *)[BWOverCaptureFanOutNode alloc] initWithFanOutCount:2 mediaType:1835365473];
        if (([graph addNode:v67 error:0] & 1) == 0)
        {
          break;
        }

        v68 = [objc_msgSend(OUTLINED_FUNCTION_22_4() "metadataOutputs")];
        [(BWNode *)v67 input];
        if (([OUTLINED_FUNCTION_24_0() connectOutput:v68 toInput:? pipelineStage:?] & 1) == 0)
        {
          break;
        }

        [*(v11 + 8) addObject:v67];
        if ([objc_msgSend(OUTLINED_FUNCTION_22_4() "metadataOutputs")] <= ++v66)
        {
          goto LABEL_73;
        }
      }

LABEL_77:
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_73:
      result = 0;
LABEL_74:
      if (v122[0])
      {
        return [v122[0] code];
      }

      return result;
    }

    v118 = [objc_msgSend(pipeline "irisStagingNode")];
    v21 = mfsp_avVideoCodec(v120);
    isEqualToString = objc_msgSend_isEqualToString_(v21);
    [(__CFString *)v120 connectionID];
    [OUTLINED_FUNCTION_24_1() objectForKeyedSubscript:?];
    if (v116)
    {
      v114 = 1;
      v22 = 1;
    }

    else if (movieFileSinkPipelineConfiguration && (*(movieFileSinkPipelineConfiguration + 120) & 1) != 0)
    {
      v114 = 0;
      v22 = 4;
    }

    else
    {
      if (graph)
      {
        v22 = [graph[7] irisStagingNode] != 0;
      }

      else
      {
        v22 = 0;
      }

      v114 = 1;
    }

    v24 = [FigCaptureVISPipeline alloc];
    if (v17)
    {
      if (movieFileSinkPipelineConfiguration)
      {
        goto LABEL_22;
      }
    }

    else if (movieFileSinkPipelineConfiguration)
    {
LABEL_22:
      if (v17)
      {
        goto LABEL_23;
      }

      goto LABEL_96;
    }

    if (v17)
    {
LABEL_23:
      if (movieFileSinkPipelineConfiguration)
      {
LABEL_24:
        v25 = *(movieFileSinkPipelineConfiguration + 144);
        v26 = *(movieFileSinkPipelineConfiguration + 148);
        v27 = *(movieFileSinkPipelineConfiguration + 149);
        v28 = *(movieFileSinkPipelineConfiguration + 176);
        v29 = *(movieFileSinkPipelineConfiguration + 212);
        v30 = *(movieFileSinkPipelineConfiguration + 213);
        v31 = *(movieFileSinkPipelineConfiguration + 210);
        v32 = *(movieFileSinkPipelineConfiguration + 211);
        v33 = *(movieFileSinkPipelineConfiguration + 128);
        goto LABEL_25;
      }

LABEL_97:
      v32 = 0;
      v30 = 0;
      v28 = 0;
      v26 = 0;
      v25 = 0;
      v27 = 0;
      v29 = 0;
      v31 = 0;
      v33 = 0;
LABEL_25:
      v111 = v33;
      v110 = v32 & 1;
      v108 = v31 & 1;
      v106 = v30 & 1;
      v104 = v29 & 1;
      v102 = v28 & 1;
      v101 = v27 & 1;
      v99 = v26 & 1;
      v97 = v25;
      v113 = *MEMORY[0x1E6960CF8];
      v96 = *MEMORY[0x1E6960CF8];
      OUTLINED_FUNCTION_42_4();
      HIBYTE(v76) = v34 & 1;
      LOBYTE(v76) = isEqualToString;
      v42 = [FigCaptureVISPipeline initWithUpstreamOutput:v35 graph:output name:configuration parentPipeline:v41 videoCaptureConnectionConfiguration:@"Middle Over-Capture VIS Pipeline Transforms" pipelineStage:graph sdofPipelineStage:v120 videoStabilizationType:v13 motionAttachmentsSource:0 fillExtendedRowsOfOutputBuffer:v37 overCaptureEnabled:v38 stereoMode:v76 videoStabilizationOverscanOverride:0 videoStabilizationStrength:v39 motionMetadataPreloadingEnabled:v36 visExecutionMode:v22 pipelineTraceID:v40 captureDevice:v84 outputDimensions:v87 generatedTransformsOutputDimensionsOverride:v90 P3ToBT2020ConversionEnabled:v93 stabilizeDepthAttachments:v96 outputDepthDimensions:v97 maxLossyCompressionLevel:v99 videoSTFEnabled:v101 videoGreenGhostMitigationEnabled:v102 lightSourceMaskAndKeypointDescriptorDataEnabled:v104 videoGreenGhostOfflineMetadataEnabled:v106 videoGreenGhostOfflineLightSourceMaskEnabled:0 personSegmentationRenderingEnabled:v108 smartStyleRenderingEnabled:v110 smartStyleReversibilityEnabled:0 lowResImageUsedByVideoEncoderEnabled:v111 portTypesWithGeometricDistortionCorrectionInVISEnabled:0 visProcessingSemaphore:?];
      *(v11 + 4) = v42;
      if (v42)
      {
        if (movieFileSinkPipelineConfiguration)
        {
          v43 = *(movieFileSinkPipelineConfiguration + 138) ^ 1;
        }

        else
        {
          v43 = 1;
        }

        v44 = v114 & v43;
        if (v118)
        {
          v23 = v44;
        }

        else
        {
          v23 = 0;
        }

        [-[FigCaptureVISPipeline visNode](v42) setGeneratesDroppedSampleMarkerBuffers:v23];
        if (v118)
        {
          [objc_msgSend(pipeline "fileCoordinatorNode")];
        }

        output = [-[FigCaptureVISPipeline visNode](*(v11 + 4)) output];
        if (!movieFileSinkPipelineConfiguration || *(movieFileSinkPipelineConfiguration + 138) != 1)
        {
LABEL_51:
          v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          goto LABEL_52;
        }

        v45 = [BWAttachedMediaSwapNode alloc];
        v121 = *off_1E798D470;
        v46 = -[BWAttachedMediaSwapNode initWithPrimaryFormatToAttachedMediaKey:attachedMediaKeyToPrimaryFormat:sampleBufferAttachmentsToTransfer:generatesDroppedSampleMarkerBuffers:](v45, "initWithPrimaryFormatToAttachedMediaKey:attachedMediaKeyToPrimaryFormat:sampleBufferAttachmentsToTransfer:generatesDroppedSampleMarkerBuffers:", 0x1F216E930, @"SynchronizedSlaveFrame", [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1], 0);
        if (!v46)
        {
          goto LABEL_77;
        }

        v47 = v46;
        [(BWNode *)v46 setName:@"Swap Primary and Synchronized Slave"];
        if (([graph addNode:v47 error:v122] & 1) == 0)
        {
          goto LABEL_77;
        }

        [(BWNode *)v47 input];
        if (([OUTLINED_FUNCTION_24_0() connectOutput:output toInput:? pipelineStage:?] & 1) == 0)
        {
          goto LABEL_77;
        }

        output2 = [(BWNode *)v47 output];
        if (v116)
        {
          v117 = 1;
          v49 = 1;
        }

        else
        {
          v117 = *(movieFileSinkPipelineConfiguration + 120) ^ 1;
          if (*(movieFileSinkPipelineConfiguration + 120))
          {
            v49 = 4;
          }

          else
          {
            v49 = 2;
          }
        }

        v50 = [FigCaptureVISPipeline alloc];
        v112 = *(movieFileSinkPipelineConfiguration + 128);
        v109 = *(movieFileSinkPipelineConfiguration + 210);
        v107 = *(movieFileSinkPipelineConfiguration + 213);
        v105 = *(movieFileSinkPipelineConfiguration + 212);
        v103 = *(movieFileSinkPipelineConfiguration + 176);
        v100 = *(movieFileSinkPipelineConfiguration + 148);
        v98 = *(movieFileSinkPipelineConfiguration + 144);
        OUTLINED_FUNCTION_42_4();
        HIBYTE(v78) = v51 & 1;
        LOBYTE(v78) = isEqualToString;
        v58 = [FigCaptureVISPipeline initWithUpstreamOutput:v52 graph:output2 name:configuration parentPipeline:v57 videoCaptureConnectionConfiguration:@"Middle Over-Capture VIS Pipeline Synchronized Slave Transforms" pipelineStage:graph sdofPipelineStage:v120 videoStabilizationType:v13 motionAttachmentsSource:0 fillExtendedRowsOfOutputBuffer:v54 overCaptureEnabled:v53 stereoMode:v78 videoStabilizationOverscanOverride:0 videoStabilizationStrength:v55 motionMetadataPreloadingEnabled:0 visExecutionMode:v49 pipelineTraceID:v56 captureDevice:v85 outputDimensions:v88 generatedTransformsOutputDimensionsOverride:v91 P3ToBT2020ConversionEnabled:v94 stabilizeDepthAttachments:v113 outputDepthDimensions:v98 maxLossyCompressionLevel:v100 videoSTFEnabled:HIBYTE(v100) videoGreenGhostMitigationEnabled:v103 lightSourceMaskAndKeypointDescriptorDataEnabled:v105 videoGreenGhostOfflineMetadataEnabled:v107 videoGreenGhostOfflineLightSourceMaskEnabled:0 personSegmentationRenderingEnabled:v109 smartStyleRenderingEnabled:HIBYTE(v109) smartStyleReversibilityEnabled:0 lowResImageUsedByVideoEncoderEnabled:v112 portTypesWithGeometricDistortionCorrectionInVISEnabled:0 visProcessingSemaphore:?];
        *(v11 + 6) = v58;
        if (v58)
        {
          output3 = [-[FigCaptureVISPipeline visNode](v58) output];
          if (v118)
          {
            v23 = v117;
          }

          else
          {
            v23 = 0;
          }

          v60 = [[BWAttachedMediaSwapNode alloc] initWithPrimaryFormatToAttachedMediaKey:@"SynchronizedSlaveFrame" attachedMediaKeyToPrimaryFormat:0x1F216E930 sampleBufferAttachmentsToTransfer:0 generatesDroppedSampleMarkerBuffers:v23];
          if (!v60)
          {
            goto LABEL_77;
          }

          v61 = v60;
          [(BWNode *)v60 setName:@"Unswap Primary and Synchronized Slave"];
          if (([graph addNode:v61 error:v122] & 1) == 0)
          {
            goto LABEL_77;
          }

          [(BWNode *)v61 input];
          if (([OUTLINED_FUNCTION_24_0() connectOutput:output3 toInput:? pipelineStage:?] & 1) == 0)
          {
            goto LABEL_77;
          }

          output = [(BWNode *)v61 output];
          goto LABEL_51;
        }

        OUTLINED_FUNCTION_16_13();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v74, v79, v81, v83, v86, v89, v92, v95);
        v71 = qword_1ED8440A8;
        v72 = 1850;
      }

      else
      {
        OUTLINED_FUNCTION_16_13();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v73, v77, v80, v82, v85, v88, v91, v94);
        v71 = qword_1ED8440A8;
        v72 = 1764;
      }

      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v71, 0xFFFFCE0ELL, "<<<< FigCaptureMovieFileSinkPipeline >>>>", v72, v17, v69, v70, v75);
      if (result)
      {
        return result;
      }

      goto LABEL_74;
    }

LABEL_96:
    if (movieFileSinkPipelineConfiguration)
    {
      goto LABEL_24;
    }

    goto LABEL_97;
  }

  return result;
}

@end