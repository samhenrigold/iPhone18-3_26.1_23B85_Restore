@interface BWSmartStyleRenderingProcessorController
+ (id)pixelBufferAttributesForSmallLightMap:(int)map aspectRatio:(int)ratio;
+ (id)pixelBufferAttributesWithCapacityForLearntCoefficients:(int)coefficients aspectRatio:(int)ratio;
- (BWSmartStyleRenderingProcessorController)initWithConfiguration:(id)configuration;
- (CMAttachmentBearerRef)_newOutputSampleBufferFromSampleBuffer:(__CVBuffer *)buffer pixelBuffer:(void *)pixelBuffer additionalMetadata:(CFTypeRef *)metadata formatDescriptionInOut:;
- (double)_getDenormalizedFinalCropRectFromSourceForPixelBuffer:(void *)buffer metadata:;
- (double)_getDenormalizedFinalCropRectfromMetadata:(__CVBuffer *)metadata pixelBuffer:;
- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out;
- (int)prepare;
- (int)process;
- (uint64_t)_loadSetupAndPrepareSmartStyleRenderingProcessor:(uint64_t)result;
- (uint64_t)_newPixelBufferWithDimensions:(uint64_t)dimensions pixelFormat:(uint64_t)format name:;
- (uint64_t)_populateInputLinearPixelBufferColorManagementMetadata:(uint64_t)metadata;
- (uint64_t)_setupConfigurationAndClasses:(uint64_t)classes version:(int)version defaultAspectRatio:;
- (uint64_t)_tuningParameterVariantForCaptureType:(uint64_t)type captureFlags:;
- (void)_newLearningCoefficientsPixelBufferWithName:(int)name aspectRatio:;
- (void)_newSmallLightMapPixelBufferWithName:(int)name aspectRatio:;
- (void)dealloc;
- (void)updateSmartStyleProcessorConfigurationIfNeededForApplyOnly:(BOOL)only aspectRatio:(int)ratio;
@end

@implementation BWSmartStyleRenderingProcessorController

- (void)updateSmartStyleProcessorConfigurationIfNeededForApplyOnly:(BOOL)only aspectRatio:(int)ratio
{
  smartStyleProcessor = self->_smartStyleProcessor;
  if (only)
  {
    if (![objc_msgSend(-[CMISmartStyleProcessor configuration](smartStyleProcessor configuration])
    {
      return;
    }

    getDefaultProcessorConfigurationForStreaming = [objc_opt_class() getDefaultProcessorConfigurationForStreaming];
  }

  else
  {
    v8 = objc_opt_class();
    v9 = BWAspectRatioValueFromAspectRatio(ratio);
    if (v9 != 0.0 && v9 < 1.0)
    {
      getDefaultProcessorConfigurationForStreaming = [v8 getDefaultProcessorConfigurationForStills3x4];
    }

    else
    {
      getDefaultProcessorConfigurationForStreaming = [v8 getDefaultProcessorConfigurationForStills];
    }
  }

  v11 = getDefaultProcessorConfigurationForStreaming;
  v12 = self->_smartStyleProcessor;

  [(CMISmartStyleProcessor *)v12 setConfiguration:v11];
}

+ (id)pixelBufferAttributesWithCapacityForLearntCoefficients:(int)coefficients aspectRatio:(int)ratio
{
  v5 = *&coefficients;
  v6 = BWStandardProcessorNameForBundleBaseName(@"CMI", @"SmartStyle", *&coefficients);
  v7 = [BWLoadProcessorBundle(@"SmartStyle" v5)];
  v8 = BWAspectRatioValueFromAspectRatio(ratio);
  if (v8 != 0.0 && v8 < 1.0)
  {
    getDefaultProcessorConfigurationForStills3x4 = [v7 getDefaultProcessorConfigurationForStills3x4];
  }

  else
  {
    getDefaultProcessorConfigurationForStills3x4 = [v7 getDefaultProcessorConfigurationForStills];
  }

  return [getDefaultProcessorConfigurationForStills3x4 pixelBufferAttributesWithCapacityForLearntCoefficients];
}

+ (id)pixelBufferAttributesForSmallLightMap:(int)map aspectRatio:(int)ratio
{
  v5 = *&map;
  v6 = BWStandardProcessorNameForBundleBaseName(@"CMI", @"SmartStyle", *&map);
  v7 = [BWLoadProcessorBundle(@"SmartStyle" v5)];
  v8 = BWAspectRatioValueFromAspectRatio(ratio);
  if (v8 != 0.0 && v8 < 1.0)
  {
    getDefaultProcessorConfigurationForStills3x4 = [v7 getDefaultProcessorConfigurationForStills3x4];
  }

  else
  {
    getDefaultProcessorConfigurationForStills3x4 = [v7 getDefaultProcessorConfigurationForStills];
  }

  return [getDefaultProcessorConfigurationForStills3x4 pixelBufferAttributesForSmallLightMap];
}

- (BWSmartStyleRenderingProcessorController)initWithConfiguration:(id)configuration
{
  v8.receiver = self;
  v8.super_class = BWSmartStyleRenderingProcessorController;
  v4 = [(BWStillImageProcessorController *)&v8 initWithName:@"SmartStyle" type:16 configuration:configuration];
  if (v4)
  {
    v6 = objc_autoreleasePoolPush();
    v4->_inferencesNotAvailableForSmartStyleRendering = [configuration inferencesNotAvailableForSmartStyleRendering];
    v7 = [(BWSmartStyleRenderingProcessorController *)v4 _loadSetupAndPrepareSmartStyleRenderingProcessor:configuration];
    v4->_reversibilityEnabled = [configuration reversibilityEnabled];
    v4->_unstyledBufferEmitted = [configuration unstyledBufferEmitted];
    v4->_depthDataDeliveryEnabled = [configuration depthDataDeliveryEnabled];
    objc_autoreleasePoolPop(v6);
    if (v7)
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  [(BWSmartStyleRenderingProcessorController *)self reset];

  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  smartStyleLinearThumbnailFormatDescription = self->_smartStyleLinearThumbnailFormatDescription;
  if (smartStyleLinearThumbnailFormatDescription)
  {
    CFRelease(smartStyleLinearThumbnailFormatDescription);
  }

  smartStyleStyledThumbnailFormatDescription = self->_smartStyleStyledThumbnailFormatDescription;
  if (smartStyleStyledThumbnailFormatDescription)
  {
    CFRelease(smartStyleStyledThumbnailFormatDescription);
  }

  smallLightMapFormatDescription = self->_smallLightMapFormatDescription;
  if (smallLightMapFormatDescription)
  {
    CFRelease(smallLightMapFormatDescription);
  }

  coefficientsFormatDescription = self->_coefficientsFormatDescription;
  if (coefficientsFormatDescription)
  {
    CFRelease(coefficientsFormatDescription);
  }

  reverseCoefficientsFormatDescription = self->_reverseCoefficientsFormatDescription;
  if (reverseCoefficientsFormatDescription)
  {
    CFRelease(reverseCoefficientsFormatDescription);
  }

  personSegmentationFormatDescription = self->_personSegmentationFormatDescription;
  if (personSegmentationFormatDescription)
  {
    CFRelease(personSegmentationFormatDescription);
  }

  skinSegmentationFormatDescription = self->_skinSegmentationFormatDescription;
  if (skinSegmentationFormatDescription)
  {
    CFRelease(skinSegmentationFormatDescription);
  }

  skySegmentationFormatDescription = self->_skySegmentationFormatDescription;
  if (skySegmentationFormatDescription)
  {
    CFRelease(skySegmentationFormatDescription);
  }

  v12.receiver = self;
  v12.super_class = BWSmartStyleRenderingProcessorController;
  [(BWStillImageProcessorController *)&v12 dealloc];
}

- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWSmartStyleRenderingProcessorControllerRequest alloc] initWithInput:input delegate:delegate];
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

uint64_t __93__BWSmartStyleRenderingProcessorController__loadSetupAndPrepareSmartStyleRenderingProcessor___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 32) deferredPhotoProcessorEnabled];
  v5 = @"Still";
  if (v4)
  {
    v5 = @"Still-Deferred";
  }

  [a2 setInstanceLabel:{objc_msgSend(v3, "stringWithFormat:", @"%@", v5)}];
  return 0;
}

- (uint64_t)_loadSetupAndPrepareSmartStyleRenderingProcessor:(uint64_t)result
{
  if (result)
  {
    v4 = result;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __93__BWSmartStyleRenderingProcessorController__loadSetupAndPrepareSmartStyleRenderingProcessor___block_invoke;
    v8[3] = &unk_1E7991C78;
    v8[4] = a2;
    version = [a2 version];
    version2 = [a2 version];
    [a2 sensorConfigurationsByPortType];
    metalCommandQueue = [OUTLINED_FUNCTION_106_0() metalCommandQueue];
    result = BWLoadCreateAndSetupMetalImageBufferProcessor(@"SmartStyle", version, @"CMI", @"SmartStyle", version2, &unk_1F22C45C8, 0, v2, metalCommandQueue, v8, (v4 + 64));
    if (!result)
    {
      result = -[BWSmartStyleRenderingProcessorController _setupConfigurationAndClasses:version:defaultAspectRatio:](v4, *(v4 + 64), [a2 version], objc_msgSend(a2, "defaultAspectRatio"));
      if (!result)
      {
        [*(v4 + 64) setUseLiveMetalAllocations:1];
        return 0;
      }
    }
  }

  return result;
}

- (int)prepare
{
  v3 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor prepareToProcess:13];
  if (!v3)
  {
    [(BWStillImageProcessorController *)self currentRequest];
  }

  return v3;
}

- (int)process
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v5 = v4;
  [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v7 = v6;
  [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v9 = v8;
  v333 = 64;
  [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v11 = v10;
  v12 = &dword_1EB58E000;
  ImageBuffer = &dword_1EB58E000;
  if (dword_1EB58E320)
  {
    v351 = 0;
    v350 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_13_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  currentRequest = [(BWStillImageProcessorController *)self currentRequest];
  v16 = currentRequest;
  v17 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  if (!currentRequest)
  {
    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_0_121();
    v21 = 0;
LABEL_147:
    OUTLINED_FUNCTION_4_98();
    goto LABEL_148;
  }

  if (([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] applyOnly]& 1) != 0 || (v18 = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] captureSettings] captureType], v19 = [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] captureStreamSettings] captureFlags], v20 = v19, v18 == 2) && !self->_reversibilityEnabled && (v19 & 8) == 0 || (BWStillImageProcessingFlagsForSampleBuffer([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame]) & 0x100000) != 0)
  {
    cf = 0;
    v317 = 0;
    OUTLINED_FUNCTION_0_121();
    v21 = 0;
    OUTLINED_FUNCTION_3_112();
    process = 0;
    HIDWORD(v318) = 1;
    goto LABEL_72;
  }

  v283 = 152;
  v21 = objc_alloc_init(self->_smartStyleProcessorInputOutputClass);
  if (!v21)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v269, v271, v272, v275, v278, v280, 0x98, v284);
    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_0_121();
    OUTLINED_FUNCTION_3_112();
    process = -12782;
    goto LABEL_72;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame]);
  if (!ImageBuffer)
  {
    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_0_121();
    v325 = 0;
LABEL_148:
    dictionary4 = 0;
LABEL_149:
    process = -12780;
    goto LABEL_72;
  }

  inputFrame = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame];
  key = *off_1E798A3C8;
  v24 = CMGetAttachment(inputFrame, *off_1E798A3C8, 0);
  if (!v24 || (v25 = v24, v26 = [(BWSmartStyleRenderingProcessorController *)self _tuningParameterVariantForCaptureType:v18 captureFlags:v20], [(BWStillImageSmartStyle *)dictionary4 setObject:v26 forKeyedSubscript:*off_1E798A930], v352.origin.x = [(BWSmartStyleRenderingProcessorController *)self _getDenormalizedFinalCropRectfromMetadata:v25 pixelBuffer:ImageBuffer], x = v352.origin.x, y = v352.origin.y, width = v352.size.width, height = v352.size.height, CGRectIsNull(v352)))
  {
    OUTLINED_FUNCTION_15_42();
LABEL_146:
    OUTLINED_FUNCTION_0_121();
    goto LABEL_147;
  }

  v335 = v25;
  v31 = BWStillImageBufferTypeToShortString(46);
  v32 = [(BWSmartStyleRenderingProcessorController *)self _newPixelBufferWithDimensions:1111970369 pixelFormat:v31 name:?];
  if (!v32)
  {
    OUTLINED_FUNCTION_15_42();
LABEL_152:
    OUTLINED_FUNCTION_0_121();
    OUTLINED_FUNCTION_3_112();
LABEL_153:
    process = -12786;
    goto LABEL_72;
  }

  v33 = v32;
  v34 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
  v317 = v33;
  if (v34)
  {
    process = v34;
    OUTLINED_FUNCTION_6_82();
    OUTLINED_FUNCTION_0_121();
    OUTLINED_FUNCTION_3_112();
    goto LABEL_72;
  }

  smartStyle = [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] settings] smartStyle];
  if (!smartStyle)
  {
    OUTLINED_FUNCTION_6_82();
    goto LABEL_146;
  }

  v307 = dictionary4;
  dictionary4 = [[BWStillImageSmartStyle alloc] initWithSmartStyle:smartStyle];
  if (!dictionary4)
  {
    OUTLINED_FUNCTION_6_82();
    OUTLINED_FUNCTION_0_121();
    OUTLINED_FUNCTION_4_98();
    goto LABEL_149;
  }

  v310 = v26;
  [v21 setSemanticStyleSceneType:{objc_msgSend(-[BWStillImageCaptureSettings metadata](-[BWStillImageProcessorControllerInput captureSettings](-[BWStillImageProcessorControllerRequest input](v16, "input"), "captureSettings"), "metadata"), "semanticStyleSceneType")}];
  v36 = ImageBuffer;
  ImageBuffer = 0x1E696A000;
  [v335 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[BWStillImageCaptureSettings metadata](-[BWStillImageProcessorControllerInput captureSettings](-[BWStillImageProcessorControllerRequest input](v16, "input"), "captureSettings"), "metadata"), "semanticStyleSceneType")), *off_1E798A898}];
  v37 = CVPixelBufferGetWidth(v36);
  pixelBuffer = v36;
  CVPixelBufferGetHeight(v36);
  [OUTLINED_FUNCTION_352() delegate];
  v336 = [v26 processorController:self newOutputPixelBufferForProcessorInput:objc_msgSend(OUTLINED_FUNCTION_106_0() type:"input") dimensions:{1, v37 | (v36 << 32)}];
  if (!v336)
  {
    OUTLINED_FUNCTION_6_82();
    goto LABEL_152;
  }

  *&v309 = x;
  if (BWIsSmartStyleAllowedForAdjustedImage([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] stillImageSettings]))
  {
    BWStillImageBufferTypeToShortString(42);
    [objc_msgSend(OUTLINED_FUNCTION_9_68() "settings")];
    v209 = OUTLINED_FUNCTION_2_126();
    v321 = [(BWSmartStyleRenderingProcessorController *)v209 _newLearningCoefficientsPixelBufferWithName:v210 aspectRatio:v211];
    if (!v321)
    {
      OUTLINED_FUNCTION_6_82();
      OUTLINED_FUNCTION_0_121();
      OUTLINED_FUNCTION_4_98();
      process = -12786;
LABEL_122:
      dictionary4 = v336;
      goto LABEL_72;
    }
  }

  else
  {
    v321 = 0;
  }

  v38 = *MEMORY[0x1E695F050];
  v329 = *(MEMORY[0x1E695F050] + 16);
  v332 = *(MEMORY[0x1E695F050] + 8);
  v326 = *(MEMORY[0x1E695F050] + 24);
  AttachedMedia = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x1F21AAF50);
  v319 = *&v38;
  *&v308 = width;
  if (AttachedMedia)
  {
    v40 = AttachedMedia;
    v41 = CMSampleBufferGetImageBuffer(AttachedMedia);
    if (v41)
    {
      v49 = v41;
      v50 = OUTLINED_FUNCTION_17_39(v40, v42, v43, v44, v45, v46, v47, v48, v269, v271, v272, v275, v278, v280, 152, v284, key);
      if (v50)
      {
        v51 = v50;
        v52 = y;
        v53 = v11;
        v54 = v9;
        v353.origin.x = [(BWSmartStyleRenderingProcessorController *)self _getDenormalizedFinalCropRectfromMetadata:v50 pixelBuffer:v49];
        v55 = v353.origin.x;
        v56 = v353.origin.y;
        v57 = v353.size.width;
        v58 = v353.size.height;
        if (!CGRectIsNull(v353))
        {
          v311 = v51;
          v59 = CVPixelBufferGetWidth(v49);
          v60 = CVPixelBufferGetHeight(v49);
          v359.size.width = v59;
          v359.size.height = v60;
          v359.origin.x = 0.0;
          v359.origin.y = 0.0;
          v354.origin.x = v55;
          v354.origin.y = v56;
          v354.size.width = v57;
          v354.size.height = v58;
          v61 = CGRectEqualToRect(v354, v359);
LABEL_32:
          v279 = *&v56;
          [v21 setInputLinearCropRect:{v55, v56, v57, v58}];
          v71 = *&v55;
          *&v38 = v319;
          goto LABEL_33;
        }
      }
    }

    goto LABEL_137;
  }

  v62 = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x1F21AB110);
  if (!v62 || (v63 = CMSampleBufferGetImageBuffer(v62)) == 0)
  {
LABEL_137:
    HIDWORD(v318) = 0;
    goto LABEL_138;
  }

  v49 = v63;
  v52 = y;
  v53 = v11;
  v54 = v9;
  aspectRatio = [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] settings] aspectRatio];
  if (self->_depthDataDeliveryEnabled || (aspectRatio - 1) <= 5)
  {
    v355.origin.x = [(BWSmartStyleRenderingProcessorController *)self _getDenormalizedFinalCropRectFromSourceForPixelBuffer:v49 metadata:v335];
    v57 = v355.size.width;
    v58 = v355.size.height;
    v55 = v355.origin.x;
    v56 = v355.origin.y;
    v61 = 0;
    if (!CGRectIsNull(v355))
    {
      v311 = v335;
      goto LABEL_32;
    }

    HIDWORD(v318) = 0;
LABEL_138:
    cf = 0;
    v333 = 0;
    v323 = 0;
    v324 = 0;
LABEL_161:
    v329 = 0.0;
    v332 = 0.0;
    v325 = 0;
    goto LABEL_120;
  }

  v61 = 0;
  v58 = v326;
  v57 = v329;
  v279 = *&v332;
  v71 = v38;
  v311 = v335;
LABEL_33:
  v320 = v49;
  v269 = [(BWSmartStyleRenderingProcessorController *)self _populateInputLinearPixelBufferColorManagementMetadata:v49, v65, v66, v67, v68, v69, v70, v269];
  if (v269)
  {
    process = v269;
    OUTLINED_FUNCTION_6_82();
    v332 = 0.0;
    v333 = 0;
    v323 = 0;
    v324 = 0;
    v329 = 0.0;
    v325 = 0;
LABEL_163:
    ImageBuffer = 0;
    goto LABEL_121;
  }

  v73 = BWStillImageBufferTypeToShortString(47);
  v74 = [(BWSmartStyleRenderingProcessorController *)self _newPixelBufferWithDimensions:2019963440 pixelFormat:v73 name:?];
  if (!v74)
  {
    OUTLINED_FUNCTION_6_82();
LABEL_157:
    v333 = 0;
    v323 = 0;
    v324 = 0;
LABEL_159:
    v329 = 0.0;
    v332 = 0.0;
    OUTLINED_FUNCTION_4_98();
    process = -12786;
    goto LABEL_121;
  }

  v75 = v74;
  [v21 setInputLinearPixelBuffer:v49];
  cf = v75;
  [v21 setOutputCodedLinearThumbnailPixelBuffer:v75];
  [v21 setOutputCodedLinearThumbnailMetadata:dictionary];
  BWStillImageBufferTypeToShortString(44);
  [objc_msgSend(OUTLINED_FUNCTION_9_68() "settings")];
  v76 = OUTLINED_FUNCTION_2_126();
  v79 = [(BWSmartStyleRenderingProcessorController *)v76 _newSmallLightMapPixelBufferWithName:v77 aspectRatio:v78];
  if (!v79)
  {
    HIDWORD(v318) = 0;
    goto LABEL_157;
  }

  v324 = v79;
  BWStillImageBufferTypeToShortString(45);
  [objc_msgSend(OUTLINED_FUNCTION_9_68() "settings")];
  v80 = OUTLINED_FUNCTION_2_126();
  v83 = [(BWSmartStyleRenderingProcessorController *)v80 _newSmallLightMapPixelBufferWithName:v81 aspectRatio:v82];
  if (!v83)
  {
    HIDWORD(v318) = 0;
    v333 = 0;
    v323 = 0;
    goto LABEL_159;
  }

  v323 = v83;
  [(BWStillImageProcessorControllerRequest *)v16 delegate];
  v325 = [(__CVBuffer *)v75 processorController:self newInferencesForProcessorInput:OUTLINED_FUNCTION_9_68()];
  if (!v325)
  {
    HIDWORD(v318) = 0;
    v333 = 0;
    goto LABEL_161;
  }

  v84 = *off_1E798A8D8;
  v85 = [v335 objectForKeyedSubscript:*off_1E798A8D8];
  v86 = *MEMORY[0x1E6991668];
  HIDWORD(v318) = v61;
  if ([v85 objectForKeyedSubscript:*MEMORY[0x1E6991668]])
  {
    [objc_msgSend(objc_msgSend(v335 objectForKeyedSubscript:{v84), "objectForKeyedSubscript:", v86), "floatValue"}];
  }

  else
  {
    v87 = BWSmartStylePersonMasksValidHint(v335);
  }

  v88 = v87;
  v281 = v84;
  v285 = v86;
  [objc_msgSend(v335 objectForKeyedSubscript:{v84), "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:"), v86}];
  v89 = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x1F21AABB0);
  if (v89)
  {
    v97 = v89;
    v105 = CMSampleBufferGetImageBuffer(v89);
    if (v105)
    {
      v108 = OUTLINED_FUNCTION_17_39(v97, v98, v99, v100, v101, v102, v103, v104, v270, v271, v272, v275, v279, v84, v283, v285, key);
      goto LABEL_112;
    }

LABEL_45:
    v115 = v326;
    v303 = v332;
    v306 = v329;
    v300 = *&v38;
    v17 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
    goto LABEL_46;
  }

  v107 = [OUTLINED_FUNCTION_7_82(0 v90];
  v105 = v107;
  if (!v107)
  {
    goto LABEL_45;
  }

  v108 = [OUTLINED_FUNCTION_7_82(v107 v108];
LABEL_112:
  v17 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  v356.origin.x = [(BWSmartStyleRenderingProcessorController *)self _getDenormalizedFinalCropRectfromMetadata:v108 pixelBuffer:v105];
  v115 = v356.size.height;
  v300 = v356.origin.x;
  v303 = v356.origin.y;
  v306 = v356.size.width;
  if (CGRectIsNull(v356))
  {
    goto LABEL_119;
  }

LABEL_46:
  v116 = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], @"PersonSemanticsSkin");
  v294 = *&v57;
  v297 = *&height;
  v277 = *&v58;
  if (v116)
  {
    v124 = v116;
    v132 = CMSampleBufferGetImageBuffer(v116);
    if (v132)
    {
      v135 = OUTLINED_FUNCTION_17_39(v124, v125, v126, v127, v128, v129, v130, v131, v270, v271, v272, *&v58, v279, v281, v283, v285, key);
      goto LABEL_115;
    }

LABEL_50:
    v143 = v326;
    v142 = v329;
    v144 = v332;
    goto LABEL_51;
  }

  v117 = [OUTLINED_FUNCTION_7_82(0 v117];
  v132 = v117;
  if (!v117)
  {
    goto LABEL_50;
  }

  v135 = [OUTLINED_FUNCTION_7_82(v117 v135];
LABEL_115:
  v357.origin.x = [(BWSmartStyleRenderingProcessorController *)self _getDenormalizedFinalCropRectfromMetadata:v135 pixelBuffer:v132];
  v38 = *&v357.origin.x;
  v144 = v357.origin.y;
  v142 = v357.size.width;
  v143 = v357.size.height;
  if (CGRectIsNull(v357))
  {
    goto LABEL_119;
  }

LABEL_51:
  v145 = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x1F21AAD30);
  v274 = v71;
  *(&v291 + 1) = v88;
  v290 = v38;
  if (v145)
  {
    v153 = v145;
    v161 = CMSampleBufferGetImageBuffer(v145);
    if (!v161)
    {
      v162 = v142;
      v163 = v115;
      v164 = *&v308;
      v165 = *&v309;
      v17 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
      goto LABEL_56;
    }

    v167 = OUTLINED_FUNCTION_17_39(v153, v154, v155, v156, v157, v158, v159, v160, v270, v271, v71, v277, v279, v281, v283, v285, key);
    v17 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
    goto LABEL_118;
  }

  v146 = [OUTLINED_FUNCTION_7_82(0 v146];
  v161 = v146;
  if (v146)
  {
    v167 = [OUTLINED_FUNCTION_7_82(v146 v167];
LABEL_118:
    v358.origin.x = [(BWSmartStyleRenderingProcessorController *)self _getDenormalizedFinalCropRectfromMetadata:v167 pixelBuffer:v161];
    v319 = v358.origin.x;
    v329 = v358.size.width;
    v332 = v358.origin.y;
    v326 = v358.size.height;
    if (CGRectIsNull(v358))
    {
LABEL_119:
      OUTLINED_FUNCTION_1_133();
LABEL_120:
      ImageBuffer = 0;
      process = -12780;
LABEL_121:
      v12 = v321;
      goto LABEL_122;
    }
  }

  v162 = v142;
  v163 = v115;
  v164 = *&v308;
  v165 = *&v309;
LABEL_56:
  [v21 setInputSmartStyle:objc_alloc_init(self->_smartStyleClass)];
  [objc_msgSend(v21 "inputSmartStyle")];
  [(BWStillImageSmartStyle *)dictionary4 intensity];
  v175 = v174;
  inputSmartStyle = [v21 inputSmartStyle];
  LODWORD(v177) = v175;
  [inputSmartStyle setCastIntensity:v177];
  [(BWStillImageSmartStyle *)dictionary4 toneBias];
  v179 = v178;
  inputSmartStyle2 = [v21 inputSmartStyle];
  LODWORD(v181) = v179;
  [inputSmartStyle2 setToneBias:v181];
  [(BWStillImageSmartStyle *)dictionary4 colorBias];
  v183 = v182;
  inputSmartStyle3 = [v21 inputSmartStyle];
  LODWORD(v185) = v183;
  [inputSmartStyle3 setColorBias:v185];
  [v21 setInputUnstyledPixelBuffer:pixelBuffer];
  [v21 setInputUnstyledCropRect:{v165, v52, v164, *&v297}];
  [v21 setInputMetadataDict:v335];
  [v21 setInputLinearMetadataDict:v311];
  [v21 setInputLinearPixelBuffer:v320];
  [v21 setInputPersonMaskPixelBuffer:v105];
  [v21 setInputPersonMaskCropRect:{v300, v303, v306, v163}];
  [v21 setInputSkinMaskPixelBuffer:v132];
  [v21 setInputSkinMaskCropRect:{*&v290, v144, v162, v143}];
  [v21 setInputSkyMaskPixelBuffer:v161];
  [v21 setInputSkyMaskCropRect:{v319, v332, v329, v326}];
  [v21 setInputTuningType:v310];
  LODWORD(v186) = HIDWORD(v291);
  [v21 setPersonMasksValidHint:v186];
  [v21 setOutputStyledPixelBuffer:v336];
  v187 = OUTLINED_FUNCTION_11_56();
  [v188 setOutputStyledCropRect:v187];
  [v21 setOutputLearnedStyleCoefficientsPixelBuffer:v321];
  [v21 setOutputImageStatistics:dictionary2];
  [v21 setOutputImageStatisticsExtended:dictionary3];
  [v21 setOutputSmallLightMapPixelBuffer:v324];
  [v21 setOutputSmallLinearLightMapPixelBuffer:v323];
  [(CMISmartStyleProcessor *)self->_smartStyleProcessor setInputOutput:v21];
  v189 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor prepareToProcess:29];
  if (v189)
  {
    process = v189;
    OUTLINED_FUNCTION_1_133();
    goto LABEL_163;
  }

  process = [(CMISmartStyleProcessor *)self->_smartStyleProcessor process];
  v12 = v321;
  if (dword_1EB58E320)
  {
    v351 = 0;
    v350 = OS_LOG_TYPE_DEFAULT;
    v190 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_13_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v17 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  }

  if (process)
  {
    OUTLINED_FUNCTION_1_133();
    ImageBuffer = 0;
    goto LABEL_122;
  }

  finishProcessing = [(CMISmartStyleProcessor *)self->_smartStyleProcessor finishProcessing];
  dictionary4 = v336;
  if (finishProcessing)
  {
    process = finishProcessing;
    OUTLINED_FUNCTION_1_133();
    ImageBuffer = 0;
    goto LABEL_72;
  }

  ImageBuffer = [(BWSmartStyleRenderingProcessorController *)self _newOutputSampleBufferFromSampleBuffer:v336 pixelBuffer:v307 additionalMetadata:&self->_outputFormatDescription formatDescriptionInOut:?];
  if (!ImageBuffer)
  {
    OUTLINED_FUNCTION_1_133();
    process = -16807;
    goto LABEL_72;
  }

  if (self->_unstyledBufferEmitted)
  {
    v338 = *off_1E798A788;
    v339 = &unk_1F224A990;
    BWSampleBufferSetAttachedMediaFromPixelBuffer(ImageBuffer, 0x1F21AAF90, pixelBuffer, &self->_outputFormatDescription, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v339 forKeys:&v338 count:1], 0, 1);
  }

  v192 = BWStillImageProcessingFlagsForSampleBuffer(ImageBuffer);
  BWStillImageSetProcessingFlagsForSampleBuffer(ImageBuffer, v192 | 0x200000);
  v193 = 0;
  if ((v192 & 0x1000) != 0 || !self->_reversibilityEnabled)
  {
    v329 = 0.0;
    v194 = 0.0;
    goto LABEL_69;
  }

  if ([(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] settings] smartStyleReversibilitySupported])
  {
    v332 = COERCE_DOUBLE(objc_alloc_init(*(&self->super.super.isa + v283)));
    objc_opt_class();
    v213 = [objc_msgSend(OUTLINED_FUNCTION_9_68() "settings")];
    v214 = BWAspectRatioValueFromAspectRatio(v213);
    if (v214 != 0.0 && v214 < 1.0)
    {
      getDefaultProcessorConfigurationForStills3x4 = [v192 getDefaultProcessorConfigurationForStills3x4];
    }

    else
    {
      getDefaultProcessorConfigurationForStills3x4 = [v192 getDefaultProcessorConfigurationForStills];
    }

    [(CMISmartStyleProcessor *)self->_smartStyleProcessor setConfiguration:getDefaultProcessorConfigurationForStills3x4];
    [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
    v330 = v217;
    [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
    v327 = v218;
    CFRelease(v317);
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v220 = BWStillImageBufferTypeToShortString(46);
    v331 = (v330 | (v327 << 32));
    v221 = [(BWSmartStyleRenderingProcessorController *)self _newPixelBufferWithDimensions:v331 pixelFormat:PixelFormatType name:v220];
    if (v221)
    {
      v222 = v221;
      [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
      v317 = v222;
      v223 = OUTLINED_FUNCTION_11_56();
      v225 = [v224 downScalePixelBuffer:v223 toPixelBuffer:? inputROI:?];
      if (v225)
      {
        process = v225;
        HIDWORD(v318) = 0;
        v333 = 0;
        goto LABEL_174;
      }

      v226 = CVPixelBufferGetPixelFormatType(v336);
      v227 = [(BWSmartStyleRenderingProcessorController *)self _newPixelBufferWithDimensions:v331 pixelFormat:v226 name:@"SmartStyleOutputStyledThumbnail"];
      if (v227)
      {
        v193 = v227;
        [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
        v228 = OUTLINED_FUNCTION_11_56();
        v230 = [v229 downScalePixelBuffer:v228 toPixelBuffer:? inputROI:?];
        if (!v230)
        {
          [*&v332 setInputUnstyledThumbnailPixelBuffer:v193];
          [*&v332 setInputLearningTargetThumbnailPixelBuffer:v222];
          [*&v332 setOutputSmallLightMapPixelBuffer:0];
          [*&v332 setOutputSmallLinearLightMapPixelBuffer:0];
          BWStillImageBufferTypeToShortString(43);
          [objc_msgSend(OUTLINED_FUNCTION_9_68() "settings")];
          v231 = OUTLINED_FUNCTION_2_126();
          v234 = COERCE_DOUBLE([(BWSmartStyleRenderingProcessorController *)v231 _newLearningCoefficientsPixelBufferWithName:v232 aspectRatio:v233]);
          if (v234 != 0.0)
          {
            v329 = v234;
            [*&v332 setOutputLearnedStyleCoefficientsPixelBuffer:?];
            [(CMISmartStyleProcessor *)self->_smartStyleProcessor setInputOutput:*&v332];
            v235 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor prepareToProcess:1];
            if (v235 || (v235 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor process]) != 0 || (v235 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor finishProcessing]) != 0 || (v235 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor resetState]) != 0)
            {
              process = v235;
              v333 = v193;
              HIDWORD(v318) = 0;
              goto LABEL_72;
            }

            if ((v318 & 0x100000000) != 0)
            {
              v236 = OUTLINED_FUNCTION_16_44();
              v239 = cf;
              v240 = v311;
            }

            else
            {
              v328 = [v311 mutableCopy];
              v241 = CVPixelBufferGetWidth(v320);
              v322 = v241 | (CVPixelBufferGetHeight(v320) << 32);
              v334 = v193;
              v242 = CVPixelBufferGetWidth(cf);
              v243 = v242 | (CVPixelBufferGetHeight(cf) << 32);
              v244 = FigCaptureRectFromDimensions();
              v246 = v245;
              v248 = v247;
              v249.n128_u64[0] = v274;
              v250.n128_u64[0] = v279;
              v251.n128_u64[0] = v294;
              v252 = v243;
              v193 = v334;
              FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v328, v322, v252, v249, v250, v251, *&v277, v244, v246, v248, v253);
              FigCaptureMetadataUtilitiesPreventFurtherCropping(v328, v254);
              v236 = OUTLINED_FUNCTION_16_44();
              v239 = cf;
              v240 = v328;
            }

            BWSampleBufferSetAttachedMediaFromPixelBuffer(v236, v237, v239, v238, v240, 0, 0);
            v255 = OUTLINED_FUNCTION_16_44();
            OUTLINED_FUNCTION_7_2(v255, v256, v193, v257);
            v265 = OUTLINED_FUNCTION_17_39(ImageBuffer, v258, v259, v260, v261, v262, v263, v264, v270, v271, v274, v277, v279, v281, v283, v285, key);
            [v265 setObject:dictionary forKeyedSubscript:*off_1E798A900];
            [v265 setObject:dictionary2 forKeyedSubscript:*off_1E798A8D0];
            [v265 setObject:dictionary3 forKeyedSubscript:v282];
            [objc_msgSend(v265 objectForKeyedSubscript:{v282), "setObject:forKeyedSubscript:", objc_msgSend(objc_msgSend(v335, "objectForKeyedSubscript:", v282), "objectForKeyedSubscript:", v286), v286}];
            v266 = OUTLINED_FUNCTION_16_44();
            OUTLINED_FUNCTION_7_2(v266, v267, *&v329, v268);
            OUTLINED_FUNCTION_7_2(ImageBuffer, 0x1F21AB010, v324, &self->_smallLightMapFormatDescription);
            OUTLINED_FUNCTION_7_2(ImageBuffer, 0x1F21AB030, v323, &self->_smallLightMapFormatDescription);
            v194 = v332;
            goto LABEL_69;
          }

          v333 = v193;
          HIDWORD(v318) = 0;
          goto LABEL_176;
        }

        process = v230;
        v333 = v193;
        HIDWORD(v318) = 0;
LABEL_174:
        v329 = 0.0;
        goto LABEL_72;
      }

      HIDWORD(v318) = 0;
    }

    else
    {
      HIDWORD(v318) = 0;
      v317 = 0;
    }

    v333 = 0;
LABEL_176:
    v329 = 0.0;
    goto LABEL_153;
  }

  v193 = 0;
  v329 = 0.0;
  v194 = 0.0;
LABEL_69:
  v332 = v194;
  v333 = v193;
  if (v12)
  {
    v195 = OUTLINED_FUNCTION_16_44();
    OUTLINED_FUNCTION_7_2(v195, v196, v12, v197);
  }

  HIDWORD(v318) = 0;
  process = 0;
LABEL_72:
  BWSampleBufferRemoveAttachedMedia([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x1F21AB070);
  BWSampleBufferRemoveAttachedMedia([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x1F21AB110);
  inputFrame2 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame];
  v199 = v17[119];
  BWSampleBufferRemoveAttachedMedia(inputFrame2, v199);
  BWSampleBufferRemoveAttachedMedia(ImageBuffer, 0x1F21AB070);
  BWSampleBufferRemoveAttachedMedia(ImageBuffer, v199);
  BWSampleBufferRemoveAttachedMedia(ImageBuffer, 0x1F21AB110);
  BWSampleBufferRemoveAttachedMedia(ImageBuffer, 0x1F21AAED0);
  BWSampleBufferRemoveAttachedMedia(ImageBuffer, 0x1F21AAEF0);
  BWSampleBufferRemoveAttachedMedia(ImageBuffer, 0x1F21AAF30);
  if (process)
  {
    v337 = dictionary4;
    v200 = v12;
    v351 = 0;
    v350 = OS_LOG_TYPE_DEFAULT;
    v201 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v202 = v351;
    if (os_log_type_enabled(v201, v350))
    {
      v203 = v202;
    }

    else
    {
      v203 = v202 & 0xFFFFFFFE;
    }

    if (v203)
    {
      settingsID = [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] settings] settingsID];
      v340 = 136315650;
      v341 = "[BWSmartStyleRenderingProcessorController process]";
      v342 = 1024;
      v343 = process;
      v344 = 2048;
      v345 = settingsID;
      OUTLINED_FUNCTION_17_25();
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    settingsID2 = [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] settings] settingsID];
    v346 = 67109376;
    v347 = process;
    v348 = 2048;
    v349 = settingsID2;
    v206 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(10, v206, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWSmartStyleRenderingProcessorController.m", 816, @"LastShownDate:BWSmartStyleRenderingProcessorController.m:816", @"LastShownBuild:BWSmartStyleRenderingProcessorController.m:816", 0);
    free(v206);
    BWStillImageSetProcessingFlagsForSampleBuffer([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x800000);
    [(BWStillImageProcessorControllerRequest *)v16 delegate];
    [OUTLINED_FUNCTION_9_68() inputFrame];
    [objc_msgSend(OUTLINED_FUNCTION_352() "input")];
    [OUTLINED_FUNCTION_106_0() input];
    [OUTLINED_FUNCTION_12_55() processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    v207 = v317;
    v12 = v200;
    dictionary4 = v337;
  }

  else
  {
    if (HIDWORD(v318))
    {
      BWStillImageSetProcessingFlagsForSampleBuffer([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x2000000);
      [(BWStillImageProcessorControllerRequest *)v16 delegate];
      [OUTLINED_FUNCTION_9_68() inputFrame];
      [objc_msgSend(OUTLINED_FUNCTION_352() "input")];
      [OUTLINED_FUNCTION_106_0() input];
    }

    else
    {
      [(BWStillImageProcessorControllerRequest *)v16 delegate];
      [OUTLINED_FUNCTION_9_68() inputBufferType];
      [OUTLINED_FUNCTION_352() input];
    }

    [OUTLINED_FUNCTION_12_55() processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    v207 = v317;
  }

  if (ImageBuffer)
  {
    CFRelease(ImageBuffer);
  }

  if (dictionary4)
  {
    CFRelease(dictionary4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v329 != 0.0)
  {
    CFRelease(*&v329);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v324)
  {
    CFRelease(v324);
  }

  if (v323)
  {
    CFRelease(v323);
  }

  if (v207)
  {
    CFRelease(v207);
  }

  if (v333)
  {
    CFRelease(v333);
  }

  return 0;
}

- (uint64_t)_tuningParameterVariantForCaptureType:(uint64_t)type captureFlags:
{
  if (result)
  {
    v3 = MEMORY[0x1E6991680];
    switch(a2)
    {
      case 1:
      case 7:
        v3 = MEMORY[0x1E69916B0];
        break;
      case 2:
        v3 = MEMORY[0x1E6991698];
        break;
      case 10:
        v3 = MEMORY[0x1E69916A0];
        break;
      case 11:
        v3 = MEMORY[0x1E6991688];
        if ((type & 0x800000000) == 0)
        {
          v3 = MEMORY[0x1E69916A0];
        }

        break;
      case 12:
      case 13:
        v3 = MEMORY[0x1E6991678];
        break;
      default:
        break;
    }

    if ((~type & 0x100000080) == 0)
    {
      v3 = MEMORY[0x1E6991690];
    }

    return *v3;
  }

  return result;
}

- (double)_getDenormalizedFinalCropRectfromMetadata:(__CVBuffer *)metadata pixelBuffer:
{
  if (!self)
  {
    return 0.0;
  }

  x = *MEMORY[0x1E695F050];
  if (a2)
  {
    if (metadata)
    {
      FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect(a2);
      v8 = v7;
      v10 = v9;
      v12 = v11;
      Width = CVPixelBufferGetWidth(metadata);
      Height = CVPixelBufferGetHeight(metadata);
      [objc_msgSend(objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798A940), "objectForKeyedSubscript:", *off_1E798AA00), "doubleValue"}];
      v16.n128_u64[0] = v15;
      v17.n128_f64[0] = FinalCropRect;
      v18.n128_u64[0] = v10;
      v19.n128_u64[0] = v12;
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(Width, Height, v17, v8, v18, v19, v16, v20);
      x = v30.origin.x;
      if (CGRectIsNull(v30))
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }
  }

  return x;
}

- (uint64_t)_newPixelBufferWithDimensions:(uint64_t)dimensions pixelFormat:(uint64_t)format name:
{
  if (!self)
  {
    return 0;
  }

  v4 = +[BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:pixelFormat:name:memoryPool:](BWOnDemandPixelBufferAllocator, "onDemandAllocatorWithDimensions:pixelFormat:name:memoryPool:", a2, dimensions, format, +[BWMemoryPool sharedMemoryPool]);
  if (!v4)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, v12, v13);
    return 0;
  }

  return [v4 newPixelBuffer];
}

- (void)_newLearningCoefficientsPixelBufferWithName:(int)name aspectRatio:
{
  if (result)
  {
    v4 = objc_opt_class();
    v5 = BWAspectRatioValueFromAspectRatio(name);
    if (v5 != 0.0 && v5 < 1.0)
    {
      getDefaultProcessorConfigurationForStills3x4 = [v4 getDefaultProcessorConfigurationForStills3x4];
    }

    else
    {
      getDefaultProcessorConfigurationForStills3x4 = [v4 getDefaultProcessorConfigurationForStills];
    }

    pixelBufferAttributesWithCapacityForLearntCoefficients = [getDefaultProcessorConfigurationForStills3x4 pixelBufferAttributesWithCapacityForLearntCoefficients];
    [objc_msgSend(pixelBufferAttributesWithCapacityForLearntCoefficients objectForKeyedSubscript:{*MEMORY[0x1E6966130]), "intValue"}];
    [objc_msgSend(pixelBufferAttributesWithCapacityForLearntCoefficients objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "intValue"}];
    [objc_msgSend(pixelBufferAttributesWithCapacityForLearntCoefficients objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "intValue"}];
    v9 = OUTLINED_FUNCTION_14_44();

    return [(BWSmartStyleRenderingProcessorController *)v9 _newPixelBufferWithDimensions:v10 pixelFormat:v11 name:v12];
  }

  return result;
}

- (double)_getDenormalizedFinalCropRectFromSourceForPixelBuffer:(void *)buffer metadata:
{
  if (!self)
  {
    return 0.0;
  }

  result = *MEMORY[0x1E695F050];
  if (pixelBuffer)
  {
    if (buffer)
    {
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      [objc_msgSend(objc_msgSend(buffer objectForKeyedSubscript:{*off_1E798A940), "objectForKeyedSubscript:", *off_1E798AA00), "doubleValue"}];
      v9 = v8;
      v10.n128_f64[0] = FigCaptureMetadataUtilitiesGetFinalCropRectFromSource(buffer);
      v11.n128_u64[0] = v9;
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(Width, Height, v10, v12, v13, v14, v11, v15);
    }
  }

  return result;
}

- (uint64_t)_populateInputLinearPixelBufferColorManagementMetadata:(uint64_t)metadata
{
  if (!self)
  {
    return 0;
  }

  if (pixelBuffer)
  {
    CVPixelBufferGetPixelFormatType(pixelBuffer);
    v11 = CMIGetPixelFormatInfo();
    v12 = *MEMORY[0x1E6965D88];
    if (CMGetAttachment(pixelBuffer, *MEMORY[0x1E6965D88], 0))
    {
      if ((v11 & 0x100) == 0)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_3_19();
        if (!CMGetAttachment(v18, v19, 0))
        {
          v20 = OUTLINED_FUNCTION_3_19();
          CVBufferSetAttachment(v20, v21, v22, kCVAttachmentMode_ShouldPropagate);
        }

        return 0;
      }
    }

    else
    {
      CVBufferSetAttachment(pixelBuffer, v12, *MEMORY[0x1E6965DD0], kCVAttachmentMode_ShouldPropagate);
      if ((v11 & 0x100) == 0)
      {
        goto LABEL_9;
      }
    }

    v13 = OUTLINED_FUNCTION_3_19();
    if (!CMGetAttachment(v13, v14, 0))
    {
      v15 = OUTLINED_FUNCTION_3_19();
      CVBufferSetAttachment(v15, v16, v17, kCVAttachmentMode_ShouldPropagate);
    }

    goto LABEL_9;
  }

  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v9, v27, v28, v29, v30, vars0, vars8);
  v26 = qword_1EB58E318;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 0xFFFEE107, "<<<< BWStillImageProcessing >>>>", 0x3E1, v9, v24, v25, a9);
}

- (void)_newSmallLightMapPixelBufferWithName:(int)name aspectRatio:
{
  if (result)
  {
    v4 = objc_opt_class();
    v5 = BWAspectRatioValueFromAspectRatio(name);
    if (v5 != 0.0 && v5 < 1.0)
    {
      getDefaultProcessorConfigurationForStills3x4 = [v4 getDefaultProcessorConfigurationForStills3x4];
    }

    else
    {
      getDefaultProcessorConfigurationForStills3x4 = [v4 getDefaultProcessorConfigurationForStills];
    }

    pixelBufferAttributesForSmallLightMap = [getDefaultProcessorConfigurationForStills3x4 pixelBufferAttributesForSmallLightMap];
    [objc_msgSend(pixelBufferAttributesForSmallLightMap objectForKeyedSubscript:{*MEMORY[0x1E6966130]), "intValue"}];
    [objc_msgSend(pixelBufferAttributesForSmallLightMap objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "intValue"}];
    [objc_msgSend(pixelBufferAttributesForSmallLightMap objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "intValue"}];
    v9 = OUTLINED_FUNCTION_14_44();

    return [(BWSmartStyleRenderingProcessorController *)v9 _newPixelBufferWithDimensions:v10 pixelFormat:v11 name:v12];
  }

  return result;
}

- (CMAttachmentBearerRef)_newOutputSampleBufferFromSampleBuffer:(__CVBuffer *)buffer pixelBuffer:(void *)pixelBuffer additionalMetadata:(CFTypeRef *)metadata formatDescriptionInOut:
{
  if (result)
  {
    v6 = 0;
    target = 0;
    v7 = 1;
    if (a2 && buffer)
    {
      if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(a2, buffer, metadata, &target))
      {
        v6 = 0;
      }

      else
      {
        v9 = *off_1E798A3C8;
        v6 = [CMGetAttachment(target *off_1E798A3C8];
        if ([pixelBuffer count])
        {
          [v6 addEntriesFromDictionary:pixelBuffer];
        }

        CMSetAttachment(target, v9, v6, 1u);
        BWSampleBufferPropagateAttachedMedia(a2, target);
        v7 = 0;
      }
    }

    result = target;
    if (v7)
    {
      if (target)
      {
        CFRelease(target);
        return 0;
      }
    }
  }

  return result;
}

- (uint64_t)_setupConfigurationAndClasses:(uint64_t)classes version:(int)version defaultAspectRatio:
{
  if (result)
  {
    v7 = result;
    v8 = *(result + 161);
    v9 = objc_opt_class();
    v10 = v9;
    if (v8 == 1)
    {
      getDefaultProcessorConfigurationForStreaming = [v9 getDefaultProcessorConfigurationForStreaming];
    }

    else
    {
      v12 = BWAspectRatioValueFromAspectRatio(version);
      if (v12 != 0.0 && v12 < 1.0)
      {
        getDefaultProcessorConfigurationForStreaming = [v10 getDefaultProcessorConfigurationForStills3x4];
      }

      else
      {
        getDefaultProcessorConfigurationForStreaming = [v10 getDefaultProcessorConfigurationForStills];
      }
    }

    [a2 setConfiguration:getDefaultProcessorConfigurationForStreaming];
    if ([a2 configuration] && (objc_msgSend(a2, "setShouldFlushCVMTLTextureCacheAfterProcessing:", 1), v14 = NSClassFromString(objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleV%d", classes)), (*(v7 + 144) = v14) != 0) && (v15 = NSClassFromString(objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorInputOutputV%d", classes)), (*(v7 + 152) = v15) != 0))
    {
      return 0;
    }

    else
    {
      return 4294954510;
    }
  }

  return result;
}

@end