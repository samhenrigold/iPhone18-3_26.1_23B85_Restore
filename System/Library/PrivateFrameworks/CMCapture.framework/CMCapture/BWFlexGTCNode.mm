@interface BWFlexGTCNode
- (BWFlexGTCNode)initWithNodeConfiguration:(id)configuration sensorConfigurationsByPortType:(id)type metalCommandQueue:(id)queue;
- (void)_releaseResources;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWFlexGTCNode

- (BWFlexGTCNode)initWithNodeConfiguration:(id)configuration sensorConfigurationsByPortType:(id)type metalCommandQueue:(id)queue
{
  v24.receiver = self;
  v24.super_class = BWFlexGTCNode;
  v8 = [(BWNode *)&v24 init];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  [(BWNode *)v8 setSupportsLiveReconfiguration:1];
  v9->_enableHighlightAdjustment = 1;
  v9->_commandQueue = queue;
  if (!configuration)
  {
    [BWFlexGTCNode initWithNodeConfiguration:sensorConfigurationsByPortType:metalCommandQueue:];
LABEL_15:

    return 0;
  }

  v9->_nodeConfiguration = configuration;
  if (!type)
  {
    [BWFlexGTCNode initWithNodeConfiguration:sensorConfigurationsByPortType:metalCommandQueue:];
    goto LABEL_15;
  }

  v9->_sensorIDDictionaryByPortType = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(type, "count")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [type countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(type);
        }

        -[NSMutableDictionary setObject:forKeyedSubscript:](v9->_sensorIDDictionaryByPortType, "setObject:forKeyedSubscript:", [objc_msgSend(type objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * i)), "sensorIDDictionary"}], *(*(&v20 + 1) + 8 * i));
      }

      v11 = [type countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v9];
  v15 = objc_alloc_init(BWVideoFormatRequirements);
  v16 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F2247F20];
  [v16 addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(4, 1, 0, 3)}];
  [(BWVideoFormatRequirements *)v15 setSupportedPixelFormats:v16];
  [(BWNodeInput *)v14 setFormatRequirements:v15];
  [(BWNodeInput *)v14 setPassthroughMode:1];
  [(BWNode *)v9 addInput:v14];
  v17 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v9];
  [(BWNodeOutput *)v17 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeOutput *)v17 setPassthroughMode:1];
  [(BWNode *)v9 addOutput:v17];
  return v9;
}

- (void)dealloc
{
  [(BWFlexGTCNode *)&self->super.super.isa _releaseResources];

  v3.receiver = self;
  v3.super_class = BWFlexGTCNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (!d)
  {
    [(BWFlexGTCNode *)&self->super.super.isa _releaseResources];
  }

  v7.receiver = self;
  v7.super_class = BWFlexGTCNode;
  [(BWNode *)&v7 didReachEndOfDataForConfigurationID:d input:input];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v6.receiver = self;
  v6.super_class = BWFlexGTCNode;
  [(BWNode *)&v6 prepareForCurrentConfigurationToBecomeLive];
  if (!self->_metalContext)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (!v3)
    {
      [BWFlexGTCNode prepareForCurrentConfigurationToBecomeLive];
      return;
    }

    v4 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:v3 andOptionalCommandQueue:self->_commandQueue];
    self->_metalContext = v4;
    if (!v4)
    {
      [BWFlexGTCNode prepareForCurrentConfigurationToBecomeLive];
      return;
    }
  }

  if (!self->_cmiFlexGTCStage)
  {
    v5 = [objc_alloc(MEMORY[0x1E69916E0]) initWithOptionalCommandQueue:{-[FigMetalContext commandQueue](self->_metalContext, "commandQueue")}];
    self->_cmiFlexGTCStage = v5;
    if (!v5)
    {
      [BWFlexGTCNode prepareForCurrentConfigurationToBecomeLive];
    }
  }
}

- (void)_releaseResources
{
  if (self)
  {

    self[21] = 0;
    self[16] = 0;

    self[17] = 0;
    self[18] = 0;
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (!buffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_42;
  }

  sbuf = BWSampleBufferGetAttachedMedia(buffer, 0x1F217BF50);
  if (!sbuf)
  {
    goto LABEL_42;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (!ImageBuffer)
  {
    goto LABEL_48;
  }

  v5 = ImageBuffer;
  bufferCopy3 = buffer;
  v7 = CMSampleBufferGetImageBuffer(buffer);
  if (!v7)
  {
    goto LABEL_48;
  }

  v8 = v7;
  v9 = *off_1E798A3C8;
  v10 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v10)
  {
    goto LABEL_48;
  }

  v11 = v10;
  v72 = 1;
  v71 = 0x424800003C03126FLL;
  if (self->_enableHighlightAdjustment)
  {
    v12 = [v10 objectForKeyedSubscript:*off_1E798B2B0];
    if (v12)
    {
      [v12 floatValue];
      v14 = v13;
      v15 = [v11 objectForKeyedSubscript:*off_1E798B1C8];
      if (v15)
      {
        v16 = v9;
        [v15 floatValue];
        v18 = v17;
        v19 = [objc_msgSend(objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB8), "objectForKeyedSubscript:", *off_1E798ACE8}];
        if (v19)
        {
          v20 = v19;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v21 = [v19 countByEnumeratingWithState:&v67 objects:v66 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v68;
            v24 = *off_1E798B5C0;
            v25 = 0.0;
            v63 = *(MEMORY[0x1E695F050] + 16);
            v64 = *MEMORY[0x1E695F050];
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v68 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v27 = *(*(&v67 + 1) + 8 * i);
                recta.origin = v64;
                recta.size = v63;
                if (CGRectMakeWithDictionaryRepresentation([v27 objectForKeyedSubscript:v24], &recta))
                {
                  v25 = v25 + recta.size.height * recta.size.width;
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v67 objects:v66 count:16];
            }

            while (v22);
          }

          else
          {
            v25 = 0.0;
          }

          if (v14 >= 2.21)
          {
            bufferCopy3 = buffer;
            v9 = v16;
            if (v18 >= 2.9)
            {
              v28 = 5.0;
              if (v25 >= 0.0225)
              {
                goto LABEL_33;
              }

              if (v25 >= 0.0197)
              {
LABEL_32:
                v28 = 15.0;
                goto LABEL_33;
              }
            }
          }

          else
          {
            bufferCopy3 = buffer;
            v9 = v16;
            if (v14 >= 1.67)
            {
              if (v25 < 0.0195 || v18 < 0.37)
              {
                v28 = 50.0;
                if (v25 < 0.01 || v18 < 0.65)
                {
                  goto LABEL_33;
                }
              }

              goto LABEL_32;
            }
          }

          v28 = 50.0;
LABEL_33:
          LODWORD(v71) = 994352038;
          *(&v71 + 1) = v28;
          goto LABEL_34;
        }
      }
    }

LABEL_48:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_42;
  }

LABEL_34:
  v29 = CMGetAttachment(bufferCopy3, @"StillSettings", 0);
  if (!v29)
  {
    goto LABEL_45;
  }

  v30 = v29;
  CVPixelBufferGetWidth(v8);
  CVPixelBufferGetHeight(v8);
  Width = CVPixelBufferGetWidth(v5);
  Height = CVPixelBufferGetHeight(v5);
  v33 = v9;
  v34 = CMGetAttachment(sbuf, v9, 0);
  if (!v34 || !self->_cmiFlexGTCStage)
  {
    goto LABEL_45;
  }

  v35 = v34;
  requestedSettings = [v30 requestedSettings];
  if (!requestedSettings)
  {
    goto LABEL_42;
  }

  v37 = requestedSettings;
  FigCaptureMetadataUtilitiesGetFinalCropRect(v11);
  OUTLINED_FUNCTION_2_3();
  outputWidth = [v37 outputWidth];
  v39 = outputWidth / [v37 outputHeight];
  v40.n128_f64[0] = OUTLINED_FUNCTION_3();
  v41.n128_f64[0] = v39;
  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v42, v43, v40, v44, v45, v46, v41, v47);
  OUTLINED_FUNCTION_2_3();
  if (CGRectIsNull(v73) || (v48.n128_f64[0] = FigCaptureMetadataUtilitiesGetFinalCropRect(v35), v49.n128_f64[0] = v39, FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(Width, Height, v48, v50, v51, v52, v49, v53), x = v74.origin.x, y = v74.origin.y, v56 = v74.size.width, v57 = v74.size.height, CGRectIsNull(v74)))
  {
LABEL_45:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_42;
  }

  v75.origin.x = OUTLINED_FUNCTION_3();
  CGRectIntegral(v75);
  OUTLINED_FUNCTION_2_3();
  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = v56;
  v76.size.height = v57;
  CGRectIntegral(v76);
  v58 = OUTLINED_FUNCTION_3();
  if (![v59 computeFlexGTCWithSDRImage:v58 gainMap:? gainMapMetadata:? config:? cropRect:? gainMapCropRect:?])
  {
    CMSetAttachment(sbuf, v33, v35, 1u);
  }

LABEL_42:
  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
}

@end