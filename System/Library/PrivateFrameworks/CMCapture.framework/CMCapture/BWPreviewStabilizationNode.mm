@interface BWPreviewStabilizationNode
- (BWPreviewStabilizationNode)initWithCameraInfoByPortType:(id)type forStillImagePreview:(BOOL)preview updateFinalCropRectWithStabilizationShift:(BOOL)shift minimumSupportedUIZoomFactor:(float)factor;
- (void)dealloc;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWPreviewStabilizationNode

- (BWPreviewStabilizationNode)initWithCameraInfoByPortType:(id)type forStillImagePreview:(BOOL)preview updateFinalCropRectWithStabilizationShift:(BOOL)shift minimumSupportedUIZoomFactor:(float)factor
{
  shiftCopy = shift;
  previewCopy = preview;
  v38.receiver = self;
  v38.super_class = BWPreviewStabilizationNode;
  v10 = [(BWNode *)&v38 init];
  v11 = v10;
  if (!type)
  {
    [BWPreviewStabilizationNode initWithCameraInfoByPortType:forStillImagePreview:updateFinalCropRectWithStabilizationShift:minimumSupportedUIZoomFactor:];
LABEL_19:

    return 0;
  }

  if (!v10)
  {
    return v11;
  }

  v31 = __PAIR64__(previewCopy, shiftCopy);
  v12 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v10];
  [(BWNodeInput *)v12 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeInput *)v12 setPassthroughMode:1];
  [(BWNode *)v11 addInput:v12];
  v13 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v11];
  [(BWNodeOutput *)v13 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeOutput *)v13 setPassthroughMode:1];
  v32 = v11;
  [(BWNode *)v11 addOutput:v13];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  allKeys = [type allKeys];
  v16 = [allKeys countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = *v35;
  v19 = *off_1E7989F18;
  v20 = *off_1E7989E50;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v35 != v18)
      {
        objc_enumerationMutation(allKeys);
      }

      v22 = *(*(&v34 + 1) + 8 * i);
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      v24 = [objc_msgSend(type objectForKeyedSubscript:{v22), "objectForKeyedSubscript:", v19}];
      if (!v24)
      {
        [BWPreviewStabilizationNode initWithCameraInfoByPortType:forStillImagePreview:updateFinalCropRectWithStabilizationShift:minimumSupportedUIZoomFactor:];
LABEL_18:
        v11 = v32;
        goto LABEL_19;
      }

      [dictionary2 setObject:v24 forKeyedSubscript:v19];
      v25 = [objc_msgSend(type objectForKeyedSubscript:{v22), "objectForKeyedSubscript:", v20}];
      if (!v25)
      {
        [BWPreviewStabilizationNode initWithCameraInfoByPortType:forStillImagePreview:updateFinalCropRectWithStabilizationShift:minimumSupportedUIZoomFactor:];
        goto LABEL_18;
      }

      [dictionary2 setObject:v25 forKeyedSubscript:v20];
      [dictionary setObject:dictionary2 forKeyedSubscript:v22];
    }

    v17 = [allKeys countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_12:
  v26 = [[BWPreviewGyroStabilization alloc] initForStillImagePreview:HIDWORD(v31)];
  v11 = v32;
  v32->_previewStabilization = v26;
  if (!v26)
  {
    [BWPreviewStabilizationNode initWithCameraInfoByPortType:forStillImagePreview:updateFinalCropRectWithStabilizationShift:minimumSupportedUIZoomFactor:];
    goto LABEL_19;
  }

  v32->_staticParametersByPortType = dictionary;
  v32->_updateFinalCropRectWithStabilizationShift = v31;
  factorCopy = 5.0;
  if (factor > 0.0)
  {
    factorCopy = factor;
  }

  v32->_minimumSupportedUIZoomFactor = factorCopy;
  v32->_photoModeFullStrengthUIZoomFactor = factorCopy + 0.2;
  v32->_stabilizeFallbackCamera = 1;
  v32->_stabilizationEnterRampFrameCount = 50;
  v32->_stabilizationExitRampFrameCount = 25;
  v32->_stabilizationCameraFallbackRampFrameCount = 7;
  v32->_stabilizationGraphStopRampOffFrameCount = 15;
  v32->_enableStabilizationTransitionRamps = 1;
  v32->_stabilizationCameraFallbackRampEnabled = 1;
  v28 = [BWRamp alloc];
  v32->_stabilizationTransitionRamp = -[BWRamp initWithName:](v28, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"StabilizationTransitionRamp"]);
  v29 = [BWRamp alloc];
  v32->_stabilizationCameraFallbackRamp = -[BWRamp initWithName:](v29, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"StabilizationCameraFallbackRamp"]);
  v32->_isStillImagePreview = BYTE4(v31);
  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPreviewStabilizationNode;
  [(BWNode *)&v3 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v108 = 0;
  cf = 0;
  v5 = *off_1E798A0D8;
  input = [(NSDictionary *)self->_staticParametersByPortType objectForKeyedSubscript:*off_1E798A0D8, input];
  v7 = *off_1E7989E50;
  v8 = [objc_msgSend(input objectForKeyedSubscript:{*off_1E7989E50), "floatValue"}];
  if (v9 == 0.0)
  {
    [BWPreviewStabilizationNode renderSampleBuffer:v8 forInput:?];
  }

  else
  {
    v10 = v9;
    v11 = CMGetAttachment(buffer, @"LastRecommendedMasterSelectionReason", 0);
    if (v11)
    {
      v12 = v11;
      self->_lastRecommendedMasterSelectionReason = [v11 intValue];
      lastRecommendedMasterSelectionReason = [v12 intValue];
    }

    else
    {
      lastRecommendedMasterSelectionReason = self->_lastRecommendedMasterSelectionReason;
    }

    v14 = CMGetAttachment(buffer, @"RecommendedMasterPortType", 0);
    if (v14)
    {
      v15 = v14;

      self->_lastRecommendedMasterPortType = v15;
    }

    v16 = BWOverCaptureSampleBufferUnpackAndRetain(buffer, 0, &cf, &v108, 0, 0);
    v17 = v108;
    if (v108)
    {
      if (cf)
      {
        v18 = cf;
      }

      else
      {
        v18 = v108;
      }

      v19 = CMGetAttachment(v18, @"TotalZoomFactor", 0);
      if (v19)
      {
        [v19 floatValue];
        v21 = v20;
      }

      else
      {
        v21 = 1.0;
      }

      isStillImagePreview = 0;
      if (cf)
      {
        if (self->_stabilizeFallbackCamera && lastRecommendedMasterSelectionReason == 1)
        {
          isStillImagePreview = 0;
          if ((objc_msgSend_isEqualToString_(self->_lastRecommendedMasterPortType) & 1) == 0 && v21 > v10)
          {
            isStillImagePreview = self->_isStillImagePreview;
            if (self->_isStillImagePreview)
            {
              v17 = cf;
            }
          }
        }
      }

      key = *off_1E798A3C8;
      v23 = CMGetAttachment(v17, *off_1E798A3C8, 0);
      if (v23)
      {
        v24 = v23;
        v98 = v7;
        v25 = *off_1E798B540;
        v26 = [v23 objectForKeyedSubscript:*off_1E798B540];
        [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_staticParametersByPortType objectForKeyedSubscript:{v26), "objectForKeyedSubscript:", *off_1E7989F18), "floatValue"}];
        v28 = v27;
        v102 = *MEMORY[0x1E695EFF8];
        v106 = *MEMORY[0x1E695EFF8];
        ImageBuffer = CMSampleBufferGetImageBuffer(v17);
        Width = CVPixelBufferGetWidth(ImageBuffer);
        v31 = CMSampleBufferGetImageBuffer(v17);
        Height = CVPixelBufferGetHeight(v31);
        v99 = Width;
        LODWORD(v33) = v28;
        if ([(BWPreviewGyroStabilization *)self->_previewStabilization computeStabilizationShiftUsingMetadata:v24 pixelBufferDimensions:Width | (Height << 32) pixelSizeInMicrons:&v106 stabilizationShiftOut:v33])
        {
          [BWPreviewStabilizationNode renderSampleBuffer:forInput:];
        }

        else
        {
          v34 = CMGetAttachment(buffer, @"UIZoomFactor", 0);
          if (v34)
          {
            [v34 floatValue];
            v36 = v35;
          }

          else
          {
            v36 = 1.0;
          }

          minimumSupportedUIZoomFactor = self->_minimumSupportedUIZoomFactor;
          v38 = [v26 isEqual:v5];
          v97 = Height;
          if (v36 >= minimumSupportedUIZoomFactor && ((v38 & 1) != 0 || self->_stabilizeFallbackCamera && lastRecommendedMasterSelectionReason == 1) && !self->_rampOffStabilizationForGraphStop)
          {
            if (!self->_lastStabilizingEnabled && self->_enableStabilizationTransitionRamps)
            {
              v94 = 0;
              if ([(BWRamp *)self->_stabilizationTransitionRamp isRamping])
              {
                [(BWRamp *)self->_stabilizationTransitionRamp currentValue];
                v94 = v95;
                [(BWRamp *)self->_stabilizationTransitionRamp reset];
              }

              LODWORD(v93) = 1.0;
              LODWORD(v92) = v94;
              [(BWRamp *)self->_stabilizationTransitionRamp startRampFrom:self->_stabilizationEnterRampFrameCount to:2 iterations:v92 shape:v93];
            }

            if ([(BWRamp *)self->_stabilizationTransitionRamp isRamping])
            {
              [(BWRamp *)self->_stabilizationTransitionRamp updateRampForNextIteration];
              v106 = vmulq_n_f64(v106, v96);
            }

            v43 = 1;
          }

          else
          {
            if (self->_lastStabilizingEnabled && self->_enableStabilizationTransitionRamps)
            {
              v40 = 1.0;
              if ([(BWRamp *)self->_stabilizationTransitionRamp isRamping])
              {
                [(BWRamp *)self->_stabilizationTransitionRamp currentValue];
                v40 = v41;
                [(BWRamp *)self->_stabilizationTransitionRamp reset];
              }

              if (self->_rampOffStabilizationForGraphStop)
              {
                v42 = &OBJC_IVAR___BWPreviewStabilizationNode__stabilizationGraphStopRampOffFrameCount;
              }

              else
              {
                v42 = &OBJC_IVAR___BWPreviewStabilizationNode__stabilizationExitRampFrameCount;
              }

              *&v39 = v40;
              [(BWRamp *)self->_stabilizationTransitionRamp startRampFrom:*(&self->super.super.isa + *v42) to:2 iterations:v39 shape:0.0];
            }

            if ([(BWRamp *)self->_stabilizationTransitionRamp isRamping])
            {
              [(BWRamp *)self->_stabilizationTransitionRamp updateRampForNextIteration];
              v43 = 0;
              v45 = vmulq_n_f64(v106, v44);
            }

            else
            {
              v43 = 0;
              v45 = v102;
            }

            v106 = v45;
          }

          v46.f64[0] = v106.f64[0];
          if (self->_isStillImagePreview)
          {
            v47 = ((v36 - self->_minimumSupportedUIZoomFactor) / 0.2);
            if (v47 > 1.0)
            {
              v47 = 1.0;
            }

            v48 = fmax(v47, 0.0);
            v49 = v48;
            v46.f64[0] = v106.f64[0] * v49;
            v106.f64[0] = v106.f64[0] * v49;
            v106.f64[1] = v106.f64[1] * v49;
            if (isStillImagePreview)
            {
              v50 = CMGetAttachment(v108, key, 0);
              v51 = CMGetAttachment(cf, key, 0);
              v52 = [v50 objectForKeyedSubscript:v25];
              v53 = [v51 objectForKeyedSubscript:v25];
              [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_staticParametersByPortType objectForKeyedSubscript:{v52), "objectForKeyedSubscript:", v98), "floatValue"}];
              v55 = v54;
              v56 = *off_1E798B508;
              [objc_msgSend(v50 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
              if (v57 == 0.0)
              {
                v58 = 1.0;
              }

              else
              {
                v58 = v57;
              }

              v59 = v58 * v55;
              [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_staticParametersByPortType objectForKeyedSubscript:{v53, v26), "objectForKeyedSubscript:", v98), "floatValue"}];
              v61 = v60;
              [objc_msgSend(v51 objectForKeyedSubscript:{v56), "floatValue"}];
              if (v62 == 0.0)
              {
                v63 = 1.0;
              }

              else
              {
                v63 = v62;
              }

              v64 = v63 * v61;
              v46 = vmulq_n_f64(v106, (v59 / v64));
              v106 = v46;
            }

            v65 = MEMORY[0x1E695EFF8];
            if (self->_stabilizationCameraFallbackRampEnabled)
            {
              if ((objc_msgSend_isEqualToString_(v26) & 1) == 0 && self->_stabilizeFallbackCamera && lastRecommendedMasterSelectionReason == 1 && v21 > v10 && self->_isStillImagePreview)
              {
                if ([(BWRamp *)self->_stabilizationCameraFallbackRamp isRamping])
                {
                  [(BWRamp *)self->_stabilizationCameraFallbackRamp reset];
                }

                LODWORD(v91) = 1.0;
                [(BWRamp *)self->_stabilizationCameraFallbackRamp startRampFrom:self->_stabilizationCameraFallbackRampFrameCount to:0 iterations:0.0 shape:v91];
                self->_lastTranslationBeforeCameraFallbackRampStart = self->_appliedTranslation;
              }

              if ([(BWRamp *)self->_stabilizationCameraFallbackRamp isRamping])
              {
                [(BWRamp *)self->_stabilizationCameraFallbackRamp updateRampForNextIteration];
                v46 = vmlaq_n_f64(vmulq_n_f64(v106, v66), self->_lastTranslationBeforeCameraFallbackRampStart, 1.0 - v66);
                v106 = v46;
              }

              else
              {
                v46.f64[0] = v106.f64[0];
              }
            }
          }

          else
          {
            v65 = MEMORY[0x1E695EFF8];
          }

          v67 = v106.f64[1];
          if (v46.f64[0] != *v65 || v106.f64[1] != v65[1])
          {
            if (self->_updateFinalCropRectWithStabilizationShift)
            {
              v68 = CMGetAttachment(v108, key, 0);
              rect = *ymmword_1AD056718;
              CGRectMakeWithDictionaryRepresentation([v68 objectForKeyedSubscript:*off_1E798A5C8], &rect);
              v69 = CMSampleBufferGetImageBuffer(buffer);
              v70 = *(MEMORY[0x1E695F058] + 8);
              v104.origin.x = *MEMORY[0x1E695F058];
              v104.origin.y = v70;
              v104.size.width = CVPixelBufferGetWidth(v69);
              v104.size.height = CVPixelBufferGetHeight(v69);
              CGRectMakeWithDictionaryRepresentation([v68 objectForKeyedSubscript:*off_1E798B7A0], &v104);
              FigCaptureMetadataUtilitiesNormalizeCropRect(v104.origin.x, v104.origin.y, v104.size.width, v104.size.height, v99, v97);
              v75 = v74;
              v76 = v71;
              v77 = v72;
              v78 = v73;
              v79 = rect.origin.x + v106.f64[0] / v99;
              v80 = rect.origin.y + v106.f64[1] / v97;
              rect.origin.x = v79;
              rect.origin.y = v80;
              v81 = rect.size.width;
              if (v72 < rect.size.width)
              {
                v81 = v72;
              }

              v82 = fmax(v81, 0.0);
              if (v73 >= rect.size.height)
              {
                v83 = rect.size.height;
              }

              else
              {
                v83 = v73;
              }

              keya = fmax(v83, 0.0);
              v84 = v75;
              MinX = CGRectGetMinX(*(&v71 - 1));
              v109.origin.x = v75;
              v109.origin.y = v76;
              v109.size.width = v77;
              v109.size.height = v78;
              v86 = CGRectGetMaxX(v109) - v82;
              if (v86 >= v79)
              {
                v86 = v79;
              }

              if (MinX < v86)
              {
                MinX = v86;
              }

              v110.origin.x = v75;
              v110.origin.y = v76;
              v110.size.width = v77;
              v110.size.height = v78;
              MinY = CGRectGetMinY(v110);
              v111.origin.x = v75;
              v111.origin.y = v76;
              v111.size.width = v77;
              v111.size.height = v78;
              v88 = CGRectGetMaxY(v111) - keya;
              if (v88 >= v80)
              {
                v88 = v80;
              }

              if (MinY >= v88)
              {
                v89 = MinY;
              }

              else
              {
                v89 = v88;
              }

              rect.origin.x = MinX;
              rect.origin.y = v89;
              rect.size.width = v82;
              rect.size.height = keya;
              FigCFDictionarySetCGRect();
            }

            else
            {
              DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v46);
              CMSetAttachment(v108, *off_1E798A428, DictionaryRepresentation, 1u);
              if (DictionaryRepresentation)
              {
                CFRelease(DictionaryRepresentation);
              }
            }
          }

          self->_lastStabilizingEnabled = v43;
          self->_appliedTranslation = v106;

          self->_lastPortType = v26;
        }
      }

      else
      {
        [BWPreviewStabilizationNode renderSampleBuffer:forInput:];
      }
    }

    else
    {
      [BWPreviewStabilizationNode renderSampleBuffer:v16 forInput:?];
    }
  }

  if (v108)
  {
    CFRelease(v108);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
}

@end