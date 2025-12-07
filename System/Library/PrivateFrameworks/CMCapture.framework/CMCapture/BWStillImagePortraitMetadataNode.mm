@interface BWStillImagePortraitMetadataNode
- (BWStillImagePortraitMetadataNode)initWithNodeConfiguration:(id)configuration sdofRenderingVersion:(int)version sensorConfigurationsByPortType:(id)type defaultPortType:(id)portType defaultZoomFactor:(float)factor;
- (id)_attachPortraitLightingEffectMetadataToDepthMetadata:(id *)result portType:(void *)type;
- (uint64_t)_loadSDOFRenderingTuningParametersForPortType:(float)type zoomFactorForPortType:;
- (void)dealloc;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImagePortraitMetadataNode

- (BWStillImagePortraitMetadataNode)initWithNodeConfiguration:(id)configuration sdofRenderingVersion:(int)version sensorConfigurationsByPortType:(id)type defaultPortType:(id)portType defaultZoomFactor:(float)factor
{
  v20.receiver = self;
  v20.super_class = BWStillImagePortraitMetadataNode;
  v12 = [(BWNode *)&v20 init];
  v13 = v12;
  if (!v12)
  {
    return v13;
  }

  if (!version)
  {
    [BWStillImagePortraitMetadataNode initWithNodeConfiguration:sdofRenderingVersion:sensorConfigurationsByPortType:defaultPortType:defaultZoomFactor:];
LABEL_11:

    return 0;
  }

  if (!type)
  {
    [BWStillImagePortraitMetadataNode initWithNodeConfiguration:sdofRenderingVersion:sensorConfigurationsByPortType:defaultPortType:defaultZoomFactor:];
    goto LABEL_11;
  }

  [(BWNode *)v12 setSupportsLiveReconfiguration:1];
  v13->_sdofRenderingVersion = version;
  v13->_sensorConfigurationsByPortType = type;
  v13->_defaultPortType = portType;
  v13->_defaultZoomFactor = factor;
  if (FigCapturePlatformSupportsUniversalCompression())
  {
    v14 = FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F22497F8, [configuration maxLossyCompressionLevel]);
  }

  else
  {
    v14 = &unk_1F22497F8;
  }

  v15 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v13];
  v16 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v16 setSupportedPixelFormats:v14];
  [(BWNodeInput *)v15 setFormatRequirements:v16];

  [(BWNodeInput *)v15 setPassthroughMode:1];
  [(BWNode *)v13 addInput:v15];

  v17 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v13];
  v18 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWNodeOutput *)v17 setFormatRequirements:v18];

  [(BWNodeOutput *)v17 setPassthroughMode:1];
  [(BWNode *)v13 addOutput:v17];

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImagePortraitMetadataNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"PrimaryFormat"))
  {
    output = self->super._output;

    [(BWNodeOutput *)output setFormat:format];
  }

  else
  {
    objc_msgSend_isEqualToString_(key);
    v10.receiver = self;
    v10.super_class = BWStillImagePortraitMetadataNode;
    [(BWNode *)&v10 didSelectFormat:format forInput:input forAttachedMediaKey:key];
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWStillImagePortraitMetadataNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  if ([(BWStillImagePortraitMetadataNode *)self _loadSDOFRenderingBundle])
  {
    [BWStillImagePortraitMetadataNode prepareForCurrentConfigurationToBecomeLive];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (BWSampleBufferGetAttachedMedia(buffer, @"Depth"))
  {
    v6 = *off_1E798D2B8;
    v7 = [CMGetAttachment(buffer *off_1E798D2B8];
    if (!v7)
    {
      goto LABEL_28;
    }

    v8 = CMGetAttachment(buffer, @"StillSettings", 0);
    if (!v8)
    {
      goto LABEL_28;
    }

    v9 = v8;
    v10 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    if ([(NSDictionary *)self->_sensorConfigurationsByPortType count]< 2)
    {
      defaultPortType = self->_defaultPortType;
    }

    else
    {
      defaultPortType = [v10 objectForKeyedSubscript:*off_1E798B540];
    }

    v12 = BWPixelBufferDimensionsFromSampleBuffer(buffer);
    v34 = *MEMORY[0x1E695F050];
    v35 = *(MEMORY[0x1E695F050] + 16);
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      v34 = 0uLL;
      __asm { FMOV            V0.2D, #1.0 }

      v35 = _Q0;
    }

    v18 = [objc_msgSend(v9 "requestedSettings")];
    v19.n128_f64[0] = v18 / [objc_msgSend(v9 "requestedSettings")];
    v20.n128_u64[0] = v34;
    v22.n128_u64[0] = *(&v35 + 1);
    v21.n128_u64[0] = v35;
    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v12, v12 >> 32, v20, *(&v34 + 1), v21, v22, v19, v23);
    height = v36.size.height;
    if (!CGRectIsNull(v36))
    {
      if ([objc_msgSend(v9 "requestedSettings")])
      {
        [objc_msgSend(objc_msgSend(v9 "captureSettings")];
        v26 = 1.0;
        if (v25 < 1.0)
        {
          v25 = 1.0;
        }
      }

      else
      {
        v27 = [objc_msgSend(v9 "requestedSettings")] / height;
        v28 = [objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
        if (v28)
        {
          v27 = v27 / vcvts_n_f32_s32(v28, 1uLL);
        }

        [objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B240), "floatValue"}];
        v26 = 1.0;
        if (v29 == 0.0)
        {
          v29 = 1.0;
        }

        v25 = v27 * v29;
      }

      if (v25 >= v26)
      {
        v30 = v25;
      }

      else
      {
        v30 = v26;
      }

      if (objc_msgSend_isEqualToString_(defaultPortType) && v30 == self->_currentZoomFactorForSDOFRenderingParameters || (v31 = [(BWStillImagePortraitMetadataNode *)self _loadSDOFRenderingTuningParametersForPortType:v30 zoomFactorForPortType:?]) == 0)
      {
        BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer(buffer, self->_sdofRenderingParameters);
        BWPortraitUtilitiesAttachSyntheticFocusRectangleToSampleBuffer(buffer);
        [v7 setObject:-[FigSDOFRenderingTuningParameters encodeParametersForSampleBuffer:captureType:](self->_sdofRenderingTuningParameters forKeyedSubscript:{"encodeParametersForSampleBuffer:captureType:", buffer, objc_msgSend(objc_msgSend(v9, "captureSettings"), "captureType") == 11), *off_1E798CEF0}];
        v32 = MEMORY[0x1E696AD98];
        [(FigSDOFRenderingTuningParameters *)self->_sdofRenderingTuningParameters simulatedAperture];
        [v7 setObject:objc_msgSend(v32 forKeyedSubscript:{"numberWithFloat:"), *off_1E798CEF8}];
        [BWStillImagePortraitMetadataNode _attachPortraitLightingEffectMetadataToDepthMetadata:v7 portType:?];
        CMSetAttachment(buffer, v6, v7, 1u);
        CMSetAttachment(buffer, *off_1E798D368, [MEMORY[0x1E696AD98] numberWithInt:self->_sdofRenderingVersion], 1u);
        [objc_msgSend(v9 "requestedSettings")];
      }

      else
      {
        v33 = v31;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_101();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v33);
      }
    }

    else
    {
LABEL_28:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_101();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
    }
  }

  else
  {
    v7 = 0;
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
}

- (uint64_t)_loadSDOFRenderingTuningParametersForPortType:(float)type zoomFactorForPortType:
{
  if (result)
  {
    v5 = result;
    v6 = *(result + 168);

    *(v5 + 168) = 0;
    *(v5 + 176) = 0;

    *(v5 + 184) = 0;
    *(v5 + 192) = 0;
    v7 = [objc_msgSend(*(v5 + 136) objectForKeyedSubscript:{a2), "sensorIDDictionary"}];
    *&v8 = type;
    v9 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v7 zoomFactor:v8];
    *(v5 + 184) = v9;
    if (v9 && (v10 = [objc_alloc(*(v5 + 160)) initWithTuningDictionary:*(v5 + 184)], (*(v5 + 192) = v10) != 0))
    {
      v11 = a2;
      result = 0;
      *(v5 + 168) = v11;
      *(v5 + 176) = type;
    }

    else
    {
      return 4294954510;
    }
  }

  return result;
}

- (id)_attachPortraitLightingEffectMetadataToDepthMetadata:(id *)result portType:(void *)type
{
  if (result)
  {
    result = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(result[17] "objectForKeyedSubscript:{"sensorIDDictionary"), "objectForKeyedSubscript:", @"PortraitLightingParameters", "objectForKeyedSubscript:", @"effectStrength", "doubleValue"}")];
    if (v3 != 0.0)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      v5 = *off_1E798D220;

      return [type setObject:v4 forKeyedSubscript:v5];
    }
  }

  return result;
}

@end