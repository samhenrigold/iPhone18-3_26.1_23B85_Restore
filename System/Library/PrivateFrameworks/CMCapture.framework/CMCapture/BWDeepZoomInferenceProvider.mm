@interface BWDeepZoomInferenceProvider
- (BWDeepZoomInferenceProvider)initWithConfiguration:(id)configuration resourceProvider:(id)provider;
- (id)_tuningParametersForPortType:(id *)result;
- (int)createInputTiles:(id)tiles withInputs:(id)inputs atPosition:(id *)position cmdBuffer:;
- (int)preProcessOutputBuffer:(__CVBuffer *)buffer forMediaKey:(id)key;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)prewarmUsingLimitedMemory:(BOOL)memory;
- (int)propagateInferenceResultForOutputRequirement:(id)requirement storage:(id)storage propagationSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (int)writeOutputFor:(id)for to:(__CVBuffer *)to fromNetworkOutputTiles:(id)tiles withAdditionalPixelBuffers:(id)buffers withInputTilePixelBuffers:(id)pixelBuffers withInputFullPixelBuffers:(id)fullPixelBuffers atPosition:(id *)position cmdBuffer:;
- (unsigned)allowedPixelBufferCompressionDirection;
- (void)dealloc;
@end

@implementation BWDeepZoomInferenceProvider

- (BWDeepZoomInferenceProvider)initWithConfiguration:(id)configuration resourceProvider:(id)provider
{
  if (!configuration || ![configuration version] || !objc_msgSend(configuration, "tuningParameters") || objc_msgSend(configuration, "type") != 1 && objc_msgSend(configuration, "type") != 2 && objc_msgSend(configuration, "type") != 3)
  {
    v20 = 0;
    p_super = 0;
    v7 = 0;
    goto LABEL_42;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v7)
  {
    goto LABEL_41;
  }

  v8 = [[BWInferenceLazyVideoRequirement alloc] initWithAttachedMediaKey:@"PrimaryFormat" preparedByAttachedMediaKey:@"PrimaryFormat" videoFormatProvider:&__block_literal_global_141];
  if (!v8)
  {
    goto LABEL_41;
  }

  [(NSMutableArray *)v7 addObject:v8];
  if ([configuration type] != 3)
  {
    goto LABEL_20;
  }

  v9 = [[BWInferenceLazyVideoRequirement alloc] initWithAttachedMediaKey:0x1F219EC90 preparedByAttachedMediaKey:0x1F219EC90 videoFormatProvider:&__block_literal_global_5];
  if (!v9)
  {
LABEL_41:
    v20 = 0;
    p_super = 0;
    goto LABEL_42;
  }

  [(NSMutableArray *)v7 addObject:v9];
  stereoPhotoOutputDimensions = [configuration stereoPhotoOutputDimensions];
  if (stereoPhotoOutputDimensions >= 1 && SHIDWORD(stereoPhotoOutputDimensions) >= 1)
  {
    type = [configuration type];
    v12 = @"Lite";
    if (type == 2)
    {
      v12 = @"Standard";
    }

    if (type == 3)
    {
      v13 = @"Transfer";
    }

    else
    {
      v13 = v12;
    }

    tuningParameters = [configuration tuningParameters];
    v15 = *off_1E798A0D0;
    if (![objc_msgSend(tuningParameters objectForKeyedSubscript:{*off_1E798A0D0), "objectForKeyedSubscript:", v13}])
    {
      v16 = [objc_msgSend(configuration "tuningParameters")];
      v17 = [objc_msgSend(v16 objectForKeyedSubscript:{v15), "mutableCopy"}];
      [v17 setObject:objc_msgSend(objc_msgSend(objc_msgSend(configuration forKeyedSubscript:{"tuningParameters"), "objectForKeyedSubscript:", *off_1E798A0C0), "objectForKeyedSubscript:", v13), v13}];
      [v16 setObject:v17 forKeyedSubscript:v15];
      [configuration setTuningParameters:v16];
    }
  }

LABEL_20:
  v18 = -[BWInferenceLazyVideoRequirement initWithAttachedMediaKey:preparedByAttachedMediaKey:videoFormatProvider:]([BWInferenceLazyVideoRequirement alloc], "initWithAttachedMediaKey:preparedByAttachedMediaKey:videoFormatProvider:", [configuration outputAttachedMediaKey], objc_msgSend(configuration, "outputAttachedMediaKey"), &__block_literal_global_7_0);
  p_super = &v18->super;
  if (v18 && (v37 = v18, v36.receiver = self, v36.super_class = BWDeepZoomInferenceProvider, (self = -[BWTiledEspressoInferenceProvider initWithConfiguration:inputVideoRequirements:outputVideoRequirements:resourceProvider:](&v36, sel_initWithConfiguration_inputVideoRequirements_outputVideoRequirements_resourceProvider_, configuration, v7, [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1], provider)) != 0) && BWLoadProcessorBundle(@"SuperResolution", objc_msgSend(configuration, "version")))
  {
    v20 = objc_alloc_init(NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMIDeepZoomProcessorV%d", objc_msgSend(configuration, "version")]));
    if (v20)
    {
      [v20 setTuningParameters:{objc_msgSend(configuration, "tuningParameters")}];
      [v20 setMetalCommandQueue:{objc_msgSend(configuration, "metalCommandQueue")}];
      type2 = [configuration type];
      mode = [configuration mode];
      if (type2 == 3)
      {
        v24 = mode == 5 ? 5 : 3;
        v23 = mode == 4 ? 4 : v24;
      }

      else
      {
        v23 = type2 == 2 ? 2 : 1;
      }

      if (![v20 prepareToProcess:v23])
      {
        self->_inputVideoRequirements = v7;
        self->_outputVideoRequirement = p_super;
        self->_deepZoomProcessor = v20;
        self->_inferenceConfig = configuration;
        formatDescription = [(BWVideoFormat *)[(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)p_super videoFormat] underlyingVideoFormat] formatDescription];
        if (formatDescription)
        {
          formatDescription = CFRetain(formatDescription);
        }

        self->_outputFormatDescription = formatDescription;
        return self;
      }
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_42:

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v33;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v7);
        }
      }

      v28 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v28);
  }

  return 0;
}

id __70__BWDeepZoomInferenceProvider_initWithConfiguration_resourceProvider___block_invoke(uint64_t a1, void *a2)
{
  LOWORD(v5) = [a2 width];
  HIWORD(v5) = [a2 height];
  v3 = [a2 pixelFormat];

  return [BWTiledEspressoInferenceProvider videoFormatWithPixelFormat:v3 size:v5 includesInvalidContent:1];
}

id __70__BWDeepZoomInferenceProvider_initWithConfiguration_resourceProvider___block_invoke_2(uint64_t a1, void *a2)
{
  LOWORD(v5) = [a2 width];
  HIWORD(v5) = [a2 height];
  v3 = [a2 pixelFormat];

  return [BWTiledEspressoInferenceProvider videoFormatWithPixelFormat:v3 size:v5 includesInvalidContent:0];
}

id __70__BWDeepZoomInferenceProvider_initWithConfiguration_resourceProvider___block_invoke_3(uint64_t a1, void *a2)
{
  LOWORD(v5) = [a2 width];
  HIWORD(v5) = [a2 height];
  v3 = [a2 pixelFormat];

  return [BWTiledEspressoInferenceProvider videoFormatWithPixelFormat:v3 size:v5 includesInvalidContent:1];
}

- (void)dealloc
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  inputVideoRequirements = self->_inputVideoRequirements;
  v4 = [(NSMutableArray *)inputVideoRequirements countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(inputVideoRequirements);
        }
      }

      v5 = [(NSMutableArray *)inputVideoRequirements countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v5);
  }

  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  v9.receiver = self;
  v9.super_class = BWDeepZoomInferenceProvider;
  [(BWTiledEspressoInferenceProvider *)&v9 dealloc];
}

- (unsigned)allowedPixelBufferCompressionDirection
{
  if ([(BWDeepZoomInferenceConfiguration *)self->_inferenceConfig type]== 3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  [(CMIDeepZoomProcessor *)self->_deepZoomProcessor finishProcessing];
  if (!buffer)
  {
    goto LABEL_77;
  }

  v11 = CMGetAttachment(buffer, @"StillSettings", 0);
  if (!v11)
  {
    goto LABEL_78;
  }

  v12 = v11;
  v154 = BWStillImageProcessingFlagsForSampleBuffer(buffer);
  v13 = *off_1E798A3C8;
  v14 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v14)
  {
    goto LABEL_77;
  }

  v15 = v14;
  v16 = [v14 objectForKeyedSubscript:*off_1E798B540];
  if (!v16)
  {
    goto LABEL_77;
  }

  if ((v17 = v16, [(CMIDeepZoomProcessor *)self->_deepZoomProcessor resetMetadata], [(CMIDeepZoomProcessor *)self->_deepZoomProcessor updateMetadata:v15 forInputFullPixelBuffer:CMSampleBufferGetImageBuffer(buffer)], FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect(v15), v20 = v19, v22 = v21, v24 = v23, v25 = [(BWDeepZoomInferenceConfiguration *)self->_inferenceConfig type], AttachedMedia = buffer, v25 == 3) && (AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, 0x1F219EC90)) == 0 || (ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia)) == 0)
  {
LABEL_78:
    v32 = 4294935584;
    goto LABEL_72;
  }

  v28 = ImageBuffer;
  v157 = v17;
  p_inputReferencePixelBufferDimensions = &self->_inputReferencePixelBufferDimensions;
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(v28);
  self->_inputReferencePixelBufferDimensions = (Width | (Height << 32));
  v32 = 4294935585;
  if (Width < 1)
  {
    goto LABEL_72;
  }

  queueCopy = queue;
  if (Height < 1)
  {
    goto LABEL_72;
  }

  v33 = (v154 & 0x100000) == 0 && [(BWDeepZoomInferenceConfiguration *)self->_inferenceConfig type]== 3 && (objc_msgSend_isEqualToString_(v157) & 1) != 0;
  v34 = [objc_msgSend(v12 "requestedSettings")];
  v147 = v33;
  if (v33)
  {
    stereoPhotoOutputDimensions = p_inputReferencePixelBufferDimensions->width;
    v36 = self->_inputReferencePixelBufferDimensions.height;
    v37 = FigCaptureAspectRatioForDimensions(*&stereoPhotoOutputDimensions | (v36 << 32));
    v38 = FigCaptureRectFromDimensions();
    v41 = v40;
    v43 = v42;
  }

  else
  {
    stereoPhotoOutputDimensions = v34;
    if ((v154 & 0x100000) != 0)
    {
      stereoPhotoOutputDimensions = [(BWDeepZoomInferenceConfiguration *)self->_inferenceConfig stereoPhotoOutputDimensions];
    }

    v36 = HIDWORD(*&stereoPhotoOutputDimensions);
    v37 = FigCaptureAspectRatioForDimensions(*&stereoPhotoOutputDimensions);
    v44.n128_f64[0] = FinalCropRect;
    v45.n128_u64[0] = v22;
    v46.n128_u64[0] = v24;
    v47.n128_f64[0] = v37;
    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(p_inputReferencePixelBufferDimensions->width, self->_inputReferencePixelBufferDimensions.height, v44, v20, v45, v46, v47, v48);
    v41 = v49;
    v43 = v50;
  }

  self->_denormalizedSourceCropRect.origin.x = v38;
  self->_denormalizedSourceCropRect.origin.y = v39;
  self->_denormalizedSourceCropRect.size.width = v41;
  self->_denormalizedSourceCropRect.size.height = v43;
  v32 = 4294935586;
  if (v38 < 0.0 || v39 < 0.0 || v41 <= 0.0 || v43 <= 0.0)
  {
    goto LABEL_72;
  }

  if (![(NSDictionary *)[(BWInferenceConfiguration *)self->_inferenceConfig tuningParameters] objectForKeyedSubscript:v157]|| (v51 = [(BWDeepZoomInferenceProvider *)&self->super.super.isa _tuningParametersForPortType:v157]) == 0)
  {
LABEL_77:
    v32 = 4294935586;
    goto LABEL_72;
  }

  v52 = v51;
  [objc_msgSend(v51 objectForKeyedSubscript:{@"MinScaleFactor", "floatValue"}];
  v54 = v53;
  [objc_msgSend(v52 objectForKeyedSubscript:{@"MaxScaleFactor", "floatValue"}];
  v56 = v55;
  if (([objc_msgSend(v12 "captureSettings")] & 0x10) != 0 && objc_msgSend(v52, "objectForKeyedSubscript:", @"QSub"))
  {
    [objc_msgSend(objc_msgSend(v52 objectForKeyedSubscript:{@"QSub", "objectForKeyedSubscript:", @"MinScaleFactor", "floatValue"}];
    v54 = v57;
  }

  v32 = 4294935586;
  if (v54 < 1.0 || v56 < v54)
  {
    goto LABEL_72;
  }

  var0 = stereoPhotoOutputDimensions.var0;
  v59 = v36;
  if ([(BWDeepZoomInferenceConfiguration *)self->_inferenceConfig type]!= 3)
  {
LABEL_46:
    *&v110 = var0 / v41;
    *&v111 = v59 / v43;
    keya = *&v110;
    v148 = *&v111;
    *&v156 = COERCE_DOUBLE(__PAIR64__(v111, v110));
    if ([objc_msgSend(v52 objectForKeyedSubscript:{@"UpsamplingDisabled", "BOOLValue"}])
    {
      __asm { FMOV            V8.2S, #1.0 }

      v116 = v157;
      v117 = v156;
LABEL_57:
      v121 = vdiv_f32(v117, *&_D8);
      v122 = v121.f32[1];
      if (v121.f32[0] >= 1.0 && v121.f32[1] >= 1.0)
      {
        [(CMIDeepZoomProcessor *)self->_deepZoomProcessor setInputROI:COERCE_DOUBLE(vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(self->_denormalizedSourceCropRect.origin), vcvtq_s64_f64(self->_denormalizedSourceCropRect.size))))];
        [(CMIDeepZoomProcessor *)self->_deepZoomProcessor setZoomFactor:_D8];
        [(CMIDeepZoomProcessor *)self->_deepZoomProcessor setPortType:v116];
        [(CMIDeepZoomProcessor *)self->_deepZoomProcessor tileCount];
        HIWORD(v158) = v124;
        LOWORD(v158) = v125;
        v159.receiver = self;
        v159.super_class = BWDeepZoomInferenceProvider;
        *&v160[0].a = *&time->var0;
        *&v160[0].c = time->var3;
        LODWORD(v32) = [(BWTiledEspressoInferenceProvider *)&v159 submitForSampleBuffer:buffer usingStorage:storage withSubmissionTime:v160 workQueue:queueCopy completionHandler:handler currentTileCount:v158];
        goto LABEL_74;
      }

      if (v121.f32[0] < 0.99 || v121.f32[1] < 0.99)
      {
        v126 = v121.f32[0];
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        LODWORD(v162.a) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        a_low = LODWORD(v162.a);
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v130 = a_low;
        }

        else
        {
          v130 = a_low & 0xFFFFFFFE;
        }

        v131 = v122;
        if (v130)
        {
          LODWORD(v163.a) = 136315650;
          *(&v163.a + 4) = "[BWDeepZoomInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:]";
          WORD2(v163.b) = 2048;
          *(&v163.b + 6) = v126;
          HIWORD(v163.c) = 2048;
          v163.d = v131;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        LODWORD(v160[0].a) = 134218240;
        *(&v160[0].a + 4) = v126;
        WORD2(v160[0].b) = 2048;
        *(&v160[0].b + 6) = v131;
        v132 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v132, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Inference/DeepZoom/BWDeepZoomInferenceProvider.m", 467, @"LastShownDate:BWDeepZoomInferenceProvider.m:467", @"LastShownBuild:BWDeepZoomInferenceProvider.m:467", 0);
        free(v132);
        v32 = 4294935586;
      }

      else
      {
        v32 = 4294894098;
      }

      BWSampleBufferRemoveAttachedMedia(buffer, 0x1F217BF50);
LABEL_72:
      handlerCopy2 = handler;
      if (!handler)
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    if (keya >= v148)
    {
      v118 = v148;
    }

    else
    {
      v118 = keya;
    }

    v116 = v157;
    if (v118 >= v54)
    {
      if (keya >= v148)
      {
        v119 = keya;
      }

      else
      {
        v119 = v148;
      }

      v120 = v119 <= v56;
      v117 = v156;
      _D8 = *&v156;
      if (!v120)
      {
        _D8 = 2.00000048;
      }

      goto LABEL_57;
    }

    goto LABEL_77;
  }

  v60 = BWSampleBufferGetAttachedMedia(buffer, 0x1F219EC90);
  if (!v60)
  {
    goto LABEL_72;
  }

  v61 = v60;
  v62 = CMGetAttachment(v60, v13, 0);
  if (!v62)
  {
    goto LABEL_72;
  }

  v63 = v62;
  v64 = CMSampleBufferGetImageBuffer(buffer);
  if (!v64)
  {
    goto LABEL_72;
  }

  v65 = v64;
  v66 = CMSampleBufferGetImageBuffer(v61);
  if (!v66)
  {
    goto LABEL_72;
  }

  v67 = v66;
  [(CMIDeepZoomProcessor *)self->_deepZoomProcessor updateMetadata:v63 forInputFullPixelBuffer:v66];
  v68 = CVPixelBufferGetWidth(v65);
  v141 = CVPixelBufferGetHeight(v65);
  v69 = CVPixelBufferGetWidth(v67);
  v70 = CVPixelBufferGetHeight(v67);
  key = FigCaptureMetadataUtilitiesGetFinalCropRect(v15);
  v145 = v72;
  v146 = v71;
  v143 = v59;
  v144 = v73;
  v142 = v37;
  v140 = v56;
  if (v147)
  {
    v74 = FigCaptureUnityRect();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v81.n128_f64[0] = FigCaptureUnityRect();
LABEL_44:
    v85.n128_f64[0] = v142;
    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v68, v141, v81, v82, v83, v84, v85, v86);
    self->_denormalizedDeepTransferLowResROI = v168;
    if (CGRectIsNull(v168))
    {
      [BWDeepZoomInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
      v32 = 4294935582;
      goto LABEL_72;
    }

    FigCaptureMetadataUtilitiesNormalizeCropRect(self->_denormalizedDeepTransferLowResROI.origin.x, self->_denormalizedDeepTransferLowResROI.origin.y, self->_denormalizedDeepTransferLowResROI.size.width, self->_denormalizedDeepTransferLowResROI.size.height, v68, v141);
    self->_cachedInputImageFinalCropRect.origin.x = key;
    self->_cachedInputImageFinalCropRect.origin.y = v146;
    self->_cachedInputImageFinalCropRect.size.width = v145;
    self->_cachedInputImageFinalCropRect.size.height = v144;
    FigCFDictionarySetCGRect();
    FigCFDictionarySetCGRect();
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v74, v76, v78, v80, v69, v70);
    self->_denormalizedSourceCropRect.origin.x = v106;
    self->_denormalizedSourceCropRect.origin.y = v107;
    self->_denormalizedSourceCropRect.size.width = v108;
    self->_denormalizedSourceCropRect.size.height = v109;
    self->_deepTransferLowResBufferDims.width = v68;
    self->_deepTransferLowResBufferDims.height = v141;
    v56 = v140;
    v59 = v143;
    goto LABEL_46;
  }

  if ((v154 & 0x100000) != 0)
  {
    v74 = FigCaptureMetadataUtilitiesGetFinalCropRect(v63);
    v76 = v105;
    v78 = v83.n128_f64[0];
    v80 = v84.n128_f64[0];
    v84.n128_f64[0] = v144;
    v83.n128_f64[0] = v145;
    v82 = v146;
    v81.n128_f64[0] = key;
    goto LABEL_44;
  }

  v87 = *(MEMORY[0x1E695EFD0] + 16);
  *&v160[0].a = *MEMORY[0x1E695EFD0];
  *&v160[0].c = v87;
  *&v160[0].tx = *(MEMORY[0x1E695EFD0] + 32);
  if (!FigCaptureMetadataUtilitiesComputeNormalizedPixelBufferCoordinateTransformBetweenSampleBuffers(buffer, v61, 1, v160))
  {
    ValidBufferRect = FigCaptureMetadataUtilitiesGetValidBufferRect(v63);
    v90 = v89;
    FigCaptureMetadataUtilitiesNormalizeCropRect(ValidBufferRect, v91, v89, v92, v69, v70);
    v94 = v93;
    v96 = v95;
    v155 = v97;
    v163 = v160[0];
    v164.size.height = v144;
    v164.origin.x = key;
    v164.size.width = v145;
    v164.origin.y = v146;
    v165 = CGRectApplyAffineTransform(v164, &v163);
    updated = FigCaptureUpdateRectSizeAndMaintainCenter(v165.origin.x, v165.origin.y, v165.size.width, v165.size.height, var0 / v90);
    v74 = FigCaptureMetadataUtilitiesRectDenormalizedToRect(fmax(updated, 0.0), fmax(v99, 0.0), v100, v101, v94, v96, v155);
    v76 = v102;
    v78 = v103;
    v80 = v104;
    v162 = v160[0];
    memset(&v163, 0, sizeof(v163));
    CGAffineTransformInvert(&v163, &v162);
    v162 = v163;
    v166.origin.x = v74;
    v166.origin.y = v76;
    v166.size.width = v78;
    v166.size.height = v80;
    v167 = CGRectApplyAffineTransform(v166, &v162);
    v169.origin.x = 0.0;
    v169.origin.y = 0.0;
    v169.size.width = 1.0;
    v169.size.height = 1.0;
    *v81.n128_u64 = CGRectIntersection(v167, v169);
    goto LABEL_44;
  }

  if (handler)
  {
    v135 = FigCaptureGetFrameworkRadarComponent();
    LODWORD(v162.a) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v136 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v137 = LODWORD(v162.a);
    if (os_log_type_enabled(v136, type))
    {
      v138 = v137;
    }

    else
    {
      v138 = v137 & 0xFFFFFFFE;
    }

    if (v138)
    {
      LODWORD(v163.a) = 136315394;
      *(&v163.a + 4) = "[BWDeepZoomInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:]";
      WORD2(v163.b) = 1024;
      *(&v163.b + 6) = -31710;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v160[0].a = NAN;
    v32 = 4294935586;
    v139 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v135, v139, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Inference/DeepZoom/BWDeepZoomInferenceProvider.m", 546, @"LastShownDate:BWDeepZoomInferenceProvider.m:546", @"LastShownBuild:BWDeepZoomInferenceProvider.m:546", 0);
    free(v139);
    handlerCopy2 = handler;
LABEL_73:
    handlerCopy2[2](handlerCopy2, v32, self);
    goto LABEL_74;
  }

  LODWORD(v32) = 0;
LABEL_74:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v32;
}

- (int)preProcessOutputBuffer:(__CVBuffer *)buffer forMediaKey:(id)key
{
  result = [(CMIDeepZoomProcessor *)self->_deepZoomProcessor clearOutputBuffer:buffer, key];
  if (result)
  {
    return -31710;
  }

  return result;
}

- (int)prewarmUsingLimitedMemory:(BOOL)memory
{
  result = [(CMIDeepZoomProcessor *)self->_deepZoomProcessor prewarm];
  if (result)
  {
    return -31710;
  }

  return result;
}

- (id)_tuningParametersForPortType:(id *)result
{
  if (result)
  {
    v3 = result;
    type = [result[14] type];
    v5 = @"Lite";
    if (type == 2)
    {
      v5 = @"Standard";
    }

    if (type == 3)
    {
      v6 = @"Transfer";
    }

    else
    {
      v6 = v5;
    }

    v7 = [objc_msgSend(v3[14] "tuningParameters")];

    return [v7 objectForKeyedSubscript:v6];
  }

  return result;
}

- (int)createInputTiles:(id)tiles withInputs:(id)inputs atPosition:(id *)position cmdBuffer:
{
  v6 = v5;
  v11 = [tiles count];
  v12 = MEMORY[0x1E695FF58];
  if (!v11 || ![inputs count])
  {
    goto LABEL_13;
  }

  if (*v12 == 1)
  {
    OUTLINED_FUNCTION_5_14(822152577);
  }

  if (([inputs count], v13 = objc_msgSend(OUTLINED_FUNCTION_37_0(), "arrayWithCapacity:"), objc_msgSend(inputs, "objectForKeyedSubscript:", @"PrimaryFormat"), objc_msgSend(OUTLINED_FUNCTION_37_0(), "setObject:atIndexedSubscript:"), objc_msgSend(v13, "objectAtIndexedSubscript:", 0)) && (!objc_msgSend(inputs, "objectForKeyedSubscript:", 0x1F219EC90) || (objc_msgSend(inputs, "objectForKeyedSubscript:", 0x1F219EC90), objc_msgSend(OUTLINED_FUNCTION_37_0(), "setObject:atIndexedSubscript:"), objc_msgSend(v13, "objectAtIndexedSubscript:", 1))) && !-[CMIDeepZoomProcessor createInputTiles:atPosition:inputFullPixelBuffers:cmdBuffer:](self->_deepZoomProcessor, "createInputTiles:atPosition:inputFullPixelBuffers:cmdBuffer:", tiles, position, v13, v6))
  {
    v14 = 0;
  }

  else
  {
LABEL_13:
    v14 = -31710;
  }

  if (*v12 == 1)
  {
    OUTLINED_FUNCTION_5_14(822152578);
  }

  return v14;
}

- (int)writeOutputFor:(id)for to:(__CVBuffer *)to fromNetworkOutputTiles:(id)tiles withAdditionalPixelBuffers:(id)buffers withInputTilePixelBuffers:(id)pixelBuffers withInputFullPixelBuffers:(id)fullPixelBuffers atPosition:(id *)position cmdBuffer:
{
  v9 = MEMORY[0x1E695FF58];
  if (!to)
  {
    goto LABEL_15;
  }

  if (![tiles count])
  {
    goto LABEL_15;
  }

  if (![pixelBuffers count])
  {
    goto LABEL_15;
  }

  if (![fullPixelBuffers count])
  {
    goto LABEL_15;
  }

  [(BWDeepZoomInferenceConfiguration *)self->_inferenceConfig outputAttachedMediaKey];
  v15 = OUTLINED_FUNCTION_37_0();
  if (!objc_msgSend_isEqualToString_(v15))
  {
    goto LABEL_15;
  }

  if (*v9 == 1)
  {
    OUTLINED_FUNCTION_5_14(822152585);
  }

  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(fullPixelBuffers, "count")}];
  [v16 setObject:objc_msgSend(fullPixelBuffers atIndexedSubscript:{"objectForKeyedSubscript:", @"PrimaryFormat", 0}];
  if ([fullPixelBuffers objectForKeyedSubscript:0x1F219EC90])
  {
    [v16 setObject:objc_msgSend(fullPixelBuffers atIndexedSubscript:{"objectForKeyedSubscript:", 0x1F219EC90), 1}];
  }

  if (![(CMIDeepZoomProcessor *)self->_deepZoomProcessor writeOutputTiles:tiles atPosition:position outputPixelBuffer:to inputTilePixelBuffers:pixelBuffers inputFullPixelBuffers:v16 cmdBuffer:v19])
  {
    v17 = 0;
  }

  else
  {
LABEL_15:
    v17 = -31710;
  }

  if (*v9 == 1)
  {
    OUTLINED_FUNCTION_5_14(822152586);
  }

  return v17;
}

- (int)propagateInferenceResultForOutputRequirement:(id)requirement storage:(id)storage propagationSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  target = 0;
  v8 = [storage pixelBufferForRequirement:?];
  attachedMediaKey = [requirement attachedMediaKey];
  v10 = 0;
  v11 = -31710;
  if (buffer && v8)
  {
    v12 = attachedMediaKey;
    [(BWDeepZoomInferenceConfiguration *)self->_inferenceConfig outputAttachedMediaKey];
    v13 = OUTLINED_FUNCTION_37_0();
    if (!objc_msgSend_isEqualToString_(v13))
    {
      goto LABEL_30;
    }

    if (BWSampleBufferGetAttachedMedia(buffer, v12))
    {
      goto LABEL_30;
    }

    BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer(buffer, v8, 1, &self->_outputFormatDescription, &target);
    if (!target)
    {
      goto LABEL_30;
    }

    v14 = *off_1E798A3C8;
    v15 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v10 = v15;
    if (!v15)
    {
      goto LABEL_27;
    }

    v16 = [v15 objectForKeyedSubscript:*off_1E798B540];
    if (v16)
    {
      v17 = v16;
      v10 = [v10 mutableCopy];
      if (!v10)
      {
        goto LABEL_27;
      }

      CMSetAttachment(target, v14, v10, 1u);
      CVPixelBufferGetWidth(v8);
      CVPixelBufferGetHeight(v8);
      v18 = CMGetAttachment(target, @"StillSettings", 0);
      if (v18)
      {
        v19 = v18;
        v20 = [CMGetAttachment(target @"StillImageProcessingFlags"];
        if ([(BWDeepZoomInferenceConfiguration *)self->_inferenceConfig type]!= 3)
        {
          [(CMIDeepZoomProcessor *)self->_deepZoomProcessor zoomFactor];
          [(CMIDeepZoomProcessor *)self->_deepZoomProcessor zoomFactor];
          v23 = OUTLINED_FUNCTION_2_133();
          FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
LABEL_26:
          CMSetAttachment(target, @"StillImageProcessingFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20 | 0x20000u], 1u);
          outputAttachedMediaKey = [(BWDeepZoomInferenceConfiguration *)self->_inferenceConfig outputAttachedMediaKey];
          BWSampleBufferSetAttachedMedia(buffer, outputAttachedMediaKey, target);
          v11 = 0;
          goto LABEL_27;
        }

        AttachedMedia = BWSampleBufferGetAttachedMedia(target, 0x1F219EC90);
        if (AttachedMedia && CMGetAttachment(AttachedMedia, v14, 0))
        {
          FigCFDictionarySetCGRect();
          v22 = (v20 & 0x100000) == 0 && [(BWDeepZoomInferenceConfiguration *)self->_inferenceConfig type]== 3 && (objc_msgSend_isEqualToString_(v17) & 1) != 0;
          requestedSettings = [objc_msgSend(v19 requestedSettings];
          if (v22)
          {
            LODWORD(v35) = self->_inputReferencePixelBufferDimensions.height;
          }

          else if ((v20 & 0x100000) != 0)
          {
            v35 = [(BWDeepZoomInferenceConfiguration *)self->_inferenceConfig stereoPhotoOutputDimensions]>> 32;
          }

          else
          {
            v35 = HIDWORD(requestedSettings);
          }

          v36 = v35;
          v37 = *off_1E798B240;
          v38 = [v10 objectForKeyedSubscript:*off_1E798B240];
          v39 = OUTLINED_FUNCTION_2_133();
          FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v36);
          [v10 setObject:v38 forKeyedSubscript:v37];
          BWSampleBufferRemoveAttachedMedia(target, 0x1F219EC90);
          goto LABEL_26;
        }

        v11 = -31710;
      }

      else
      {
        v11 = -31712;
      }
    }

    else
    {
LABEL_30:
      v10 = 0;
    }
  }

LABEL_27:

  if (target)
  {
    CFRelease(target);
  }

  return v11;
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
{
  if ([(CMIDeepZoomProcessor *)self->_deepZoomProcessor modelNetworkBaseName])
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v5 = [-[CMIDeepZoomProcessor modelNetworkBaseName](self->_deepZoomProcessor "modelNetworkBaseName")];
    v6 = [v5 countByEnumeratingWithState:&v47 objects:v46 count:16];
    if (v6)
    {
      v7 = *v48;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [BWEspressoInferenceAdapter espressoNetworkURLForPlatformedResourceBaseName:*(*(&v47 + 1) + 8 * v8) embedPlatformOrDeviceID:1];
        if (v9)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v5 countByEnumeratingWithState:&v47 objects:v46 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v12 = v9;
      queueCopy = queue;
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if ([-[CMIDeepZoomProcessor modelInputBindingNames](self->_deepZoomProcessor "modelInputBindingNames")])
      {
        v14 = 0;
        v15 = 1;
        do
        {
          v16 = [objc_msgSend(objc_msgSend(-[CMIDeepZoomProcessor modelInputSizes](self->_deepZoomProcessor "modelInputSizes")];
          v17 = [objc_msgSend(objc_msgSend(-[CMIDeepZoomProcessor modelInputSizes](self->_deepZoomProcessor "modelInputSizes")];
          if ([(CMIDeepZoomProcessor *)self->_deepZoomProcessor modelInputSlicesCount])
          {
            v18 = [objc_msgSend(-[CMIDeepZoomProcessor modelInputSlicesCount](self->_deepZoomProcessor "modelInputSlicesCount")];
          }

          else
          {
            v18 = 0;
          }

          HIWORD(v43) = v17;
          LOWORD(v43) = v16;
          [v13 setObject:+[BWTiledEspressoInferenceProvider videoFormatWithPixelFormat:size:sliceCount:](BWTiledEspressoInferenceProvider forKeyedSubscript:{"videoFormatWithPixelFormat:size:sliceCount:", objc_msgSend(objc_msgSend(-[CMIDeepZoomProcessor modelInputPixelFormats](self->_deepZoomProcessor, "modelInputPixelFormats"), "objectAtIndexedSubscript:", v14), "unsignedIntegerValue"), v43, v18), objc_msgSend(-[CMIDeepZoomProcessor modelInputBindingNames](self->_deepZoomProcessor, "modelInputBindingNames"), "objectAtIndexedSubscript:", v14)}];
          v14 = v15;
          v19 = [-[CMIDeepZoomProcessor modelInputBindingNames](self->_deepZoomProcessor "modelInputBindingNames")] > v15++;
        }

        while (v19);
      }

      v38 = v13;
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if ([-[CMIDeepZoomProcessor modelOutputBindingNames](self->_deepZoomProcessor "modelOutputBindingNames")])
      {
        v20 = 0;
        v21 = 1;
        do
        {
          v22 = [objc_msgSend(objc_msgSend(-[CMIDeepZoomProcessor modelOutputSizes](self->_deepZoomProcessor "modelOutputSizes")];
          v23 = [objc_msgSend(objc_msgSend(-[CMIDeepZoomProcessor modelOutputSizes](self->_deepZoomProcessor "modelOutputSizes")];
          if ([(CMIDeepZoomProcessor *)self->_deepZoomProcessor modelOutputSlicesCount])
          {
            v24 = [objc_msgSend(-[CMIDeepZoomProcessor modelOutputSlicesCount](self->_deepZoomProcessor "modelOutputSlicesCount")];
          }

          else
          {
            v24 = 0;
          }

          HIWORD(v42) = v23;
          LOWORD(v42) = v22;
          [v6 setObject:+[BWTiledEspressoInferenceProvider videoFormatWithPixelFormat:size:sliceCount:](BWTiledEspressoInferenceProvider forKeyedSubscript:{"videoFormatWithPixelFormat:size:sliceCount:", objc_msgSend(objc_msgSend(-[CMIDeepZoomProcessor modelOutputPixelFormats](self->_deepZoomProcessor, "modelOutputPixelFormats"), "objectAtIndexedSubscript:", v20), "unsignedIntegerValue"), v42, v24), objc_msgSend(-[CMIDeepZoomProcessor modelOutputBindingNames](self->_deepZoomProcessor, "modelOutputBindingNames"), "objectAtIndexedSubscript:", v20)}];
          v20 = v21;
          v19 = [-[CMIDeepZoomProcessor modelOutputBindingNames](self->_deepZoomProcessor "modelOutputBindingNames")] > v21++;
        }

        while (v19);
      }

      width = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_outputVideoRequirement videoFormat] width];
      [(CMIDeepZoomProcessor *)self->_deepZoomProcessor tileSize];
      v27 = width + v26;
      [(CMIDeepZoomProcessor *)self->_deepZoomProcessor tileOverlap];
      OUTLINED_FUNCTION_3_117();
      v39 = v28;
      [(CMIDeepZoomProcessor *)self->_deepZoomProcessor tileOverlap];
      v30 = v27 / (v39 - v29);
      height = [(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_outputVideoRequirement videoFormat] height];
      [(CMIDeepZoomProcessor *)self->_deepZoomProcessor tileSize];
      v33 = height + v32;
      [(CMIDeepZoomProcessor *)self->_deepZoomProcessor tileOverlap];
      OUTLINED_FUNCTION_3_117();
      v40 = v34;
      [(CMIDeepZoomProcessor *)self->_deepZoomProcessor tileOverlap];
      LOWORD(v41) = v30;
      HIWORD(v41) = v33 / (v40 - v35);
      v45.receiver = self;
      v45.super_class = BWDeepZoomInferenceProvider;
      v10 = v38;
      if (![(BWTiledEspressoInferenceProvider *)&v45 loadNetworkWithURL:v12 configName:0 inferenceType:[(BWTiledEspressoInferenceProvider *)self type] maxTileCount:v41 inputFormatsByBindingName:v38 outputFormatsByBindingName:v6 additionalVideoRequirements:0])
      {
        v44.receiver = self;
        v44.super_class = BWDeepZoomInferenceProvider;
        if (![(BWTiledEspressoInferenceProvider *)&v44 prepareForSubmissionWithWorkQueue:queueCopy])
        {
          v11 = 0;
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_10:
      v10 = 0;
    }

    v11 = -31702;
  }

  else
  {
    v6 = 0;
    v10 = 0;
    v11 = -31710;
  }

LABEL_27:

  return v11;
}

@end