@interface FigCaptureStillImageSinkPipeline
- (FigCaptureStillImageSinkPipeline)initWithConfiguration:(id)configuration captureDevice:(id)device sourceOutputsByPortType:(id)type captureStatusDelegate:(id)delegate inferenceScheduler:(id)scheduler graph:(id)graph name:(id)name;
- (unint64_t)_buildStillImageSinkPipelineWithConfiguration:(void *)configuration sourceOutputsByPortType:(uint64_t)type captureStatusDelegate:(uint64_t)delegate inferenceScheduler:(void *)scheduler graph:;
- (void)dealloc;
@end

@implementation FigCaptureStillImageSinkPipeline

- (FigCaptureStillImageSinkPipeline)initWithConfiguration:(id)configuration captureDevice:(id)device sourceOutputsByPortType:(id)type captureStatusDelegate:(id)delegate inferenceScheduler:(id)scheduler graph:(id)graph name:(id)name
{
  v18.receiver = self;
  v18.super_class = FigCaptureStillImageSinkPipeline;
  v15 = -[FigCaptureSinkPipeline initWithGraph:name:sinkID:](&v18, sel_initWithGraph_name_sinkID_, graph, name, [objc_msgSend(configuration "sinkConfiguration")]);
  if (v15)
  {
    v15->_captureDevice = device;
    v16 = [(FigCaptureStillImageSinkPipeline *)v15 _buildStillImageSinkPipelineWithConfiguration:configuration sourceOutputsByPortType:type captureStatusDelegate:delegate inferenceScheduler:scheduler graph:graph];
    if (v16)
    {
      [FigCaptureStillImageSinkPipeline initWithConfiguration:v16 captureDevice:v15 sourceOutputsByPortType:? captureStatusDelegate:? inferenceScheduler:? graph:? name:?];
      return 0;
    }
  }

  return v15;
}

- (unint64_t)_buildStillImageSinkPipelineWithConfiguration:(void *)configuration sourceOutputsByPortType:(uint64_t)type captureStatusDelegate:(uint64_t)delegate inferenceScheduler:(void *)scheduler graph:
{
  if (!result)
  {
    return result;
  }

  v8 = result;
  v377 = 0;
  v376 = 0;
  [a2 sinkConfiguration];
  objc_opt_class();
  sinkConfiguration = 0;
  if (objc_opt_isKindOfClass())
  {
    sinkConfiguration = [a2 sinkConfiguration];
  }

  v267 = objc_alloc_init(BWStillImageNodeConfiguration);
  [(BWStillImageNodeConfiguration *)v267 setFigThreadPriority:14];
  v10 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage" priority:14];
  v274 = [objc_msgSend(v8[6] "captureStream")];
  v262 = +[FigCaptureCameraParameters sharedInstance];
  cameraTuningParameters = [(FigCaptureCameraParameters *)v262 cameraTuningParameters];
  v11 = [objc_msgSend(v8[6] "bravoTelephotoCaptureStream")];
  v12 = [objc_msgSend(v8[6] "pearlInfraredCaptureStream")];
  v259 = v12;
  obj = configuration;
  if (v12)
  {
    v293 = [configuration objectForKeyedSubscript:v12];
  }

  else
  {
    v293 = 0;
  }

  isBravoVariant = [v8[6] isBravoVariant];
  pearlInfraredCaptureStream = [v8[6] pearlInfraredCaptureStream];
  v268 = [objc_msgSend(v8[6] "captureStream")];
  v266 = [objc_msgSend(v8[6] "bravoTelephotoCaptureStream")];
  v250 = [objc_msgSend(v8[6] "pearlInfraredCaptureStream")];
  captureStream = [v8[6] captureStream];
  v273 = isBravoVariant;
  if (isBravoVariant)
  {
    captureStream = [v8[6] bravoTelephotoCaptureStream];
  }

  else if (pearlInfraredCaptureStream)
  {
    captureStream = [v8[6] pearlInfraredCaptureStream];
  }

  v16 = captureStream;
  [v8[6] setStillImageCaptureEnabled:1];
  [v8[6] setIrisFrameHarvestingEnabled:{objc_msgSend(sinkConfiguration, "irisFrameHarvestingEnabled")}];
  [v8[6] setStillImageFusionScheme:{objc_msgSend(a2, "noiseReductionAndFusionScheme")}];
  depthDataDeliveryEnabled = [sinkConfiguration depthDataDeliveryEnabled];
  if (a2)
  {
    v17 = *(a2 + 112);
  }

  else
  {
    v17 = 0;
  }

  portraitEffectsMatteDeliveryEnabled = [sinkConfiguration portraitEffectsMatteDeliveryEnabled];
  [a2 portraitEffectsMatteMainImageDownscalingFactor];
  v19 = v18;
  v271 = v11;
  v258 = pearlInfraredCaptureStream;
  if (a2 && *(a2 + 115) == 1)
  {
    v279 = *(a2 + 116);
    v265 = 1;
  }

  else
  {
    v265 = 0;
    v279 = 0;
  }

  v289 = v8;
  allowsMultipleInflightCaptures = [a2 allowsMultipleInflightCaptures];
  bravoConstituentPhotoDeliveryEnabled = [sinkConfiguration bravoConstituentPhotoDeliveryEnabled];
  v22 = bravoConstituentPhotoDeliveryEnabled;
  v275 = depthDataDeliveryEnabled | bravoConstituentPhotoDeliveryEnabled;
  v276 = allowsMultipleInflightCaptures;
  if (a2 && ((depthDataDeliveryEnabled | bravoConstituentPhotoDeliveryEnabled) & 1) == 0 && (*(a2 + 113) & 1) != 0)
  {
    v251 = 1;
    v278 = 1;
    v23 = depthDataDeliveryEnabled;
  }

  else
  {
    v251 = 0;
    v23 = depthDataDeliveryEnabled;
    v278 = bravoConstituentPhotoDeliveryEnabled | depthDataDeliveryEnabled & v273;
  }

  filterRenderingEnabled = [sinkConfiguration filterRenderingEnabled];
  [v289[6] requestedZoomFactorRelativeToPortType:{objc_msgSend(v16, "portType")}];
  v26 = v25;
  portType = [v16 portType];
  sensorIDString = [v16 sensorIDString];
  LODWORD(v29) = v26;
  v30 = [(FigCaptureCameraParameters *)v262 disparityRefinementTypeForPortType:portType sensorIDString:sensorIDString zoomFactor:v29];
  v261 = filterRenderingEnabled;
  if ((v23 & portraitEffectsMatteDeliveryEnabled) == 1)
  {
    if (v30)
    {
      v31 = filterRenderingEnabled;
    }

    else
    {
      v31 = 0;
    }

    v247 = v31;
  }

  else
  {
    v247 = 0;
  }

  [v289[6] setStillImageISPChromaNoiseReductionEnabled:v17 & 1];
  [v289[6] setStillImageGNRHDREnabled:v279 & 1];
  v32 = [MEMORY[0x1E695DF70] arrayWithObject:v274];
  v263 = v10;
  v33 = v10;
  v34 = v10;
  if (v278)
  {
    v34 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.gnr.default" priority:14];
    v33 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.gnr.telephoto" priority:14];
    v263 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.stereofusion" priority:14];
  }

  v282 = v32;
  v253 = v22;
  v244 = v34;
  v284 = [a2 stillImageStabilizationSupported] && (objc_msgSend(a2, "allowedToModifyInputBuffers") & 1) != 0;
  v246 = sinkConfiguration;
  irisFrameHarvestingEnabled = [sinkConfiguration irisFrameHarvestingEnabled];
  v35 = v289[6];
  stillImageStabilizationSupported = [a2 stillImageStabilizationSupported];
  v380 = 0u;
  v381 = 0u;
  v382 = 0u;
  v383 = 0u;
  captureStreams = [v35 captureStreams];
  v38 = [captureStreams countByEnumeratingWithState:&v380 objects:&v378 count:16];
  if (v38)
  {
    v39 = *v381;
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v381 != v39)
        {
          objc_enumerationMutation(captureStreams);
        }

        if ([*(*(&v380 + 1) + 8 * i) hasSphere])
        {
          LODWORD(v38) = 1;
          goto LABEL_44;
        }
      }

      v38 = [captureStreams countByEnumeratingWithState:&v380 objects:&v378 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

LABEL_44:
  noiseReductionAndFusionScheme = [a2 noiseReductionAndFusionScheme];
  if (noiseReductionAndFusionScheme >= 3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Only FigCaptureStillImageNoiseReductionAndFusionSchemeGeneralNoiseReductionAndFusion and bellow supported" userInfo:0]);
  }

  v42 = noiseReductionAndFusionScheme;
  v243 = v33;
  v290 = noiseReductionAndFusionScheme != 2;
  if (!v265)
  {
    v255 = 0;
    v254 = 0;
    goto LABEL_49;
  }

  if (((noiseReductionAndFusionScheme == 2) & v279) != 0)
  {
    v254 = 0;
    v255 = v251;
LABEL_49:
    v43 = v289;
    goto LABEL_54;
  }

  v44 = [BWHDRNode alloc];
  v43 = v289;
  if (a2)
  {
    v45 = *(a2 + 96);
  }

  else
  {
    v45 = 0;
  }

  v46 = [(BWHDRNode *)v44 initWithClientPID:v45 sensorIDDictionary:v268];
  v375.receiver = v289;
  v375.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v375, sel_addNode_error_, v46, &v376) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  [(BWHDRNode *)v46 setAttachesInputBracketToOutputSampleBuffer:0];
  [(BWHDRNode *)v46 setAlwaysRequestsPreBracketedEV0:irisFrameHarvestingEnabled];
  v254 = v46;
  [(BWHDRNode *)v46 setSupportsStereoFusionCaptures:v251];
  v255 = v251;
LABEL_54:
  v47 = stillImageStabilizationSupported & v38;
  v48 = [objc_msgSend(v43[6] "captureStream")];
  v49 = [objc_msgSend(v43[6] "bravoTelephotoCaptureStream")];
  v242 = [objc_msgSend(v43[6] "pearlInfraredCaptureStream")];
  v272 = v42;
  v245 = v48;
  v252 = v49;
  v269 = stillImageStabilizationSupported;
  if (v42 == 2)
  {
    v50 = [BWGNRNode alloc];
    v51 = v271;
    if ((v273 & (v278 ^ 1)) != 0)
    {
      v52 = v49;
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    v53 = v266;
    if ((v273 & (v278 ^ 1)) == 0)
    {
      v53 = 0;
    }

    v54 = [BWGNRNode initWithSISEnabled:v50 OISEnabled:"initWithSISEnabled:OISEnabled:LTMHDREnabled:processingLTMHDRFusion:portType:sensorID:sensorIDDictionary:telephotoPortType:telephotoSensorID:telephotoSensorIDDictionary:" LTMHDREnabled:stillImageStabilizationSupported processingLTMHDRFusion:v268 portType:v51 sensorID:v52 sensorIDDictionary:v53 telephotoPortType:? telephotoSensorID:? telephotoSensorIDDictionary:?];
    v374.receiver = v43;
    v374.super_class = FigCaptureStillImageSinkPipeline;
    if (!objc_msgSendSuper2(&v374, sel_addNode_error_, v54, &v376))
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    [(BWGNRNode *)v54 setAttachesInputBracketToOutputSampleBuffer:0];
    [(BWGNRNode *)v54 setUsesHDRPreBracketFrameForErrorRecoveryDownstream:v279 & 1];
    [(BWGNRNode *)v54 setAllowedToModifyInputBuffers:v284];
    [v43[6] registerForAEMatrixMetadata];
    if (v278)
    {
      v274 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GNR-%@", v274];
    }

    else
    {
      v274 = @"GNR";
    }

    v56 = v271;
    v47 = v47;
    v57 = v290;
    [(BWNode *)v54 setName:v274];
  }

  else
  {
    v54 = 0;
    v56 = v271;
    v57 = v290;
  }

  if ((v57 & v269) != 0)
  {
    v58 = [[BWSISNode alloc] initWithCameraTuningDictionary:cameraTuningParameters sensorIDDictionary:v268 fusionScheme:v272];
    v59 = v58;
    if (v272 == 1)
    {
      v60 = @"TMBNR";
    }

    else
    {
      v60 = 0;
    }

    [(BWNode *)v58 setName:v60];
    v373.receiver = v43;
    v373.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v373, sel_addNode_error_, v59, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    [(BWSISNode *)v59 setAttachesInputBracketToOutputSampleBuffer:0];
    v264 = v59;
    [(BWSISNode *)v59 setAlwaysRequestsPreBracketedEV0:irisFrameHarvestingEnabled];
    if (a2)
    {
      v61 = *(a2 + 114);
    }

    else
    {
      v61 = 0;
    }

    v62 = &classRef_BWDerectificationInferenceProvider;
    [(BWSISNode *)v59 setLivePhotoSupported:v61 & 1];
    [(BWSISNode *)v59 setOISSupported:v47];
    [v289[6] registerForAEMatrixMetadata];
    v289[12] = v59;
  }

  else
  {
    v264 = 0;
    v62 = &classRef_BWDerectificationInferenceProvider;
  }

  v260 = v54;
  if (v278)
  {
    if (v47)
    {
      v63 = v289;
      v64 = [objc_msgSend(v289[6] "bravoTelephotoCaptureStream")];
    }

    else
    {
      v64 = 0;
      v63 = v289;
    }

    v65 = [[BWGNRNode alloc] initWithSISEnabled:v269 OISEnabled:v64 LTMHDREnabled:v275 & v279 & 1 processingLTMHDRFusion:v275 & v279 & 1 portType:v56 sensorID:v252 sensorIDDictionary:v266 telephotoPortType:0 telephotoSensorID:0 telephotoSensorIDDictionary:0];
    v68 = v62[304];
    v372.receiver = v63;
    v372.super_class = v68;
    v66 = obj;
    v67 = v282;
    if (!objc_msgSendSuper2(&v372, sel_addNode_error_, v65, &v376))
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    [(BWGNRNode *)v65 setAttachesInputBracketToOutputSampleBuffer:0];
    [(BWGNRNode *)v65 setUsesHDRPreBracketFrameForErrorRecoveryDownstream:v279 & 1];
    [(BWGNRNode *)v65 setAllowedToModifyInputBuffers:v284];
    -[BWNode setName:](v65, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"GNR-%@", v56]);
  }

  else
  {
    v65 = 0;
    v66 = obj;
    v67 = v282;
  }

  v257 = v65;
  if (!v293)
  {
    v294 = 0;
    if (!v56)
    {
      goto LABEL_90;
    }

    goto LABEL_88;
  }

  v69 = [BWAttachedMediaSplitNode alloc];
  v371 = @"Depth";
  v70 = -[BWAttachedMediaSplitNode initWithAttachedMediaKeys:](v69, "initWithAttachedMediaKeys:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v371 count:1]);
  v71 = v62[304];
  v370.receiver = v289;
  v370.super_class = v71;
  if ((objc_msgSendSuper2(&v370, sel_addNode_error_, v70, &v376) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  if (([scheduler connectOutput:v293 toInput:-[BWNode input](v70 pipelineStage:{"input"), v10}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  [(BWNode *)v70 setName:@"Still Image IR-Depth Splitter"];
  [(BWAttachedMediaSplitNode *)v70 setEmitsNodeErrorsForMissingAttachedMedia:1];
  v294 = [(NSArray *)[(BWNode *)v70 outputs] objectAtIndexedSubscript:0];
  if (v56)
  {
LABEL_88:
    if ([v66 objectForKeyedSubscript:v56])
    {
      [v67 addObject:v56];
    }
  }

LABEL_90:
  if (v259 && [v66 objectForKeyedSubscript:v259])
  {
    [v67 addObject:v259];
  }

  if ([v289[6] zeroShutterLagEnabled])
  {
    v72 = [[BWStillImageTimeMachineFrameCoordinatorNode alloc] initWithPortTypes:v67];
    v73 = v62[304];
    v369.receiver = v289;
    v369.super_class = v73;
    if ((objc_msgSendSuper2(&v369, sel_addNode_error_, v72, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }
  }

  else
  {
    v72 = 0;
  }

  v74 = [[BWStillImageCoordinatorNode alloc] initWithNodeConfiguration:v267 captureDevice:v289[6] inputPortTypes:v67 sensorRawInputPortTypes:0 highResStillImageDimensions:0];
  [(BWStillImageCoordinatorNode *)v74 setStillImageCaptureStatusDelegate:type];
  [(BWStillImageCoordinatorNode *)v74 setStillImageCapturePipeliningMode:v276];
  v75 = v62[304];
  v76 = v289;
  v368.receiver = v289;
  v368.super_class = v75;
  if ((objc_msgSendSuper2(&v368, sel_addNode_error_, v74, &v376) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  v277 = a2;
  v291 = v74;
  v289[7] = v74;
  v285 = v10;
  if (v72)
  {
    v367 = 0uLL;
    v366 = 0uLL;
    v365 = 0uLL;
    v364 = 0uLL;
    v77 = [v66 countByEnumeratingWithState:&v364 objects:v363 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v365;
      while (2)
      {
        for (j = 0; j != v78; ++j)
        {
          if (*v365 != v79)
          {
            objc_enumerationMutation(obj);
          }

          v81 = *(*(&v364 + 1) + 8 * j);
          v82 = [obj objectForKeyedSubscript:v81];
          v83 = [(BWStillImageTimeMachineFrameCoordinatorNode *)v72 inputForPortType:v81];
          if (objc_msgSend_isEqualToString_(v81))
          {
            v84 = v294;
          }

          else
          {
            v84 = v82;
          }

          v10 = v285;
          if (([scheduler connectOutput:v84 toInput:v83 pipelineStage:v285] & 1) == 0)
          {
            [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
            goto LABEL_374;
          }

          if (([scheduler connectOutput:-[BWStillImageTimeMachineFrameCoordinatorNode outputForPortType:](v72 toInput:"outputForPortType:" pipelineStage:{v81), objc_msgSend(v289[7], "inputForPortType:", v81), v285}] & 1) == 0)
          {
            [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
            goto LABEL_374;
          }
        }

        v78 = [obj countByEnumeratingWithState:&v364 objects:v363 count:16];
        v76 = v289;
        if (v78)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v362 = 0uLL;
    v361 = 0uLL;
    v360 = 0uLL;
    v359 = 0uLL;
    v85 = [v66 countByEnumeratingWithState:&v359 objects:v358 count:16];
    if (v85)
    {
      v86 = v85;
      v87 = *v360;
      while (2)
      {
        for (k = 0; k != v86; ++k)
        {
          if (*v360 != v87)
          {
            objc_enumerationMutation(obj);
          }

          v89 = *(*(&v359 + 1) + 8 * k);
          v90 = [obj objectForKeyedSubscript:v89];
          v91 = [v289[7] inputForPortType:v89];
          if (objc_msgSend_isEqualToString_(v89))
          {
            v92 = v294;
          }

          else
          {
            v92 = v90;
          }

          if (![scheduler connectOutput:v92 toInput:v91 pipelineStage:v10])
          {
            [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
            goto LABEL_374;
          }
        }

        v86 = [obj countByEnumeratingWithState:&v359 objects:v358 count:16];
        if (v86)
        {
          continue;
        }

        break;
      }
    }
  }

  v93 = [BWStillImageBufferRouterNode alloc];
  if (v272 == 2)
  {
    v94 = v269;
  }

  else
  {
    v94 = 0;
  }

  v95 = [(BWStillImageBufferRouterNode *)v93 initWithInputPortTypes:v282 HDRSupported:v265 SISSupported:v269 GNRSISSupported:v94 LTMHDRSupported:v279 & 1 depthDataDeliveryEnabled:depthDataDeliveryEnabled];
  v96 = v76;
  v357.receiver = v76;
  v357.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v357, sel_addNode_error_, v95, &v376) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  v356 = 0u;
  v355 = 0u;
  v354 = 0u;
  v353 = 0u;
  v97 = [v282 countByEnumeratingWithState:&v353 objects:v352 count:16];
  schedulerCopy6 = scheduler;
  if (v97)
  {
    v99 = v97;
    v100 = *v354;
    while (2)
    {
      for (m = 0; m != v99; ++m)
      {
        if (*v354 != v100)
        {
          objc_enumerationMutation(v282);
        }

        if (![scheduler connectOutput:-[BWStillImageCoordinatorNode outputForPortType:](v291 toInput:"outputForPortType:" pipelineStage:{*(*(&v353 + 1) + 8 * m)), -[BWStillImageBufferRouterNode inputForPortType:](v95, "inputForPortType:", *(*(&v353 + 1) + 8 * m)), v10}])
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }
      }

      v99 = [v282 countByEnumeratingWithState:&v353 objects:v352 count:16];
      if (v99)
      {
        continue;
      }

      break;
    }
  }

  defaultOutput = [(BWStillImageBufferRouterNode *)v95 defaultOutput];
  bravoTelephotoOutput = [(BWStillImageBufferRouterNode *)v95 bravoTelephotoOutput];
  pearlInfraredOutput = [(BWStillImageBufferRouterNode *)v95 pearlInfraredOutput];
  if (v254)
  {
    if ((v275 | v255))
    {
      if (v275 & v273)
      {
        if (([scheduler connectOutput:-[BWStillImageBufferRouterNode bravoTelephotoOutput](v95 toInput:"bravoTelephotoOutput") pipelineStage:{-[BWNode input](v254, "input"), v10}] & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        bravoTelephotoOutput = [(BWNode *)v254 output];
      }
    }

    else if (([scheduler connectOutput:-[BWStillImageBufferRouterNode HDROutput](v95 toInput:"HDROutput") pipelineStage:{-[BWNode input](v254, "input"), v10}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }
  }

  if (v264 && ([scheduler connectOutput:-[BWStillImageBufferRouterNode SISOutput](v95 toInput:"SISOutput") pipelineStage:{-[BWNode input](v264, "input"), v10}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  v104 = bravoTelephotoOutput;
  if (v254)
  {
    v105 = v255;
  }

  else
  {
    v105 = 1;
  }

  if (v272)
  {
    v106 = 1;
  }

  else
  {
    v106 = v264 == 0;
  }

  v107 = !v106;
  if (((v275 | v105) & 1) == 0 || v107)
  {
    if ((v275 | v105))
    {
      v108 = 1;
    }

    else
    {
      v108 = 2;
    }

    if (v107)
    {
      v109 = v108;
    }

    else
    {
      v109 = ((v275 | v105) & 1) == 0;
    }

    v110 = [[BWFunnelNode alloc] initWithNumberOfInputs:(v109 + 1) mediaType:1986618469];
    v351.receiver = v96;
    v351.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v351, sel_addNode_error_, v110, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:-[BWStillImageBufferRouterNode defaultOutput](v95 toInput:"defaultOutput") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v110, "inputs"), "objectAtIndexedSubscript:", 0), v10}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (v105)
    {
      v111 = 1;
      if (!v107)
      {
LABEL_169:
        defaultOutput = [(BWNode *)v110 output];
        goto LABEL_170;
      }
    }

    else
    {
      if (([scheduler connectOutput:-[BWNode output](v254 toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v110, "inputs"), "objectAtIndexedSubscript:", 1), v10}] & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      v111 = 2;
      if (!v107)
      {
        goto LABEL_169;
      }
    }

    if (([scheduler connectOutput:-[BWNode output](v264 toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v110, "inputs"), "objectAtIndexedSubscript:", v111), v10}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    goto LABEL_169;
  }

LABEL_170:
  if (v278 & 1 | ((v273 & 1) == 0))
  {
    v112 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
  }

  else
  {
    v113 = [[BWCrossoverNode alloc] initWithMediaType:1986618469 numberOfInputs:2];
    v350.receiver = v96;
    v350.super_class = FigCaptureStillImageSinkPipeline;
    v112 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    if ((objc_msgSendSuper2(&v350, sel_addNode_error_, v113, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:defaultOutput toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v113 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v10}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:v104 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v113 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 1), v10}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    defaultOutput = [(BWNode *)v113 output];
  }

  v114 = objc_alloc_init(BWPixelTransferNode);
  [(BWNode *)v114 setName:@"Still Image Format Converter"];
  -[BWPixelTransferNode setOutputPixelFormat:](v114, "setOutputPixelFormat:", [v277 outputPixelFormat]);
  -[BWPixelTransferNode setOutputColorSpaceProperties:](v114, "setOutputColorSpaceProperties:", [v277 outputColorSpaceProperties]);
  [(BWPixelTransferNode *)v114 setCropMode:3];
  v349.receiver = v96;
  v349.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v349, sel_addNode_error_, v114, &v376) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  if (([scheduler connectOutput:defaultOutput toInput:-[BWNode input](v114 pipelineStage:{"input"), v10}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  output = [(BWNode *)v114 output];
  if (v257)
  {
    v116 = objc_alloc_init(BWPixelTransferNode);
    [(BWNode *)v116 setName:@"Telephoto Still Image Format Converter"];
    -[BWPixelTransferNode setOutputPixelFormat:](v116, "setOutputPixelFormat:", [v277 outputPixelFormat]);
    -[BWPixelTransferNode setOutputColorSpaceProperties:](v116, "setOutputColorSpaceProperties:", [v277 outputColorSpaceProperties]);
    [(BWPixelTransferNode *)v116 setCropMode:3];
    v348.receiver = v289;
    v348.super_class = FigCaptureStillImageSinkPipeline;
    v117 = pearlInfraredOutput;
    if ((objc_msgSendSuper2(&v348, sel_addNode_error_, v116, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:v104 toInput:-[BWNode input](v116 pipelineStage:{"input"), v285}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output2 = [(BWNode *)v116 output];
  }

  else
  {
    output2 = v104;
    v117 = pearlInfraredOutput;
  }

  if (v117)
  {
    v119 = [[BWDepthSynchronizerNode alloc] initForStreaming:0 separateDepthComponentsEnabled:0];
    v347.receiver = v289;
    v347.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v347, sel_addNode_error_, v119, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    [v119 setName:@"Still Image Depth Synchronizer"];
    if (([scheduler connectOutput:output toInput:objc_msgSend(v119 pipelineStage:{"imageInput"), v285}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:v117 toInput:objc_msgSend(v119 pipelineStage:{"depthInput"), v285}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output = [v119 output];
  }

  v120 = v277;
  if (v260)
  {
    if (([scheduler connectOutput:output toInput:-[BWNode input](v260 pipelineStage:{"input"), v244}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output = [(BWNode *)v260 output];
  }

  if (v257)
  {
    if (([scheduler connectOutput:output2 toInput:-[BWNode input](v257 pipelineStage:{"input"), v243}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output2 = [(BWNode *)v257 output];
  }

  if (v272 != 2)
  {
    v121 = [[BWNoiseReducerNode alloc] initWithCameraTuningDictionary:cameraTuningParameters sensorIDDictionary:v268];
    v346.receiver = v289;
    v346.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v346, sel_addNode_error_, v121, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:output toInput:-[BWNode input](v121 pipelineStage:{"input"), v285}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    v260 = v121;
    output = [(BWNode *)v121 output];
    if (v272 == 1)
    {
      if (v264)
      {
        v122 = [[BWFunnelNode alloc] initWithNumberOfInputs:2 mediaType:1986618469];
        v345.receiver = v289;
        v345.super_class = FigCaptureStillImageSinkPipeline;
        if ((objc_msgSendSuper2(&v345, sel_addNode_error_, v122, &v376) & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        if (([scheduler connectOutput:output toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v122 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v285}] & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        if (([scheduler connectOutput:-[BWNode output](v264 toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v122, "inputs"), "objectAtIndexedSubscript:", 1), v285}] & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        output = [(BWNode *)v122 output];
      }
    }
  }

  v123 = depthDataDeliveryEnabled;
  if (!v258)
  {
    v123 = 0;
  }

  v296 = v123;
  if (v275 & v261)
  {
    v124 = objc_alloc_init(BWPortraitHDRStagingNode);
    v344.receiver = v289;
    v344.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v344, sel_addNode_error_, v124, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    v125 = v124;
    v289[11] = v125;
    if (v273)
    {
      if (([scheduler connectOutput:output2 toInput:-[BWNode input](v125 pipelineStage:{"input"), v263}] & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      output2 = [v289[11] output];
    }

    else if (v258)
    {
      if (([scheduler connectOutput:output toInput:-[BWNode input](v125 pipelineStage:{"input"), v263}] & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      output = [v289[11] output];
    }
  }

  if (v296)
  {
    v126 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:*(v289 + v112[4]) scheduler:delegate priority:14];
    [(BWNode *)v126 setName:@"RGB Segmentation and Landmarks"];
    [(BWInferenceNode *)v126 addInferenceOfType:103 version:+[BWRGBPersonSegmentationInferenceConfiguration portraitVersion]& 0xFFFFFFFFFFFFLL];
    v127 = +[BWLandmarksInferenceConfiguration configuration];
    [v127 setMaximumNumberOfFaces:{+[BWLandmarksInferenceConfiguration portraitMaximumNumberOfFaces](BWLandmarksInferenceConfiguration, "portraitMaximumNumberOfFaces")}];
    -[BWInferenceNode addInferenceOfType:version:configuration:](v126, "addInferenceOfType:version:configuration:", 801, [v127 landmarksInferenceVersion] & 0xFFFFFFFFFFFFLL, v127);
    v343.receiver = v289;
    v343.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v343, sel_addNode_error_, v126, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    input = [(BWNode *)v126 input];
    if ((v278 & 1) == 0)
    {
      v112 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
      if (([scheduler connectOutput:output toInput:input pipelineStage:v285] & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      output = [(BWNode *)v126 output];
      v130 = v274;
      goto LABEL_288;
    }

    v112 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    if (([scheduler connectOutput:output2 toInput:input pipelineStage:v285] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output2 = [(BWNode *)v126 output];
  }

  else if ((v278 & 1) == 0)
  {
    v130 = v274;
    goto LABEL_291;
  }

  if (v275)
  {
    v129 = objc_alloc_init(BWStillImageDisparitySplitterNode);
    [(BWNode *)v129 setName:@"Disparity/HDR Splitter"];
    v342.receiver = v289;
    v342.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v342, sel_addNode_error_, v129, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:output2 toInput:-[BWNode input](v129 pipelineStage:{"input"), v263}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    obja = v129;
    output2 = [(BWStillImageDisparitySplitterNode *)v129 disparityOutput];
  }

  else
  {
    if (!v251)
    {
      goto LABEL_267;
    }

    obja = 0;
  }

  v341[0] = v274;
  v341[1] = v271;
  v131 = [MEMORY[0x1E695DEC8] arrayWithObjects:v341 count:2];
  v132 = [[BWStillImageMultiCameraDoserNode alloc] initWithPortTypes:v131];
  v340.receiver = v289;
  v340.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v340, sel_addNode_error_, v132, &v376) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  v133 = [v131 indexOfObject:v274];
  if (v133 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_379;
  }

  v134 = v133;
  v135 = [v131 indexOfObject:v271];
  if (v135 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_379;
  }

  v136 = v135;
  v137 = [(NSArray *)[(BWNode *)v132 inputs] objectAtIndexedSubscript:v134];
  schedulerCopy6 = scheduler;
  if (([scheduler connectOutput:output toInput:v137 pipelineStage:v263] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  if (([scheduler connectOutput:output2 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v132 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", v136), v263}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  v138 = [(BWStillImageMultiCameraDoserNode *)v132 outputIndexForPortType:v274];
  if (v138 == 0x7FFFFFFFFFFFFFFFLL || (v139 = v138, v140 = [(BWStillImageMultiCameraDoserNode *)v132 outputIndexForPortType:v271], v140 == 0x7FFFFFFFFFFFFFFFLL))
  {
LABEL_379:
    v377 = -12780;
    goto LABEL_374;
  }

  v141 = v140;
  output = [(NSArray *)[(BWNode *)v132 outputs] objectAtIndexedSubscript:v139];
  output2 = [(NSArray *)[(BWNode *)v132 outputs] objectAtIndexedSubscript:v141];
  if (v253)
  {
    array = [MEMORY[0x1E695DF70] array];
    v143 = v112[4];
    v144 = v112;
    v145 = v289;
    if ([*(v289 + v143) bravoTelephotoCaptureStream])
    {
      v146 = MEMORY[0x1E696AD98];
      [objc_msgSend(*(v289 + v144[4]) "bravoTelephotoCaptureStream")];
      [array addObject:{objc_msgSend(v146, "numberWithFloat:")}];
      v147 = MEMORY[0x1E696AD98];
      [objc_msgSend(*(v289 + v144[4]) "masterCaptureStream")];
      [array addObject:{objc_msgSend(v147, "numberWithFloat:")}];
    }

    else
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      v339 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v145 = v289;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      captureStreams2 = [v289[6] captureStreams];
      v378 = 138412290;
      v379 = captureStreams2;
      v150 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v150, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureStillImageSinkPipeline.m", 986, @"LastShownDate:FigCaptureStillImageSinkPipeline.m:986", @"LastShownBuild:FigCaptureStillImageSinkPipeline.m:986", 0);
      free(v150);
      schedulerCopy6 = scheduler;
    }

    v151 = [[BWStillImageDualPhotoFacePropagatorNode alloc] initWithBaseZoomFactors:array];
    v337.receiver = v145;
    v337.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v337, sel_addNode_error_, v151, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    v112 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    v120 = v277;
    if (([schedulerCopy6 connectOutput:output toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v151 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v263}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([schedulerCopy6 connectOutput:output2 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v151 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 1), v263}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output = [(NSArray *)[(BWNode *)v151 outputs] objectAtIndexedSubscript:0];
    output2 = [(NSArray *)[(BWNode *)v151 outputs] objectAtIndexedSubscript:1];
  }

  else
  {
    v120 = v277;
  }

  if (!v251)
  {
    if (v275)
    {
      v292 = output2;
      if (v261)
      {
        v159 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.inference.bravo" priority:14];
        v160 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:*(v289 + v112[4]) scheduler:delegate priority:14];
        [(BWNode *)v160 setName:@"Disparity/Landmarks Inference Node"];
        v161 = +[BWLandmarksInferenceConfiguration configuration];
        [v161 setMaximumNumberOfFaces:{+[BWLandmarksInferenceConfiguration portraitMaximumNumberOfFaces](BWLandmarksInferenceConfiguration, "portraitMaximumNumberOfFaces")}];
        -[BWInferenceNode addInferenceOfType:version:configuration:](v160, "addInferenceOfType:version:configuration:", 801, [v161 landmarksInferenceVersion] & 0xFFFFFFFFFFFFLL, v161);
        v332.receiver = v289;
        v332.super_class = FigCaptureStillImageSinkPipeline;
        if ((objc_msgSendSuper2(&v332, sel_addNode_error_, v160, &v376) & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        processedOutput = [(BWStillImageDisparitySplitterNode *)obja processedOutput];
        objb = v160;
        v112 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
        if (([schedulerCopy6 connectOutput:processedOutput toInput:-[BWNode input](v160 pipelineStage:{"input"), v159}] & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }
      }

      else
      {
        objb = 0;
      }

      depthDataSourceDimensions = [v120 depthDataSourceDimensions];
      cameraInfoByPortType = [*(v289 + v112[4]) cameraInfoByPortType];
      v167 = -[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:]([BWSensorConfiguration alloc], "initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:", v271, v252, v266, [cameraInfoByPortType objectForKeyedSubscript:v271]);
      v168 = -[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:]([BWSensorConfiguration alloc], "initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:", v274, v245, v268, [cameraInfoByPortType objectForKeyedSubscript:v274]);
      v330[0] = v274;
      v330[1] = v271;
      v331[0] = v167;
      v331[1] = v168;
      v169 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v331 forKeys:v330 count:2];

      v170 = [[BWStillImageBravoDisparityNode alloc] initWithNodeConfiguration:0 sensorConfigurationsByPortType:v169 disparityMapWidth:depthDataSourceDimensions disparityMapHeight:depthDataSourceDimensions >> 32 outputDisparityBufferCount:0];
      v329.receiver = v289;
      v329.super_class = FigCaptureStillImageSinkPipeline;
      if ((objc_msgSendSuper2(&v329, sel_addNode_error_, v170, &v376) & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      v289[9] = v170;
      -[BWStillImageBravoDisparityNode setShouldComputeDisparityWhenCalibrationFails:](v170, "setShouldComputeDisparityWhenCalibrationFails:", [*(v289 + v112[4]) shallowDepthOfFieldEffectEnabled] ^ 1);
      [(BWStillImageBravoDisparityNode *)v170 setAttachesInputBracketToOutputSampleBuffer:0];
      if (([schedulerCopy6 connectOutput:output toInput:-[BWStillImageBravoDisparityNode wideInput](v170 pipelineStage:{"wideInput"), v263}] & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      v120 = v277;
      if (([schedulerCopy6 connectOutput:v292 toInput:-[BWStillImageBravoDisparityNode telephotoInput](v170 pipelineStage:{"telephotoInput"), v263}] & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      output = [(BWNode *)v170 output];
      if (v261)
      {
        v171 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:1 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
        [(BWNode *)v171 setName:@"Disparity/Landmarks Sync"];
        [(BWInferenceSynchronizerNode *)v171 setSynchronizesTopLevelAttachments:1];
        v328.receiver = v289;
        v328.super_class = FigCaptureStillImageSinkPipeline;
        if ((objc_msgSendSuper2(&v328, sel_addNode_error_, v171, &v376) & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        if (([schedulerCopy6 connectOutput:output toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v171 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v263}] & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        if (([schedulerCopy6 connectOutput:-[BWNode output](objb toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v171, "inputs"), "objectAtIndexedSubscript:", 1), v263}] & 1) == 0)
        {
          [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
          goto LABEL_374;
        }

        output = [(BWNode *)v171 output];
      }

      goto LABEL_282;
    }

LABEL_267:
    v130 = v274;
    if ((v253 & 1) == 0)
    {
      goto LABEL_287;
    }

    v163 = [[BWFunnelNode alloc] initWithNumberOfInputs:2 mediaType:1986618469];
    v327.receiver = v289;
    v327.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v327, sel_addNode_error_, v163, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([schedulerCopy6 connectOutput:output toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v163 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v263}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([schedulerCopy6 connectOutput:output2 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v163 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 1), v263}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output4 = [(NSArray *)[(BWNode *)v163 outputs] objectAtIndexedSubscript:0];
    goto LABEL_286;
  }

  v152 = -[BWStereoFusionNode initWithTelephotoSensorIDDictionary:cameraInfoByPortType:]([BWStereoFusionNode alloc], "initWithTelephotoSensorIDDictionary:cameraInfoByPortType:", v266, [*(v289 + v112[4]) cameraInfoByPortType]);
  v336.receiver = v289;
  v336.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v336, sel_addNode_error_, v152, &v376) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  [(BWStereoFusionNode *)v152 setAttachesInputBracketToOutputSampleBuffer:0];
  if (([schedulerCopy6 connectOutput:output toInput:-[BWStereoFusionNode wideInput](v152 pipelineStage:{"wideInput"), v263}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  if (([schedulerCopy6 connectOutput:output2 toInput:-[BWStereoFusionNode telephotoInput](v152 pipelineStage:{"telephotoInput"), v263}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  defaultOutput2 = [(BWStereoFusionNode *)v152 defaultOutput];
  if (!v255)
  {
    output = defaultOutput2;
LABEL_282:
    v130 = v274;
    goto LABEL_287;
  }

  v154 = [[BWFunnelNode alloc] initWithNumberOfInputs:2 mediaType:1986618469];
  v335.receiver = v289;
  v335.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v335, sel_addNode_error_, v154, &v376) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  v155 = [[BWGNRNode alloc] initWithSISEnabled:0 OISEnabled:0 LTMHDREnabled:v279 & 1 processingLTMHDRFusion:v279 & 1 portType:v274 sensorID:v245 sensorIDDictionary:v268 telephotoPortType:v271 telephotoSensorID:v252 telephotoSensorIDDictionary:v266];
  v334.receiver = v289;
  v334.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v334, sel_addNode_error_, v155, &v376) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  [(BWGNRNode *)v155 setAttachesInputBracketToOutputSampleBuffer:0];
  [(BWNode *)v155 setName:@"GNR"];
  v156 = [[BWFunnelNode alloc] initWithNumberOfInputs:2 mediaType:1986618469];
  v333.receiver = v289;
  v333.super_class = FigCaptureStillImageSinkPipeline;
  if ((objc_msgSendSuper2(&v333, sel_addNode_error_, v156, &v376) & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  if (([scheduler connectOutput:-[BWStillImageBufferRouterNode HDROutput](v95 toInput:"HDROutput") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v154, "inputs"), "objectAtIndexedSubscript:", 0), v285}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  v130 = v274;
  if (([scheduler connectOutput:-[BWStereoFusionNode stereoHDROutput](v152 toInput:"stereoHDROutput") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v154, "inputs"), "objectAtIndexedSubscript:", 1), v285}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  if (([scheduler connectOutput:-[BWStereoFusionNode defaultOutput](v152 toInput:"defaultOutput") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v156, "inputs"), "objectAtIndexedSubscript:", 0), v285}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  if (([scheduler connectOutput:-[BWNode output](v155 toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v156, "inputs"), "objectAtIndexedSubscript:", 1), v285}] & 1) == 0)
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    goto LABEL_374;
  }

  output3 = [(BWNode *)v154 output];
  if (v279)
  {
    input2 = [(BWNode *)v155 input];
    schedulerCopy6 = scheduler;
    v112 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    v120 = v277;
    if (([scheduler connectOutput:output3 toInput:input2 pipelineStage:v285] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }
  }

  else
  {
    v120 = v277;
    if (([scheduler connectOutput:output3 toInput:-[BWNode input](v254 pipelineStage:{"input"), v285}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    v172 = [scheduler connectOutput:-[BWNode output](v254 toInput:"output") pipelineStage:{-[BWNode input](v155, "input"), v285}];
    schedulerCopy6 = scheduler;
    v112 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    if ((v172 & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }
  }

  output4 = [(BWNode *)v156 output];
LABEL_286:
  output = output4;
LABEL_287:
  if (v296)
  {
LABEL_288:
    clientIsCameraOrDerivative = [v120 clientIsCameraOrDerivative];
    v174 = v112[4];
    LOBYTE(v236) = 0;
    v175 = -[BWDepthConverterNode initWithStillImageNodeConfiguration:cameraInfoByPortType:sensorIDDictionary:rgbPersonSegmentationEnabled:depthIsAlwaysHighQuality:depthOriginatesFromNeuralNetwork:backPressureDrivenPipelining:]([BWDepthConverterNode alloc], "initWithStillImageNodeConfiguration:cameraInfoByPortType:sensorIDDictionary:rgbPersonSegmentationEnabled:depthIsAlwaysHighQuality:depthOriginatesFromNeuralNetwork:backPressureDrivenPipelining:", 0, [*(v289 + v174) cameraInfoByPortType], v250, 1, clientIsCameraOrDerivative, 0, v236);
    v326.receiver = v289;
    v326.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v326, sel_addNode_error_, v175, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    [(BWNode *)v175 setName:@"Still Image Depth Converter"];
    -[BWDepthConverterNode setHorizontalSensorBinningFactor:](v175, "setHorizontalSensorBinningFactor:", [v120 horizontalSensorBinningFactor]);
    v176 = -[BWDepthConverterNode setVerticalSensorBinningFactor:](v175, "setVerticalSensorBinningFactor:", [v120 verticalSensorBinningFactor]);
    v178 = FigCaptureFrontDepthDataToRGBRotationAngle(v176, v177);
    [(BWDepthConverterNode *)v175 setStillGDRFilteringSupportEnabled:1];
    [(BWDepthConverterNode *)v175 setOutputFormat:1751411059];
    -[BWDepthConverterNode setOutputDimensions:](v175, "setOutputDimensions:", [v120 depthDataTargetDimensions]);
    [(BWDepthConverterNode *)v175 setBaseRotationDegrees:v178];
    if (([schedulerCopy6 connectOutput:output toInput:-[BWNode input](v175 pipelineStage:{"input"), v285}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    v289[10] = v175;
    output = [(BWNode *)v175 output];
    v112 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
  }

LABEL_291:
  if (depthDataDeliveryEnabled)
  {
    v179 = v259;
    if (!v258)
    {
      v179 = v130;
    }

    v180 = v245;
    if (v258)
    {
      v180 = v242;
    }

    v181 = v268;
    if (v258)
    {
      v181 = v250;
    }

    if (v273)
    {
      v182 = v271;
    }

    else
    {
      v182 = v179;
    }

    if (v273)
    {
      v183 = v252;
    }

    else
    {
      v183 = v180;
    }

    if (v273)
    {
      v184 = v266;
    }

    else
    {
      v184 = v181;
    }

    v185 = -[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:]([BWSensorConfiguration alloc], "initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:", v182, v183, v184, [objc_msgSend(*(v289 + v112[4]) "cameraInfoByPortType")]);
    LODWORD(v186) = v26;
    v187 = [(FigCaptureCameraParameters *)v262 sdofRenderingVersionForPortType:v182 sensorIDString:v183 zoomFactor:v186];
    v188 = [BWStillImagePortraitMetadataNode alloc];
    v324 = v182;
    v297 = v185;
    v325 = v185;
    v189 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v325 forKeys:&v324 count:1];
    LODWORD(v190) = v26;
    v191 = [(BWStillImagePortraitMetadataNode *)v188 initWithNodeConfiguration:0 sdofRenderingVersion:v187 sensorConfigurationsByPortType:v189 defaultPortType:v182 defaultZoomFactor:v190];
    v323.receiver = v289;
    v323.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v323, sel_addNode_error_, v191, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([schedulerCopy6 connectOutput:output toInput:-[BWNode input](v191 pipelineStage:{"input"), v285}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output = [(BWNode *)v191 output];
    v112 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
  }

  else
  {
    v182 = 0;
    v297 = 0;
  }

  if (portraitEffectsMatteDeliveryEnabled)
  {
    if ((v261 & 1) == 0)
    {
      v192 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:*(v289 + v112[4]) scheduler:delegate priority:14];
      [(BWNode *)v192 setName:@"Landmarks Inference Node"];
      v193 = +[BWLandmarksInferenceConfiguration configuration];
      [v193 setMaximumNumberOfFaces:{+[BWLandmarksInferenceConfiguration portraitMaximumNumberOfFaces](BWLandmarksInferenceConfiguration, "portraitMaximumNumberOfFaces")}];
      -[BWInferenceNode addInferenceOfType:version:configuration:](v192, "addInferenceOfType:version:configuration:", 801, [v193 landmarksInferenceVersion] & 0xFFFFFFFFFFFFLL, v193);
      v322.receiver = v289;
      v322.super_class = FigCaptureStillImageSinkPipeline;
      if ((objc_msgSendSuper2(&v322, sel_addNode_error_, v192, &v376) & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      if (([schedulerCopy6 connectOutput:output toInput:-[BWNode input](v192 pipelineStage:{"input"), v285}] & 1) == 0)
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
        goto LABEL_374;
      }

      output = [(BWNode *)v192 output];
    }

    v194 = +[BWStillImageConditionalRouterPersonSegmentationAndMattingConfiguration personSegmentationAndMattingConfiguration];
    v195 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v194];
    [(BWNode *)v195 setName:@"Person Segmentation and Matting Conditional Router"];
    v321.receiver = v289;
    v321.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v321, sel_addNode_error_, v195, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    v196 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:v289[6] scheduler:delegate priority:14];
    v197 = v268;
    if (v258)
    {
      v197 = v250;
    }

    if (v273)
    {
      v198 = v266;
    }

    else
    {
      v198 = v197;
    }

    v199 = [(BWInferenceConfiguration *)[BWMattingInferenceConfiguration alloc] initWithInferenceType:201];
    [(BWInferenceConfiguration *)v199 setPriority:14];
    [(BWInferenceConfiguration *)v199 setTuningParameters:v198];
    LODWORD(v200) = v26;
    [(BWMattingInferenceConfiguration *)v199 setSdofRenderingTuningParameters:[FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v198 zoomFactor:v200]];
    LODWORD(v201) = v19;
    [(BWMattingInferenceConfiguration *)v199 setMainImageDownscalingFactor:v201];
    [(BWMattingInferenceConfiguration *)v199 setRefinedDepthDeliveryEnabled:v247];
    [(BWMattingInferenceConfiguration *)v199 setMetalCommandQueue:0];
    v202 = +[BWPersonSegmentationConfiguration portraitVersion];
    [(BWInferenceNode *)v196 addInferenceOfType:102 version:v202 & 0xFFFFFFFFFFFFLL];
    [(BWInferenceNode *)v196 addInferenceOfType:201 version:v202 & 0xFFFFFFFFFFFFLL configuration:v199];
    [(BWNode *)v196 setName:@"Person Segmentation and Matting Node"];
    v320.receiver = v289;
    v320.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v320, sel_addNode_error_, v196, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    v203 = [[BWFunnelNode alloc] initWithNumberOfInputs:2 mediaType:1986618469];
    [(BWNode *)v203 setName:@"Person Segmentation and Matting Funnel"];
    v319.receiver = v289;
    v319.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v319, sel_addNode_error_, v203, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:output toInput:-[BWNode input](v195 pipelineStage:{"input"), v285}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v195 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v194, "defaultOutputIndex")), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v203, "inputs"), "objectAtIndexedSubscript:", 0), v285}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([scheduler connectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v195 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v194, "personSegmentationAndMattingOuputIndex")), -[BWNode input](v196, "input"), v285}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    schedulerCopy6 = scheduler;
    if (([scheduler connectOutput:-[BWNode output](v196 toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v203, "inputs"), "objectAtIndexedSubscript:", 1), v285}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output = [(BWNode *)v203 output];
    v112 = &OBJC_IVAR___FigCaptureStillImageSinkPipelineConfiguration__stereoFusionSupported;
    v120 = v277;
  }

  if (v261)
  {
    v204 = [BWStillImageFilterNode alloc];
    if (v297)
    {
      portType2 = [(BWSensorConfiguration *)v297 portType];
      v318 = v297;
      v206 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v318 forKeys:&portType2 count:1];
    }

    else
    {
      v206 = 0;
    }

    LOBYTE(v238) = 0;
    LODWORD(v236) = 0;
    LODWORD(v205) = v26;
    v207 = [(BWStillImageFilterNode *)v204 initWithNodeConfiguration:v267 sensorConfigurationsByPortType:v206 statusDelegate:0 depthDataDeliveryEnabled:depthDataDeliveryEnabled personSegmentationEnabled:portraitEffectsMatteDeliveryEnabled refinedDepthEnabled:v247 portraitRenderQuality:0.0 targetAspectRatio:v205 defaultPortType:v236 defaultZoomFactor:v182 backPressureDrivenPipelining:v238];
    v316.receiver = v289;
    v316.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v316, sel_addNode_error_, v207, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([schedulerCopy6 connectOutput:output toInput:-[BWNode input](v207 pipelineStage:{"input"), v263}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output = [(BWNode *)v207 output];
  }

  if ([v120 allowsMultipleInflightCaptures])
  {
    v208 = [[BWStillImageTurnstileNode alloc] initWithStillImageCoordinator:v289[7]];
    v315.receiver = v289;
    v315.super_class = FigCaptureStillImageSinkPipeline;
    if ((objc_msgSendSuper2(&v315, sel_addNode_error_, v208, &v376) & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    if (([schedulerCopy6 connectOutput:output toInput:-[BWNode input](v208 pipelineStage:{"input"), v285}] & 1) == 0)
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      goto LABEL_374;
    }

    output = [(BWNode *)v208 output];
  }

  v209 = [[BWStillImageScalerNode alloc] initWithBasePoolCapacity:1 nodeConfiguration:0];
  [(BWStillImageScalerNode *)v209 setBlackFillingRequired:v253 & 1];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [v120 portraitEffectsMatteMainImageDownscalingFactor];
  if (v211 != 0.0)
  {
    v212 = MEMORY[0x1E696AD98];
    [v120 portraitEffectsMatteMainImageDownscalingFactor];
    [dictionary setObject:objc_msgSend(v212 forKeyedSubscript:{"numberWithFloat:"), 0x1F21AABB0}];
  }

  [(BWStillImageScalerNode *)v209 setMainImageDownscalingFactorByAttachedMediaKey:dictionary];
  v314.receiver = v289;
  v314.super_class = FigCaptureStillImageSinkPipeline;
  if (objc_msgSendSuper2(&v314, sel_addNode_error_, v209, &v376))
  {
    if ([schedulerCopy6 connectOutput:output toInput:-[BWNode input](v209 pipelineStage:{"input"), v285}])
    {
      output5 = [(BWNode *)v209 output];
      if ((v279 & 1) == 0)
      {
        v215 = v289;
        goto LABEL_349;
      }

      v214 = [[BWMeteorHeadroomNode alloc] initWithNodeConfiguration:0 sensorConfigurationsByPortType:0];
      [(BWMeteorHeadroomNode *)v214 setHeadroomProcessingType:[(FigCaptureCameraParameters *)v262 meteorHeadroomProcessingType]];
      v215 = v289;
      v313.receiver = v289;
      v313.super_class = FigCaptureStillImageSinkPipeline;
      if (objc_msgSendSuper2(&v313, sel_addNode_error_, v214, &v376))
      {
        if ([schedulerCopy6 connectOutput:output5 toInput:-[BWNode input](v214 pipelineStage:{"input"), v285}])
        {
          output5 = [(BWNode *)v214 output];
LABEL_349:
          v216 = [BWPhotoEncoderNode alloc];
          BYTE1(v236) = [v277 clientIsCameraOrDerivative];
          LOBYTE(v236) = 0;
          v217 = [(BWPhotoEncoderNode *)v216 initWithNodeConfiguration:v267 sensorConfigurationsByPortType:0 semanticDevelopmentVersion:0 inferenceScheduler:0 alwaysAwaitInference:0 portraitRenderQuality:0 deferredPhotoProcessorEnabled:v236 clientIsCameraOrDerivative:?];
          if (v277)
          {
            [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:v277 sourceOutputsByPortType:v217 captureStatusDelegate:v260 inferenceScheduler:? graph:?];
          }

          -[BWPhotoEncoderNode setCameraSupportsFlash:](v217, "setCameraSupportsFlash:", [*(v215 + v112[4]) hasFlash]);
          if (portraitEffectsMatteDeliveryEnabled)
          {
            v218 = [BWPhotoEncoderNodeAttachedMediaConfiguration alloc];
            LODWORD(v219) = v19;
            v311 = 0x1F21AABB0;
            v312 = [(BWPhotoEncoderNodeAttachedMediaConfiguration *)v218 initWithMainImageDownscalingFactor:0 propagationMode:v219];
            -[BWPhotoEncoderNode setAttachedMediaConfigurationByAttachedMediaKey:](v217, "setAttachedMediaConfigurationByAttachedMediaKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v312 forKeys:&v311 count:1]);
          }

          -[BWPhotoEncoderNode setUsesHighEncodingPriority:](v217, "setUsesHighEncodingPriority:", [v277 usesHighEncodingPriority]);
          -[BWPhotoEncoderNode setZeroShutterLagEnabled:](v217, "setZeroShutterLagEnabled:", [*(v215 + v112[4]) zeroShutterLagEnabled]);
          v310.receiver = v215;
          v310.super_class = FigCaptureStillImageSinkPipeline;
          if (objc_msgSendSuper2(&v310, sel_addNode_error_, v217, &v376))
          {
            if ([schedulerCopy6 connectOutput:output5 toInput:-[BWNode input](v217 pipelineStage:{"input"), v285}])
            {
              output6 = [(BWNode *)v217 output];
              if ([v246 optimizesImagesForOfflineVideoStabilization] && (v221 = objc_msgSend(v277, "horizontalSensorBinningFactor"), v222 = objc_msgSend(v277, "verticalSensorBinningFactor"), objc_msgSend(v277, "maxSupportedFrameRate"), output6 = FigCaptureBuildMotionAttachmentsNode(v215, output6, v221, v222, v285, objc_msgSend(v277, "motionAttachmentsSource"), objc_msgSend(*(v215 + v112[4]), "sensorIDDictionaryByPortType"), objc_msgSend(*(v215 + v112[4]), "cameraInfoByPortType"), v223, objc_msgSend(*(v215 + v112[4]), "activePortTypes"), 0, 0, 1, 1, 0, &v377), v377))
              {
                [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
              }

              else
              {
                v224 = -[BWStillImageSampleBufferSinkNode initWithSinkID:]([BWStillImageSampleBufferSinkNode alloc], "initWithSinkID:", [v215 sinkID]);
                [(BWNode *)v224 setName:@"Still Image Sink"];
                -[BWStillImageSampleBufferSinkNode setCameraSupportsFlash:](v224, "setCameraSupportsFlash:", [*(v215 + v112[4]) hasFlash]);
                v309.receiver = v215;
                v309.super_class = FigCaptureStillImageSinkPipeline;
                if (objc_msgSendSuper2(&v309, sel_addNode_error_, v224, &v376))
                {
                  v215[8] = v224;
                  if ([schedulerCopy6 connectOutput:output6 toInput:-[BWNode input](v224 pipelineStage:{"input"), v285}])
                  {
                    v307 = 0u;
                    v308 = 0u;
                    v305 = 0u;
                    v306 = 0u;
                    nodes = [v215 nodes];
                    v226 = [nodes countByEnumeratingWithState:&v305 objects:v304 count:16];
                    if (v226)
                    {
                      v227 = v226;
                      v228 = *v306;
                      do
                      {
                        for (n = 0; n != v227; ++n)
                        {
                          if (*v306 != v228)
                          {
                            objc_enumerationMutation(nodes);
                          }

                          v230 = *(*(&v305 + 1) + 8 * n);
                          [v230 setDeferredPreparePriority:1];
                          v302 = 0u;
                          v303 = 0u;
                          v300 = 0u;
                          v301 = 0u;
                          inputs = [v230 inputs];
                          v232 = [inputs countByEnumeratingWithState:&v300 objects:v299 count:16];
                          if (v232)
                          {
                            v233 = v232;
                            v234 = *v301;
                            do
                            {
                              for (ii = 0; ii != v233; ++ii)
                              {
                                if (*v301 != v234)
                                {
                                  objc_enumerationMutation(inputs);
                                }

                                [objc_msgSend(*(*(&v300 + 1) + 8 * ii) "connection")];
                              }

                              v233 = [inputs countByEnumeratingWithState:&v300 objects:v299 count:16];
                            }

                            while (v233);
                          }
                        }

                        v227 = [nodes countByEnumeratingWithState:&v305 objects:v304 count:16];
                      }

                      while (v227);
                    }

                    [v215[7] setDeferredPreparePriority:4];
                  }

                  else
                  {
                    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
                  }
                }

                else
                {
                  [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
                }
              }
            }

            else
            {
              [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
            }
          }

          else
          {
            fig_log_get_emitter();
            LODWORD(v237) = 0;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v237, v241, v238, v239, v240, v241, v242, v243);
          }

          goto LABEL_374;
        }

        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      }

      else
      {
        [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
      }
    }

    else
    {
      [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
    }
  }

  else
  {
    [FigCaptureStillImageSinkPipeline _buildStillImageSinkPipelineWithConfiguration:sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:];
  }

LABEL_374:
  result = v377;
  if (!v377)
  {
    if (v376)
    {
      return [v376 code];
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureStillImageSinkPipeline;
  [(FigCaptureSinkPipeline *)&v3 dealloc];
}

- (void)initWithConfiguration:(int)a1 captureDevice:(void *)a2 sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:name:.cold.1(int a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v4 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
}

- (void)_buildStillImageSinkPipelineWithConfiguration:(void *)a3 sourceOutputsByPortType:captureStatusDelegate:inferenceScheduler:graph:.cold.97(void *result, void *a2, void *a3)
{
  if (result[13])
  {
    v5 = result;
    result = [result outputPixelFormat];
    if (result == 875704438)
    {
      result = [objc_msgSend(a3 "output")];
      if (!result)
      {
        return [a2 setInputColorInfo:v5[13]];
      }
    }
  }

  return result;
}

@end