@interface NRFProcessorV2
- (BOOL)_isGainMapSupported;
- (BOOL)_isMetadataConsistentWithFirstFrame;
- (BOOL)_isSemanticStylesSupported;
- (BOOL)sanityCheckHomographyForBracketIndex:(int)index;
- (BOOL)shouldDownsampleRWPPInputWithPixelFormat:(unsigned int)format processingType:(unsigned int)type;
- (CGRect)_downscaleRoiForRegistration:(CGRect)registration;
- (NRFProcessorDelegate)delegate;
- (NRFProcessorV2)initWithCommandQueue:(id)queue;
- (id)getProcessingTypeKey:(frameProperties_t *)key;
- (id)newMTLBufferWithLength:(unint64_t)length;
- (int)_appendFrames:(opaqueCMSampleBuffer *)frames cfp:(frameProperties_t *)cfp;
- (int)_bindRegWarpPPWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
- (int)_computeBlurryFrameWeight:(int)weight;
- (int)_computeCornersStrengthWithBracketIndex:(unsigned int)index totalCornerStrength:(float *)strength;
- (int)_computeMetricsForReferenceFrameSelection:(int)selection;
- (int)_computeReferenceFrameIndex;
- (int)_deepFusion;
- (int)_deepFusionSetWarpReference:(int)reference;
- (int)_doDeepFusionSytheticRefererenceAndProxy;
- (int)_downsampleImageForRegistration:(__CVBuffer *)registration outputImage:(__CVBuffer *)image;
- (int)_getSharpestBracket:(int)bracket normGyroScores:(float *)scores normCornerScores:(float *)cornerScores normFocusScores:(float *)focusScores normBlinkScores:(float *)blinkScores useLongWeights:(unsigned __int8)weights sharpFrameIndex:(int *)index;
- (int)_lowLightGreenGhostPerFrameProcessing;
- (int)_lowLightMotionDetection;
- (int)_multiFrameProcessing:(BOOL)processing;
- (int)_nrfFuseImages:(BOOL)images;
- (int)_perFrameProcessing:(id)processing input:(opaqueCMSampleBuffer *)input cfp:(frameProperties_t *)cfp;
- (int)_perFrameProcessingComputeReferenceFrameIndexIfReady;
- (int)_populateDeepFusionMetadata:(id)metadata;
- (int)_process:(BOOL)_process;
- (int)_processInferenceImage:(__CVBuffer *)image sourceFrameType:(int)type sourceFrameIndex:(int)index ltcFrameIndex:(int)frameIndex gtcFrameIndex:(int)gtcFrameIndex originalWidth:(unint64_t)width originalHeight:(unint64_t)height;
- (int)_processSIFRandRefEV0IfPossible:(int)possible;
- (int)_registerImages:(BOOL)images;
- (int)_setupFusionConfig;
- (int)addFrame:(opaqueCMSampleBuffer *)frame;
- (int)allocateResources:(id *)resources;
- (int)bindResourcesForProcessingType:(unsigned int)type prepareDescriptor:(id)descriptor;
- (int)determineWorkingBufferRequirementsToProcess:(unsigned int)process prepareDescriptor:(id)descriptor nrfConfig:(id)config denoiseFusePipelineSize:(unint64_t *)size rwppSize:(unint64_t *)rwppSize rwppInputWidth:(unint64_t *)width rwppInputHeight:(unint64_t *)height;
- (int)determineWorkingBufferRequirementsWithOptions:(id)options memoryAllocationInfo:(id *)info;
- (int)determineWorkingBufferRequirementsWithOptions:(id)options nrfConfig:(id)config memoryAllocationInfo:(id *)info;
- (int)fusionMode;
- (int)getOptions:(id)options;
- (int)initFrameProperties:(frameProperties_t *)properties metadata:(id)metadata pixelBuffer:(__CVBuffer *)buffer;
- (int)prepareToProcess:(unsigned int)process prepareDescriptor:(id)descriptor;
- (int)prewarm;
- (int)process;
- (int)purgeResources;
- (int)resetInternalState;
- (int)resetState;
- (int)setupWithOptions:(id)options;
- (int)updateEV0ReferenceFrameIfNecessary;
- (int)verifyIOSurfaceCompression:(__IOSurface *)compression;
- (void)_deepFusionResetWarpTransforms;
- (void)_prepareOutputMetadata;
- (void)addToSidecar:(id)sidecar forKey:(id)key;
- (void)dealloc;
- (void)injectReferenceIfNeeded;
- (void)releaseStoredReference;
- (void)setFusionMode:(int)mode;
- (void)setLinearOutputMetadata:(id)metadata;
- (void)setOutput:(id)output;
- (void)setProgressiveBatchSize:(int)size;
- (void)setReferenceFrameIndex:(int)index;
- (void)setSharedMetalBuffer:(id)buffer;
- (void)setSharedRegWarpBuffer:(id)buffer;
- (void)storeReferenceIfNeeded;
@end

@implementation NRFProcessorV2

- (void)setProgressiveBatchSize:(int)size
{
  if (size <= 2)
  {
    sizeCopy = 2;
  }

  else
  {
    sizeCopy = size;
  }

  if (sizeCopy >= 4)
  {
    sizeCopy = 4;
  }

  self->_batchCount = sizeCopy;
}

- (void)setOutput:(id)output
{
  p_fusionOptions = &self->_fusionOptions;
  outputCopy = output;
  objc_storeStrong(&self->_delegate, output);
  v6 = *(p_fusionOptions + 8);
  *(p_fusionOptions + 8) = 0;

  v7 = *(p_fusionOptions + 9);
  *(p_fusionOptions + 9) = 0;

  v8 = *&self->_referenceFrameHasEVMinus;
  *&self->_referenceFrameHasEVMinus = 0;

  v12 = objc_msgSend_allocator(*p_fusionOptions, v9, v10, v11);
  objc_msgSend_purgeResources_(v12, v13, 0, v14);

  v17 = outputCopy;
  if (outputCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(p_fusionOptions + 8, output);
      v21 = objc_msgSend_pixelBuffer(*(p_fusionOptions + 8), v18, v19, v20);
      IOSurface = CVPixelBufferGetIOSurface(v21);
      v26 = objc_msgSend_device(*p_fusionOptions, v23, v24, v25);
      v29 = objc_msgSend_newBufferWithIOSurface_(v26, v27, IOSurface, v28);
      v30 = *&self->_referenceFrameHasEVMinus;
      *&self->_referenceFrameHasEVMinus = v29;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v17 = outputCopy;
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_7;
      }

      v32 = outputCopy;
      v26 = *(p_fusionOptions + 9);
      *(p_fusionOptions + 9) = v32;
    }

    v17 = outputCopy;
  }

LABEL_7:
  v33 = objc_msgSend_completionStatus(v17, v17, v15, v16);
  v37 = objc_msgSend_metalExecutionStatus(v33, v34, v35, v36);
  objc_msgSend_setExecutionStatus_(*p_fusionOptions, v38, v37, v39);
}

- (BOOL)shouldDownsampleRWPPInputWithPixelFormat:(unsigned int)format processingType:(unsigned int)type
{
  if (!*&self->_registrationPipelineRWPPConfig.numThreads && !self->_regWarpM2M)
  {
    return 0;
  }

  result = 0;
  if (type && type != 7)
  {
    result = 0;
    if (format <= 1751527983)
    {
      if (format == 645424688 || format == 762865200)
      {
        return 1;
      }

      v5 = 796419632;
    }

    else
    {
      if (format <= 2019963439)
      {
        if (format != 1751527984)
        {
          v5 = 1885745712;
          goto LABEL_15;
        }

        return 1;
      }

      if (format == 2088265264)
      {
        return 1;
      }

      v5 = 2019963440;
    }

LABEL_15:
    if (format != v5)
    {
      return result;
    }

    return 1;
  }

  return result;
}

- (int)initFrameProperties:(frameProperties_t *)properties metadata:(id)metadata pixelBuffer:(__CVBuffer *)buffer
{
  p_referenceFrameCandidatesCount = &self->_referenceFrameCandidatesCount;
  metadataCopy = metadata;
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
  v14 = *p_referenceFrameCandidatesCount;
  v15 = p_referenceFrameCandidatesCount[4];
  if (v15)
  {
    v16 = v15 == 7;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  v18 = sub_29582075C(metadataCopy, properties, WidthOfPlane, HeightOfPlane, v17);
  if (v18)
  {
    v70 = v18;
    sub_2958B34DC();
    goto LABEL_53;
  }

  v19 = 0;
  v20 = &properties->meta.ltmCurves.ccmLut.ccmV1.lutsData[2044];
  *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].BB.mid = xmmword_2958D59C0;
  *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].RB.shadows = xmmword_2958D59D0;
  *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].GG.highlights = 0x3F80000000000000;
  v87 = xmmword_2958D59E0;
  v88 = xmmword_2958D59F0;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = xmmword_2958D5A00;
  do
  {
    *(&v90 + v19) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2958D5A10, COERCE_FLOAT(*(&v87 + v19))), xmmword_2958D5A20, *(&v87 + v19), 1), xmmword_2958D5A30, *(&v87 + v19), 2);
    v19 += 16;
  }

  while (v19 != 48);
  v93.columns[0] = v90;
  v93.columns[1] = v91;
  v93.columns[2] = v92;
  *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].RG.mid = v90;
  *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].GG.shadows = v93.columns[1];
  *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].BR.highlights = v93.columns[2];
  v93.columns[3] = xmmword_2958D5A40;
  v94 = __invert_f4(v93);
  *&properties[1].meta.ROI.size.height = v94.columns[0];
  *&properties[1].meta.ltmCurves.ltmLut.version = v94.columns[1];
  *&properties[1].meta.ltmCurves.ltmLut.ccmV1.rightPadding = v94.columns[2];
  *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].BR.shadows = 1.0 / *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].BR.highlights;
  p_mid = &properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid;
  v22 = MEMORY[0x29EDCA928];
  v85 = *(MEMORY[0x29EDCA928] + 16);
  v86 = *MEMORY[0x29EDCA928];
  *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid = *MEMORY[0x29EDCA928];
  *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GR.shadows = v85;
  v94.columns[0] = *(v22 + 32);
  v84 = v94.columns[0];
  *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GB.highlights = v94.columns[0];
  *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].BR.highlights = 1065353216;
  v94.columns[0].i64[0] = 65792;
  v83 = v94.columns[0];
  *&properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].BG.mid = 65792;
  v23 = *MEMORY[0x29EDC0740];
  v26 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v24, *MEMORY[0x29EDC0740], v25);
  if (v26)
  {
    v29 = v26;
    v82 = v23;
    v30 = &properties[1].meta.ltmCurves.ltmLut.bytes[80];
    propertiesCopy = properties;
    v32 = p_referenceFrameCandidatesCount;
    v35 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v27, *MEMORY[0x29EDC0460], v28);
    if (v35)
    {
      HIDWORD(v80) = v14;
      selfCopy = self;
      v36 = *MEMORY[0x29EDC03F8];
      v37 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v33, *MEMORY[0x29EDC03F8], v34);

      p_referenceFrameCandidatesCount = v32;
      properties = propertiesCopy;
      p_mid = v30;
      v23 = v82;
      if (PixelFormatType != 1751527984)
      {
        if (v37)
        {
          *&v20[50].BB.highlights = 2;
          v40 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v38, v36, v39);
          v44 = objc_msgSend_intValue(v40, v41, v42, v43);

          v47 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v45, v82, v46);
          v51 = objc_msgSend_intValue(v47, v48, v49, v50);

          if (v51 > 1)
          {
            v52 = selfCopy;
            v53 = HIDWORD(v80);
            if (v51 == 2)
            {
              v74 = 0;
              *&v20[53].BB.mid = xmmword_2958D5AA0;
              *&v20[54].RB.shadows = xmmword_2958D5AB0;
              *&v20[54].GG.highlights = 0x400E38E43DCAC083;
              v75 = v44 / 65535.0;
              v76.i32[1] = 0;
              v76.i32[2] = 0;
              v76.f32[0] = 1.0 / (1.0 - v75);
              v87 = xmmword_2958D59E0;
              v88 = xmmword_2958D59F0;
              v89 = xmmword_2958D5A00;
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              do
              {
                v76.f32[3] = -(v75 * v76.f32[0]);
                *(&v90 + v74) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, COERCE_FLOAT(*(&v87 + v74))), xmmword_2958D5A20, *(&v87 + v74), 1), xmmword_2958D5A30, *(&v87 + v74), 2);
                v74 += 16;
              }

              while (v74 != 48);
              goto LABEL_45;
            }

            if (v51 == 3)
            {
              *&v20[53].BB.mid = xmmword_2958D5A50;
              *&v20[54].RB.shadows = xmmword_2958D5A60;
              *&v20[54].GG.highlights = 0x4019999A3D6147AELL;
              *&v20[52].RG.mid = xmmword_2958D5A70;
              *&v20[52].GG.shadows = xmmword_2958D5A80;
              *&v20[52].BR.highlights = xmmword_2958D5A90;
              *&v20[54].BR.highlights = 1065204301;
              v99 = __invert_f4(*zmmword_2959D6170);
              *&v20[51].RB.mid = v99.columns[0];
              *&v20[51].GB.shadows = v99.columns[1];
              *&v20[51].BG.highlights = v99.columns[2];
              *&v20[54].BR.shadows = 1.0 / *&v20[54].BR.highlights;
              HIBYTE(v20[54].BG.highlights) = 1;
              goto LABEL_46;
            }
          }

          else
          {
            v52 = selfCopy;
            v53 = HIDWORD(v80);
            if (!v51)
            {
              v71 = 0;
              *&v20[53].BB.mid = xmmword_2958D59C0;
              *&v20[54].RB.shadows = xmmword_2958D59D0;
              *&v20[54].GG.highlights = 0x3F80000000000000;
              v72 = v44 / 65535.0;
              v73.i32[1] = 0;
              v73.i32[2] = 0;
              v73.f32[0] = 1.0 / (1.0 - v72);
              v87 = xmmword_2958D59E0;
              v88 = xmmword_2958D59F0;
              v89 = xmmword_2958D5A00;
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              do
              {
                v73.f32[3] = -(v72 * v73.f32[0]);
                *(&v90 + v71) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, COERCE_FLOAT(*(&v87 + v71))), xmmword_2958D5A20, *(&v87 + v71), 1), xmmword_2958D5A30, *(&v87 + v71), 2);
                v71 += 16;
              }

              while (v71 != 48);
              goto LABEL_45;
            }

            if (v51 == 1)
            {
              v54 = 0;
              *&v20[53].BB.mid = xmmword_2958D59C0;
              *&v20[54].RB.shadows = xmmword_2959D5EE0;
              *&v20[54].GG.highlights = 0x4000000000000000;
              v55 = v44 / 65535.0;
              v56.i32[1] = 0;
              v56.i32[2] = 0;
              v56.f32[0] = 1.0 / (1.0 - v55);
              v87 = xmmword_2958D59E0;
              v88 = xmmword_2958D59F0;
              v89 = xmmword_2958D5A00;
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              do
              {
                v56.f32[3] = -(v55 * v56.f32[0]);
                *(&v90 + v54) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*(&v87 + v54))), xmmword_2958D5A20, *(&v87 + v54), 1), xmmword_2958D5A30, *(&v87 + v54), 2);
                v54 += 16;
              }

              while (v54 != 48);
LABEL_45:
              v100.columns[0] = v90;
              v100.columns[1] = v91;
              v100.columns[2] = v92;
              *&v20[52].RG.mid = v90;
              *&v20[52].GG.shadows = v100.columns[1];
              *&v20[52].BR.highlights = v100.columns[2];
              v100.columns[3] = xmmword_2958D5A40;
              v101 = __invert_f4(v100);
              *&v20[51].RB.mid = v101.columns[0];
              *&v20[51].GB.shadows = v101.columns[1];
              *&v20[51].BG.highlights = v101.columns[2];
              *&v20[54].BR.shadows = 1.0 / *&v20[54].BR.highlights;
LABEL_46:
              *&v20[55].RG.shadows = v51;
              if (v53 >= 1 && v51 != *&v52->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].RG.shadows)
              {
                sub_2958B353C(&v90);
                v70 = v90.i32[0];
                goto LABEL_53;
              }

              size = properties->meta.faces[0].rect.size;
              *p_mid = properties->meta.faces[0].rect.origin;
              p_mid[1] = size;
              p_mid[2] = *&properties->meta.faces[0].confidence;
              goto LABEL_49;
            }
          }

          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v80, selfCopy, v5, v82, v83.i64[0], v83.i32[2]);
          v69 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_2A18C2390, 0xFFFFFFFFLL, "<<<< NRF >>>>", 2004);
LABEL_39:
          v70 = v69;
          goto LABEL_53;
        }

        goto LABEL_25;
      }

LABEL_21:
      v57 = 0;
      *&v20[50].BB.highlights = 2;
      *&v20[53].BB.mid = xmmword_2958D59C0;
      *&v20[54].RB.shadows = xmmword_2958D59D0;
      *&v20[54].GG.highlights = 0x3F80000000000000;
      v87 = xmmword_2958D59E0;
      v88 = xmmword_2958D59F0;
      v89 = xmmword_2958D5A00;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      do
      {
        *(&v90 + v57) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2959D5EF0, COERCE_FLOAT(*(&v87 + v57))), xmmword_2959D6140, *(&v87 + v57), 1), xmmword_2959D5E40, *(&v87 + v57), 2);
        v57 += 16;
      }

      while (v57 != 48);
      v95.columns[0] = v90;
      v95.columns[1] = v91;
      v95.columns[2] = v92;
      *&v20[52].RG.mid = v90;
      *&v20[52].GG.shadows = v95.columns[1];
      *&v20[52].BR.highlights = v95.columns[2];
      v95.columns[3] = xmmword_2958D5A40;
      v96 = __invert_f4(v95);
      *&v20[51].RB.mid = v96.columns[0];
      *&v20[51].GB.shadows = v96.columns[1];
      *&v20[51].BG.highlights = v96.columns[2];
      *&v20[54].BR.shadows = 1.0 / *&v20[54].BR.highlights;
      *&v20[55].RG.shadows = -1;
      v96.columns[1] = properties->meta.faces[0].rect.size;
      *p_mid = properties->meta.faces[0].rect.origin;
      p_mid[1] = v96.columns[1];
      p_mid[2] = *&properties->meta.faces[0].confidence;
      goto LABEL_49;
    }

    p_referenceFrameCandidatesCount = v32;
    properties = propertiesCopy;
    p_mid = v30;
    v23 = v82;
    if (PixelFormatType == 1751527984)
    {
      goto LABEL_21;
    }
  }

  else if (PixelFormatType == 1751527984)
  {
    goto LABEL_21;
  }

LABEL_25:
  v58 = 0;
  *&v20[53].BB.mid = xmmword_2958D59C0;
  *&v20[54].RB.shadows = xmmword_2958D59D0;
  *&v20[54].GG.highlights = 0x3F80000000000000;
  v87 = xmmword_2958D59E0;
  v88 = xmmword_2958D59F0;
  v89 = xmmword_2958D5A00;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  do
  {
    *(&v90 + v58) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2958D5A10, COERCE_FLOAT(*(&v87 + v58))), xmmword_2958D5A20, *(&v87 + v58), 1), xmmword_2958D5A30, *(&v87 + v58), 2);
    v58 += 16;
  }

  while (v58 != 48);
  v97.columns[0] = v90;
  v97.columns[1] = v91;
  v97.columns[2] = v92;
  *&v20[52].RG.mid = v90;
  *&v20[52].GG.shadows = v97.columns[1];
  *&v20[52].BR.highlights = v97.columns[2];
  v97.columns[3] = xmmword_2958D5A40;
  v98 = __invert_f4(v97);
  *&v20[51].RB.mid = v98.columns[0];
  *&v20[51].GB.shadows = v98.columns[1];
  *&v20[51].BG.highlights = v98.columns[2];
  *&v20[54].BR.shadows = 1.0 / *&v20[54].BR.highlights;
  *p_mid = v86;
  p_mid[1] = v85;
  p_mid[2] = v84;
  *&v20[54].BR.highlights = 1065353216;
  *&v20[54].BG.mid = v83.i32[0];
  v61 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v59, v23, v60);

  if (!v61)
  {
LABEL_31:
    *&v20[50].BB.highlights = 0;
    LOBYTE(v20[54].BG.mid) = 1;
    goto LABEL_49;
  }

  v64 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v62, v23, v63);
  v68 = objc_msgSend_intValue(v64, v65, v66, v67);

  if (v68 == 2)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v80, selfCopy, v5, v82, v83.i64[0], v83.i32[2]);
    v69 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_2A18C2390, 0xFFFFFFFFLL, "<<<< NRF >>>>", 2036);
    goto LABEL_39;
  }

  if (v68 != 1)
  {
    if (v68)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v80, selfCopy, v5, v82, v83.i64[0], v83.i32[2]);
      v69 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_2A18C2390, 0xFFFFFFFFLL, "<<<< NRF >>>>", 2039);
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  *&v20[50].BB.highlights = 1;
LABEL_49:
  v78 = p_referenceFrameCandidatesCount[4];
  if (v78 == 2)
  {
    v70 = 0;
    v20[54].BG.mid = 1;
    HIBYTE(v20[54].BG.highlights) = 0;
  }

  else
  {
    v70 = 0;
    if (v78 == 3)
    {
      LOBYTE(v20[54].BG.highlights) = 0;
      v20[54].BG.mid = 1;
    }
  }

LABEL_53:

  return v70;
}

- (void)storeReferenceIfNeeded
{
  v2 = &self->_anon_17f858[80];
  if (!self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing)
  {
    cntBracketSampleBuffers = self->_cntBracketSampleBuffers;
    v5 = self->_bracketSampleBuffers[cntBracketSampleBuffers];
    if (v5)
    {
      v5 = CFRetain(v5);
      LODWORD(cntBracketSampleBuffers) = *(v2 + 108);
    }

    *&self->_referenceFrameProperties.meta.sensorID = v5;
    memcpy(&self->_referenceFrameProperties.meta.averageFocusScore, self->_bracketProperties + 224224 * cntBracketSampleBuffers, 0x36BE0uLL);
    *v2 = 0;
  }
}

- (void)injectReferenceIfNeeded
{
  if (!self->_referenceFrameCandidatesCount && self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing >= 1)
  {
    v24[11] = v2;
    v24[12] = v3;
    p_regWarpInput = &self->_regWarpInput;
    v6 = MEMORY[0x29EDB9270];
    if (*MEMORY[0x29EDB9270] == 1)
    {
      kdebug_trace();
    }

    appended = objc_msgSend__appendFrames_cfp_(self, a2, p_regWarpInput[24], &self->_referenceFrameProperties.meta.averageFocusScore);
    if (!self->_aggregateErr && appended)
    {
      self->_aggregateErr = 2;
    }

    objc_msgSend__perFrameProcessing_input_cfp_(self, v8, *p_regWarpInput, p_regWarpInput[24], &self->_referenceFrameProperties.meta.averageFocusScore);
    if (*v6)
    {
      v12 = objc_msgSend_commandQueue(p_regWarpInput[11], v9, v10, v11);
      v16 = objc_msgSend_commandBuffer(v12, v13, v14, v15);

      objc_msgSend_setLabel_(v16, v17, @"KTRACE_END_MTL", v18);
      v24[0] = MEMORY[0x29EDCA5F8];
      v24[1] = 3221225472;
      v24[2] = sub_29584AF9C;
      v24[3] = &unk_29EDDBE78;
      memset(&v24[4], 0, 24);
      objc_msgSend_addCompletedHandler_(v16, v19, v24, v20);
      objc_msgSend_commit(v16, v21, v22, v23);
    }
  }
}

- (void)releaseStoredReference
{
  v3 = *&self->_referenceFrameProperties.meta.sensorID;
  if (v3)
  {
    CFRelease(v3);
    *&self->_referenceFrameProperties.meta.sensorID = 0;
  }

  bzero(&self->_referenceFrameProperties.meta.averageFocusScore, 0x36BE0uLL);
}

- (int)process
{
  objc_msgSend_injectReferenceIfNeeded(self, a2, v2, v3);

  return objc_msgSend__process_(self, v5, 1, v6);
}

- (int)_process:(BOOL)_process
{
  _processCopy = _process;
  p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
  p_regWarpInput = &self->_regWarpInput;
  WeakRetained = objc_loadWeakRetained(&self->_progressiveBracketingParameters);
  if (p_cntBracketSampleBuffers[2] <= 0)
  {
    sub_2958B386C(location);
    v17 = 0;
    goto LABEL_53;
  }

  p_sifrFrameIndex = &self->_sifrFrameIndex;
  v12 = p_cntBracketSampleBuffers[6];
  if (v12 != 2)
  {
    v13 = 0;
    goto LABEL_6;
  }

  if (*p_cntBracketSampleBuffers < 0)
  {
    v61 = *(*p_regWarpInput + 10);
    if (v61)
    {
      if (*(v61 + 8) == 1)
      {
        v13 = objc_msgSend__computeReferenceFrameIndex(self, v7, v8, v9);
        aggregateErr = self->_aggregateErr;
        if (!aggregateErr && v13)
        {
          self->_aggregateErr = 24;
        }

        else if (!aggregateErr)
        {
          v12 = p_cntBracketSampleBuffers[6];
LABEL_6:
          if (v12)
          {
            v14 = v12 == 7;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {
            goto LABEL_12;
          }

          goto LABEL_10;
        }

        sub_2958B35D8();
        v17 = 0;
        goto LABEL_56;
      }
    }
  }

  v13 = 0;
LABEL_10:
  v15 = *p_cntBracketSampleBuffers;
  if ((v15 & 0x80000000) == 0)
  {
    bracketSampleBuffers = &self->_bracketSampleBuffers[v15];
    goto LABEL_13;
  }

LABEL_12:
  bracketSampleBuffers = self->_bracketSampleBuffers;
LABEL_13:
  v17 = *bracketSampleBuffers;
  if (!*bracketSampleBuffers)
  {
    sub_2958B37D0(location);
    goto LABEL_53;
  }

  CFRetain(*bracketSampleBuffers);
  objc_msgSend_StartKTraceEventForProcess_(self, v18, v17, v19);
  if (p_cntBracketSampleBuffers[6] == 3)
  {
    v23 = p_regWarpInput[20];
    if (!v23)
    {
      sub_2958B3734(location);
LABEL_53:
      v13 = LODWORD(location[0]);
      goto LABEL_56;
    }
  }

  else
  {
    v23 = p_regWarpInput[19];
    if (!v23)
    {
      sub_2958B3638(location);
      goto LABEL_53;
    }
  }

  objc_msgSend_setRefFrameTransform_(v23, v20, v21, v22, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32));
  if (_processCopy)
  {
    v30 = p_cntBracketSampleBuffers[6];
    if (v30 != 2)
    {
      goto LABEL_22;
    }

    v31 = objc_opt_new();
    v32 = MEMORY[0x29EDBA070];
    v36 = objc_msgSend_doGreenGhostMitigation(self->_denoiseFusePipeline, v33, v34, v35);
    v39 = objc_msgSend_numberWithBool_(v32, v37, v36, v38);
    objc_msgSend_setObject_forKeyedSubscript_(v31, v40, v39, @"isEnabled");

    objc_msgSend_addToSidecar_forKey_(self, v41, v31, @"GreenGhostLowLight");
  }

  v30 = p_cntBracketSampleBuffers[6];
LABEL_22:
  v196 = v17;
  v42 = _processCopy;
  if (v30 && v30 != 7 && !self->_aggregateErr)
  {
    if (v30 != 2 && !self->_processedSIFRandRefEV0)
    {
      objc_msgSend_waitForIdle(p_regWarpInput[11], v27, v28, v29);
    }

    v43 = objc_msgSend__multiFrameProcessing_(self, v27, _processCopy, v29);
    v13 = v43;
    if (v43)
    {
      sub_2958B36D4(v43);
      goto LABEL_55;
    }
  }

  v44 = objc_msgSend_fusionReferenceFrame(self->_denoiseFusePipeline, v27, v28, v29);
  objc_msgSend_setFusionMode_(p_regWarpInput[19], v45, v44, v46);
  if ((*p_cntBracketSampleBuffers & 0x80000000) == 0)
  {
    v47 = WeakRetained;
    v195 = *(&self->_fusionConf.colorSpaceConversionParameters[0].transferFunctionFwd.linearScale + 3 * *p_cntBracketSampleBuffers);
    v191 = *(&self->_fusionConf.colorSpaceConversionParameters[0].transferFunctionInv.nonLinearBias + 3 * *p_cntBracketSampleBuffers);
    v192 = *(&self->_fusionConf.colorSpaceConversionParameters[0].transferFunctionFwd.nonLinearPower + 3 * *p_cntBracketSampleBuffers);
    v48 = (p_regWarpInput + 20);
    IsValid = objc_msgSend_refFrameTransformIsValid(p_regWarpInput[20], v24, v25, v26);
    if ((objc_msgSend_fusionMode(p_regWarpInput[19], v50, v51, v52) == 2 || IsValid) && (*p_sifrFrameIndex & 0x80000000) == 0)
    {
      v53 = self + 224224 * *p_sifrFrameIndex;
      if (v53[448289] == 1)
      {
        v54 = v53 + 224416;
        v195 = v54[13993];
        v191 = v54[13995];
        v192 = v54[13994];
      }
    }

    v55 = p_cntBracketSampleBuffers[6];
    if (v55 != 3)
    {
      WeakRetained = v47;
      if (v55 != 1)
      {
        goto LABEL_39;
      }

      v48 = (p_regWarpInput + 19);
    }

    objc_msgSend_setRefFrameTransform_(*v48, v24, v25, v26, *&v195, *&v192, *&v191);
    WeakRetained = v47;
  }

LABEL_39:
  LODWORD(_processCopy) = v42;
  if (!v42)
  {
LABEL_55:
    v17 = v196;
    goto LABEL_56;
  }

  v56 = objc_msgSend_allocator(p_regWarpInput[11], v24, v25, v26);
  v60 = objc_msgSend_usedSizeAll(v56, v57, v58, v59);

  v17 = v196;
  if (v60)
  {
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v187, v189, v191);
  }

LABEL_56:
  v63 = 0x29EDBB000;
  if (!_processCopy)
  {
    goto LABEL_66;
  }

  while (1)
  {
    objc_msgSend__prepareOutputMetadata(self, v24, v25, v26);
LABEL_66:
    v64 = self->_aggregateErr;
    if (v64)
    {
      if (v64 == 1)
      {
        v13 = 4294949895;
      }

      else if (v64 == 6)
      {
        v13 = 4294949894;
      }

      else
      {
        v13 = 4294949896;
      }
    }

    objc_msgSend_resetInternalState(self, v24, v25, v26);
    v68 = objc_msgSend_sharedCaptureManager(*(v63 + 1344), v65, v66, v67);
    objc_msgSend_stopCapture(v68, v69, v70, v71);

    if (*(p_regWarpInput[18] + 12))
    {
      objc_msgSend_finishScheduling(self, v72, v73, v74);
    }

    else
    {
      objc_msgSend_finishProcessing(self, v72, v73, v74);
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || !_processCopy)
    {
      goto LABEL_91;
    }

    v78 = p_cntBracketSampleBuffers[6];
    if (v78 > 3)
    {
      if (v78 > 8)
      {
        if (v78 == 9)
        {
          objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v75, *MEMORY[0x29EDB8CC8], @"*** LearnedHRNR is unsupported in this version of NRF.", 0);
        }

        else
        {
          if (v78 != 10)
          {
            goto LABEL_91;
          }

          objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v75, *MEMORY[0x29EDB8CC8], @"*** LearnedFusion is unsupported in this version of NRF.", 0);
        }
      }

      else
      {
        if ((v78 - 6) < 3)
        {
LABEL_85:
          if (objc_msgSend_linearOutputPixelBuffer(p_regWarpInput[19], v75, v76, v77))
          {
            v112 = objc_msgSend_linearOutputPixelBuffer(p_regWarpInput[19], v109, v110, v111);
            v116 = objc_msgSend_linearOutputMetadata(p_regWarpInput[19], v113, v114, v115);
            objc_msgSend_processor_outputReadyWithFrameType_outputPixelBuffer_outputMetadata_error_(WeakRetained, v117, self, 8, v112, v116, v13);
          }

          v118 = objc_msgSend_pixelBuffer(p_regWarpInput[19], v109, v110, v111);
          v122 = objc_msgSend_metadata(p_regWarpInput[19], v119, v120, v121);
          objc_msgSend_processor_outputReadyWithFrameType_outputPixelBuffer_outputMetadata_error_(WeakRetained, v123, self, 0, v118, v122, v13);
          goto LABEL_90;
        }

        if ((v78 - 4) >= 2)
        {
          goto LABEL_91;
        }

        objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v75, *MEMORY[0x29EDB8CC8], @"*** RawNightMode is unsupported in this version of NRF.", 0);
      }
      v186 = ;
      objc_exception_throw(v186);
    }

    if ((v78 - 1) < 2)
    {
      if (!objc_msgSend_linearOutputPixelBuffer(p_regWarpInput[19], v75, v76, v77))
      {
        goto LABEL_91;
      }

      v124 = objc_msgSend_linearOutputPixelBuffer(p_regWarpInput[19], v75, v76, v77);
      v122 = objc_msgSend_linearOutputMetadata(p_regWarpInput[19], v125, v126, v127);
      objc_msgSend_processor_outputReadyWithFrameType_outputPixelBuffer_outputMetadata_error_(WeakRetained, v128, self, 8, v124, v122, v13);
LABEL_90:

      goto LABEL_91;
    }

    if (!v78)
    {
      goto LABEL_85;
    }

    if (v78 == 3)
    {
      v79 = objc_msgSend_syntheticReferencePixelBuffer(p_regWarpInput[20], v75, v76, v77);
      v83 = objc_msgSend_syntheticReferenceMetadata(p_regWarpInput[20], v80, v81, v82);
      objc_msgSend_processor_outputReadyWithFrameType_outputPixelBuffer_outputMetadata_error_(WeakRetained, v84, self, 2, v79, v83, v13);

      v88 = objc_msgSend_syntheticReferenceFusionMapPixelBuffer(p_regWarpInput[20], v85, v86, v87);
      objc_msgSend_processor_outputReadyWithFrameType_outputPixelBuffer_outputMetadata_error_(WeakRetained, v89, self, 3, v88, 0, v13);
      v93 = objc_msgSend_syntheticLongPixelBuffer(p_regWarpInput[20], v90, v91, v92);
      v97 = objc_msgSend_syntheticLongMetadata(p_regWarpInput[20], v94, v95, v96);
      objc_msgSend_processor_outputReadyWithFrameType_outputPixelBuffer_outputMetadata_error_(WeakRetained, v98, self, 4, v93, v97, v13);

      v102 = objc_msgSend_syntheticLongFusionMapPixelBuffer(p_regWarpInput[20], v99, v100, v101);
      objc_msgSend_processor_outputReadyWithFrameType_outputPixelBuffer_outputMetadata_error_(WeakRetained, v103, self, 5, v102, 0, v13);
      if (objc_msgSend_longFusionMapPixelBuffer(p_regWarpInput[20], v104, v105, v106))
      {
        v107 = objc_msgSend_longFusionMapPixelBuffer(p_regWarpInput[20], v75, v76, v77);
        objc_msgSend_processor_outputReadyWithFrameType_outputPixelBuffer_outputMetadata_error_(WeakRetained, v108, self, 6, v107, 0, v13);
      }
    }

LABEL_91:
    v129 = objc_msgSend_output(self, v75, v76, v77);
    v133 = objc_msgSend_completionStatus(v129, v130, v131, v132);

    if (!v133 || !_processCopy)
    {
      goto LABEL_98;
    }

    v137 = WeakRetained;
    v138 = objc_msgSend_output(self, v134, v135, v136);
    v142 = objc_msgSend_completionStatus(v138, v139, v140, v141);
    objc_initWeak(location, v142);

    v146 = objc_msgSend_commandQueue(p_regWarpInput[11], v143, v144, v145);
    v150 = objc_msgSend_commandBuffer(v146, v147, v148, v149);
    v151 = objc_loadWeakRetained(location);
    objc_msgSend_setCommandBuffer_(v151, v152, v150, v153);

    v154 = objc_loadWeakRetained(location);
    v158 = objc_msgSend_commandBuffer(v154, v155, v156, v157);

    if (v158)
    {
      v159 = objc_loadWeakRetained(location);
      v163 = objc_msgSend_commandBuffer(v159, v160, v161, v162);

      if (v163)
      {
        break;
      }
    }

    LODWORD(v187) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v187, v194, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194);
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v188, v190, v191);
    objc_destroyWeak(location);
    WeakRetained = v137;
    v63 = 0x29EDBB000uLL;
  }

  WeakRetained = v137;
  if (objc_opt_respondsToSelector())
  {
    v164 = objc_loadWeakRetained(location);
    v168 = objc_msgSend_commandBuffer(v164, v165, v166, v167);
    v200[0] = MEMORY[0x29EDCA5F8];
    v200[1] = 3221225472;
    v200[2] = sub_29584BC6C;
    v200[3] = &unk_29EDDC380;
    v201 = WeakRetained;
    objc_copyWeak(v202, location);
    objc_msgSend_addCompletedHandler_(v168, v169, v200, v170);

    objc_destroyWeak(v202);
  }

  v171 = objc_loadWeakRetained(location);
  v175 = objc_msgSend_commandBuffer(v171, v172, v173, v174);
  objc_msgSend_commit(v175, v176, v177, v178);

  objc_destroyWeak(location);
LABEL_98:
  if (v17)
  {
    objc_msgSend_EndKTraceEventForProcess_(self, v134, v17, v136);
    CFRelease(v17);
  }

  if (dword_2A18C2398)
  {
    v199 = 0;
    v198 = OS_LOG_TYPE_DEFAULT;
    v179 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v180 = v199;
    if (!os_log_type_enabled(v179, v198))
    {
      v180 &= ~1u;
    }

    if (v180)
    {
      v184 = objc_msgSend_description(self, v181, v182, v183);
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v13;
}

- (id)getProcessingTypeKey:(frameProperties_t *)key
{
  v4 = 0;
  output = self->_output;
  if (output <= 1)
  {
    if (output)
    {
      if (output != 1)
      {
        goto LABEL_18;
      }

      if (LODWORD(key[1].meta.ROI.origin.y))
      {
        v6 = off_29EDDC288;
      }

      else
      {
        v6 = off_29EDDC2A0;
      }
    }

    else
    {
      v6 = off_29EDDC280;
      if (!HIBYTE(self->_referenceFrameIndex))
      {
        v6 = off_29EDDC278;
      }
    }

    goto LABEL_17;
  }

  if (output != 2)
  {
    if (output == 3)
    {
      v6 = off_29EDDC288;
    }

    else
    {
      if (output != 7)
      {
        goto LABEL_18;
      }

      v6 = off_29EDDC280;
    }

LABEL_17:
    v4 = *v6;
    goto LABEL_18;
  }

  v7 = objc_msgSend_progressiveBracketingParameters(self, a2, key, v3);
  v11 = objc_msgSend_mode(v7, v8, v9, v10);
  v12 = off_29EDDC298;
  if (v11 != 1)
  {
    v12 = off_29EDDC290;
  }

  v4 = *v12;

LABEL_18:

  return v4;
}

- (int)verifyIOSurfaceCompression:(__IOSurface *)compression
{
  if (IOSurfaceGetCompressionTypeOfPlane() != 4 || SHIDWORD(self->_nrfFusionOutput->_pixelBuffer) >= IOSurfaceGetCompressionFootprintOfPlane())
  {
    return 0;
  }

  sub_2958B3908();
  return -1;
}

- (int)addFrame:(opaqueCMSampleBuffer *)frame
{
  v5 = &self->_referenceFrameIndex + 2;
  ImageBuffer = CMSampleBufferGetImageBuffer(frame);
  v7 = CMGetAttachment(frame, *MEMORY[0x29EDBFF98], 0);
  v10 = objc_msgSend_objectForKeyedSubscript_(v7, v8, *MEMORY[0x29EDC06E0], v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v7, v11, *MEMORY[0x29EDC0630], v12);
  v16 = objc_msgSend_objectForKeyedSubscript_(*(v5 + 94), v14, v10, v15);
  v19 = objc_msgSend_objectForKeyedSubscript_(*(v5 + 102), v17, v10, v18);
  obj = objc_msgSend_objectForKeyedSubscript_(*(v5 + 110), v20, v13, v21);
  IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
  v25 = objc_msgSend_verifyIOSurfaceCompression_(self, v23, IOSurface, v24);
  v215 = v19;
  if (v25)
  {
    value = v25;
    sub_2958B3968();
    v27 = 0;
    goto LABEL_75;
  }

  if (!frame)
  {
    sub_2958B42C0(&v225);
    v27 = 0;
LABEL_100:
    value = v225.value;
    goto LABEL_75;
  }

  if (v16)
  {
    v26 = v19 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    v27 = 0;
    value = -1;
    goto LABEL_75;
  }

  v29 = malloc_type_calloc(1uLL, 0x36BE0uLL, 0x1020040DF6BF6F3uLL);
  v27 = v29;
  if (!v29)
  {
    sub_2958B4260();
    value = -12786;
    goto LABEL_75;
  }

  if (objc_msgSend_initFrameProperties_metadata_pixelBuffer_(self, v30, v29, v7, ImageBuffer))
  {
    sub_2958B39C8(&v225);
    goto LABEL_100;
  }

  objc_msgSend_injectReferenceIfNeeded(self, v31, v32, v33);
  CMSampleBufferGetPresentationTimeStamp(&v225, frame);
  objc_msgSend_StartKTraceEventForAddFrame_timestamp_(self, v34, v27, &v225);
  if (self->_aggregateErr)
  {
    sub_2958B3A18(&v225);
    goto LABEL_100;
  }

  v35 = *(v5 + 30);
  if (v35 == 2)
  {
    if (v27[5] == 1)
    {
      sub_2958B3A68(&v225);
      goto LABEL_100;
    }
  }

  else if (v35 == 3 && (v27[4] & 1) != 0)
  {
    goto LABEL_74;
  }

  if (v27[6] == 1 && v27[5] == 1)
  {
    sub_2958B41C4(&v225);
    goto LABEL_100;
  }

  v214 = v7;
  if (LOBYTE(self->_nrfPlist) != 1)
  {
    goto LABEL_58;
  }

  v36 = objc_opt_new();
  v40 = objc_msgSend_device(*&self->_fusionOptions, v37, v38, v39);
  objc_msgSend_setCaptureObject_(v36, v41, v40, v42);

  objc_msgSend_setDestination_(v36, v43, 1, v44);
  v48 = objc_msgSend_sharedCaptureManager(MEMORY[0x29EDBB540], v45, v46, v47);
  v212 = v36;
  objc_msgSend_startCaptureWithDescriptor_error_(v48, v49, v36, 0);

  v52 = objc_msgSend_getProcessingTypeKey_(self, v50, v27, v51);
  v55 = objc_msgSend_objectForKeyedSubscript_(v16, v53, @"DenoiseAndSharpening", v54);
  v58 = objc_msgSend_objectForKeyedSubscript_(v55, v56, v52, v57);
  regWarpInput = self->_regWarpInput;
  v60 = *(regWarpInput + 2);
  *(regWarpInput + 2) = v58;

  v63 = objc_msgSend_objectForKeyedSubscript_(v16, v61, @"NoiseModel", v62);
  v66 = objc_msgSend_objectForKeyedSubscript_(v63, v64, v52, v65);
  v67 = self->_regWarpInput;
  v68 = *(v67 + 4);
  *(v67 + 4) = v66;

  v71 = objc_msgSend_objectForKeyedSubscript_(v16, v69, @"Fusion", v70);
  v74 = objc_msgSend_objectForKeyedSubscript_(v71, v72, v52, v73);
  v75 = self->_regWarpInput;
  v76 = *(v75 + 3);
  *(v75 + 3) = v74;

  v79 = objc_msgSend_objectForKeyedSubscript_(v16, v77, @"ToneMapping", v78);
  v213 = v52;
  v82 = objc_msgSend_objectForKeyedSubscript_(v79, v80, v52, v81);
  v83 = self->_regWarpInput;
  v84 = *(v83 + 5);
  *(v83 + 5) = v82;

  v87 = *(v5 + 30);
  if (v87 == 2)
  {
    v88 = objc_msgSend_objectForKeyedSubscript_(v16, v85, @"FrameSelection", v86);
    v91 = objc_msgSend_objectForKeyedSubscript_(v88, v89, v52, v90);
    v92 = self->_regWarpInput;
    v93 = *(v92 + 10);
    *(v92 + 10) = v91;

    v87 = *(v5 + 30);
  }

  if (v87 == 3)
  {
    v94 = objc_msgSend_objectForKeyedSubscript_(v16, v85, @"SyntheticLong", v86);
    v95 = self->_regWarpInput;
    v96 = *(v95 + 6);
    *(v95 + 6) = v94;

    v99 = objc_msgSend_objectForKeyedSubscript_(v16, v97, @"SyntheticReference", v98);
    v102 = objc_msgSend_objectForKeyedSubscript_(v99, v100, @"Default", v101);
    v103 = self->_regWarpInput;
    v104 = *(v103 + 7);
    *(v103 + 7) = v102;

    v107 = objc_msgSend_objectForKeyedSubscript_(v16, v105, @"DenoiseAndSharpening", v106);
    v110 = objc_msgSend_objectForKeyedSubscript_(v107, v108, @"ProxyAssetEV0RefParameters", v109);
    v111 = self->_regWarpInput;
    v112 = *(v111 + 8);
    *(v111 + 8) = v110;

    v115 = objc_msgSend_objectForKeyedSubscript_(v16, v113, @"DenoiseAndSharpening", v114);
    v118 = objc_msgSend_objectForKeyedSubscript_(v115, v116, @"ProxyAssetEVMRefParameters", v117);
    v119 = self->_regWarpInput;
    v120 = *(v119 + 9);
    *(v119 + 9) = v118;
  }

  objc_storeStrong(self->_regWarpInput + 12, obj);
  v123 = objc_msgSend_objectForKeyedSubscript_(v16, v121, @"GainMap", v122);
  v126 = objc_msgSend_objectForKeyedSubscript_(v123, v124, @"Default", v125);
  v127 = self->_regWarpInput;
  v128 = *(v127 + 11);
  *(v127 + 11) = v126;

  v131 = objc_msgSend_objectForKeyedSubscript_(v16, v129, @"SemanticStyles", v130);
  v134 = objc_msgSend_objectForKeyedSubscript_(v131, v132, @"Default", v133);
  v135 = self->_regWarpInput;
  v136 = *(v135 + 13);
  *(v135 + 13) = v134;

  v139 = objc_msgSend_objectForKeyedSubscript_(v16, v137, @"BrightLightGreenGhost", v138);
  v142 = objc_msgSend_objectForKeyedSubscript_(v139, v140, @"Default", v141);
  v143 = self->_regWarpInput;
  v144 = *(v143 + 14);
  *(v143 + 14) = v142;

  v147 = objc_msgSend_objectForKeyedSubscript_(v16, v145, @"LowLightGreenGhost", v146);
  v150 = objc_msgSend_objectForKeyedSubscript_(v147, v148, @"Default", v149);
  v151 = self->_regWarpInput;
  v152 = *(v151 + 15);
  *(v151 + 15) = v150;

  v155 = objc_msgSend_getTextureForPortType_(self->_globalDistortionCorrectionByPortType, v153, v13, v154);
  referenceFrame = self->_referenceFrame;
  self->_referenceFrame = v155;

  v159 = objc_msgSend_getParamsForPortType_(self->_globalDistortionCorrectionPlist, v157, v13, v158);
  v160 = *&self->_saveInputFramesToDisk;
  *&self->_saveInputFramesToDisk = v159;

  v164 = self->_regWarpInput;
  if (!*(v164 + 2))
  {
    sub_2958B4128(&v225);
    goto LABEL_108;
  }

  if (!*(v164 + 4))
  {
    sub_2958B408C(&v225);
    goto LABEL_108;
  }

  v165 = *(v5 + 30);
  if (!v165 || v165 == 7)
  {
    goto LABEL_34;
  }

  if (!*(v164 + 3))
  {
    sub_2958B3FF0(&v225);
    goto LABEL_108;
  }

  if (v165 == 3)
  {
    if (*(v164 + 6))
    {
      if (*(v164 + 7))
      {
        if (*(v164 + 8))
        {
          if (*(v164 + 9))
          {
            goto LABEL_34;
          }

          sub_2958B3D80(&v225);
        }

        else
        {
          sub_2958B3E1C(&v225);
        }
      }

      else
      {
        sub_2958B3EB8(&v225);
      }
    }

    else
    {
      sub_2958B3F54(&v225);
    }

LABEL_108:
    value = v225.value;
    v7 = v214;

    goto LABEL_75;
  }

LABEL_34:
  isa = self->_nrfFusionOutput[1].super.super.isa;
  if ((isa & 4) != 0)
  {
    if (v165 == 2)
    {
      v168 = *(v164 + 15);
      if (v168)
      {
        objc_msgSend_tuningParams(v168, v161, v162, v163);
        LOBYTE(v167) = v239;
      }

      else
      {
        LOBYTE(v167) = 0;
        v255 = 0;
        v253 = 0u;
        v254 = 0u;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v247 = 0u;
        v248 = 0u;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v241 = 0u;
        v242 = 0u;
        v239 = 0u;
        v240 = 0u;
      }
    }

    else if (v165 == 1)
    {
      v169 = *(v164 + 14);
      if (v169)
      {
        objc_msgSend_tuningParams(v169, v161, v162, v163);
        LOBYTE(v167) = v228;
      }

      else
      {
        LOBYTE(v167) = 0;
        v238 = 0;
        v236 = 0u;
        v237 = 0u;
        v234 = 0u;
        v235 = 0u;
        v232 = 0u;
        v233 = 0u;
        v230 = 0u;
        v231 = 0u;
        v228 = 0u;
        v229 = 0u;
      }
    }

    else
    {
      LOBYTE(v167) = 0;
    }
  }

  else
  {
    v167 = (isa >> 1) & 1;
    if (v165 != 2)
    {
      LOBYTE(v167) = 0;
    }

    if (v165 == 1)
    {
      LOBYTE(v167) = isa | v167;
    }
  }

  objc_msgSend_setDoGreenGhostMitigation_(self->_denoiseFusePipeline, v161, *v5 & v167 & 1, v163);
  if (dword_2A18C2398)
  {
    v227 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v170 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v171 = v227;
    if (!os_log_type_enabled(v170, type))
    {
      v171 &= ~1u;
    }

    if (v171)
    {
      v178 = v13;
      v179 = v10;
      if (objc_msgSend_doGreenGhostMitigation(self->_denoiseFusePipeline, v172, v173, v174))
      {
        v180 = "enabled";
      }

      else
      {
        v180 = "disabled";
      }

      v181 = objc_msgSend_doGreenGhostMitigation(self->_denoiseFusePipeline, v175, v176, v177);
      v182 = *(v5 + 30);
      v217 = 136316163;
      v218 = "[NRFProcessorV2 addFrame:]";
      v219 = 2081;
      v220 = v180;
      v10 = v179;
      v13 = v178;
      v221 = 1026;
      *v222 = v181;
      *&v222[4] = 2114;
      *&v222[6] = v178;
      v223 = 1026;
      v224 = v182;
      v211 = 44;
      v210 = &v217;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  LOBYTE(self->_nrfPlist) = 0;

LABEL_58:
  denoiseFusePipeline = self->_denoiseFusePipeline;
  v184 = CMSampleBufferGetImageBuffer(frame);
  v186 = objc_msgSend_fillPaddedAreaInFrame_cfp_(denoiseFusePipeline, v185, v184, v27);
  if (v186)
  {
    value = v186;
    sub_2958B3B04(v186, v187);
    goto LABEL_102;
  }

  nrfFusionOutput = self->_nrfFusionOutput;
  v7 = v214;
  if (BYTE5(nrfFusionOutput->_gainMapOutputPixelBuffer) == 1)
  {
    if (BYTE4(nrfFusionOutput->_gainMapOutputMetadata) & 1) != 0 || (BYTE4(nrfFusionOutput->_inferenceInputPixelBuffer))
    {
      v189 = self->_denoiseFusePipeline;
      v190 = CMSampleBufferGetImageBuffer(frame);
      LODWORD(v191) = self->_nrfFusionOutput->_gainMapOutputMetadata;
      v193 = objc_msgSend_applyGlobalDistortionCorrectionInplaceWithPixelBuffer_amount_gdcPlist_cscParams_(v189, v192, v190, *&self->_saveInputFramesToDisk, v27 + 223952, v191);
      if (!v193)
      {
        objc_msgSend_waitForSchedule(*&self->_fusionOptions, v194, v195, v196);
        v7 = v214;
        goto LABEL_64;
      }

      value = v193;
      sub_2958B3C00(v193, v194);
    }

    else
    {
      sub_2958B3B64(&v225);
      value = v225.value;
    }

LABEL_102:
    v7 = v214;
    goto LABEL_75;
  }

LABEL_64:
  appended = objc_msgSend__appendFrames_cfp_(self, v187, frame, v27, v210, v211);
  value = appended;
  if (!self->_aggregateErr && appended)
  {
    self->_aggregateErr = 2;
    goto LABEL_86;
  }

  if (appended)
  {
LABEL_86:
    sub_2958B3D20(appended);
    goto LABEL_75;
  }

  ++self->_nInputBrackets;
  v199 = objc_msgSend__perFrameProcessing_input_cfp_(self, v198, self->_regWarpInput, frame, v27);
  value = v199;
  if (!self->_aggregateErr && v199)
  {
    self->_aggregateErr = 2;
    goto LABEL_88;
  }

  if (v199)
  {
LABEL_88:
    sub_2958B3CC0(v199);
    goto LABEL_75;
  }

  if (*(v5 + 30) != 2 || *(v5 + 14) != *(v5 + 10))
  {
LABEL_74:
    value = 0;
    goto LABEL_75;
  }

  v202 = objc_msgSend__process_(self, v200, 0, v201);
  value = v202;
  if (v202)
  {
    sub_2958B3C60(v202);
  }

LABEL_75:
  CMSampleBufferGetPresentationTimeStamp(&v225, frame);
  objc_msgSend_EndKTraceEventForAddFrame_timestamp_(self, v203, v27, &v225);
  free(v27);
  if (dword_2A18C2398)
  {
    v204 = v10;
    v227 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v205 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v206 = v227;
    if (os_log_type_enabled(v205, type))
    {
      v207 = v206;
    }

    else
    {
      v207 = v206 & 0xFFFFFFFE;
    }

    if (v207)
    {
      v208 = "failed";
      v217 = 136315907;
      v218 = "[NRFProcessorV2 addFrame:]";
      v219 = 2113;
      v220 = @"NRF";
      if (!value)
      {
        v208 = "succeeded";
      }

      v221 = 2081;
      *v222 = v208;
      *&v222[8] = 1026;
      *&v222[10] = value == 0;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v10 = v204;
  }

  return value;
}

- (int)updateEV0ReferenceFrameIfNecessary
{
  p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
  if (self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing >= 1)
  {
    result = 0;
    *p_cntBracketSampleBuffers = 0;
    return result;
  }

  p_preBracketFrameIndex = &self->_preBracketFrameIndex;
  if (self->_ev0SampleBuffer)
  {
    return 0;
  }

  v5 = *p_cntBracketSampleBuffers;
  if ((v5 & 0x80000000) != 0)
  {
    return 0;
  }

  v6 = *p_preBracketFrameIndex;
  if (*p_preBracketFrameIndex == v5)
  {
    sub_2958B43AC(&v12);
    return v12;
  }

  v7 = v6 != -1 && v6 < v5;
  v8 = v7;
  v9 = v5 - v8;
  if (v5 - v8 >= self->_referenceFrameCandidatesCount)
  {
    return 0;
  }

  if (*(&self->_bracketProperties[0].meta.isEVMFrame + 224224 * v9))
  {
    sub_2958B4310(&v11);
    return v11;
  }

  else
  {
    v10 = self->_bracketSampleBuffers[v9];
    *(p_preBracketFrameIndex + 1) = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    result = 0;
    *p_cntBracketSampleBuffers = v9;
  }

  return result;
}

- (int)_appendFrames:(opaqueCMSampleBuffer *)frames cfp:(frameProperties_t *)cfp
{
  p_referenceFrameCandidatesCount = &self->_referenceFrameCandidatesCount;
  p_preBracketFrameIndex = &self->_preBracketFrameIndex;
  if (LODWORD(self->_output) == 2 && !*p_referenceFrameCandidatesCount)
  {
    objc_msgSend_waitForIdle(*&self->_fusionOptions, a2, frames, cfp);
  }

  if (cfp->meta.isPreBracketedFrame)
  {
    *p_preBracketFrameIndex = *p_referenceFrameCandidatesCount;
    memcpy(&self->_prebracketedProperties, cfp, 0x36BE0uLL);
    return 0;
  }

  else
  {
    v10 = *p_referenceFrameCandidatesCount;
    if (cfp->meta.isEVMFrame)
    {
      p_preBracketFrameIndex[4] = v10;
    }

    if (p_referenceFrameCandidatesCount[4] == 3)
    {
      v11 = 5;
    }

    else
    {
      v11 = 4;
    }

    if (v10 >= v11)
    {
      return -1;
    }

    else
    {
      if (frames)
      {
        v12 = CFRetain(frames);
        v10 = *p_referenceFrameCandidatesCount;
      }

      else
      {
        v12 = 0;
      }

      self->_bracketSampleBuffers[v10] = v12;
      memcpy(self->_bracketProperties + 224224 * v10, cfp, 0x36BE0uLL);
      v9 = 0;
      ++*p_referenceFrameCandidatesCount;
      v16 = p_referenceFrameCandidatesCount[4];
      if (v16)
      {
        if (v16 != 7)
        {
          updated = objc_msgSend_updateEV0ReferenceFrameIfNecessary(self, v13, v14, v15);
          v9 = updated;
          if (updated)
          {
            sub_2958B4448(updated);
          }
        }
      }
    }
  }

  return v9;
}

- (int)_perFrameProcessing:(id)processing input:(opaqueCMSampleBuffer *)input cfp:(frameProperties_t *)cfp
{
  processingCopy = processing;
  ImageBuffer = CMSampleBufferGetImageBuffer(input);
  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  v195 = CMGetAttachment(input, *MEMORY[0x29EDBFF98], 0);
  if (!v195)
  {
    sub_2958B4F74(v196);
    goto LABEL_188;
  }

  v14 = &self->_anon_17fa15[3];
  if (LODWORD(self->_output) == 3)
  {
    if (!*&self->_outputGainMapHeadroom)
    {
      sub_2958B4ED8(v196);
      goto LABEL_188;
    }
  }

  else if (!self->_deepFusionOutput)
  {
    sub_2958B44A8(v196);
    goto LABEL_188;
  }

  if (cfp->meta.isPreBracketedFrame)
  {
    LODWORD(v15) = 0;
    goto LABEL_8;
  }

  isMetadataConsistentWithFirstFrame = objc_msgSend__isMetadataConsistentWithFirstFrame(self, v11, v12, v13);
  LODWORD(v15) = isMetadataConsistentWithFirstFrame - 1;
  aggregateErr = self->_aggregateErr;
  if (!aggregateErr && (isMetadataConsistentWithFirstFrame & 1) == 0)
  {
    self->_aggregateErr = 20;
    goto LABEL_98;
  }

  if (aggregateErr)
  {
LABEL_98:
    sub_2958B4544();
    goto LABEL_8;
  }

  shouldDownsampleRWPPInputWithPixelFormat_processingType = objc_msgSend_shouldDownsampleRWPPInputWithPixelFormat_processingType_(self, v17, PixelFormatType, LODWORD(self->_output));
  v24 = shouldDownsampleRWPPInputWithPixelFormat_processingType;
  v25 = PixelFormatType == 1751527984 || *&self->_registrationPipelineRWPPConfig.numThreads == 0;
  p_curRegWarpTempIndex = &self->_curRegWarpTempIndex;
  if (v25)
  {
    if (shouldDownsampleRWPPInputWithPixelFormat_processingType)
    {
      referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
      if (referenceFrameCandidatesCount > self->_cntBracketSampleBuffers)
      {
        v27 = referenceFrameCandidatesCount - 1;
        if (self->_curRegWarpTempIndex != referenceFrameCandidatesCount - 1)
        {
          v190 = shouldDownsampleRWPPInputWithPixelFormat_processingType;
          v184 = PixelFormatType;
          v28 = processingCopy;
          regWarpM2M = self->_regWarpM2M;
          v30 = ImageBuffer;
          regWarpHelper = self->_regWarpHelper;
          v32 = objc_msgSend_commandBuffer(*&self->_fusionOptions, v21, v22, v23);
          v181 = v30;
          v15 = objc_msgSend_convertInput10BitPixBuf_downsampledOutput8BitPixBuf_mtlCommandBuffer_(regWarpM2M, v33, v30, regWarpHelper, v32);

          if (!self->_aggregateErr && v15)
          {
            self->_aggregateErr = 1;
            processingCopy = v28;
          }

          else
          {
            processingCopy = v28;
            if (!v15)
            {
              objc_msgSend_waitForSchedule(*&self->_fusionOptions, v34, v35, v36);
              *p_curRegWarpTempIndex = v27;
              ImageBuffer = v181;
              LODWORD(PixelFormatType) = v184;
              v24 = v190;
              goto LABEL_24;
            }
          }

          sub_2958B45A4(v15);
          goto LABEL_8;
        }
      }
    }
  }

LABEL_24:
  output = self->_output;
  if (output > 3)
  {
    if (output > 8)
    {
      if (output == 9)
      {
        objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v21, *MEMORY[0x29EDB8CC8], @"*** LearnedHRNR is unsupported in this version of NRF.", 0);
      }

      else
      {
        if (output != 10)
        {
          goto LABEL_125;
        }

        objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v21, *MEMORY[0x29EDB8CC8], @"*** LearnedFusion is unsupported in this version of NRF.", 0);
      }
    }

    else
    {
      if ((output - 6) < 3)
      {
        goto LABEL_44;
      }

      if ((output - 4) >= 2)
      {
        goto LABEL_125;
      }

      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v21, *MEMORY[0x29EDB8CC8], @"*** RawNightMode is unsupported in this version of NRF.", 0);
    }
    v174 = ;
    objc_exception_throw(v174);
  }

  if (output <= 1)
  {
    if (output)
    {
      if (output != 1)
      {
        goto LABEL_125;
      }

      v191 = v24;
      v185 = PixelFormatType;
      v188 = processingCopy;
      v38 = objc_msgSend_inferenceInputPixelBuffer(self->_deepFusionOutput, v21, v22, v23);
      y_low = LODWORD(cfp[1].meta.ROI.origin.y);
      referenceFrameIndex = self->_referenceFrameIndex;
      v41 = ImageBuffer;
      cntBracketSampleBuffers = self->_cntBracketSampleBuffers;
      v43 = self->_referenceFrameCandidatesCount;
      v182 = v41;
      LODWORD(v15) = objc_msgSend_addFrame_cfp_processingType_batchCount_(self->_denoiseFusePipeline, v44, v41, cfp, LODWORD(self->_output), self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing);
      v46 = self->_aggregateErr;
      if (!v46 && v15)
      {
        self->_aggregateErr = 3;
      }

      else if (!v46)
      {
        if (!v38 || (referenceFrameIndex & 1) != 0 || !y_low || v43 - 1 != cntBracketSampleBuffers || (v47 = objc_msgSend_inferenceInputPixelBuffer(self->_deepFusionOutput, v21, v45, v23), v48 = self->_cntBracketSampleBuffers, v52 = objc_msgSend_pixelBuffer(self->_deepFusionOutput, v49, v50, v51), WidthOfPlane = CVPixelBufferGetWidthOfPlane(v52, 0), v57 = objc_msgSend_pixelBuffer(self->_deepFusionOutput, v54, v55, v56), HeightOfPlane = CVPixelBufferGetHeightOfPlane(v57, 0), (v60 = objc_msgSend__processInferenceImage_sourceFrameType_sourceFrameIndex_ltcFrameIndex_gtcFrameIndex_originalWidth_originalHeight_(self, v59, v47, 0, v48, v48, v48, WidthOfPlane, HeightOfPlane)) == 0))
        {
          processingCopy = v188;
          ImageBuffer = v182;
          LODWORD(PixelFormatType) = v185;
          v24 = v191;
          if (*(v188[5] + 56) == 1 && cfp->meta.isEVMFrame)
          {
            denoiseFusePipeline = self->_denoiseFusePipeline;
            v62 = CMSampleBufferGetImageBuffer(input);
            LODWORD(v15) = objc_msgSend_baseLayer_(denoiseFusePipeline, v63, v62, v64);
            v65 = self->_aggregateErr;
            if (!v65 && v15)
            {
              self->_aggregateErr = 19;
LABEL_183:
              sub_2958B48E0();
              goto LABEL_8;
            }

            v24 = v191;
            if (v65)
            {
              goto LABEL_183;
            }
          }

          goto LABEL_125;
        }

        LODWORD(v15) = v60;
        sub_2958B4880();
LABEL_113:
        processingCopy = v188;
        goto LABEL_8;
      }

      sub_2958B4940();
      goto LABEL_113;
    }

LABEL_44:
    v192 = v24;
    v186 = PixelFormatType;
    v66 = objc_msgSend_objectForKeyedSubscript_(v195, v21, *MEMORY[0x29EDC0630], v23);
    if (objc_msgSend_defringingEnabled(processingCopy[12], v67, v68, v69))
    {
      v72 = objc_msgSend_isEqualToString_(v66, v70, *MEMORY[0x29EDBFF48], v71) ^ 1;
    }

    else
    {
      LOBYTE(v72) = 0;
    }

    v75 = *(self->_regWarpInput + 5);
    if (v75)
    {
      v76 = *(v75 + 120);
      v77 = *(v75 + 121);
      if (v77 == 1 && v76 != 0)
      {
        sub_2958B49A0(v66);
        goto LABEL_8;
      }
    }

    v178 = v72;
    v189 = processingCopy;
    WeakRetained = objc_loadWeakRetained(&self->_progressiveBracketingParameters);
    v83 = objc_msgSend_inferenceInputPixelBuffer(self->_deepFusionOutput, v80, v81, v82);
    v180 = WeakRetained;
    v87 = objc_opt_respondsToSelector();
    v183 = ImageBuffer;
    v179 = v66;
    if (v83 || objc_msgSend_providesInferencesWithoutInferenceInputPixelBuffer(self->_deepFusionOutput, v84, v85, v86))
    {
      if (v87)
      {
        v91 = v200;
        v200[0] = MEMORY[0x29EDCA5F8];
        v200[1] = 3221225472;
        v200[2] = sub_29584DB3C;
        v200[3] = &unk_29EDDC3A8;
        v177 = v201;
        v201[0] = v180;
        v201[1] = self;
      }

      else
      {
        v91 = 0;
      }

      v92 = MEMORY[0x29C253310](v91);
      if (v83)
      {
        v93 = objc_msgSend_addFrame_cfp_processingType_batchCount_(self->_denoiseFusePipeline, v88, ImageBuffer, cfp, LODWORD(self->_output), self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing);
        if (v93)
        {
          LODWORD(v15) = v93;
          if ((sub_2958B4A1C(v93, v92, v87 & 1) & 1) == 0)
          {
            goto LABEL_193;
          }
        }

        else
        {
          v97 = objc_msgSend_inferenceInputPixelBuffer(self->_deepFusionOutput, v94, v95, v96);
          v101 = objc_msgSend_pixelBuffer(self->_deepFusionOutput, v98, v99, v100);
          v102 = CVPixelBufferGetWidthOfPlane(v101, 0);
          v106 = objc_msgSend_pixelBuffer(self->_deepFusionOutput, v103, v104, v105);
          v107 = CVPixelBufferGetHeightOfPlane(v106, 0);
          v109 = objc_msgSend__processInferenceImage_sourceFrameType_sourceFrameIndex_ltcFrameIndex_gtcFrameIndex_originalWidth_originalHeight_(self, v108, v97, 0, 0, 0, 0, v102, v107);
          if (!v109)
          {
            v113 = objc_msgSend_freeInputBandPyramids(self->_denoiseFusePipeline, v110, v111, v112);
            if (v113)
            {
              LODWORD(v15) = v113;
              if ((sub_2958B4B0C(v113, v92, v87 & 1) & 1) == 0)
              {
                goto LABEL_193;
              }

              goto LABEL_191;
            }

            goto LABEL_88;
          }

          LODWORD(v15) = v109;
          if ((sub_2958B4A94(v109, v92, v87 & 1) & 1) == 0)
          {
            goto LABEL_193;
          }
        }

LABEL_191:
        v138 = 0;
        processingCopy = v189;
        ImageBuffer = v183;
LABEL_94:

        v24 = v192;
        if ((v138 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_125;
      }
    }

    else
    {
      v92 = 0;
      v87 = 0;
    }

LABEL_88:
    v130 = self->_denoiseFusePipeline;
    v15 = objc_msgSend_pixelBuffer(self->_deepFusionOutput, v88, v89, v90);
    v134 = objc_msgSend_linearOutputPixelBuffer(self->_deepFusionOutput, v131, v132, v133);
    v135 = CMSampleBufferGetImageBuffer(input);
    LODWORD(v15) = objc_msgSend_denoiseSingleImage_linearOutput_input_cfp_nrfPlist_style_inferenceProvider_defringeEnabled_colorCubeFixType_(v130, v136, v15, v134, v135, cfp, v189, self->_tuningParameters, v92, v178);
    v137 = self->_aggregateErr;
    if (!v137 && v15)
    {
      self->_aggregateErr = 3;
      LODWORD(PixelFormatType) = v186;
    }

    else
    {
      LODWORD(PixelFormatType) = v186;
      if (!v137)
      {

        ImageBuffer = v183;
        if ((v87 & 1) == 0)
        {

          processingCopy = v189;
          v24 = v192;
          goto LABEL_125;
        }

        v138 = 1;
        goto LABEL_93;
      }
    }

    ImageBuffer = v183;
    if (sub_2958B4B84())
    {
      v138 = 0;
LABEL_93:
      processingCopy = v189;
      goto LABEL_94;
    }

LABEL_193:
    processingCopy = v189;

    goto LABEL_8;
  }

  if (output != 2)
  {
    v73 = v24;
    LODWORD(v15) = objc_msgSend_addFrame_cfp_processingType_batchCount_(self->_denoiseFusePipeline, v21, ImageBuffer, cfp, 3, self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing);
    v74 = self->_aggregateErr;
    if (!v74 && v15)
    {
      self->_aggregateErr = 5;
    }

    else
    {
      v24 = v73;
      if (!v74)
      {
        goto LABEL_125;
      }
    }

    sub_2958B4604();
    goto LABEL_8;
  }

  v193 = v24;
  v187 = PixelFormatType;
  v114 = ImageBuffer;
  v115 = self->_referenceFrameCandidatesCount;
  v116 = self + 224224 * v115;
  v117 = v116[224388];
  LODWORD(v15) = objc_msgSend__computeMetricsForReferenceFrameSelection_(self, v21, (v115 - 1), v23);
  v119 = self->_aggregateErr;
  if (!v119 && v15)
  {
    self->_aggregateErr = 24;
    goto LABEL_110;
  }

  if (v119)
  {
LABEL_110:
    sub_2958B4820();
    goto LABEL_8;
  }

  LODWORD(v15) = objc_msgSend_addFrame_cfp_processingType_batchCount_(self->_denoiseFusePipeline, v118, v114, cfp, LODWORD(self->_output), self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing);
  v121 = self->_aggregateErr;
  if (!v121 && v15)
  {
    self->_aggregateErr = 3;
    goto LABEL_117;
  }

  if (v121)
  {
LABEL_117:
    sub_2958B47C0();
    goto LABEL_8;
  }

  if (v115 <= 3 && !self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing)
  {
    regWarpInput = self->_regWarpInput;
    v123 = *(regWarpInput + 10);
    if (v123)
    {
      v124 = *(v123 + 184);
      if (v124)
      {
        if ((v117 & 1) == 0)
        {
          v125 = (v116 + 192);
          v199 = 0.0;
          if (v115 == 1)
          {
            *v14 = 0;
            v124 = *(*(regWarpInput + 10) + 184);
          }

          v126 = objc_msgSend_blinkDetectionOnFrameIdx_imgMeta_plist_resultScore_frameIdx_(self->_denoiseFusePipeline, v21, (v115 - 1), v125, v124, &v199, (v115 - 1));
          v127 = v199;
          v128 = *v14;
          if (v199 > *v14)
          {
            v128 = v199;
          }

          *v14 = v128;
          if (v126)
          {
            LODWORD(v15) = v126;
            sub_2958B4664(v126, &v199);
            goto LABEL_8;
          }

          if (dword_2A18C2398)
          {
            v198 = 0;
            v197 = 0;
            v129 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();

            v127 = v199;
          }

          *(v125 + 224208) = v127;
        }
      }
    }
  }

  v139 = *(self->_regWarpInput + 10);
  if (!v139)
  {
    sub_2958B4724(v196);
LABEL_188:
    LODWORD(v15) = v196[0];
    goto LABEL_8;
  }

  ImageBuffer = v114;
  LODWORD(PixelFormatType) = v187;
  v24 = v193;
  if (self->_cntBracketSampleBuffers < 0 && *(v139 + 8) == 1)
  {
    LODWORD(v15) = objc_msgSend__perFrameProcessingComputeReferenceFrameIndexIfReady(self, v21, v120, v23);
    v140 = self->_aggregateErr;
    if (!v140 && v15)
    {
      v140 = 24;
      self->_aggregateErr = 24;
    }

    else
    {
      v24 = v193;
      if (!v140)
      {
        goto LABEL_125;
      }
    }

    sub_2958B46C4(v140, v21);
    goto LABEL_8;
  }

LABEL_125:
  if (*&self->_registrationPipelineRWPPConfig.numThreads)
  {
    v141 = PixelFormatType == 1751527984;
  }

  else
  {
    v141 = 1;
  }

  v142 = v141;
  if (((v142 | v24 ^ 1) & 1) == 0)
  {
    v143 = self->_referenceFrameCandidatesCount;
    if (v143 > self->_cntBracketSampleBuffers)
    {
      v144 = v143 - 1;
      if (*p_curRegWarpTempIndex != v143 - 1)
      {
        v145 = objc_msgSend__downsampleImageForRegistration_outputImage_(self, v21, ImageBuffer, self->_regWarpHelper);
        LODWORD(v15) = v145;
        if (!self->_aggregateErr && v145)
        {
          self->_aggregateErr = 1;
        }

        else if (!v145)
        {
          *p_curRegWarpTempIndex = v144;
          goto LABEL_138;
        }

        sub_2958B4BFC(v145);
        goto LABEL_8;
      }
    }
  }

LABEL_138:
  LODWORD(v15) = objc_msgSend__registerImages_(self, v21, 0, v23, v175, v176);
  v149 = self->_aggregateErr;
  if (!v149 && v15)
  {
    self->_aggregateErr = 1;
    goto LABEL_173;
  }

  if (v149)
  {
LABEL_173:
    sub_2958B4E78();
    goto LABEL_8;
  }

  if (LODWORD(self->_output) == 2)
  {
    LODWORD(v15) = objc_msgSend__lowLightMotionDetection(self, v146, v147, v148);
    v150 = self->_aggregateErr;
    if (!v150 && v15)
    {
      self->_aggregateErr = 21;
    }

    else if (!v150)
    {
      goto LABEL_145;
    }

    sub_2958B4E18();
    goto LABEL_8;
  }

LABEL_145:
  LODWORD(v15) = objc_msgSend__computeBlurryFrameWeight_(self, v146, (self->_referenceFrameCandidatesCount - 1), v148);
  v153 = self->_aggregateErr;
  if (!v153 && v15)
  {
    self->_aggregateErr = 21;
    goto LABEL_175;
  }

  if (v153)
  {
LABEL_175:
    sub_2958B4DB8();
    goto LABEL_8;
  }

  LODWORD(v15) = objc_msgSend__processSIFRandRefEV0IfPossible_(self, v151, 0, v152);
  v157 = self->_aggregateErr;
  if (!v157 && v15)
  {
    self->_aggregateErr = 4;
    goto LABEL_177;
  }

  if (v157)
  {
LABEL_177:
    sub_2958B4D58();
    goto LABEL_8;
  }

  if (LODWORD(self->_output) == 2 && (v158 = objc_msgSend__lowLightGreenGhostPerFrameProcessing(self, v154, v155, v156), (LODWORD(v15) = v158) != 0))
  {
    sub_2958B4C5C(v158);
  }

  else
  {
    v159 = objc_msgSend_statistics(self->_semanticStyleProperties, v154, v155, v156);
    if (objc_msgSend_stationary(v159, v160, v161, v162) && (v163 = *(self->_regWarpInput + 3)) != 0)
    {
      v164 = *(v163 + 140);
    }

    else
    {
      v164 = 0;
    }

    if (processingCopy)
    {
      v166 = processingCopy[3];
      if (v166)
      {
        if (!((v166[24] != 2) | v164 & 1))
        {
          v167 = self->_cntBracketSampleBuffers;
          if ((v167 & 0x80000000) == 0)
          {
            v168 = self->_referenceFrameCandidatesCount;
            if (v168 > v167 && LODWORD(self->_output) == 2)
            {
              v169 = 0;
              v170 = &self->_bracketProperties[1].meta.ltmCurves.ltmLut.bytes[245];
              bracketProperties = self->_bracketProperties;
              do
              {
                v172 = self->_cntBracketSampleBuffers;
                if (v169 != v172 && (*v170 & 1) == 0)
                {
                  canCopyBack_nrfPlist = objc_msgSend_lowLightHybridRegister_refFrameIdx_nonRefFrameProps_refFrameProps_canCopyBack_nrfPlist_(self->_denoiseFusePipeline, v165, v169, v172, bracketProperties, self->_bracketProperties + 224224 * v172, BYTE4(self->_nrfFusionOutput->_inferenceInputPixelBuffer), self->_regWarpInput);
                  if (canCopyBack_nrfPlist)
                  {
                    sub_2958B4CBC(canCopyBack_nrfPlist, v196);
                    goto LABEL_188;
                  }

                  if ((*(v170 - 340) & 1) == 0)
                  {
                    *(v170 - 340) = 1;
                  }

                  LODWORD(v15) = 0;
                  *v170 = 1;
                  v168 = self->_referenceFrameCandidatesCount;
                }

                ++v169;
                v170 += 224224;
                bracketProperties = (bracketProperties + 224224);
              }

              while (v169 < v168);
            }
          }
        }
      }
    }
  }

LABEL_8:

  return v15;
}

- (BOOL)_isMetadataConsistentWithFirstFrame
{
  referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
  if (referenceFrameCandidatesCount < 2)
  {
    return 1;
  }

  v3 = self->_bracketProperties + 224224 * referenceFrameCandidatesCount;
  v4 = v3 - 224224;
  if (LOBYTE(self->_bracketProperties[1].meta.exposureParams.ltm_soft_gain) == *(v3 - 368))
  {
    if (LOBYTE(self->_bracketProperties[1].meta.exposureParams.ltm_soft_gain))
    {
      v5 = vceq_s32(*&self->_bracketProperties[1].meta.exposureParams.exposure_time, *(v3 - 360));
      if ((v5.i32[0] & v5.i32[1] & 1) == 0)
      {
        sub_2958B5024(self, a2);
        return 0;
      }
    }
  }

  else
  {
    if (LOBYTE(self->_bracketProperties[1].meta.exposureParams.ltm_soft_gain))
    {
      bracketProperties = self->_bracketProperties;
    }

    else
    {
      bracketProperties = (v3 - 224224);
    }

    if (LOBYTE(self->_bracketProperties[1].meta.exposureParams.ltm_soft_gain))
    {
      v8 = (v3 - 224224);
    }

    else
    {
      v8 = self->_bracketProperties;
    }

    v9 = vceq_s32(*&bracketProperties[1].meta.exposureParams.exposure_time, vmovn_s64(vcvtq_u64_f64(v8->meta.ROI.size)));
    if ((vpmin_u32(v9, v9).u32[0] & 0x80000000) == 0)
    {
      sub_2958B4FC4(self, a2);
      return 0;
    }
  }

  if (self->_bracketProperties[0].meta.sensorID != *v4)
  {
    sub_2958B50BC(self, a2);
    return 0;
  }

  return 1;
}

- (void)dealloc
{
  objc_msgSend_resetState(self, a2, v2, v3);
  objc_msgSend_purgeResources(self, v5, v6, v7);
  v11 = objc_msgSend_sharedInstance(NRFMonitor, v8, v9, v10);
  objc_msgSend_removeInstance(v11, v12, v13, v14);

  v15.receiver = self;
  v15.super_class = NRFProcessorV2;
  [(NRFProcessorV2 *)&v15 dealloc];
}

- (NRFProcessorV2)initWithCommandQueue:(id)queue
{
  queueCopy = queue;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v30.receiver = self;
  v30.super_class = NRFProcessorV2;
  v9 = [(NRFProcessorV2 *)&v30 init];
  if (v9)
  {
    v31[0] = 0;
    if (!qword_2A18C2238)
    {
      v31[1] = MEMORY[0x29EDCA5F8];
      v31[2] = 3221225472;
      v31[3] = sub_295856998;
      v31[4] = &unk_29EDDBF20;
      v31[5] = v31;
      v32 = xmmword_29EDDC3F0;
      v33 = 0;
      qword_2A18C2238 = _sl_dlopen();
    }

    if (!qword_2A18C2238)
    {
      sub_2958B5154(v31, v6, v7, v8);
    }

    p_regWarpInput = &v9->_regWarpInput;
    if (v31[0])
    {
      free(v31[0]);
      if (!queueCopy)
      {
        goto LABEL_8;
      }
    }

    else if (!queueCopy)
    {
LABEL_8:
      objc_msgSend_resetState(v9, v6, v7, v8);
      LOBYTE(v9->_sidecar) = 0;
      v9->_regwarpHasBeenSetup = 0;
      sharedMetalBuffer = v9->_sharedMetalBuffer;
      v9->_sharedMetalBuffer = 0;

      v9->_usingExternalSharedMetalBuffer = 0;
      sharedRegWarpBuffer = v9->_sharedRegWarpBuffer;
      v9->_sharedRegWarpBuffer = 0;

      v9->_usingExternalSharedRegWarpBuffer = 0;
      v13 = objc_opt_new();
      v14 = *p_regWarpInput;
      *p_regWarpInput = v13;

      v15 = objc_alloc_init(MEMORY[0x29EDB8E00]);
      nrfConfig = v9->_nrfConfig;
      v9->_nrfConfig = v15;

      v9->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing = 0;
      BYTE2(v9->_referenceFrameIndex) = 0;
      *&v9->_referenceFrameProperties.meta.sensorID = 0;
      bzero(&v9->_referenceFrameProperties.meta.averageFocusScore, 0x36BE0uLL);
      objc_msgSend_setProgressiveBatchSize_(v9, v17, 4, v18);
      objc_msgSend_getDefaults_(MEMORY[0x29EDC0A80], v19, &v9->_registrationPipelineRWPPConfig.numVerticalBlocks, v20);
      v24 = objc_msgSend_sharedInstance(NRFMonitor, v21, v22, v23);
      objc_msgSend_addInstance(v24, v25, v26, v27);

      v28 = v9;
      goto LABEL_9;
    }

    objc_storeStrong(&v9->_cameraInfoByPortType, queue);
    goto LABEL_8;
  }

LABEL_9:

  return v9;
}

- (int)prewarm
{
  p_metalCommandQueue = &self->_metalCommandQueue;
  if (!self->_cameraInfoByPortType)
  {
    sub_2958B5234();
    return -1;
  }

  v6 = *&self->_fusionOptions;
  if (!v6)
  {
    v16 = objc_alloc(MEMORY[0x29EDC0A40]);
    v17 = MEMORY[0x29EDB9F48];
    v18 = objc_opt_class();
    v21 = objc_msgSend_bundleForClass_(v17, v19, v18, v20);
    inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v16, v22, v21, p_metalCommandQueue[1]);
    v24 = *&self->_fusionOptions;
    *&self->_fusionOptions = inited;

    v10 = *&self->_fusionOptions;
    if (v10)
    {
      goto LABEL_6;
    }

    sub_2958B51D4();
    return -1;
  }

  v7 = objc_msgSend_commandQueue(v6, a2, v2, v3);

  v10 = *&self->_fusionOptions;
  if (v7)
  {
LABEL_6:
    v13 = objc_msgSend_prewarmShaders_(DenoiseFusePipeline, v8, v10, v9);
    goto LABEL_7;
  }

  objc_msgSend_setCommandQueue_(*&self->_fusionOptions, v8, p_metalCommandQueue[1], v9);
  v13 = objc_msgSend_prewarmShaders_(DenoiseFusePipeline, v11, *&self->_fusionOptions, v12);
LABEL_7:
  v25 = v13;
  v26 = objc_msgSend_prewarmShaders_(TextureUtils, v14, *&self->_fusionOptions, v15);
  if (v26)
  {
    v25 = v26;
  }

  v29 = objc_msgSend_prewarmShaders_(GlobalDistortionCorrectionStage, v27, *&self->_fusionOptions, v28);
  if (v29)
  {
    v25 = v29;
  }

  v32 = objc_msgSend_prewarmShaders_(MotionDetection, v30, *&self->_fusionOptions, v31);
  if (v32)
  {
    v25 = v32;
  }

  v35 = objc_msgSend_prewarmShaders_(GrayGhostDetection, v33, *&self->_fusionOptions, v34);
  if (v35)
  {
    v25 = v35;
  }

  v38 = objc_msgSend_prewarmShaders_(RegPyrFusion, v36, *&self->_fusionOptions, v37);
  if (v38)
  {
    v25 = v38;
  }

  v41 = objc_msgSend_prewarmShaders_(RegDense, v39, *&self->_fusionOptions, v40);
  if (v41)
  {
    v25 = v41;
  }

  v44 = objc_msgSend_prewarmShaders_(BilateralGrid, v42, *&self->_fusionOptions, v43);
  if (v44)
  {
    v25 = v44;
  }

  v47 = objc_msgSend_prewarmShaders_(PyramidStage_NRF, v45, *&self->_fusionOptions, v46);
  if (v47)
  {
    v25 = v47;
  }

  v49 = objc_msgSend_prewarmShaders_tuningParameters_plistEntryName_(DenoiseRemixStage, v48, *&self->_fusionOptions, *p_metalCommandQueue, @"NRFParameters");
  if (v49)
  {
    v25 = v49;
  }

  v52 = objc_msgSend_prewarmShaders_(FusionRemixStage, v50, *&self->_fusionOptions, v51);
  if (v52)
  {
    v25 = v52;
  }

  v55 = objc_msgSend_prewarmShaders_(ToneMappingStage, v53, *&self->_fusionOptions, v54);
  if (v55)
  {
    v25 = v55;
  }

  v58 = objc_msgSend_prewarmShaders_(SubjectRelightingStage, v56, *&self->_fusionOptions, v57);
  if (v58)
  {
    v25 = v58;
  }

  v61 = objc_msgSend_prewarmShaders_(BlinkDetectionStage, v59, *&self->_fusionOptions, v60);
  if (v61)
  {
    v65 = v61;
  }

  else
  {
    v65 = v25;
  }

  v66 = objc_msgSend_device(*&self->_fusionOptions, v62, v63, v64);
  v69 = objc_msgSend_supportsFamily_(v66, v67, 1006, v68);

  if (v69)
  {
    v73 = objc_msgSend_prewarmShaders_(SyntheticLongStage, v70, *&self->_fusionOptions, v72);
    if (v73)
    {
      v76 = v73;
    }

    else
    {
      v76 = v65;
    }

    v77 = objc_msgSend_prewarmShaders_(SyntheticReferenceStage, v74, *&self->_fusionOptions, v75);
    if (v77)
    {
      v65 = v77;
    }

    else
    {
      v65 = v76;
    }
  }

  if (objc_msgSend__isGainMapSupported(self, v70, v71, v72))
  {
    v81 = objc_msgSend_prewarmShaders_(GainMapStage, v78, *&self->_fusionOptions, v80);
    if (v81)
    {
      v65 = v81;
    }
  }

  if (objc_msgSend__isSemanticStylesSupported(self, v78, v79, v80))
  {
    v84 = objc_msgSend_prewarmShaders_(SemanticStylesStage, v82, *&self->_fusionOptions, v83);
    if (v84)
    {
      v65 = v84;
    }
  }

  v85 = objc_msgSend_prewarmShaders_(OutliersRemovalStage, v82, *&self->_fusionOptions, v83);
  if (v85)
  {
    v88 = v85;
  }

  else
  {
    v88 = v65;
  }

  v89 = objc_msgSend_prewarmShaders_(RegWarpHelper, v86, *&self->_fusionOptions, v87);
  if (v89)
  {
    v88 = v89;
  }

  v91 = objc_msgSend_prewarmShaders_tuningParameters_(DefringeStage, v90, *&self->_fusionOptions, *p_metalCommandQueue);
  if (v91)
  {
    v88 = v91;
  }

  v94 = objc_msgSend_prewarmShaders_(GreenGhostBrightLightStage, v92, *&self->_fusionOptions, v93);
  if (v94)
  {
    v88 = v94;
  }

  v97 = objc_msgSend_prewarmShaders_(GreenGhostLowLightStage, v95, *&self->_fusionOptions, v96);
  if (v97)
  {
    v101 = v97;
  }

  else
  {
    v101 = v88;
  }

  v102 = objc_msgSend_commandQueue(*&self->_fusionOptions, v98, v99, v100);
  v105 = objc_msgSend_prewarmShadersWithCommandQueue_(LearnedNRMetalStage, v103, v102, v104);

  if (v105)
  {
    return v105;
  }

  else
  {
    return v101;
  }
}

- (int)setupWithOptions:(id)options
{
  p_cameraInfoByPortType = &self->_cameraInfoByPortType;
  p_regWarpInput = &self->_regWarpInput;
  optionsCopy = options;
  v255 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v7, *MEMORY[0x29EDC0838], v8);
  v9 = MEMORY[0x29EDB9F48];
  v10 = objc_opt_class();
  v13 = objc_msgSend_bundleForClass_(v9, v11, v10, v12);
  v14 = objc_alloc(MEMORY[0x29EDC0A40]);
  v267 = p_cameraInfoByPortType;
  v252 = v13;
  inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v14, v15, v13, *p_cameraInfoByPortType);
  v17 = p_regWarpInput[11];
  p_regWarpInput[11] = inited;

  if (!p_regWarpInput[11])
  {
    sub_2958B5924(v349);
LABEL_129:
    v251 = 0;
    goto LABEL_141;
  }

  v18 = objc_alloc_init(MEMORY[0x29EDC0A18]);
  v19 = p_regWarpInput[3];
  p_regWarpInput[3] = v18;

  v20 = [RegWarpHelper alloc];
  v23 = objc_msgSend_initWithMetal_(v20, v21, p_regWarpInput[11], v22);
  v24 = p_regWarpInput[2];
  p_regWarpInput[2] = v23;

  v25 = [NRFConfig alloc];
  v28 = objc_msgSend_initWithDefaults_(v25, v26, optionsCopy, v27);
  v29 = p_regWarpInput[18];
  p_regWarpInput[18] = v28;

  if (!p_regWarpInput[18])
  {
    sub_2958B5888(v349);
    goto LABEL_129;
  }

  v347 = 0u;
  v348 = 0u;
  v345 = 0u;
  v346 = 0u;
  v30 = v255;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v345, v344, 16);
  if (v32)
  {
    v36 = v32;
    v37 = *v346;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v346 != v37)
        {
          objc_enumerationMutation(v30);
        }

        if (objc_msgSend_intValue(*(*(&v345 + 1) + 8 * i), v33, v34, v35))
        {
          *(p_regWarpInput[18] + 61) = 0;
        }
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v345, v344, 16);
    }

    while (v36);
  }

  v39 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v40 = v267[2];
  v267[2] = v39;

  v41 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v42 = v267[3];
  v267[3] = v41;

  v43 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v44 = v267[4];
  v267[4] = v43;

  v47 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v45, *MEMORY[0x29EDC0298], v46);
  Options = objc_msgSend_getOptions_(self, v48, v47, v49);

  if (Options)
  {
    sub_2958B5294(Options);
    v251 = 0;
    goto LABEL_135;
  }

  v53 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v51, *MEMORY[0x29EDC0288], v52);
  v251 = v53;
  if (v53)
  {
    v54 = v53;
    v55 = [LSCGainsPlist alloc];
    v57 = objc_msgSend_initWithDictionary_metal_(v55, v56, v54, p_regWarpInput[11], v251);
    v58 = p_regWarpInput[13];
    p_regWarpInput[13] = v57;

    if (!p_regWarpInput[13])
    {
      sub_2958B5390();
      goto LABEL_134;
    }

    v59 = [GlobalDistortionCorrectionByPortType alloc];
    v62 = objc_msgSend_initWithDictionary_(v59, v60, v54, v61);
    v63 = p_regWarpInput[14];
    p_regWarpInput[14] = v62;

    if (!p_regWarpInput[14])
    {
      sub_2958B52F4(v349);
      goto LABEL_141;
    }
  }

  v253 = v30;
  v254 = optionsCopy;
  *(p_regWarpInput[18] + 72) = 0;
  v340 = 0u;
  v341 = 0u;
  v342 = 0u;
  v343 = 0u;
  v64 = v267[4];
  v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v340, v339, 16);
  if (v66)
  {
    v69 = v66;
    v70 = *v341;
    do
    {
      for (j = 0; j != v69; ++j)
      {
        if (*v341 != v70)
        {
          objc_enumerationMutation(v64);
        }

        v72 = objc_msgSend_objectForKeyedSubscript_(v267[4], v67, *(*(&v340 + 1) + 8 * j), v68, v251);
        *(p_regWarpInput[18] + 72) |= objc_msgSend_defringingEnabled(v72, v73, v74, v75);
      }

      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v67, &v340, v339, 16);
    }

    while (v69);
  }

  *(p_regWarpInput[18] + 75) = 0;
  *(p_regWarpInput[18] + 77) = 0;
  *(p_regWarpInput[18] + 78) = 0;
  *(p_regWarpInput[18] + 79) = 0;
  v268 = p_regWarpInput;
  *(p_regWarpInput[18] + 101) = 0;
  selfCopy = self;
  objc_msgSend_applyOverrides(self, v76, v77, v78);
  v262 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v261 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v335 = 0u;
  v336 = 0u;
  v337 = 0u;
  v338 = 0u;
  obj = v267[2];
  v263 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v79, &v335, v334, 16);
  if (v263)
  {
    v259 = *v336;
    do
    {
      v82 = 0;
      do
      {
        if (*v336 != v259)
        {
          objc_enumerationMutation(obj);
        }

        v265 = v82;
        v83 = objc_msgSend_objectForKeyedSubscript_(v267[2], v80, *(*(&v335 + 1) + 8 * v82), v81, v251);
        v84 = objc_alloc_init(MEMORY[0x29EDB8E00]);
        v330 = 0u;
        v331 = 0u;
        v332 = 0u;
        v333 = 0u;
        v87 = objc_msgSend_objectForKeyedSubscript_(v83, v85, @"DenoiseAndSharpening", v86);
        v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v88, &v330, v329, 16);
        if (v89)
        {
          v92 = v89;
          v93 = *v331;
          do
          {
            for (k = 0; k != v92; ++k)
            {
              if (*v331 != v93)
              {
                objc_enumerationMutation(v87);
              }

              v95 = *(*(&v330 + 1) + 8 * k);
              v96 = objc_msgSend_objectForKeyedSubscript_(v83, v90, @"DenoiseAndSharpening", v91);
              v99 = objc_msgSend_objectForKeyedSubscript_(v96, v97, v95, v98);
              objc_msgSend_setObject_forKeyedSubscript_(v84, v100, v99, v95);
            }

            v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v90, &v330, v329, 16);
          }

          while (v92);
        }

        objc_msgSend_addObject_(v262, v101, v84, v102);
        v103 = objc_alloc_init(MEMORY[0x29EDB8E00]);

        v328 = 0u;
        v327 = 0u;
        v326 = 0u;
        v325 = 0u;
        v106 = objc_msgSend_objectForKeyedSubscript_(v83, v104, @"ToneMapping", v105);
        v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v107, &v325, v324, 16);
        if (v108)
        {
          v111 = v108;
          v112 = *v326;
          do
          {
            for (m = 0; m != v111; ++m)
            {
              if (*v326 != v112)
              {
                objc_enumerationMutation(v106);
              }

              v114 = *(*(&v325 + 1) + 8 * m);
              v115 = objc_msgSend_objectForKeyedSubscript_(v83, v109, @"ToneMapping", v110);
              v118 = objc_msgSend_objectForKeyedSubscript_(v115, v116, v114, v117);

              objc_msgSend_setObject_forKeyedSubscript_(v103, v119, v118, v114);
              if (v118[79] == 1)
              {
                *(v268[18] + 100) = 1;
              }
            }

            v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v109, &v325, v324, 16);
          }

          while (v111);
        }

        objc_msgSend_addObject_(v261, v120, v103, v121);
        v323 = 0u;
        v322 = 0u;
        v321 = 0u;
        v320 = 0u;
        v124 = objc_msgSend_objectForKeyedSubscript_(v83, v122, @"Fusion", v123);
        v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, &v320, v319, 16);
        if (v126)
        {
          v129 = v126;
          v130 = *v321;
          do
          {
            for (n = 0; n != v129; ++n)
            {
              if (*v321 != v130)
              {
                objc_enumerationMutation(v124);
              }

              v132 = *(*(&v320 + 1) + 8 * n);
              v133 = objc_msgSend_objectForKeyedSubscript_(v83, v127, @"Fusion", v128);
              v136 = objc_msgSend_objectForKeyedSubscript_(v133, v134, v132, v135);

              if (v136)
              {
                v137 = objc_msgSend_objectForKeyedSubscript_(v83, v127, @"Fusion", v128);
                v140 = objc_msgSend_objectForKeyedSubscript_(v137, v138, v132, v139);

                if (v140[24] == 2)
                {
                  *(v268[18] + 75) = 1;
                  *(v268[18] + 77) = 1;
                }
              }
            }

            v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v127, &v320, v319, 16);
          }

          while (v129);
        }

        v143 = objc_msgSend_objectForKeyedSubscript_(v83, v141, @"GainMap", v142);

        if (v143)
        {
          *(v268[18] + 78) = 1;
        }

        v146 = objc_msgSend_objectForKeyedSubscript_(v83, v144, @"SemanticStyles", v145);

        if (v146)
        {
          *(v268[18] + 79) = 1;
        }

        v82 = v265 + 1;
      }

      while (v265 + 1 != v263);
      v263 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v80, &v335, v334, 16);
    }

    while (v263);
  }

  v147 = v268;
  optionsCopy = v254;
  v148 = selfCopy;
  v149 = v261;
  Options = v262;
  if (*(v268[18] + 96) == 4)
  {
    v318 = 0u;
    v317 = 0u;
    v316 = 0u;
    v315 = 0u;
    v150 = v267[2];
    v264 = objc_msgSend_countByEnumeratingWithState_objects_count_(v150, v151, &v315, v314, 16);
    if (v264)
    {
      v270 = 0;
      v269 = 0;
      v258 = *v316;
      v260 = v150;
      do
      {
        v154 = 0;
        do
        {
          if (*v316 != v258)
          {
            objc_enumerationMutation(v150);
          }

          v266 = v154;
          v155 = objc_msgSend_objectForKeyedSubscript_(v267[2], v152, *(*(&v315 + 1) + 8 * v154), v153, v251);
          v310 = 0u;
          v311 = 0u;
          v312 = 0u;
          v313 = 0u;
          v158 = objc_msgSend_objectForKeyedSubscript_(v155, v156, @"BrightLightGreenGhost", v157);
          v160 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v159, &v310, v309, 16);
          if (v160)
          {
            v163 = v160;
            v164 = *v311;
            do
            {
              for (ii = 0; ii != v163; ++ii)
              {
                if (*v311 != v164)
                {
                  objc_enumerationMutation(v158);
                }

                v166 = *(*(&v310 + 1) + 8 * ii);
                v167 = objc_msgSend_objectForKeyedSubscript_(v155, v161, @"BrightLightGreenGhost", v162);
                v170 = objc_msgSend_objectForKeyedSubscript_(v167, v168, v166, v169);

                if (v170)
                {
                  v171 = objc_msgSend_objectForKeyedSubscript_(v155, v161, @"BrightLightGreenGhost", v162);
                  v174 = objc_msgSend_objectForKeyedSubscript_(v171, v172, v166, v173);

                  if (v174)
                  {
                    objc_msgSend_tuningParams(v174, v175, v176, v177);
                    v178 = v298;
                  }

                  else
                  {
                    v178 = 0;
                    v308 = 0;
                    v306 = 0u;
                    v307 = 0u;
                    v304 = 0u;
                    v305 = 0u;
                    v302 = 0u;
                    v303 = 0u;
                    v300 = 0u;
                    v301 = 0u;
                    v298 = 0u;
                    v299 = 0u;
                  }

                  v269 = (v178 | v269) != 0;
                }
              }

              v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v161, &v310, v309, 16);
            }

            while (v163);
          }

          v296 = 0u;
          v297 = 0u;
          v294 = 0u;
          v295 = 0u;
          v181 = objc_msgSend_objectForKeyedSubscript_(v155, v179, @"LowLightGreenGhost", v180);
          v183 = objc_msgSend_countByEnumeratingWithState_objects_count_(v181, v182, &v294, v293, 16);
          if (v183)
          {
            v186 = v183;
            v187 = *v295;
            do
            {
              for (jj = 0; jj != v186; ++jj)
              {
                if (*v295 != v187)
                {
                  objc_enumerationMutation(v181);
                }

                v189 = *(*(&v294 + 1) + 8 * jj);
                v190 = objc_msgSend_objectForKeyedSubscript_(v155, v184, @"LowLightGreenGhost", v185);
                v193 = objc_msgSend_objectForKeyedSubscript_(v190, v191, v189, v192);

                if (v193)
                {
                  v194 = objc_msgSend_objectForKeyedSubscript_(v155, v184, @"LowLightGreenGhost", v185);
                  v197 = objc_msgSend_objectForKeyedSubscript_(v194, v195, v189, v196);

                  if (v197)
                  {
                    objc_msgSend_tuningParams(v197, v198, v199, v200);
                    v201 = v276;
                  }

                  else
                  {
                    v201 = 0;
                    v292 = 0;
                    v290 = 0u;
                    v291 = 0u;
                    v288 = 0u;
                    v289 = 0u;
                    v286 = 0u;
                    v287 = 0u;
                    v284 = 0u;
                    v285 = 0u;
                    v282 = 0u;
                    v283 = 0u;
                    v280 = 0u;
                    v281 = 0u;
                    v278 = 0u;
                    v279 = 0u;
                    v276 = 0u;
                    v277 = 0u;
                  }

                  v270 = (v201 | v270) != 0;
                }
              }

              v186 = objc_msgSend_countByEnumeratingWithState_objects_count_(v181, v184, &v294, v293, 16);
            }

            while (v186);
          }

          v154 = v266 + 1;
          v150 = v260;
        }

        while (v266 + 1 != v264);
        v264 = objc_msgSend_countByEnumeratingWithState_objects_count_(v260, v152, &v315, v314, 16);
      }

      while (v264);

      if (v269)
      {
        v147 = v268;
        *(v268[18] + 96) |= 1u;
        optionsCopy = v254;
        v148 = selfCopy;
      }

      else
      {
        optionsCopy = v254;
        v148 = selfCopy;
        v147 = v268;
      }

      v149 = v261;
      Options = v262;
      if (v270)
      {
        *(v147[18] + 96) |= 2u;
      }
    }

    else
    {
    }
  }

  v202 = [DenoiseFusePipeline alloc];
  v204 = objc_msgSend_initWithContext_nrfConfig_dasTuningOptions_toneMappingOptions_(v202, v203, v147[11], v147[18], Options, v149);
  v205 = *(v148 + 112);
  *(v148 + 112) = v204;

  if (!*(v148 + 112))
  {
    sub_2958B580C(v149, Options);
    LODWORD(Options) = -12780;
    goto LABEL_135;
  }

  *(v147[18] + 24) = *(*(*v147 + 8) + 16) != 0;
  v208 = v147[18];
  if (!*(v208 + 20))
  {
    *(v208 + 20) = *(*(*v147 + 8) + 12);
    v208 = v147[18];
  }

  v209 = *(v208 + 28);
  if (v209 == -3)
  {
    *(v208 + 28) = *(*(*v147 + 8) + 20);
    v208 = v147[18];
    v209 = *(v208 + 28);
    if (v209 == -3)
    {
      goto LABEL_106;
    }
  }

  v210 = *(v208 + 20);
  if (v210 == 1)
  {
    if ((v209 & 0x80000000) == 0)
    {
      sub_2958B53F0(v349);
      goto LABEL_141;
    }
  }

  else if (!v210)
  {
LABEL_106:
    sub_2958B5770(v349);
LABEL_141:
    LODWORD(Options) = v349[0];
    goto LABEL_135;
  }

  objc_msgSend_setFusionReferenceFrame_(*(v148 + 112), v206, 0, v207, v251);
  objc_msgSend_setSidecarWriter_(*(v148 + 112), v211, v148, v212);
  v213 = objc_alloc(MEMORY[0x29EDC0A20]);
  v217 = objc_msgSend_device(v147[11], v214, v215, v216);
  v219 = objc_msgSend_initWithDevice_allocatorType_(v213, v218, v217, *(v147[18] + 20));
  objc_msgSend_setAllocator_(v147[11], v220, v219, v221);

  v225 = objc_msgSend_allocator(v147[11], v222, v223, v224);

  if (!v225)
  {
    sub_2958B56D4(v349);
    goto LABEL_141;
  }

  *(v148 + 8) = 0;
  if (!objc_msgSend_count(v253, v226, v227, v228))
  {
    goto LABEL_134;
  }

  v230 = objc_msgSend_determineWorkingBufferRequirementsWithOptions_nrfConfig_memoryAllocationInfo_(v148, v229, optionsCopy, v147[18], v148 + 16);
  if (v230)
  {
    sub_2958B548C(v230, v349);
    goto LABEL_141;
  }

  if (!*(v148 + 16))
  {
    sub_2958B5638(v349);
    goto LABEL_141;
  }

  if (*(v147[18] + 32) != 1)
  {
LABEL_134:
    LODWORD(Options) = 0;
    goto LABEL_135;
  }

  Resources = objc_msgSend_allocateResources_(v148, v231, v148 + 16, v232);
  if (Resources)
  {
    sub_2958B552C(Resources, v349);
    goto LABEL_141;
  }

  v274 = 0u;
  v275 = 0u;
  v272 = 0u;
  v273 = 0u;
  v234 = v253;
  v236 = objc_msgSend_countByEnumeratingWithState_objects_count_(v234, v235, &v272, v271, 16);
  if (v236)
  {
    v240 = v236;
    v241 = *v273;
    while (2)
    {
      for (kk = 0; kk != v240; ++kk)
      {
        if (*v273 != v241)
        {
          objc_enumerationMutation(v234);
        }

        v243 = *(*(&v272 + 1) + 8 * kk);
        v244 = objc_msgSend_intValue(v243, v237, v238, v239);
        v247 = objc_msgSend_objectForKeyedSubscript_(v234, v245, v243, v246);
        v249 = objc_msgSend_prepareToProcess_prepareDescriptor_(selfCopy, v248, v244, v247);
        if (v249)
        {
          LODWORD(Options) = v249;
          sub_2958B55C8(v249, v247);
          goto LABEL_125;
        }
      }

      v240 = objc_msgSend_countByEnumeratingWithState_objects_count_(v234, v237, &v272, v271, 16);
      if (v240)
      {
        continue;
      }

      break;
    }

    LODWORD(Options) = 0;
LABEL_125:
    optionsCopy = v254;
  }

  else
  {
    LODWORD(Options) = 0;
  }

LABEL_135:
  return Options;
}

- (int)getOptions:(id)options
{
  optionsCopy = options;
  if (!optionsCopy)
  {
    goto LABEL_21;
  }

  p_tuningParamsPlist = &self->_tuningParamsPlist;
  if (!self->_tuningParamsPlist || !self->_defringingTuningByPortType)
  {
    goto LABEL_21;
  }

  v6 = objc_opt_new();
  v7 = *(self->_regWarpInput + 1);
  *(self->_regWarpInput + 1) = v6;

  p_regWarpInput = &self->_regWarpInput;
  v8 = *(self->_regWarpInput + 1);
  v11 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v9, @"Common", v10);
  v14 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"NRFParameters", v13);
  Plist = objc_msgSend_readPlist_(v8, v15, v14, v16);

  if (Plist)
  {
    sub_2958B59C0(Plist);
    goto LABEL_21;
  }

  v20 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v18, @"DefaultSensorIDs", v19);
  if (!v20)
  {
LABEL_21:
    v60 = -1;
    goto LABEL_22;
  }

  v22 = v20;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v69, v68, 16);
  if (v64)
  {
    v63 = *v70;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v70 != v63)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v69 + 1) + 8 * i);
        v27 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v23, v26, v24);
        v66 = v26;
        v30 = objc_msgSend_objectForKeyedSubscript_(v22, v28, v26, v29);
        v34 = objc_msgSend_allKeys(v27, v31, v32, v33);
        v67 = v34;
        if ((objc_msgSend_containsObject_(v34, v35, v30, v36) & 1) == 0)
        {
          v40 = objc_msgSend_firstObject(v34, v37, v38, v39);

          v30 = v40;
        }

        v41 = objc_msgSend_objectForKeyedSubscript_(v27, v37, v30, v39);
        v44 = objc_msgSend_objectForKeyedSubscript_(v41, v42, @"NRFParameters", v43);
        v49 = objc_msgSend_objectForKeyedSubscript_(v44, v45, @"NRFParameters", v46);
        if (v49)
        {
          sub_295843084(v30, v49, *p_tuningParamsPlist, p_tuningParamsPlist[1], *(p_regWarpInput[18] + 62));
        }

        v50 = objc_msgSend_objectForKeyedSubscript_(v41, v47, @"ChromaticDefringing", v48);
        if (v50)
        {
          v51 = [VideoDefringingTuningParameters alloc];
          v65 = v27;
          v54 = v22;
          v55 = optionsCopy;
          v56 = objc_msgSend_initWithTuningParameters_(v51, v52, v50, v53);
          objc_msgSend_selectParametersForTuningMode_(v56, v57, 0, v58);
          objc_msgSend_setObject_forKeyedSubscript_(p_tuningParamsPlist[2], v59, v56, v66);

          optionsCopy = v55;
          v22 = v54;
          v27 = v65;
        }
      }

      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v69, v68, 16);
    }

    while (v64);
  }

  v60 = 0;
LABEL_22:

  return v60;
}

- (int)determineWorkingBufferRequirementsToProcess:(unsigned int)process prepareDescriptor:(id)descriptor nrfConfig:(id)config denoiseFusePipelineSize:(unint64_t *)size rwppSize:(unint64_t *)rwppSize rwppInputWidth:(unint64_t *)width rwppInputHeight:(unint64_t *)height
{
  v13 = *&process;
  descriptorCopy = descriptor;
  configCopy = config;
  v20 = configCopy;
  if (!descriptorCopy)
  {
    sub_2958B5BB8(v60);
LABEL_31:
    v42 = 0;
LABEL_33:
    v55 = v60[0];
    goto LABEL_28;
  }

  if (!configCopy)
  {
    sub_2958B5B1C(v60);
    goto LABEL_31;
  }

  v21 = objc_msgSend_width(descriptorCopy, v17, v18, v19);
  v25 = objc_msgSend_height(descriptorCopy, v22, v23, v24);
  if (v13 == 2 && (*(v20 + 66) & 1) == 0)
  {
    sub_2958B5A20(v25);
    v42 = 0;
    v55 = -1;
    goto LABEL_28;
  }

  sizeCopy = size;
  rwppSizeCopy = rwppSize;
  v29 = (v21 + 15) & 0xFFFFFFF0;
  v30 = (v25 + 15) & 0xFFFFFFF0;
  v31 = objc_msgSend_pixelFormat(descriptorCopy, v26, v27, v28);
  shouldDownsampleRWPPInputWithPixelFormat_processingType = objc_msgSend_shouldDownsampleRWPPInputWithPixelFormat_processingType_(self, v32, v31, v13);
  if (shouldDownsampleRWPPInputWithPixelFormat_processingType)
  {
    v37 = 875704422;
  }

  else
  {
    v37 = objc_msgSend_pixelFormat(descriptorCopy, v33, v34, v35);
  }

  widthCopy = width;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (v13 && v13 != 7)
  {
    if (*(v20 + 36) == 2 || *(v20 + 66) == 1)
    {
      v41 = *&self->_registrationPipelineRWPPConfig.maxNumberOfPyramidLevels;
      v60[1] = *&self->_registrationPipelineRWPPConfig.internalBorderSize;
      v61 = v41;
      v60[0] = *&self->_registrationPipelineRWPPConfig.numVerticalBlocks;
      BYTE12(v61) = shouldDownsampleRWPPInputWithPixelFormat_processingType;
      v40 = (*MEMORY[0x29EDCA6D0] + objc_msgSend_computeExternalMemoryBlockSize_imageWidth_imageHeight_imageFormat_(MEMORY[0x29EDC0A80], v33, v60, v29, v30, v37) - 1) & -*MEMORY[0x29EDCA6D0];
      if (shouldDownsampleRWPPInputWithPixelFormat_processingType)
      {
        v38 = v29 >> 1;
      }

      else
      {
        v38 = 0;
      }

      if (shouldDownsampleRWPPInputWithPixelFormat_processingType)
      {
        v39 = v30 >> 1;
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
    }
  }

  v42 = objc_opt_new();
  objc_msgSend_setWidth_(v42, v43, v29, v44);
  objc_msgSend_setHeight_(v42, v45, v30, v46);
  v50 = objc_msgSend_pixelFormat(descriptorCopy, v47, v48, v49);
  objc_msgSend_setPixelFormat_(v42, v51, v50, v52);
  v54 = objc_msgSend_calculateBackingBufferSizeForDesc_nrfConfig_metal_(DenoiseFusePipeline, v53, v42, v20, *&self->_fusionOptions);
  if (!v54)
  {
    sub_2958B5A80(v60);
    goto LABEL_33;
  }

  if (sizeCopy)
  {
    *sizeCopy = (v54 + *MEMORY[0x29EDCA6D0] - 1) & -*MEMORY[0x29EDCA6D0];
  }

  if (rwppSizeCopy)
  {
    *rwppSizeCopy = v40;
  }

  if (widthCopy)
  {
    *widthCopy = v38;
  }

  v55 = 0;
  if (height)
  {
    *height = v39;
  }

LABEL_28:

  return v55;
}

- (int)determineWorkingBufferRequirementsWithOptions:(id)options memoryAllocationInfo:(id *)info
{
  optionsCopy = options;
  if (!optionsCopy)
  {
    sub_2958B5D14();
LABEL_9:
    v13 = -1;
    goto LABEL_5;
  }

  if (!info)
  {
    sub_2958B5CB4();
    goto LABEL_9;
  }

  v7 = [NRFConfig alloc];
  v10 = objc_msgSend_initWithDefaults_(v7, v8, optionsCopy, v9);
  if (!v10)
  {
    sub_2958B5C54();
    goto LABEL_9;
  }

  v12 = v10;
  v13 = objc_msgSend_determineWorkingBufferRequirementsWithOptions_nrfConfig_memoryAllocationInfo_(self, v11, optionsCopy, v10, info);

LABEL_5:
  return v13;
}

- (int)determineWorkingBufferRequirementsWithOptions:(id)options nrfConfig:(id)config memoryAllocationInfo:(id *)info
{
  optionsCopy = options;
  configCopy = config;
  v11 = configCopy;
  if (!optionsCopy)
  {
    sub_2958B61DC(&v54);
LABEL_46:
    v42 = v54;
    goto LABEL_41;
  }

  if (!configCopy)
  {
    sub_2958B6140(&v54);
    goto LABEL_46;
  }

  if (!info)
  {
    sub_2958B60A4(&v54);
    goto LABEL_46;
  }

  v12 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v9, *MEMORY[0x29EDC0838], v10);
  if (!v12)
  {
    sub_2958B6008(&v54);
    goto LABEL_46;
  }

  infoCopy = info;
  v45 = optionsCopy;
  v48 = v11;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v12;
  v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v56, v55, 16);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (v49)
  {
    v46 = *v57;
    do
    {
      v24 = 0;
      do
      {
        if (*v57 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v56 + 1) + 8 * v24);
        v53 = 0;
        v54 = 0;
        v51 = 0;
        v52 = 0;
        v26 = objc_msgSend_intValue(v25, v14, v15, v16);
        v29 = objc_msgSend_objectForKeyedSubscript_(obj, v27, v25, v28);
        v31 = objc_msgSend_determineWorkingBufferRequirementsToProcess_prepareDescriptor_nrfConfig_denoiseFusePipelineSize_rwppSize_rwppInputWidth_rwppInputHeight_(self, v30, v26, v29, v48, &v54, &v53, &v52, &v51);
        if (v31)
        {
          v42 = v31;
          sub_2958B5D74();
LABEL_39:

          goto LABEL_40;
        }

        if (!v54)
        {
          sub_2958B5FA8();
          v42 = -4;
          goto LABEL_39;
        }

        if (v23 <= v54)
        {
          v23 = v54;
        }

        if (v17 <= v53)
        {
          v17 = v53;
        }

        if (v18 <= v52)
        {
          v18 = v52;
        }

        if (v19 <= v51)
        {
          v19 = v51;
        }

        if (v22)
        {
          if (!v20)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v22 = objc_msgSend_pixelFormat(v29, v32, v33, v34);
          if (!v20)
          {
LABEL_29:
            v20 = objc_msgSend_width(v29, v32, v33, v34);
            if (v21)
            {
              goto LABEL_23;
            }

            goto LABEL_30;
          }
        }

        if (v21)
        {
          goto LABEL_23;
        }

LABEL_30:
        v21 = objc_msgSend_height(v29, v32, v33, v34);
LABEL_23:
        if (v22 != objc_msgSend_pixelFormat(v29, v32, v33, v34))
        {
          sub_2958B5DD4(v60);
LABEL_38:
          v42 = v60[0];
          goto LABEL_39;
        }

        if (v20 != objc_msgSend_width(v29, v35, v36, v37))
        {
          sub_2958B5E70(v60);
          goto LABEL_38;
        }

        if (v21 != objc_msgSend_height(v29, v38, v39, v40))
        {
          sub_2958B5F0C(v60);
          goto LABEL_38;
        }

        ++v24;
      }

      while (v49 != v24);
      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v56, v55, 16);
      v49 = v41;
    }

    while (v41);
  }

  infoCopy->var0 = v23;
  infoCopy->var1 = v17;
  infoCopy->var2 = v20;
  infoCopy->var3 = v21;
  infoCopy->var4 = v22;
  infoCopy->var5 = v18;
  infoCopy->var6 = v19;

  v42 = 0;
LABEL_40:
  optionsCopy = v45;
  v11 = v48;
LABEL_41:

  return v42;
}

- (id)newMTLBufferWithLength:(unint64_t)length
{
  v5 = &self->_anon_147fb8[72];
  if (BYTE1(self->_nrfFusionOutput->_metadata) == 1)
  {
    v6 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x29EDBA070], a2, length, v3, *MEMORY[0x29EDBB128]);
    v7 = *MEMORY[0x29EDBB140];
    v25[0] = v6;
    v25[1] = &unk_2A1CC40F0;
    v8 = *MEMORY[0x29EDBB170];
    v24[1] = v7;
    v24[2] = v8;
    v25[2] = MEMORY[0x29EDB8EB0];
    v25[3] = MEMORY[0x29EDB8EA8];
    v9 = *MEMORY[0x29EDBB1B0];
    v24[3] = *MEMORY[0x29EDBB1A0];
    v24[4] = v9;
    v24[5] = *MEMORY[0x29EDBB1A8];
    v25[4] = MEMORY[0x29EDB8EB0];
    v25[5] = MEMORY[0x29EDB8EB0];
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v10, v25, v24, 6);

    v12 = IOSurfaceCreate(v11);
    if (v12)
    {
      v16 = v12;
      v17 = objc_msgSend_device(*(v5 + 438), v13, v14, v15);
      v20 = objc_msgSend_newBufferWithIOSurface_(v17, v18, v16, v19);

      if (v20)
      {

        CFRelease(v16);
        return v20;
      }

      sub_2958B6278(v11, v16);
    }

    else
    {
      sub_2958B62F8(v11);
    }
  }

  v21 = objc_msgSend_device(*(v5 + 438), a2, length, v3);
  v20 = objc_msgSend_newBufferWithLength_options_(v21, v22, length, 0);

  if (!v20)
  {
    sub_29584FD68();
  }

  return v20;
}

- (int)allocateResources:(id *)resources
{
  if (resources)
  {
    v6 = &self->_anon_147fb8[72];
    regWarpHelper = self->_regWarpHelper;
    if (regWarpHelper)
    {
      Width = CVPixelBufferGetWidth(regWarpHelper);
      regWarpHelper = *(v6 + 428);
      if (regWarpHelper)
      {
        regWarpHelper = CVPixelBufferGetHeight(regWarpHelper);
      }
    }

    else
    {
      Width = 0;
    }

    v9 = Width >= resources->var5 && regWarpHelper >= resources->var6;
    if (v9 || (CVPixelBufferRelease(*(v6 + 428)), PixelBufferWithWiringAssertion = CreatePixelBufferWithWiringAssertion(), (*(v6 + 428) = PixelBufferWithWiringAssertion) != 0))
    {
      v14 = objc_msgSend_length(self->_sharedRegWarpBuffer, a2, resources, v3);
      result = 0;
      if (!self->_usingExternalSharedRegWarpBuffer)
      {
        var1 = resources->var1;
        if (var1 > v14)
        {
          v17 = MEMORY[0x29EDB9270];
          if (*MEMORY[0x29EDB9270] == 1)
          {
            kdebug_trace();
          }

          objc_msgSend_releaseResources(*(v6 + 437), v11, v12, v13);
          self->_regwarpHasBeenSetup = 0;
          sharedRegWarpBuffer = self->_sharedRegWarpBuffer;
          self->_sharedRegWarpBuffer = 0;

          if (*v17 == 1)
          {
            kdebug_trace();
            if (*v17 == 1)
            {
              kdebug_trace();
            }
          }

          v19 = objc_alloc(MEMORY[0x29EDBFE58]);
          v22 = objc_msgSend_initWithLength_(v19, v20, var1, v21);
          v23 = self->_sharedRegWarpBuffer;
          self->_sharedRegWarpBuffer = v22;

          if (self->_sharedRegWarpBuffer)
          {
            if (*v17 == 1)
            {
              kdebug_trace();
            }

            return 0;
          }

          else
          {
            sub_2958B65CC(&v24);
            return v24;
          }
        }
      }
    }

    else
    {
      sub_2958B6678(&v25);
      return v25;
    }
  }

  else
  {
    sub_2958B6724(&v26);
    return v26;
  }

  return result;
}

- (int)bindResourcesForProcessingType:(unsigned int)type prepareDescriptor:(id)descriptor
{
  v4 = *&type;
  descriptorCopy = descriptor;
  v7 = objc_opt_new();
  v11 = objc_msgSend_width(descriptorCopy, v8, v9, v10);
  objc_msgSend_setWidth_(v7, v12, v11, v13);
  v17 = objc_msgSend_height(descriptorCopy, v14, v15, v16);
  objc_msgSend_setHeight_(v7, v18, v17, v19);
  v23 = objc_msgSend_pixelFormat(descriptorCopy, v20, v21, v22);
  objc_msgSend_setPixelFormat_(v7, v24, v23, v25);
  v54 = 0;
  v27 = objc_msgSend_allocateResourcesIfNeededForDesc_didAllocate_(self->_denoiseFusePipeline, v26, v7, &v54);
  if (v27)
  {
    sub_2958B67C0(v27, &v55);
    v31 = v55;
  }

  else
  {
    v31 = 0;
    if (v4 && v4 != 7)
    {
      nrfFusionOutput = self->_nrfFusionOutput;
      if (HIDWORD(nrfFusionOutput->_metadata) == 2 || BYTE2(nrfFusionOutput->_linearOutputMIWBAppliedMetadata) == 1) && ((v33 = objc_msgSend_pixelFormat(descriptorCopy, v28, v29, v30), shouldDownsampleRWPPInputWithPixelFormat_processingType = objc_msgSend_shouldDownsampleRWPPInputWithPixelFormat_processingType_(self, v34, v33, v4), (v54) || !self->_regwarpHasBeenSetup || BYTE4(self->_registrationPipelineRWPP) != shouldDownsampleRWPPInputWithPixelFormat_processingType))
      {
        objc_msgSend_releaseResources(self->_metal, v36, v37, v38);
        metal = self->_metal;
        self->_metal = 0;

        v43 = objc_msgSend_width(descriptorCopy, v40, v41, v42);
        v47 = objc_msgSend_height(descriptorCopy, v44, v45, v46);
        v51 = objc_msgSend_pixelFormat(descriptorCopy, v48, v49, v50);
        v31 = objc_msgSend__bindRegWarpPPWithWidth_height_pixelFormat_(self, v52, v43, v47, v51);
        if (v31)
        {
          sub_2958B6860();
        }

        else
        {
          self->_regwarpHasBeenSetup = 1;
        }
      }

      else
      {
        v31 = 0;
      }
    }
  }

  return v31;
}

- (int)prepareToProcess:(unsigned int)process prepareDescriptor:(id)descriptor
{
  v4 = *&process;
  p_fusionOptions = &self->_fusionOptions;
  descriptorCopy = descriptor;
  v11 = descriptorCopy;
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v99 = 0u;
  if (v4 == 3)
  {
    if ((*(*(p_fusionOptions + 7) + 63) & 1) == 0)
    {
      sub_2958B68F8(&v103);
      goto LABEL_57;
    }
  }

  else if (v4 == 2 && (*(*(p_fusionOptions + 7) + 66) & 1) == 0)
  {
    sub_2958B6948(&v103);
LABEL_57:
    LODWORD(v80) = v103;
    goto LABEL_44;
  }

  p_referenceFrameHasEVMinus = &self->_referenceFrameHasEVMinus;
  v13 = objc_msgSend_width(descriptorCopy, v8, v9, v10);
  objc_msgSend_setWidth_(v11, v14, (v13 + 15) & 0xFFFFFFF0, v15);
  v19 = objc_msgSend_height(v11, v16, v17, v18);
  objc_msgSend_setHeight_(v11, v20, (v19 + 15) & 0xFFFFFFF0, v21);
  *(*(p_fusionOptions + 7) + 76) = objc_msgSend_allowModifyingInputBuffers(v11, v22, v23, v24);
  v28 = *(p_fusionOptions + 7);
  v29 = *(v28 + 44);
  if ((v29 & 0x80000000) == 0)
  {
    BYTE1(self->_referenceFrameIndex) = v29 != 0;
  }

  *(v28 + 101) = (v4 == 7) | HIBYTE(self->_referenceFrameIndex);
  LODWORD(self->_output) = v4;
  objc_msgSend_reset(self->_denoiseFusePipeline, v25, v26, v27);
  v32 = 0;
  output = self->_output;
  if (output > 3)
  {
    if (output > 8)
    {
      if (output == 9)
      {
        objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v30, *MEMORY[0x29EDB8CC8], @"*** LearnedHRNR is unsupported in this version of NRF.", 0);
      }

      else
      {
        if (output != 10)
        {
          goto LABEL_19;
        }

        objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v30, *MEMORY[0x29EDB8CC8], @"*** LearnedFusion is unsupported in this version of NRF.", 0);
      }
    }

    else
    {
      if ((output - 6) < 3)
      {
        goto LABEL_18;
      }

      if ((output - 4) >= 2)
      {
        goto LABEL_19;
      }

      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v30, *MEMORY[0x29EDB8CC8], @"*** RawNightMode is unsupported in this version of NRF.", 0);
    }
    v94 = ;
    objc_exception_throw(v94);
  }

  if ((output - 1) < 2)
  {
    v32 = 1;
    goto LABEL_18;
  }

  if (!output)
  {
LABEL_18:
    objc_msgSend_setFusionMode_(self->_denoiseFusePipeline, v30, v32, v31);
    goto LABEL_19;
  }

  if (output == 3)
  {
    objc_msgSend_setFusionMode_(self->_denoiseFusePipeline, v30, 2, v31);
  }

LABEL_19:
  v97 = 0;
  v98 = 0;
  v95 = 0;
  v96 = 0;
  v34 = objc_msgSend_determineWorkingBufferRequirementsToProcess_prepareDescriptor_nrfConfig_denoiseFusePipelineSize_rwppSize_rwppInputWidth_rwppInputHeight_(self, v30, v4, v11, *(p_fusionOptions + 7), &v97, &v98, &v96, &v95);
  if (v34)
  {
    LODWORD(v80) = v34;
    sub_2958B6998();
    goto LABEL_44;
  }

  if (!v97)
  {
    sub_2958B6BD4(&v103);
    goto LABEL_57;
  }

  *&v100 = objc_msgSend_width(v11, v35, v36, v37);
  *(&v100 + 1) = objc_msgSend_height(v11, v38, v39, v40);
  LODWORD(v101) = objc_msgSend_pixelFormat(v11, v41, v42, v43);
  v47 = v97;
  sharedMetalBufferSizeRequested = self->_memoryRequirements.sharedMetalBufferSizeRequested;
  sharedRegWarpBufferSizeRequested = self->_memoryRequirements.sharedRegWarpBufferSizeRequested;
  if (v97 > sharedMetalBufferSizeRequested)
  {
    sharedMetalBufferSizeRequested = v97;
  }

  if (v98 > sharedRegWarpBufferSizeRequested)
  {
    sharedRegWarpBufferSizeRequested = v98;
  }

  *&v99 = sharedMetalBufferSizeRequested;
  *(&v99 + 1) = sharedRegWarpBufferSizeRequested;
  regwarpInputWidth = v96;
  if (v96 <= self->_memoryRequirements.regwarpInputWidth)
  {
    regwarpInputWidth = self->_memoryRequirements.regwarpInputWidth;
  }

  regwarpInputHeight = v95;
  if (v95 <= self->_memoryRequirements.regwarpInputHeight)
  {
    regwarpInputHeight = self->_memoryRequirements.regwarpInputHeight;
  }

  *(&v101 + 1) = regwarpInputWidth;
  v102 = regwarpInputHeight;
  if (!self->_allocatorSetupComplete)
  {
LABEL_32:
    v61 = *(*(p_fusionOptions + 7) + 8);
    v62 = objc_opt_new();
    v65 = v62;
    if (v62)
    {
      if (v61)
      {
        objc_msgSend_setMemSize_(v62, v63, v61, v64);
      }

      else
      {
        objc_msgSend_setMemSize_(v62, v63, v47, v64);
      }

      objc_msgSend_setWireMemory_(v65, v66, *(*(p_fusionOptions + 7) + 16), v67);
      objc_msgSend_setCompressionLevel_(v65, v68, *(*(p_fusionOptions + 7) + 28), v69);
      objc_msgSend_setAllowFallback_(v65, v70, *(*(p_fusionOptions + 7) + 24), v71);
      objc_msgSend_setLabel_(v65, v72, @"FigMetalAllocator_NRF", v73);
      v77 = objc_msgSend_allocator(*p_fusionOptions, v74, v75, v76);
      v80 = objc_msgSend_setupWithDescriptor_(v77, v78, v65, v79);

      if (!v80)
      {

        self->_allocatorSetupComplete = 1;
        goto LABEL_38;
      }

      sub_2958B69D8(v80);
    }

    else
    {
      sub_2958B6B38(&v103);
      LODWORD(v80) = v103;
    }

    goto LABEL_44;
  }

  v52 = objc_msgSend_allocator(*p_fusionOptions, v44, v45, v46);
  v56 = objc_msgSend_memSize(v52, v53, v54, v55);
  v57 = v97;

  if (v56 < v57)
  {
    v47 = v97;
    goto LABEL_32;
  }

LABEL_38:
  if (*p_referenceFrameHasEVMinus)
  {
    v81 = objc_msgSend_iosurface(*p_referenceFrameHasEVMinus, v58, v59, v60);
    v84 = objc_msgSend_verifyIOSurfaceCompression_(self, v82, v81, v83);
    if (v84)
    {
      LODWORD(v80) = v84;
      sub_2958B6A18();
      goto LABEL_44;
    }

    v88 = objc_msgSend_allocator(*p_fusionOptions, v85, v86, v87);
    v80 = objc_msgSend_addExternalMetalBuffer_atSubAllocatorID_(v88, v89, *p_referenceFrameHasEVMinus, 0);

    if (v80)
    {
      sub_2958B6A78(v80);
      goto LABEL_44;
    }
  }

  Resources = objc_msgSend_allocateResources_(self, v58, &v99, v60);
  if (Resources)
  {
    LODWORD(v80) = Resources;
    sub_2958B6AB8();
  }

  else
  {
    v92 = objc_msgSend_bindResourcesForProcessingType_prepareDescriptor_(self, v91, v4, v11);
    LODWORD(v80) = v92;
    if (v92)
    {
      sub_2958B6AF8(v92);
    }
  }

LABEL_44:

  return v80;
}

- (int)fusionMode
{
  v4 = objc_msgSend_fusionReferenceFrame(self->_denoiseFusePipeline, a2, v2, v3);
  if (v4 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v4 == 2);
  }
}

- (void)setFusionMode:(int)mode
{
  denoiseFusePipeline = self->_denoiseFusePipeline;
  if (mode == 1)
  {
    objc_msgSend_setFusionReferenceFrame_(denoiseFusePipeline, a2, 1, v3);
  }

  else
  {
    objc_msgSend_setFusionReferenceFrame_(denoiseFusePipeline, a2, 2 * (mode == 2), v3);
  }
}

- (void)setReferenceFrameIndex:(int)index
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  self->_cntBracketSampleBuffers = index;
  v8 = objc_msgSend__registerImages_(self, a2, 0, v3);
  aggregateErr = self->_aggregateErr;
  if (aggregateErr)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (!v10)
  {
    self->_aggregateErr = 1;
LABEL_13:
    sub_2958B6CD0();
    return;
  }

  if (aggregateErr)
  {
    goto LABEL_13;
  }

  v11 = objc_msgSend__processSIFRandRefEV0IfPossible_(self, v6, 0, v7);
  v12 = self->_aggregateErr;
  if (!v12 && v11)
  {
    self->_aggregateErr = 4;
    goto LABEL_15;
  }

  if (v12)
  {
LABEL_15:
    sub_2958B6C70();
  }
}

- (int)purgeResources
{
  v5 = &self->_anon_147fb8[72];
  objc_msgSend_releaseResources(self->_denoiseFusePipeline, a2, v2, v3);
  CVPixelBufferRelease(*(v5 + 428));
  *(v5 + 428) = 0;
  v9 = *(v5 + 445);
  if (v9 && (*(v9 + 36) == 2 || *(v9 + 66) == 1))
  {
    objc_msgSend_releaseResources(*(v5 + 437), v6, v7, v8);
    self->_regwarpHasBeenSetup = 0;
  }

  sharedMetalBuffer = self->_sharedMetalBuffer;
  self->_sharedMetalBuffer = 0;

  self->_usingExternalSharedMetalBuffer = 0;
  sharedRegWarpBuffer = self->_sharedRegWarpBuffer;
  self->_sharedRegWarpBuffer = 0;

  self->_usingExternalSharedRegWarpBuffer = 0;
  self->_allocatorSetupComplete = 0;
  return 0;
}

- (int)resetState
{
  p_referenceFrameIndex = &self->_referenceFrameIndex;
  p_nInputBrackets = &self->_nInputBrackets;
  objc_msgSend_waitForSchedule(*&self->_fusionOptions, a2, v2, v3);
  objc_msgSend_resetInternalState(self, v7, v8, v9);
  objc_msgSend_releaseAllBindings(self->_denoiseFusePipeline, v10, v11, v12);
  objc_msgSend_setDoGreenGhostMitigation_(self->_denoiseFusePipeline, v13, 0, v14);
  objc_msgSend_releaseStoredReference(self, v15, v16, v17);
  *&self->_processedSIFRandRefEV0 = 0;
  p_referenceFrameIndex[5] = 0;
  *&self->_processedSyntheticReference = 0;
  *&self->_deepFusionPyramidBuilt[5] = 0;
  p_referenceFrameIndex[2] = -1;
  objc_msgSend_setFusionReferenceFrame_(self->_denoiseFusePipeline, v18, 0, v19);
  *p_nInputBrackets = 0;
  *(p_referenceFrameIndex + 2) = 0;
  *p_referenceFrameIndex = 1;
  objc_storeWeak(&self->_progressiveBracketingParameters, 0);
  v20 = *(p_referenceFrameIndex + 7);
  *(p_referenceFrameIndex + 7) = 0;

  *(p_referenceFrameIndex + 3) = 0;
  v24 = objc_msgSend_allocator(*(p_nInputBrackets + 182), v21, v22, v23);
  objc_msgSend_reset(v24, v25, v26, v27);

  v31 = objc_msgSend_allocator(*(p_nInputBrackets + 182), v28, v29, v30);
  objc_msgSend_purgeResources_(v31, v32, 0, v33);

  objc_msgSend_setExecutionStatus_(*(p_nInputBrackets + 182), v34, 0, v35);
  return 0;
}

- (int)resetInternalState
{
  v5 = &self->_anon_17fa15[7];
  p_curRegWarpTempIndex = &self->_curRegWarpTempIndex;
  p_preBracketFrameIndex = &self->_preBracketFrameIndex;
  objc_msgSend_reset(self->_denoiseFusePipeline, a2, v2, v3);
  self->_aggregateErr = 0;
  v8 = *(p_preBracketFrameIndex + 1);
  if (v8)
  {
    CFRelease(v8);
    *(p_preBracketFrameIndex + 1) = 0;
  }

  v9 = *(p_curRegWarpTempIndex + 193);
  *(p_curRegWarpTempIndex + 193) = 0;

  if (*(v5 + 17) >= 1)
  {
    v10 = 0;
    bracketSampleBuffers = self->_bracketSampleBuffers;
    bracketProperties = self->_bracketProperties;
    do
    {
      v13 = bracketSampleBuffers[v10];
      if (v13)
      {
        CFRelease(v13);
        bracketSampleBuffers[v10] = 0;
      }

      bzero(bracketProperties, 0x36BE0uLL);
      ++v10;
      bracketProperties = (bracketProperties + 224224);
    }

    while (v10 < *(v5 + 17));
  }

  bzero(&self->_prebracketedProperties, 0x36BE0uLL);
  *(p_curRegWarpTempIndex + 1352) = 1;
  *(v5 + 17) = 0;
  *p_curRegWarpTempIndex = -1;
  *p_preBracketFrameIndex = -1;
  bzero(self->_fusionConf.colorSpaceConversionParameters, 0x540uLL);
  p_preBracketFrameIndex[4] = -1;
  ++*(v5 + 18);
  *v5 = 0;
  objc_msgSend_setSrlEnabled_(self->_denoiseFusePipeline, v14, 1, v15);
  return 0;
}

- (void)addToSidecar:(id)sidecar forKey:(id)key
{
  sidecarCopy = sidecar;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_objectForKeyedSubscript_(self->_nrfConfig, v7, keyCopy, v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(self->_nrfConfig, v7, keyCopy, v10);
    objc_msgSend_addEntriesFromDictionary_(v11, v12, sidecarCopy, v13);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(self->_nrfConfig, v7, sidecarCopy, keyCopy);
  }
}

- (BOOL)_isGainMapSupported
{
  objc_msgSend_objectForKeyedSubscript_(self->_metalCommandQueue, a2, @"DefaultSensorIDs", v2);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = v35 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v32, v31, 16);
  if (v5)
  {
    v8 = v5;
    v29 = *v33;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = objc_msgSend_objectForKeyedSubscript_(v3, v6, v10, v7);
        v14 = objc_msgSend_objectForKeyedSubscript_(self->_metalCommandQueue, v12, v10, v13);
        v17 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v11, v16);
        v20 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"NRFParameters", v19);
        v23 = objc_msgSend_objectForKeyedSubscript_(v20, v21, @"NRFParameters", v22);
        v26 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"GainMap", v25);

        if (v26)
        {
          v27 = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v32, v31, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0;
LABEL_11:

  return v27;
}

- (BOOL)_isSemanticStylesSupported
{
  objc_msgSend_objectForKeyedSubscript_(self->_metalCommandQueue, a2, @"DefaultSensorIDs", v2);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = v35 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v32, v31, 16);
  if (v5)
  {
    v8 = v5;
    v29 = *v33;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = objc_msgSend_objectForKeyedSubscript_(v3, v6, v10, v7);
        v14 = objc_msgSend_objectForKeyedSubscript_(self->_metalCommandQueue, v12, v10, v13);
        v17 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v11, v16);
        v20 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"NRFParameters", v19);
        v23 = objc_msgSend_objectForKeyedSubscript_(v20, v21, @"NRFParameters", v22);
        v26 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"SemanticStyles", v25);

        if (v26)
        {
          v27 = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v32, v31, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0;
LABEL_11:

  return v27;
}

- (void)setLinearOutputMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (metadataCopy)
  {
    v5 = self->_bracketProperties + 224224 * *&self->_anon_14893c[1004];
    v6 = (self->_bracketProperties + 224224 * *&self->_anon_14893c[1012]);
    v41 = metadataCopy;
    v7 = sub_295820670((v5 + 16), (v6 + 8), 2);
    v8 = *(v5 + 14);
    v9 = *(v5 + 10);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v10, *MEMORY[0x29EDB9670], *MEMORY[0x29EDB9658]);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v11, *MEMORY[0x29EDB9628], *MEMORY[0x29EDB9608]);
    v15 = *(self->_regWarpInput + 5);
    if (v15 && *(v15 + 79) == 1 && (LODWORD(self->_output) - 1) <= 1)
    {
      v16 = objc_msgSend_getSTFLTM_asNSData(self->_denoiseFusePipeline, v12, v13, v14);
    }

    else
    {
      v16 = sub_2958378A4(v5 + 84);
    }

    v18 = v16;
    objc_msgSend_setObject_forKeyedSubscript_(v41, v17, v16, *MEMORY[0x29EDC0590]);

    v19 = sub_29583794C(v6 + 110700);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v20, v19, *MEMORY[0x29EDC0528]);

    v21 = sub_29583794C(v6 + 110958);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v22, v21, *MEMORY[0x29EDC0538]);

    LODWORD(v23) = v8;
    v27 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v24, v25, v26, v23);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v28, v27, *MEMORY[0x29EDC0170]);

    *&v29 = v7;
    v33 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v30, v31, v32, v29);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v34, v33, *MEMORY[0x29EDC0168]);

    LODWORD(v35) = v9;
    v39 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v36, v37, v38, v35);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v40, v39, *MEMORY[0x29EDC0148]);
  }

  MEMORY[0x2A1C71098]();
}

- (void)_prepareOutputMetadata
{
  p_referenceFrameCandidatesCount = &self->_referenceFrameCandidatesCount;
  p_nInputBrackets = &self->_nInputBrackets;
  if (dword_2A18C2398)
  {
    v179[0] = 0;
    v178 = 0;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (self->_aggregateErr >= 255)
  {
    aggregateErr = 255;
  }

  else
  {
    aggregateErr = self->_aggregateErr;
  }

  v9 = p_referenceFrameCandidatesCount[4];
  if (v9 <= 0xF)
  {
    v10 = v9 << 12;
  }

  else
  {
    v10 = 61440;
  }

  SRLStatus = objc_msgSend_getSRLStatus(self->_denoiseFusePipeline, a2, v2, v3);
  v177[0] = 0;
  v12 = p_referenceFrameCandidatesCount[4];
  if (v12 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2 * (v12 == 2);
  }

  sub_295822CA4(v13, v177, *(p_nInputBrackets + 188));
  v16 = MEMORY[0x29EDC00C0];
  if (*(p_nInputBrackets + 190))
  {
    v17 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v14, v177[0], v15);
    v21 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v18, v19, v20);
    objc_msgSend_setObject_forKeyedSubscript_(v21, v22, v17, *MEMORY[0x29EDC0128]);

    v25 = objc_msgSend_objectForKeyedSubscript_(*(p_nInputBrackets + 188), v23, @"GreenGhostLowLight", v24);
    v28 = objc_msgSend_objectForKeyedSubscript_(v25, v26, @"maskAverage", v27);

    if (v28)
    {
      v32 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v29, v30, v31);
      objc_msgSend_setObject_forKeyedSubscript_(v32, v33, v28, *MEMORY[0x29EDC0120]);

      v36 = objc_msgSend_objectForKeyedSubscript_(*(p_nInputBrackets + 188), v34, @"GreenGhostLowLight", v35);
      objc_msgSend_setObject_forKeyedSubscript_(v36, v37, 0, @"maskAverage");
    }

    v38 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v29, v10 | aggregateErr, v31);
    v42 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v39, v40, v41);
    objc_msgSend_setObject_forKeyedSubscript_(v42, v43, v38, *MEMORY[0x29EDC01A8]);

    v46 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v44, *p_nInputBrackets, v45);
    v50 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v47, v48, v49);
    objc_msgSend_setObject_forKeyedSubscript_(v50, v51, v46, *MEMORY[0x29EDC0190]);

    v54 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v52, p_nInputBrackets[1], v53);
    v58 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v55, v56, v57);
    objc_msgSend_setObject_forKeyedSubscript_(v58, v59, v54, *MEMORY[0x29EDC0198]);

    v62 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v60, SRLStatus, v61);
    v66 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v63, v64, v65);
    objc_msgSend_setObject_forKeyedSubscript_(v66, v67, v62, *MEMORY[0x29EDC01A0]);

    LODWORD(v68) = p_nInputBrackets[384];
    v72 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v69, v70, v71, v68);
    v76 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v73, v74, v75);
    objc_msgSend_setObject_forKeyedSubscript_(v76, v77, v72, *v16);

    v81 = objc_msgSend_linearOutputMetadata(*(p_nInputBrackets + 190), v78, v79, v80);
    objc_msgSend_setLinearOutputMetadata_(self, v82, v81, v83);

    v87 = *(*(p_nInputBrackets + 171) + 40);
    if (v87 && *(v87 + 79) == 1)
    {
      v88 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v84, v85, v86);
      objc_msgSend_setObject_forKeyedSubscript_(v88, v89, MEMORY[0x29EDB8EB0], *MEMORY[0x29EDC0230]);

      v90 = MEMORY[0x29EDBA070];
      STFStillApplied = objc_msgSend_getSTFStillApplied(self->_denoiseFusePipeline, v91, v92, v93);
      v97 = objc_msgSend_numberWithBool_(v90, v95, STFStillApplied, v96);
      v101 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v98, v99, v100);
      objc_msgSend_setObject_forKeyedSubscript_(v101, v102, v97, *MEMORY[0x29EDC0220]);

      if (!objc_msgSend_getSTFStillApplied(self->_denoiseFusePipeline, v103, v104, v105))
      {
LABEL_21:

        goto LABEL_22;
      }

      v109 = MEMORY[0x29EDBA070];
      denoiseFusePipeline = self->_denoiseFusePipeline;
      v111 = objc_msgSend_linearOutputMetadata(*(p_nInputBrackets + 190), v106, v107, v108);
      STFStillCorrectionStrength = objc_msgSend_getSTFStillCorrectionStrength_(denoiseFusePipeline, v112, v111 != 0, v113);
      v117 = objc_msgSend_numberWithInt_(v109, v115, STFStillCorrectionStrength, v116);
      v121 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v118, v119, v120);
      objc_msgSend_setObject_forKeyedSubscript_(v121, v122, v117, *MEMORY[0x29EDC0228]);

      v16 = MEMORY[0x29EDC00C0];
      v123 = MEMORY[0x29EDBA070];
      STFStillAnalyticsVersion = objc_msgSend_getSTFStillAnalyticsVersion(self->_denoiseFusePipeline, v124, v125, v126);
      v130 = objc_msgSend_numberWithUnsignedInt_(v123, v128, STFStillAnalyticsVersion, v129);
      v134 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v131, v132, v133);
      objc_msgSend_setObject_forKeyedSubscript_(v134, v135, v130, *MEMORY[0x29EDC0218]);
    }

    else
    {
      v130 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v84, v85, v86);
      objc_msgSend_setObject_forKeyedSubscript_(v130, v136, MEMORY[0x29EDB8EA8], *MEMORY[0x29EDC0230]);
    }

    goto LABEL_21;
  }

LABEL_22:
  if (*(p_nInputBrackets + 191))
  {
    v137 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v14, v10 | aggregateErr, v15);
    v141 = objc_msgSend_syntheticReferenceMetadata(*(p_nInputBrackets + 191), v138, v139, v140);
    objc_msgSend_setObject_forKeyedSubscript_(v141, v142, v137, *MEMORY[0x29EDC01A8]);

    v145 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v143, *p_nInputBrackets, v144);
    v149 = objc_msgSend_syntheticReferenceMetadata(*(p_nInputBrackets + 191), v146, v147, v148);
    objc_msgSend_setObject_forKeyedSubscript_(v149, v150, v145, *MEMORY[0x29EDC0190]);

    v153 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v151, p_nInputBrackets[1], v152);
    v157 = objc_msgSend_syntheticReferenceMetadata(*(p_nInputBrackets + 191), v154, v155, v156);
    objc_msgSend_setObject_forKeyedSubscript_(v157, v158, v153, *MEMORY[0x29EDC0198]);

    v161 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v159, SRLStatus, v160);
    v165 = objc_msgSend_syntheticReferenceMetadata(*(p_nInputBrackets + 191), v162, v163, v164);
    objc_msgSend_setObject_forKeyedSubscript_(v165, v166, v161, *MEMORY[0x29EDC01A0]);

    LODWORD(v167) = p_nInputBrackets[384];
    v171 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v168, v169, v170, v167);
    v175 = objc_msgSend_syntheticReferenceMetadata(*(p_nInputBrackets + 191), v172, v173, v174);
    objc_msgSend_setObject_forKeyedSubscript_(v175, v176, v171, *v16);
  }
}

- (int)_multiFrameProcessing:(BOOL)processing
{
  processingCopy = processing;
  updated = objc_msgSend_updateEV0ReferenceFrameIfNecessary(self, a2, processing, v3);
  v9 = updated;
  aggregateErr = self->_aggregateErr;
  if (aggregateErr)
  {
    v11 = 1;
  }

  else
  {
    v11 = updated == 0;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  if (!aggregateErr)
  {
    v12 = objc_msgSend__registerImages_(self, v7, 1, v8);
    v9 = v12;
    v15 = self->_aggregateErr;
    if (!v15 && v12)
    {
      v16 = 1;
LABEL_14:
      self->_aggregateErr = v16;
      return v9;
    }

    if (!v15)
    {
      v17 = objc_msgSend__processSIFRandRefEV0IfPossible_(self, v13, 1, v14);
      v9 = v17;
      v21 = self->_aggregateErr;
      if (!v21 && v17)
      {
LABEL_13:
        v16 = 4;
        goto LABEL_14;
      }

      if (v21)
      {
        return v9;
      }

      p_regWarpInput = &self->_regWarpInput;
      if (!*(self->_regWarpInput + 3))
      {
        sub_2958B6D90(&v45);
        return v45;
      }

      v24 = &self->_anon_17fa15[7];
      v25 = objc_msgSend_statistics(self->_semanticStyleProperties, v18, v19, v20);
      if (objc_msgSend_stationary(v25, v26, v27, v28))
      {
        v29 = *(*(*p_regWarpInput + 3) + 140);
      }

      else
      {
        v29 = 0;
      }

      if ((*(*(*p_regWarpInput + 3) + 96) | 2) == 3 && (v29 & 1) == 0 && LODWORD(self->_output) == 2)
      {
        referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
        if (referenceFrameCandidatesCount == self->_batchCount && (*v24 & 1) == 0)
        {
          canCopyBack_nrfPlist = objc_msgSend_lowLightHybridRegister_refFrameIdx_nonRefFrameProps_refFrameProps_canCopyBack_nrfPlist_(self->_denoiseFusePipeline, v30, referenceFrameCandidatesCount - 1, self->_cntBracketSampleBuffers, &self->_prebracketedProperties.meta.exposureParams.exposure_time + 56056 * referenceFrameCandidatesCount, self->_bracketProperties + 224224 * self->_cntBracketSampleBuffers, BYTE4(self->_nrfFusionOutput->_inferenceInputPixelBuffer));
          if (canCopyBack_nrfPlist)
          {
            return canCopyBack_nrfPlist;
          }

          *v24 = 1;
        }
      }

      v9 = objc_msgSend__setupFusionConfig(self, v30, v31, v32);
      v38 = self->_aggregateErr;
      if (!v38 && v9)
      {
        self->_aggregateErr = 15;
      }

      else if (!v38)
      {
        objc_msgSend_storeReferenceIfNeeded(self, v35, v36, v37);
        output = self->_output;
        if (output >= 3)
        {
          if (output > 3)
          {
            if ((output - 4) < 2)
            {
              objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v39, *MEMORY[0x29EDB8CC8], @"*** RawNightMode is unsupported in this version of NRF.", 0);
            }

            else if (output == 9)
            {
              objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v39, *MEMORY[0x29EDB8CC8], @"*** LearnedHRNR is unsupported in this version of NRF.", 0);
            }

            else
            {
              if (output != 10)
              {
                return v9;
              }

              objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v39, *MEMORY[0x29EDB8CC8], @"*** LearnedFusion is unsupported in this version of NRF.", 0);
            }
            v44 = ;
            objc_exception_throw(v44);
          }

          v43 = objc_msgSend__deepFusion(self, v39, v40, v41);
        }

        else
        {
          if ((output - 1) >= 2)
          {
            return v9;
          }

          v43 = objc_msgSend__nrfFuseImages_(self, v39, processingCopy, v41);
        }

        v9 = v43;
        if (!self->_aggregateErr && v43)
        {
          v16 = 6;
          goto LABEL_14;
        }

        return v9;
      }

      sub_2958B6D30();
    }
  }

  return v9;
}

- (int)_bindRegWarpPPWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  if (!width)
  {
    sub_2958B7048(self, a2, 0, height, *&format);
    return -1;
  }

  if (!height)
  {
    sub_2958B6FE8(self, a2);
    return -1;
  }

  LODWORD(v6) = format;
  if (!format)
  {
    sub_2958B6F88(self, a2);
    return -1;
  }

  if (!self->_sharedRegWarpBuffer)
  {
    sub_2958B6F28();
    return -3;
  }

  v9 = &self->_registrationPipelineRWPP + 4;
  shouldDownsampleRWPPInputWithPixelFormat_processingType = objc_msgSend_shouldDownsampleRWPPInputWithPixelFormat_processingType_(self, a2, *&format, LODWORD(self->_output));
  if (shouldDownsampleRWPPInputWithPixelFormat_processingType)
  {
    v6 = 875704422;
  }

  else
  {
    v6 = v6;
  }

  if (!self->_metal)
  {
    *v9 = shouldDownsampleRWPPInputWithPixelFormat_processingType;
    v14 = objc_alloc(MEMORY[0x29EDC0A80]);
    v17 = objc_msgSend_initWithConfig_(v14, v15, &self->_registrationPipelineRWPPConfig.numVerticalBlocks, v16);
    metal = self->_metal;
    self->_metal = v17;

    if (!self->_metal)
    {
      sub_2958B6E8C(&v29);
      return v29;
    }
  }

  v19 = objc_msgSend_bytes(self->_sharedRegWarpBuffer, v11, v12, v13);
  v20 = self->_metal;
  v24 = objc_msgSend_length(self->_sharedRegWarpBuffer, v21, v22, v23);
  Resources_imageHeight_imageFormat_externalMemory_externalMemorySize = objc_msgSend_allocateResources_imageHeight_imageFormat_externalMemory_externalMemorySize_(v20, v25, width, height, v6, v19, v24);
  v27 = Resources_imageHeight_imageFormat_externalMemory_externalMemorySize;
  if (!self->_aggregateErr && Resources_imageHeight_imageFormat_externalMemory_externalMemorySize)
  {
    self->_aggregateErr = 16;
    goto LABEL_15;
  }

  if (Resources_imageHeight_imageFormat_externalMemory_externalMemorySize)
  {
LABEL_15:
    sub_2958B6E2C(Resources_imageHeight_imageFormat_externalMemory_externalMemorySize);
  }

  return v27;
}

- (int)_processInferenceImage:(__CVBuffer *)image sourceFrameType:(int)type sourceFrameIndex:(int)index ltcFrameIndex:(int)frameIndex gtcFrameIndex:(int)gtcFrameIndex originalWidth:(unint64_t)width originalHeight:(unint64_t)height
{
  if (!image)
  {
    sub_2958B7374(&v51);
    return LODWORD(v51.a);
  }

  if (!self->_inferenceInputGenerated)
  {
    v12 = *&gtcFrameIndex;
    v13 = *&frameIndex;
    v14 = *&index;
    v15 = *&type;
    WeakRetained = objc_loadWeakRetained(&self->_progressiveBracketingParameters);
    if (objc_opt_respondsToSelector())
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [LumaChromaImage alloc];
        v20 = objc_msgSend_initWithContext_pixelBuffer_lumaAlignmentFactor_chromaAlignmentFactor_(v18, v19, *&self->_fusionOptions, image, 1, 1);
        if (!v20)
        {
          sub_2958B7314();
          a_low = -12786;
          goto LABEL_16;
        }

        v22 = v20;
        if (*(&self->_bracketProperties[1].meta.ROI.origin.y + 56056 * v13))
        {
          v23 = objc_msgSend_toneMapBand1Frame_properties_sourceFrameType_sourceFrameIndex_ltcFrameIndex_gtcFrameIndex_nrfPlist_(self->_denoiseFusePipeline, v21, v20, self->_bracketProperties, v15, v14, v13, v12, self->_regWarpInput);
          if (v23)
          {
            a_low = v23;
            sub_2958B7170(v23, v22);
LABEL_16:

            return a_low;
          }
        }

        else
        {
          if (v15)
          {
            sub_2958B71E8(v20, &v51);
            a_low = LODWORD(v51.a);
            goto LABEL_16;
          }

          v24 = objc_msgSend_downsampleBand0Frame_sourceFrameIndex_(self->_denoiseFusePipeline, v21, v20, v14);
          if (v24)
          {
            a_low = v24;
            sub_2958B729C(v24, v22);
            goto LABEL_16;
          }
        }

        v25 = (&self->_bracketProperties[0].meta.sensorID + 56056 * v14);
        v26 = v25[16];
        v27 = v25[17];
        v28 = v25[18];
        v29 = v25[19];
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(image, 0);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(image, 0);
        if (WidthOfPlane != width || (v35 = 0, HeightOfPlane != height))
        {
          memset(&v51, 0, sizeof(v51));
          CGAffineTransformMakeScale(&v51, WidthOfPlane / width, HeightOfPlane / height);
          v50 = v51;
          v52.origin.x = v26;
          v52.origin.y = v27;
          v52.size.width = v28;
          v52.size.height = v29;
          v53 = CGRectApplyAffineTransform(v52, &v50);
          x = v53.origin.x;
          y = v53.origin.y;
          width = v53.size.width;
          height = v53.size.height;
          v40 = objc_alloc(MEMORY[0x29EDB8E00]);
          v48 = *MEMORY[0x29EDC0750];
          v54.origin.x = x;
          v54.origin.y = y;
          v54.size.width = width;
          v54.size.height = height;
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v54);
          v49 = DictionaryRepresentation;
          v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v42, &v49, &v48, 1);
          v35 = objc_msgSend_initWithDictionary_(v40, v44, v43, v45);
        }

        objc_msgSend_waitForSchedule(*&self->_fusionOptions, v32, v33, v34);
        objc_msgSend_processor_outputReadyWithFrameType_outputPixelBuffer_outputMetadata_error_(WeakRetained, v46, self, 7, image, v35, 0);
        self->_inferenceInputGenerated = 1;

        a_low = 0;
        goto LABEL_16;
      }

      sub_2958B710C();
    }

    else
    {
      sub_2958B70A8();
    }

    a_low = -12784;
    goto LABEL_16;
  }

  return 0;
}

- (int)_deepFusion
{
  v4 = &self->_anon_14893c[1012];
  v5 = MEMORY[0x29EDB9270];
  if (!self->_referenceFrame)
  {
    sub_2958B78E4(v119);
LABEL_65:
    v98 = 0;
    __dst = 0;
    v117 = 0;
    v83 = 0;
    v42 = 0;
    v35 = 0;
    goto LABEL_66;
  }

  if ((self->_lscGainsTex & 1) == 0)
  {
    v7 = objc_msgSend__doDeepFusionSytheticRefererenceAndProxy(self, a2, v2, v3);
    if (v7)
    {
      sub_2958B7410(v7, v119);
      goto LABEL_65;
    }
  }

  v8 = *v5;
  if (*v5 == 1)
  {
    kdebug_trace();
    v8 = *v5;
  }

  if (v8)
  {
    v9 = objc_msgSend_commandQueue(*(v4 + 132), a2, v2, v3);
    v13 = objc_msgSend_commandBuffer(v9, v10, v11, v12);

    objc_msgSend_setLabel_(v13, v14, @"KTRACE_START_MTL", v15);
    objc_msgSend_addCompletedHandler_(v13, v16, &unk_2A1CA9600, v17);
    objc_msgSend_commit(v13, v18, v19, v20);
  }

  v21 = objc_msgSend_syntheticReferenceMetadata(*(v4 + 204), a2, v2, v3);
  v24 = objc_msgSend__populateDeepFusionMetadata_(self, v22, v21, v23);

  if (v24)
  {
    sub_2958B74AC(v24);
    v98 = 0;
    __dst = 0;
    v117 = 0;
    v83 = 0;
    v42 = 0;
    v35 = 0;
    goto LABEL_50;
  }

  v25 = [LumaChromaImage alloc];
  v26 = *(v4 + 132);
  v30 = objc_msgSend_syntheticLongPixelBuffer(*(v4 + 204), v27, v28, v29);
  v35 = objc_msgSend_initWithContext_pixelBuffer_lumaAlignmentFactor_chromaAlignmentFactor_(v25, v31, v26, v30, 16, 8);
  if (!v35)
  {
    sub_2958B7884();
    v98 = 0;
    __dst = 0;
    v117 = 0;
    v83 = 0;
    v42 = 0;
LABEL_60:
    LODWORD(v24) = 0;
    goto LABEL_50;
  }

  v36 = *(v4 + 132);
  v37 = objc_msgSend_syntheticLongFusionMapPixelBuffer(*(v4 + 204), v32, v33, v34);
  v42 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v36, v38, v37, 10, 7, 0);
  if (!v42)
  {
    sub_2958B7824();
    goto LABEL_59;
  }

  if (objc_msgSend_longFusionMapPixelBuffer(*(v4 + 204), v39, v40, v41))
  {
    v46 = v42;
    v47 = *(v4 + 132);
    v48 = objc_msgSend_longFusionMapPixelBuffer(*(v4 + 204), v43, v44, v45);
    v49 = v47;
    v42 = v46;
    v117 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v49, v50, v48, 10, 7, 0);
    if (!v117)
    {
      sub_2958B750C();
LABEL_59:
      v98 = 0;
      __dst = 0;
      v117 = 0;
      v83 = 0;
      goto LABEL_60;
    }
  }

  else
  {
    v117 = 0;
  }

  bracketProperties = self->_bracketProperties;
  v55 = &self->_lscGainsTex + 2;
  HasBeenBuiltArray = objc_msgSend_doDeepFusionPyramidGeneration_properties_syntheticReferenceFramesOnly_pyramidHasBeenBuiltArray_(self->_denoiseFusePipeline, v43, self->_fusionConf.colorSpaceConversionParameters, self->_bracketProperties, 0, &self->_lscGainsTex + 2);
  if (HasBeenBuiltArray)
  {
    sub_2958B756C(HasBeenBuiltArray, v119);
    v98 = 0;
    __dst = 0;
    v83 = 0;
LABEL_66:
    LODWORD(v24) = v119[0];
    goto LABEL_50;
  }

  if (self->_sifrFrameIndex < 0)
  {
    v114 = v35;
    p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
    v122[0] = 0.0;
    referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
    if (referenceFrameCandidatesCount >= 1)
    {
      v59 = 0;
      v60 = 0;
      v61 = *p_cntBracketSampleBuffers;
      v62 = *(&bracketProperties->meta.exposureParams.hr_enabled + 224224 * *p_cntBracketSampleBuffers);
      p_isEVMFrame = &self->_bracketProperties[0].meta.isEVMFrame;
      v64 = 0xFFFFFFFFLL;
      do
      {
        if (!*p_isEVMFrame && !p_isEVMFrame[1])
        {
          v65 = p_isEVMFrame[97];
          v66 = v59 - v61;
          if (v59 - v61 < 0)
          {
            v66 = v61 - v59;
          }

          if (v66 > v60)
          {
            v67 = v59;
          }

          else
          {
            v66 = v60;
            v67 = v64;
          }

          v68 = v65 == v62;
          if (v65 == v62)
          {
            v69 = v66;
          }

          else
          {
            v69 = v60;
          }

          if (v68)
          {
            v70 = v67;
          }

          else
          {
            v70 = v64;
          }

          if (v61 == v59)
          {
            v64 = v64;
          }

          else
          {
            v60 = v69;
            v64 = v70;
          }
        }

        ++v59;
        p_isEVMFrame += 224224;
      }

      while (referenceFrameCandidatesCount != v59);
      if ((v64 & 0x80000000) == 0)
      {
        __dst = malloc_type_malloc(0x36BE0uLL, 0x1020040DF6BF6F3uLL);
        if (__dst)
        {
          v113 = v42;
          v71 = malloc_type_malloc(0x36BE0uLL, 0x1020040DF6BF6F3uLL);
          if (v71)
          {
            v72 = v71;
            memcpy(__dst, bracketProperties + 224224 * v64, 0x36BE0uLL);
            memcpy(v72, bracketProperties + 224224 * *p_cntBracketSampleBuffers, 0x36BE0uLL);
            v73 = MEMORY[0x29EDCA928];
            v74 = *MEMORY[0x29EDCA928];
            v75 = *(MEMORY[0x29EDCA928] + 16);
            __dst[13993] = *MEMORY[0x29EDCA928];
            __dst[13994] = v75;
            v76 = *(v73 + 32);
            __dst[13995] = v76;
            v72[13993] = v74;
            v72[13994] = v75;
            v72[13995] = v76;
            v115 = v72;
            v78 = objc_msgSend_computeMotionScore_ev0FrameIndex_evmProperties_ev0Properties_motionScore_nrfPlist_(self->_denoiseFusePipeline, v77, v64, *p_cntBracketSampleBuffers, __dst, v72, v122, *(v4 + 44));
            if (!v78)
            {
              v42 = v113;
              if (dword_2A18C2398)
              {
                v121 = 0;
                v120 = 0;
                v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);
                v35 = v114;
                fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_45:
                *(v4 + 54) = v122[0];
                goto LABEL_46;
              }

LABEL_44:
              v35 = v114;
              goto LABEL_45;
            }

            LODWORD(v24) = v78;
            sub_2958B7608();
            v5 = MEMORY[0x29EDB9270];
            v35 = v114;
            v98 = v72;
          }

          else
          {
            sub_2958B7764();
            v98 = 0;
            LODWORD(v24) = -12786;
            v5 = MEMORY[0x29EDB9270];
            v35 = v114;
          }

          v42 = v113;
        }

        else
        {
          sub_2958B77C4();
          v98 = 0;
          LODWORD(v24) = -12786;
          v5 = MEMORY[0x29EDB9270];
          v35 = v114;
        }

        v83 = 0;
        goto LABEL_50;
      }
    }

    v115 = 0;
    __dst = 0;
    goto LABEL_44;
  }

  v115 = 0;
  __dst = 0;
LABEL_46:
  v83 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  if (v83)
  {
    LODWORD(v84) = *(v4 + 54);
    v24 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v80, v81, v82, v84);
    v88 = objc_msgSend_syntheticReferenceMetadata(*(v4 + 204), v85, v86, v87);
    objc_msgSend_setObject_forKeyedSubscript_(v88, v89, v24, @"MotionScores");

    LODWORD(v90) = *(v4 + 54);
    v92 = objc_msgSend_doSyntheticLong_noiseDivisorTex_realLongNoiseDivisorTex_lscGainsTex_config_properties_motionScore_nrfPlist_intermediateMetadata_(self->_denoiseFusePipeline, v91, v35, v42, v117, *(v4 + 228), self->_fusionConf.colorSpaceConversionParameters, self->_bracketProperties, v90, *(v4 + 44), v83);
    LODWORD(v24) = v92;
    if (v92)
    {
      sub_2958B7668(v92);
    }

    else
    {
      v96 = objc_msgSend_syntheticReferenceMetadata(*(v4 + 204), v93, v94, v95);
      objc_msgSend_setObject_forKeyedSubscript_(v96, v97, v83, @"SyntheticLong");

      v55[*v4] = 0;
    }
  }

  else
  {
    sub_2958B76C8(v119);
    LODWORD(v24) = v119[0];
  }

  v5 = MEMORY[0x29EDB9270];
  v98 = v115;
LABEL_50:
  v99 = *v5;
  if (*v5 == 1)
  {
    kdebug_trace();
    v99 = *v5;
  }

  if (v99)
  {
    v100 = objc_msgSend_commandQueue(*(v4 + 132), v51, v52, v53);
    v104 = objc_msgSend_commandBuffer(v100, v101, v102, v103);

    objc_msgSend_setLabel_(v104, v105, @"KTRACE_END_MTL", v106);
    v118[0] = MEMORY[0x29EDCA5F8];
    v118[1] = 3221225472;
    v118[2] = sub_295852830;
    v118[3] = &unk_29EDDBE78;
    memset(&v118[4], 0, 24);
    objc_msgSend_addCompletedHandler_(v104, v107, v118, v108);
    objc_msgSend_commit(v104, v109, v110, v111);
  }

  free(__dst);
  free(v98);

  return v24;
}

- (int)_setupFusionConfig
{
  p_nonLinearBias = &self->_fusionConf.colorSpaceConversionParameters[4].transferFunctionInv.nonLinearBias;
  if (!*(self->_regWarpInput + 3))
  {
    sub_2958B7EFC(&v84);
    return v84;
  }

  p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
  if (LODWORD(self->_output) != 3)
  {
    LODWORD(v7) = self->_referenceFrameCandidatesCount;
    if (v7 >= 1)
    {
      v8 = 0;
      bracketProperties = self->_bracketProperties;
      bracketSampleBuffers = self->_bracketSampleBuffers;
      do
      {
        v11 = bracketProperties + 224224 * v8;
        if (v11[223873])
        {
          v8 = (v8 + 1);
        }

        else
        {
          if (v11[5] == 1)
          {
            sub_2958B7A1C(&v84);
            return v84;
          }

          if (v8 == *p_cntBracketSampleBuffers)
          {
            sub_2958B7980(&v84);
            return v84;
          }

          v12 = bracketSampleBuffers[v8];
          if (v12)
          {
            CFRelease(v12);
            bracketSampleBuffers[v8] = 0;
            LODWORD(v7) = p_cntBracketSampleBuffers[2];
          }

          v7 = v7 - 1;
          if (v8 < v7)
          {
            memcpy(bracketProperties + 224224 * v8, bracketProperties + 224224 * v7, 0x36BE0uLL);
            v13 = p_cntBracketSampleBuffers[2] - 1;
            bracketSampleBuffers[v8] = bracketSampleBuffers[v13];
            bracketSampleBuffers[v13] = 0;
            objc_msgSend_swapInputFrame_withFrame_(self->_denoiseFusePipeline, v14, v8, v13);
            LODWORD(v7) = p_cntBracketSampleBuffers[2] - 1;
            if (*p_cntBracketSampleBuffers == v7)
            {
              *p_cntBracketSampleBuffers = v8;
            }
          }

          p_cntBracketSampleBuffers[2] = v7;
        }
      }

      while (v8 < v7);
    }
  }

  p_nonLinearBias[268] = NAN;
  *(p_nonLinearBias + 133) = -1;
  y_low = LODWORD(self->_bracketProperties[1].meta.ROI.origin.y);
  *(p_nonLinearBias + 1080) = y_low == 0;
  *(p_nonLinearBias + 1081) = y_low == 1;
  *(p_nonLinearBias + 1082) = y_low == 2;
  v16 = objc_msgSend_statistics(*(p_cntBracketSampleBuffers + 6), a2, v2, v3);
  if (objc_msgSend_stationary(v16, v17, v18, v19))
  {
    v20 = *(*(*(p_nonLinearBias + 139) + 24) + 140);
  }

  else
  {
    v20 = 0;
  }

  colorSpaceConversionParameters = self->_fusionConf.colorSpaceConversionParameters;
  *(p_nonLinearBias + 1089) = v20 & 1;

  *(p_nonLinearBias + 1090) = *(*(*(p_nonLinearBias + 139) + 24) + 96) == 2;
  *(p_nonLinearBias + 1088) = p_cntBracketSampleBuffers[6] == 2;
  p_outputToLinearYCbCr = &self->_fusionConf.colorSpaceConversionParameters[4].outputToLinearYCbCr;
  bzero(&self->_fusionConf.colorSpaceConversionParameters[4].outputToLinearYCbCr, 0x410uLL);
  if (p_cntBracketSampleBuffers[2] >= 1)
  {
    v26 = 0;
    p_isEVMFrame = &self->_bracketProperties[0].meta.isEVMFrame;
    p_height = &self->_bracketProperties[1].meta.ROI.size.height;
    do
    {
      if (y_low != *(p_height - 4))
      {
        sub_2958B7AB8(&v84);
        return v84;
      }

      *p_outputToLinearYCbCr = *p_height;
      v29 = *(p_height + 1);
      v30 = *(p_height + 2);
      v31 = *(p_height + 4);
      *(p_outputToLinearYCbCr + 3) = *(p_height + 3);
      *(p_outputToLinearYCbCr + 4) = v31;
      *(p_outputToLinearYCbCr + 1) = v29;
      *(p_outputToLinearYCbCr + 2) = v30;
      v32 = *(p_height + 5);
      v33 = *(p_height + 6);
      v34 = *(p_height + 8);
      *(p_outputToLinearYCbCr + 7) = *(p_height + 7);
      *(p_outputToLinearYCbCr + 8) = v34;
      *(p_outputToLinearYCbCr + 5) = v32;
      *(p_outputToLinearYCbCr + 6) = v33;
      v35 = *(p_height + 9);
      v36 = *(p_height + 10);
      v37 = *(p_height + 12);
      *(p_outputToLinearYCbCr + 11) = *(p_height + 11);
      *(p_outputToLinearYCbCr + 12) = v37;
      *(p_outputToLinearYCbCr + 9) = v35;
      *(p_outputToLinearYCbCr + 10) = v36;
      ++v26;
      v38 = p_cntBracketSampleBuffers[2];
      p_outputToLinearYCbCr += 208;
      p_height += 28028;
    }

    while (v26 < v38);
    if (v38 < 1)
    {
      goto LABEL_37;
    }

    v39 = 0;
    v40 = MEMORY[0x29EDCA928];
    p_y = &self->_bracketProperties[1].meta.ROI.origin.y;
    v42 = self->_fusionConf.colorSpaceConversionParameters;
    while (1)
    {
      if (v39 == *p_cntBracketSampleBuffers)
      {
        *(p_nonLinearBias + 267) = v39;
      }

      else if (*p_isEVMFrame)
      {
        *(p_nonLinearBias + 266) = v39;
      }

      else if (p_isEVMFrame[1])
      {
        *(p_nonLinearBias + 268) = v39;
      }

      if (*(p_y - 63))
      {
        v43 = p_y - 6;
      }

      else
      {
        v43 = v40;
      }

      v44 = *v43;
      v45 = *(v43 + 2);
      *&v42->transferFunctionFwd.nonLinearPower = *(v43 + 1);
      *&v42->transferFunctionInv.nonLinearBias = v45;
      *&v42->transferFunctionFwd.linearScale = v44;
      v46 = *(*(p_nonLinearBias + 139) + 24);
      if (!v46)
      {
        sub_2958B7E60(&v84);
        return v84;
      }

      *p_nonLinearBias = *(v46 + 24);
      if (LODWORD(self->_bracketProperties[1].meta.ROI.origin.y) != *p_y)
      {
        break;
      }

      p_isEVMFrame += 224224;
      ++v39;
      v42 = (v42 + 48);
      p_y += 28028;
      if (v39 >= p_cntBracketSampleBuffers[2])
      {
        goto LABEL_37;
      }
    }

    sub_2958B7B54(&v84);
    return v84;
  }

LABEL_37:
  if ((p_nonLinearBias[267] & 0x80000000) != 0)
  {
    sub_2958B7DC4(&v84);
    return v84;
  }

  if ((p_nonLinearBias[266] & 0x80000000) != 0)
  {
    objc_msgSend_setFusionReferenceFrame_(self->_denoiseFusePipeline, v23, 1, v25);
  }

  *(p_nonLinearBias + 271) = objc_msgSend_fusionReferenceFrame(self->_denoiseFusePipeline, v23, v24, v25);
  v50 = p_cntBracketSampleBuffers[6];
  if (v50 == 3)
  {
    p_nonLinearBias[269] = NAN;
LABEL_58:
    v58 = *(p_nonLinearBias + 266);
    goto LABEL_59;
  }

  if (v50 == 2)
  {
    if (p_cntBracketSampleBuffers[3])
    {
      v51 = 0;
    }

    else
    {
      v51 = *(p_nonLinearBias + 267);
    }

    *(p_nonLinearBias + 269) = v51;
    objc_msgSend_setFusionReferenceFrame_(self->_denoiseFusePipeline, v47, 1, v49);
    *(p_nonLinearBias + 1083) = 0;
    goto LABEL_58;
  }

  v52 = objc_msgSend_fusionReferenceFrame(self->_denoiseFusePipeline, v47, v48, v49);
  v56 = 267;
  if (v52 == 2)
  {
    v56 = 266;
  }

  p_nonLinearBias[269] = p_nonLinearBias[v56];
  v57 = objc_msgSend_fusionReferenceFrame(self->_denoiseFusePipeline, v53, v54, v55);
  v58 = *(p_nonLinearBias + 266);
  v60 = v57 == 1 && v58 >= 0;
  *(p_nonLinearBias + 1083) = v60;
  if (v58 < 0 && dword_2A18C2398)
  {
    v88 = 0;
    v87 = 0;
    v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    goto LABEL_58;
  }

LABEL_59:
  v62 = self->_bracketProperties;
  *(p_nonLinearBias + 264) = p_cntBracketSampleBuffers[2];
  if ((v58 & 0x80000000) == 0)
  {
    v63 = *(&v62->meta.metadataHasLtmCurves + 224224 * v58);
    v64 = *(p_nonLinearBias + 267);
    if ((v64 & 0x80000000) != 0)
    {
      if (!*(&v62->meta.metadataHasLtmCurves + 224224 * v58))
      {
        p_nonLinearBias[265] = NAN;
        if (p_nonLinearBias[270])
        {
LABEL_99:
          *(p_nonLinearBias + 265) = v58;
          goto LABEL_100;
        }

        LOBYTE(v65) = 0;
        v67 = 0;
        v66 = 1;
        if ((v58 & 0x80000000) == 0)
        {
LABEL_100:
          sub_2958B7C8C(&v84);
          return v84;
        }

LABEL_76:
        if (!v66)
        {
LABEL_77:
          if (v67 & 1) != 0 || (v65)
          {
            goto LABEL_79;
          }

          sub_2958B7D28(&v84);
          return v84;
        }

LABEL_98:
        sub_2958B7BF0(&v84);
        return v84;
      }

      LOBYTE(v65) = 0;
    }

    else
    {
      v65 = *(&v62->meta.metadataHasLtmCurves + 224224 * v64);
      if ((v63 & 1) == 0)
      {
        if (!v65)
        {
          p_nonLinearBias[265] = NAN;
          if (p_nonLinearBias[270])
          {
            goto LABEL_99;
          }

          goto LABEL_100;
        }

LABEL_67:
        v66 = 0;
        *(p_nonLinearBias + 265) = v64;
        v67 = *(p_nonLinearBias + 1080);
        LOBYTE(v65) = 1;
        if ((v58 & 0x80000000) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_76;
      }
    }

    *(p_nonLinearBias + 265) = v58;
    v67 = *(p_nonLinearBias + 1080);
    goto LABEL_77;
  }

  v64 = *(p_nonLinearBias + 267);
  if ((v64 & 0x80000000) != 0)
  {
    if (*(p_nonLinearBias + 1080))
    {
      v83 = *(p_nonLinearBias + 267);
    }

    else
    {
      v83 = -1;
    }

    *(p_nonLinearBias + 265) = v83;
    goto LABEL_98;
  }

  if (*(&v62->meta.metadataHasLtmCurves + 224224 * v64))
  {
    goto LABEL_67;
  }

  p_nonLinearBias[265] = NAN;
  if (*(p_nonLinearBias + 1080) != 1)
  {
    goto LABEL_98;
  }

  *(p_nonLinearBias + 265) = v64;
LABEL_79:
  v68 = p_cntBracketSampleBuffers[6];
  if ((v68 - 1) >= 2)
  {
    if (v68 == 3 && *(p_nonLinearBias + 1289) == 1)
    {
      objc_msgSend__deepFusionSetWarpReferenceSIFR(self, v47, v48, v49);
    }
  }

  else if (*(p_nonLinearBias + 271) == 2)
  {
    v70 = __invert_f3(*(&colorSpaceConversionParameters->transferFunctionFwd.linearScale + 12 * v58));
    v69 = 0;
    v70.columns[0].i32[3] = 0;
    v70.columns[1].i32[3] = 0;
    v70.columns[2].i32[3] = 0;
    v71 = MEMORY[0x29EDCA928];
    do
    {
      if (v69 == *(p_nonLinearBias + 266) || v69 == *(p_nonLinearBias + 267))
      {
        v72 = (&colorSpaceConversionParameters->transferFunctionFwd.linearScale + 12 * v69);
        v73 = v71[1];
        *v72 = *v71;
        v72[1] = v73;
        v72[2] = v71[2];
      }

      else
      {
        v74 = 0;
        v75 = (colorSpaceConversionParameters + 48 * v69);
        v76 = *v75;
        v77 = v75[1];
        v78 = v75[2];
        v89 = v70;
        v84 = 0uLL;
        v85 = 0uLL;
        v86 = 0uLL;
        do
        {
          *(&v84 + v74 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, COERCE_FLOAT(*&v89.columns[v74])), v77, *v89.columns[v74].f32, 1), v78, v89.columns[v74], 2);
          ++v74;
        }

        while (v74 != 3);
        v79 = v84;
        v80 = v85;
        v81 = v86;
        v75->i32[2] = DWORD2(v84);
        v75[1].i32[2] = DWORD2(v80);
        v75->i64[0] = v79;
        v75[1].i64[0] = v80;
        v75[2].i32[2] = DWORD2(v81);
        v75[2].i64[0] = v81;
      }

      ++v69;
    }

    while (v69 != 4);
  }

  return 0;
}

- (int)_downsampleImageForRegistration:(__CVBuffer *)registration outputImage:(__CVBuffer *)image
{
  selfCopy = self;
  v7 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    self = kdebug_trace();
  }

  if (!registration)
  {
    sub_2958B805C(self);
LABEL_13:
    v12 = -12780;
    goto LABEL_8;
  }

  if (!image)
  {
    sub_2958B7FFC(self);
    goto LABEL_13;
  }

  Width = CVPixelBufferGetWidth(registration);
  Height = CVPixelBufferGetHeight(registration);
  if (CVPixelBufferGetPixelFormatType(registration) == 1751527984)
  {
    sub_2958B7FAC(&v14);
    v12 = v14;
  }

  else
  {
    v11 = objc_msgSend_transform_srcRect_dst_dstRect_rotate_sync_m2m_(*&selfCopy->_registrationPipelineRWPPConfig.numThreads, v10, registration, image, 1, 1, 0.0, 0.0, Width, Height, 0.0, 0.0, (Width >> 1), (Height >> 1));
    v12 = v11;
    if (v11)
    {
      sub_2958B7F4C(v11);
    }
  }

LABEL_8:
  if (*v7 == 1)
  {
    kdebug_trace();
  }

  return v12;
}

- (CGRect)_downscaleRoiForRegistration:(CGRect)registration
{
  v3 = llround(registration.origin.x);
  v4 = llround(registration.origin.y);
  v5 = (((v3 & 1) + v3) / 2);
  v6 = (((v4 & 1) + v4) / 2);
  v7 = ((vcvtmd_s64_f64(registration.size.width) - (v3 & 1)) >> 1);
  v8 = ((vcvtmd_s64_f64(registration.size.height) - (v4 & 1)) >> 1);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)sanityCheckHomographyForBracketIndex:(int)index
{
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_2A1CC4468, a2, &v32, v31, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v33;
    v10 = (&self->_bracketProperties[1].meta.exposureParams.conversion_gain + 56056 * index);
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(&unk_2A1CC4468);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = objc_msgSend_objectAtIndexedSubscript_(v12, v6, 0, v7, v28, v29);
        objc_msgSend_floatValue(v13, v14, v15, v16);
        v30 = v17;
        v20 = objc_msgSend_objectAtIndexedSubscript_(v12, v18, 1, v19);
        objc_msgSend_floatValue(v20, v21, v22, v23);
        v24 = v30;
        DWORD1(v24) = v25;
        v28 = v25;
        v29 = v24;

        v26 = vaddq_f32(v10[2], vmlaq_n_f32(vmulq_n_f32(*v10, *&v30), v10[1], *&v28));
        *v26.i8 = vsub_f32(*&v29, vdiv_f32(*v26.i8, vdup_laneq_s32(v26, 2)));
        if (sqrtf(vaddv_f32(vmul_f32(*v26.i8, *v26.i8))) > 1.0)
        {
          return 0;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_2A1CC4468, v6, &v32, v31, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (int)_registerImages:(BOOL)images
{
  imagesCopy = images;
  selfCopy = self;
  p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
  p_nRegisteredFrames = &self->_nRegisteredFrames;
  p_normalized_snr = &self->_bracketProperties[1].meta.exposureParams.normalized_snr;
  v8 = objc_msgSend_statistics(self->_semanticStyleProperties, a2, images, v3);
  v106 = imagesCopy;
  if (objc_msgSend_stationary(v8, v9, v10, v11) && (v12 = *(*(p_nRegisteredFrames + 341) + 24)) != 0)
  {
    v13 = *(v12 + 140);

    if (v13)
    {
LABEL_19:
      v32 = p_cntBracketSampleBuffers[2];
      if (v32 >= 1)
      {
        v33 = MEMORY[0x29EDCA928];
        v34 = p_normalized_snr;
        do
        {
          if ((*v34 & 1) == 0)
          {
            v35 = v33[1];
            *(v34 + 1) = *v33;
            *(v34 + 2) = v35;
            *(v34 + 3) = v33[2];
            *v34 = 257;
          }

          v34 += 56056;
          --v32;
        }

        while (v32);
      }

      goto LABEL_59;
    }
  }

  else
  {
  }

  if (*(*(p_nRegisteredFrames + 377) + 36) != 2)
  {
    goto LABEL_19;
  }

  v107 = p_nRegisteredFrames;
  v14 = *p_cntBracketSampleBuffers;
  if (*p_cntBracketSampleBuffers < 0)
  {
    goto LABEL_59;
  }

  v15 = p_cntBracketSampleBuffers[2];
  if (v15 <= v14)
  {
    goto LABEL_59;
  }

  bracketProperties = selfCopy->_bracketProperties;
  v17 = MEMORY[0x29EDB9270];
  v103 = p_cntBracketSampleBuffers;
  if (*(&selfCopy->_bracketProperties[1].meta.exposureParams.normalized_snr + 56056 * v14))
  {
    goto LABEL_33;
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v14 = *p_cntBracketSampleBuffers;
  }

  v18 = bracketProperties + 224224 * v14;
  v19 = MEMORY[0x29EDCA928];
  v20 = *(MEMORY[0x29EDCA928] + 16);
  *(v18 + 13993) = *MEMORY[0x29EDCA928];
  *(v18 + 13994) = v20;
  *(v18 + 13995) = *(v19 + 32);
  *(v18 + 111936) = 257;
  ImageBuffer = CMSampleBufferGetImageBuffer(selfCopy->_bracketSampleBuffers[v14]);
  if (!ImageBuffer)
  {
    sub_2958B81DC(&v110);
    goto LABEL_84;
  }

  v22 = ImageBuffer;
  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  v24 = bracketProperties + 224224 * *p_cntBracketSampleBuffers;
  v25 = *(v24 + 9);
  v110 = *(v24 + 8);
  v111 = v25;
  *v117 = 0;
  if (objc_msgSend_shouldDownsampleRWPPInputWithPixelFormat_processingType_(selfCopy, v26, PixelFormatType, p_cntBracketSampleBuffers[6]))
  {
    if (v107[1] != *p_cntBracketSampleBuffers)
    {
      if (PixelFormatType == 1751527984 || !*(v107 + 347))
      {
        v36 = v17;
        v37 = *(v107 + 345);
        v38 = *(v107 + 343);
        v39 = objc_msgSend_commandBuffer(*(v107 + 363), v27, v28, v29);
        v31 = objc_msgSend_convertInput10BitPixBuf_downsampledOutput8BitPixBuf_mtlCommandBuffer_(v37, v40, v22, v38, v39);

        if (v31)
        {
          sub_2958B811C(v31);
          goto LABEL_70;
        }

        objc_msgSend_waitForSchedule(*(v107 + 363), v41, v42, v43);
        p_cntBracketSampleBuffers = v103;
        v17 = v36;
      }

      else
      {
        v30 = objc_msgSend__downsampleImageForRegistration_outputImage_(selfCopy, v27, v22, *(v107 + 343));
        if (v30)
        {
          LODWORD(v31) = v30;
          sub_2958B80BC();
          goto LABEL_70;
        }
      }

      v107[1] = *p_cntBracketSampleBuffers;
    }

    v22 = *(v107 + 343);
    objc_msgSend__downscaleRoiForRegistration_(selfCopy, v27, v28, v29, *&v110, v111);
    v110.i64[0] = v44;
    v110.i64[1] = v45;
    *&v111 = v46;
    *(&v111 + 1) = v47;
  }

  if (!objc_msgSend_processReference_regionOfInterest_numKeypoints_mapping_(*(v107 + 361), v27, v22, &v110, v117, 0))
  {
    if (*v17 == 1)
    {
      kdebug_trace();
    }

    v15 = p_cntBracketSampleBuffers[2];
    if (v15 < 1)
    {
LABEL_59:
      if (v106)
      {
        v90 = p_cntBracketSampleBuffers[2];
        if (v90 >= 1)
        {
          v91 = 0;
          v92 = *p_cntBracketSampleBuffers;
          v93 = p_normalized_snr + 1;
          do
          {
            if (v92)
            {
              v91 += *v93;
            }

            --v92;
            v93 += 224224;
            --v90;
          }

          while (v90);
          if (p_cntBracketSampleBuffers[6] == 2 || v91 > 0)
          {
            goto LABEL_69;
          }

          goto LABEL_81;
        }

        if (p_cntBracketSampleBuffers[6] != 2)
        {
LABEL_81:
          sub_2958B8470(&v110);
LABEL_84:
          LODWORD(v31) = v110.i32[0];
          goto LABEL_70;
        }
      }

LABEL_69:
      LODWORD(v31) = 0;
      goto LABEL_70;
    }

LABEL_33:
    v48 = 0;
    v49 = 0;
    v104 = (v107 + 343);
    v109 = &selfCopy->_bracketProperties[1].meta.ltmCurves.ltmLut.bytes[261];
    v50 = 224376;
    v51 = 224421;
    v52 = 672512;
    v108 = selfCopy;
    v100 = (v107 + 363);
    while (1)
    {
      _X26 = &v109[v48];
      _X9 = selfCopy + v52;
      v55 = &v109[v48 - 357];
      __asm { PRFM            #0, [X9] }

      if ((*v55 & 1) == 0)
      {
        break;
      }

LABEL_58:
      ++v49;
      v48 += 224224;
      v52 += 224224;
      v50 += 8;
      v51 += 224224;
      if (v49 >= v15)
      {
        goto LABEL_59;
      }
    }

    if (*v17 == 1)
    {
      kdebug_trace();
    }

    *v55 = 1;
    v61 = CMSampleBufferGetImageBuffer(*(&selfCopy->super.isa + v50));
    if (!v61)
    {
      sub_2958B83D4(&v110);
      goto LABEL_84;
    }

    v62 = v61;
    v63 = CVPixelBufferGetPixelFormatType(v61);
    shouldDownsampleRWPPInputWithPixelFormat_processingType = objc_msgSend_shouldDownsampleRWPPInputWithPixelFormat_processingType_(selfCopy, v64, v63, p_cntBracketSampleBuffers[6]);
    v68 = v62;
    if (shouldDownsampleRWPPInputWithPixelFormat_processingType)
    {
      if (v49 != v107[1])
      {
        if (v63 == 1751527984 || !*(v107 + 347))
        {
          v70 = *(v107 + 345);
          v102 = *v104;
          v101 = objc_msgSend_commandBuffer(*v100, v66, v62, v67);
          v31 = objc_msgSend_convertInput10BitPixBuf_downsampledOutput8BitPixBuf_mtlCommandBuffer_(v70, v71, v62, v102, v101);

          if (v31)
          {
            sub_2958B82D8(v31);
            goto LABEL_70;
          }

          objc_msgSend_waitForSchedule(*v100, v72, v73, v74);
          p_cntBracketSampleBuffers = v103;
        }

        else
        {
          v69 = objc_msgSend__downsampleImageForRegistration_outputImage_(selfCopy, v66, v62, *v104);
          if (v69)
          {
            LODWORD(v31) = v69;
            sub_2958B8278();
            goto LABEL_70;
          }
        }

        v107[1] = v49;
      }

      v68 = *v104;
    }

    v115 = 0;
    memset(v114, 0, sizeof(v114));
    v77 = objc_msgSend_processNonReference_seedTransform_outputTransform_mapping_(*(v107 + 361), v66, v68, 0, v114, 0);
    if (v109[v48 - 373] == 1)
    {
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(v62, 0);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(v62, 0);
      v80 = *&v109[v48 - 365];
      v110 = v114[0];
      v111 = *(v114 + 12);
      *&v81 = *(&v114[1] + 1);
      *(&v81 + 1) = __PAIR64__(HIDWORD(v114[0]), v115);
      v82 = WidthOfPlane;
      p_cntBracketSampleBuffers = v103;
      v112 = v81;
      LODWORD(v83) = 0;
      *(&v83 + 1) = HeightOfPlane / HIDWORD(v80);
      *v117 = COERCE_UNSIGNED_INT(v82 / v80);
      *&v117[16] = v83;
      v118 = xmmword_2959D5E40;
      LODWORD(v81) = 0;
      *(&v81 + 1) = HIDWORD(v80) / HeightOfPlane;
      v116[0] = COERCE_UNSIGNED_INT(v80 / v82);
      v116[1] = v81;
      v116[2] = xmmword_2959D5E40;
      *&v84 = sub_29581A3D8(v116, &v110, v117);
      HIDWORD(v84) = v85.i32[0];
      v114[0] = v84;
      v114[1] = vextq_s8(vextq_s8(v85, v85, 0xCuLL), v86, 8uLL);
      v115 = v86.i32[2];
    }

    if (v77)
    {
      v109[v48 - 356] = 0;
      v17 = MEMORY[0x29EDB9270];
    }

    else
    {
      *&v109[v48 - 341] = v114[0];
      HIDWORD(v87) = DWORD2(v114[1]);
      *&v109[v48 - 325] = *(v114 + 12);
      *&v87 = *(&v114[1] + 1);
      DWORD2(v87) = v115;
      *&v109[v48 - 309] = v87;
      v88 = objc_msgSend_sanityCheckHomographyForBracketIndex_(v108, v75, v49, v76);
      v109[v48 - 356] = v88;
      v17 = MEMORY[0x29EDB9270];
      if (v88)
      {
        selfCopy = v108;
        ++*v107;
LABEL_55:
        if (*v17 == 1)
        {
          kdebug_trace();
        }

        v15 = p_cntBracketSampleBuffers[2];
        goto LABEL_58;
      }
    }

    __asm { PRFM            #0, [X26] }

    selfCopy = v108;
    if (*(&v108->super.isa + v51))
    {
      sub_2958B8338(v114, &v110);
      goto LABEL_84;
    }

    goto LABEL_55;
  }

  sub_2958B817C();
  LODWORD(v31) = -17401;
LABEL_70:
  if (dword_2A18C2398)
  {
    LODWORD(v116[0]) = 0;
    v113 = OS_LOG_TYPE_DEFAULT;
    v95 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v96 = v116[0];
    if (os_log_type_enabled(v95, v113))
    {
      v97 = v96;
    }

    else
    {
      v97 = v96 & 0xFFFFFFFE;
    }

    if (v97)
    {
      v98 = "failed";
      *v117 = 136315907;
      *&v117[4] = "[NRFProcessorV2 _registerImages:]";
      *&v117[12] = 2113;
      *&v117[14] = @"NRF";
      if (!v31)
      {
        v98 = "succeeded";
      }

      *&v117[22] = 2081;
      *&v117[24] = v98;
      LOWORD(v118) = 1026;
      *(&v118 + 2) = v31 == 0;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v31;
}

- (int)_processSIFRandRefEV0IfPossible:(int)possible
{
  p_referenceFrameIndex = &self->_referenceFrameIndex;
  p_regWarpInput = &self->_regWarpInput;
  p_sifrFrameIndex = &self->_sifrFrameIndex;
  output = self->_output;
  if (output == 3)
  {
    if ((self->_lscGainsTex & 1) == 0)
    {
      if (*p_referenceFrameIndex == 1)
      {
        v10 = *p_sifrFrameIndex >> 31;
      }

      else
      {
        LOBYTE(v10) = 0;
      }

      cntBracketSampleBuffers = self->_cntBracketSampleBuffers;
      if ((cntBracketSampleBuffers & 0x80000000) == 0 && !((cntBracketSampleBuffers >= self->_referenceFrameCandidatesCount) | v10 & 1))
      {
        if (*p_referenceFrameIndex && (*(&self->_bracketProperties[1].meta.exposureParams.normalized_snr + 56056 * *p_sifrFrameIndex) & 1) == 0)
        {
          sub_2958B877C(&v63 + 1);
        }

        else if (*(&self->_bracketProperties[1].meta.exposureParams.normalized_snr + 56056 * cntBracketSampleBuffers))
        {
          v19 = objc_msgSend__setupFusionConfig(self, a2, *&possible, v3);
          if (!v19)
          {

            return objc_msgSend__doDeepFusionSytheticRefererenceAndProxy(self, v20, v21, v22);
          }

          sub_2958B88B4(v19, &v63 + 1);
        }

        else
        {
          sub_2958B8818(&v63 + 1);
        }

        return HIDWORD(v63);
      }
    }

    return 0;
  }

  if (self->_processedSIFRandRefEV0)
  {
    return 0;
  }

  p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
  v12 = self->_cntBracketSampleBuffers;
  if ((v12 & 0x80000000) != 0 || v12 >= self->_referenceFrameCandidatesCount || (v14 = *p_sifrFrameIndex, (v14 & 0x80000000) != 0))
  {
    if (possible != 1 || *p_referenceFrameIndex != 1)
    {
      return 0;
    }

    objc_msgSend_setFusionMode_(self->_deepFusionOutput, a2, 1, v12);
LABEL_41:
    WeakRetained = objc_loadWeakRetained(&self->_progressiveBracketingParameters);
    if (objc_opt_respondsToSelector())
    {
      v59 = objc_msgSend_fusionMode(p_regWarpInput[19], v56, v57, v58);
      objc_msgSend_processor_didSelectFusionMode_(WeakRetained, v60, self, v59);
    }

    return 0;
  }

  bracketProperties = self->_bracketProperties;
  if ((*(&self->_bracketProperties[1].meta.exposureParams.normalized_snr + 56056 * v14) & 1) == 0)
  {
    sub_2958B850C(&v63 + 1);
    return HIDWORD(v63);
  }

  if ((*(&bracketProperties[1].meta.exposureParams.normalized_snr + 56056 * v12) & 1) == 0)
  {
    sub_2958B85A8(&v63 + 1);
    return HIDWORD(v63);
  }

  result = 0;
  *(p_sifrFrameIndex + 4) = 1;
  if (output <= 1)
  {
    if (output != 1)
    {
      return result;
    }

    if (objc_msgSend_selectNRFFusionReferenceFrame_ev0FrameIndex_evmProperties_ev0Properties_nrfPlist_(self->_denoiseFusePipeline, a2, v14, v12, bracketProperties + 224224 * v14, bracketProperties + 224224 * v12, *p_regWarpInput))
    {
      sub_2958B8644(&v63 + 1);
      return HIDWORD(v63);
    }

    v26 = p_sifrFrameIndex;
    if (*(&bracketProperties->meta.metadataHasLtmCurves + 224224 * *p_sifrFrameIndex) || (v26 = p_cntBracketSampleBuffers, *(&bracketProperties->meta.metadataHasLtmCurves + 224224 * *p_cntBracketSampleBuffers)))
    {
      v30 = objc_msgSend_fusionReferenceFrame(self->_denoiseFusePipeline, v23, v24, v25) == 2 ? p_sifrFrameIndex : p_cntBracketSampleBuffers;
      v31 = *v30;
      v32 = *v26;
      v33 = *(&bracketProperties[1].meta.ROI.origin.y + 56056 * v31);
      if (objc_msgSend_inferenceInputPixelBuffer(p_regWarpInput[19], v27, v28, v29))
      {
        if (v33)
        {
          v36 = objc_msgSend_inferenceInputPixelBuffer(p_regWarpInput[19], v23, v34, v35);
          v37 = *p_cntBracketSampleBuffers;
          v41 = objc_msgSend_pixelBuffer(p_regWarpInput[19], v38, v39, v40);
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(v41, 0);
          v46 = objc_msgSend_pixelBuffer(p_regWarpInput[19], v43, v44, v45);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(v46, 0);
          objc_msgSend__processInferenceImage_sourceFrameType_sourceFrameIndex_ltcFrameIndex_gtcFrameIndex_originalWidth_originalHeight_(self, v48, v36, 0, v31, v32, v37, WidthOfPlane, HeightOfPlane);
        }
      }
    }

    if (objc_msgSend_nrfFusionDenseRegister_ev0FrameIndex_evmProperties_ev0Properties_(self->_denoiseFusePipeline, v23, *p_sifrFrameIndex, *p_cntBracketSampleBuffers, bracketProperties + 224224 * *p_sifrFrameIndex, bracketProperties + 224224 * *p_cntBracketSampleBuffers))
    {
      sub_2958B86E0(&v63 + 1);
      return HIDWORD(v63);
    }

    v52 = objc_msgSend_fusionReferenceFrame(self->_denoiseFusePipeline, v49, v50, v51);
    objc_msgSend_setFusionMode_(p_regWarpInput[19], v53, v52, v54);
    goto LABEL_41;
  }

  if (output > 3)
  {
    if ((output - 4) < 2)
    {
      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], a2, *MEMORY[0x29EDB8CC8], @"*** RawNightMode is unsupported in this version of NRF.", 0);
    }

    else if (output == 9)
    {
      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], a2, *MEMORY[0x29EDB8CC8], @"*** LearnedHRNR is unsupported in this version of NRF.", 0);
    }

    else
    {
      if (output != 10)
      {
        return result;
      }

      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], a2, *MEMORY[0x29EDB8CC8], @"*** LearnedFusion is unsupported in this version of NRF.", 0);
    }
    v61 = ;
    objc_exception_throw(v61);
  }

  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v62, v63, v64, v65, v66, v67);
  v17 = qword_2A18C2390;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0xFFFFFFFFLL, "<<<< NRF >>>>", 6168);
}

- (int)_populateDeepFusionMetadata:(id)metadata
{
  p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
  metadataCopy = metadata;
  v6 = *p_cntBracketSampleBuffers;
  if ((v6 & 0x80000000) != 0 || v6 >= p_cntBracketSampleBuffers[2])
  {
    sub_2958B8950(&v23);
    v10 = 0;
    goto LABEL_23;
  }

  bracketSampleBuffers = self->_bracketSampleBuffers;
  v8 = *MEMORY[0x29EDBFF98];
  v10 = CMGetAttachment(self->_bracketSampleBuffers[v6], *MEMORY[0x29EDBFF98], 0);
  if (!v10)
  {
    sub_2958B8B24(&v23);
    goto LABEL_23;
  }

  objc_msgSend_setObject_forKeyedSubscript_(metadataCopy, v9, v10, @"ReferenceMetadata");
  v11 = p_cntBracketSampleBuffers[2];
  if (v11 < 1)
  {
LABEL_18:
    v21 = 0;
    goto LABEL_19;
  }

  v12 = 0;
  p_isLongFrame = &self->_bracketProperties[0].meta.isLongFrame;
  v14 = -1;
  v15 = -1;
  do
  {
    if (*(p_isLongFrame - 1) && v15 < 0)
    {
      v15 = v12;
    }

    if (*p_isLongFrame && v14 < 0)
    {
      v14 = v12;
    }

    ++v12;
    p_isLongFrame += 224224;
  }

  while (v11 != v12);
  if ((v15 & 0x80000000) == 0)
  {
    v16 = CMGetAttachment(bracketSampleBuffers[v15], v8, 0);
    if (v16)
    {
      v18 = v16;
      objc_msgSend_setObject_forKeyedSubscript_(metadataCopy, v17, v16, @"SifrMetadata");

      goto LABEL_14;
    }

    sub_2958B8A88(&v23);
LABEL_23:
    v21 = v23;
    goto LABEL_19;
  }

LABEL_14:
  if (v14 < 0)
  {
    goto LABEL_18;
  }

  v20 = CMGetAttachment(bracketSampleBuffers[v14], v8, 0);
  if (v20)
  {
    objc_msgSend_setObject_forKeyedSubscript_(metadataCopy, v19, v20, @"LongMetadata");
    v21 = 0;
  }

  else
  {
    sub_2958B89EC(&v23);
    v21 = v23;
  }

LABEL_19:
  return v21;
}

- (void)_deepFusionResetWarpTransforms
{
  v2 = 0;
  p_conversion_gain = &self->_bracketProperties[1].meta.exposureParams.conversion_gain;
  v4 = MEMORY[0x29EDCA928];
  do
  {
    v5 = (self->_fusionConf.colorSpaceConversionParameters + v2);
    if (*(p_conversion_gain - 15))
    {
      v6 = p_conversion_gain;
    }

    else
    {
      v6 = v4;
    }

    v7 = *v6;
    v8 = *(v6 + 2);
    v5[1] = *(v6 + 1);
    v5[2] = v8;
    *v5 = v7;
    p_conversion_gain += 56056;
    v2 += 48;
  }

  while (v2 != 240);
}

- (int)_deepFusionSetWarpReference:(int)reference
{
  if (reference < 0)
  {
    sub_2958B8BC0(&v23);
    return v23;
  }

  else
  {
    objc_msgSend__deepFusionResetWarpTransforms(self, a2, *&reference, v3);
    colorSpaceConversionParameters = self->_fusionConf.colorSpaceConversionParameters;
    referenceCopy = reference;
    v8 = colorSpaceConversionParameters + 48 * reference;
    v10 = __invert_f3(*v8);
    v9 = 0;
    v10.columns[0].i32[3] = 0;
    v10.columns[1].i32[3] = 0;
    v10.columns[2].i32[3] = 0;
    do
    {
      if (v9 != referenceCopy)
      {
        v11 = 0;
        v12 = (colorSpaceConversionParameters + 48 * v9);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        v22 = v10;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        do
        {
          *(&v23 + v11 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*&v22.columns[v11])), v14, *v22.columns[v11].f32, 1), v15, v22.columns[v11], 2);
          ++v11;
        }

        while (v11 != 3);
        v16 = v23;
        v17 = v24;
        v18 = v25;
        v12->i32[2] = DWORD2(v23);
        v12[1].i32[2] = DWORD2(v17);
        v12->i64[0] = v16;
        v12[1].i64[0] = v17;
        v12[2].i32[2] = DWORD2(v18);
        v12[2].i64[0] = v18;
      }

      ++v9;
    }

    while (v9 != 5);
    result = 0;
    v20 = MEMORY[0x29EDCA928];
    v21 = *(MEMORY[0x29EDCA928] + 16);
    *v8 = *MEMORY[0x29EDCA928];
    *(v8 + 1) = v21;
    *(v8 + 2) = *(v20 + 32);
  }

  return result;
}

- (int)_doDeepFusionSytheticRefererenceAndProxy
{
  v5 = &self->_anon_17fa20[8];
  v6 = &self->_anon_14893c[1008];
  p_sifrFrameIndex = &self->_sifrFrameIndex;
  v7 = MEMORY[0x29EDB9270];
  v8 = *MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v8 = *v7;
  }

  if (v8)
  {
    v9 = objc_msgSend_commandQueue(*(v6 + 17), a2, v2, v3);
    v13 = objc_msgSend_commandBuffer(v9, v10, v11, v12);

    objc_msgSend_setLabel_(v13, v14, @"KTRACE_START_MTL", v15);
    objc_msgSend_addCompletedHandler_(v13, v16, &unk_2A1CA9620, v17);
    objc_msgSend_commit(v13, v18, v19, v20);
  }

  v21 = *p_sifrFrameIndex;
  v256 = 0;
  *v5 = xmmword_2959D6150;
  *(v5 + 1) = unk_2959D6160;
  v254 = v21;
  if ((v21 & 0x80000000) == 0)
  {
    objc_msgSend__deepFusionSetWarpReferenceSIFR(self, a2, v2, v3);
    objc_msgSend__deepFusionInvalidatePyramids(self, v22, v23, v24);
  }

  v25 = &self->_lscGainsTex + 2;
  HasBeenBuiltArray = objc_msgSend_doDeepFusionPyramidGeneration_properties_syntheticReferenceFramesOnly_pyramidHasBeenBuiltArray_(self->_denoiseFusePipeline, a2, self->_fusionConf.colorSpaceConversionParameters, self->_bracketProperties, 1, &self->_lscGainsTex + 2);
  if (HasBeenBuiltArray)
  {
    sub_2958B8C5C(HasBeenBuiltArray, v257);
    goto LABEL_115;
  }

  bracketProperties = self->_bracketProperties;
  if (v254 < 0)
  {
    v38 = 0;
    v40 = 0;
    *(v6 + 55) = 0;
  }

  else
  {
    started = objc_msgSend_startSyntheticReferenceDetectors_properties_nrfPlist_(self->_denoiseFusePipeline, v27, self->_fusionConf.colorSpaceConversionParameters, self->_bracketProperties, *(v6 + 6));
    if (started)
    {
      v40 = started;
      sub_2958B8CF8();
      goto LABEL_89;
    }

    *(v6 + 55) = 0;
    v32 = objc_msgSend_collectSyntheticReferenceDetectorsResultsSync_srMode_nrfPlist_(self->_denoiseFusePipeline, v31, (v6 + 220), &v256, *(v6 + 6));
    if (v32)
    {
      v40 = v32;
      sub_2958B8D58();
      goto LABEL_89;
    }

    objc_msgSend_setRefFrameTransformIsValid_(*(v6 + 26), v33, v256 == 2, v34);
    if (v256 == 1)
    {
      objc_msgSend__deepFusionRevertWarpToDefault(self, v27, v28, v29);
      objc_msgSend__deepFusionInvalidatePyramids(self, v35, v36, v37);
      v38 = 1;
      v25[*v6] = 1;
      v40 = objc_msgSend_doDeepFusionPyramidGeneration_properties_syntheticReferenceFramesOnly_pyramidHasBeenBuiltArray_(self->_denoiseFusePipeline, v39, self->_fusionConf.colorSpaceConversionParameters, bracketProperties, 1, &self->_lscGainsTex + 2);
      v25[*v6] = 0;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }
  }

  if (objc_msgSend_gainMapOutputPixelBuffer(*(v6 + 26), v27, v28, v29))
  {
    v44 = *v6;
    if (v38)
    {
      *v6 = -1;
    }

    v45 = objc_msgSend_gainMapOutputPixelBuffer(*(v6 + 26), v41, v42, v43);
    if (CVPixelBufferGetPixelFormatType(v45) != 1278226488)
    {
      sub_2958B8DB8();
      v40 = -12780;
      goto LABEL_89;
    }

    v49 = *(v6 + 17);
    v50 = objc_msgSend_gainMapOutputPixelBuffer(*(v6 + 26), v46, v47, v48);
    v52 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v49, v51, v50, 10, 6, 0);
    if (!v52)
    {
      sub_2958B8EC0(v257);
      goto LABEL_115;
    }

    v54 = v52;
    v55 = objc_msgSend_doGainMap_properties_output_outputHeadroom_nrfPlist_useFusedFrame_(self->_denoiseFusePipeline, v53, self->_fusionConf.colorSpaceConversionParameters, bracketProperties, v52, &self->_processedSyntheticReference, *(v6 + 6), 0);
    if (v38)
    {
      *v6 = v44;
    }

    if (v55)
    {
      sub_2958B8E1C(v55, v54, v257);
      goto LABEL_115;
    }

    v249 = v54;
    v40 = 0;
  }

  else
  {
    v249 = 0;
  }

  if (objc_msgSend_inferenceInputPixelBuffer(*(v6 + 26), v41, v42, v43))
  {
    v59 = (v5 + 6);
    if (v254 >= 0)
    {
      v59 = p_sifrFrameIndex;
    }

    v60 = *v59;
    v64 = objc_msgSend_inferenceInputPixelBuffer(*(v6 + 26), v56, v57, v58);
    v65 = *(v5 + 12);
    if (v38)
    {
      v66 = v65;
    }

    else
    {
      v66 = v60;
    }

    v67 = objc_msgSend_syntheticReferencePixelBuffer(*(v6 + 26), v61, v62, v63);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(v67, 0);
    v72 = objc_msgSend_syntheticReferencePixelBuffer(*(v6 + 26), v69, v70, v71);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(v72, 0);
    v75 = objc_msgSend__processInferenceImage_sourceFrameType_sourceFrameIndex_ltcFrameIndex_gtcFrameIndex_originalWidth_originalHeight_(self, v74, v64, 1, v66, v60, v65, WidthOfPlane, HeightOfPlane);
    if (v75)
    {
      sub_2958B8F5C(v75, v249, v257);
      goto LABEL_115;
    }

    v40 = 0;
  }

  if (v254 < 0)
  {
    v76 = 1;
  }

  else
  {
    v76 = v38;
  }

  if ((v76 & 1) == 0)
  {
    *&v77 = sub_295820670(&bracketProperties->meta.exposureParams + 224224 * *p_sifrFrameIndex, &bracketProperties->meta.exposureParams + 224224 * *(v5 + 12), 2);
    v79 = objc_msgSend_computeRansacColorMatchingCoefficients_scaleEv0brightness_applyToPyramid_andStoreTransform_(self->_denoiseFusePipeline, v78, self->_fusionConf.colorSpaceConversionParameters, *(*(v6 + 24) + 73), v5, v77);
    v40 = v79;
    if ((*(*(v6 + 24) + 73) & 1) == 0)
    {
      *v5 = xmmword_2959D6150;
      *(v5 + 1) = unk_2959D6160;
    }

    if (v79)
    {
      sub_2958B9000(v79, v249);
      goto LABEL_89;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_progressiveBracketingParameters);
  if (!*(v6 + 29))
  {
    sub_2958B9658(v257);
LABEL_99:
    v40 = v257[0];
LABEL_106:
    v234 = MEMORY[0x29EDB9270];
    goto LABEL_107;
  }

  if (!objc_msgSend_syntheticReferencePixelBuffer(*(v6 + 26), v80, v81, v82))
  {
    sub_2958B95BC(v257);
    goto LABEL_99;
  }

  if (!objc_msgSend_syntheticReferenceFusionMapPixelBuffer(*(v6 + 26), v84, v85, v86))
  {
    sub_2958B9520(v257);
    goto LABEL_99;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    sub_2958B9070();
    v40 = -12784;
    goto LABEL_106;
  }

  v87 = [LumaChromaImage alloc];
  v88 = *(v6 + 17);
  v92 = objc_msgSend_syntheticReferencePixelBuffer(*(v6 + 26), v89, v90, v91);
  v94 = objc_msgSend_initWithContext_pixelBuffer_lumaAlignmentFactor_chromaAlignmentFactor_(v87, v93, v88, v92, 16, 8);
  if (!v94)
  {
    sub_2958B94C0();
    goto LABEL_106;
  }

  v98 = v94;
  v99 = *(v6 + 17);
  v100 = objc_msgSend_syntheticReferenceFusionMapPixelBuffer(*(v6 + 26), v95, v96, v97);
  v251 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v99, v101, v100, 10, 7, 0);
  if (!v251)
  {
    sub_2958B9450(v98);
    goto LABEL_106;
  }

  v103 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  if (!v103)
  {
    sub_2958B93B4(v257);
    v40 = v257[0];
LABEL_105:

    goto LABEL_106;
  }

  denoiseFusePipeline = self->_denoiseFusePipeline;
  v105 = *(v6 + 29);
  v250 = WeakRetained;
  if (v254 < 0)
  {
    v106 = objc_msgSend_doSyntheticReference_noiseDivisorOutputTex_lscGainsTex_config_evmProperties_evmGreenTintAdjustment_ev0Properties_nrfPlist_intermediateMetadata_(denoiseFusePipeline, v102, v98, v251, v105, self->_fusionConf.colorSpaceConversionParameters, 0, bracketProperties + 224224 * *(v5 + 12), *v5, v5[2], *(v6 + 6), v103);
  }

  else
  {
    v106 = objc_msgSend_doSyntheticReference_noiseDivisorOutputTex_lscGainsTex_config_evmProperties_evmGreenTintAdjustment_ev0Properties_nrfPlist_intermediateMetadata_(denoiseFusePipeline, v102, v98, v251, v105, self->_fusionConf.colorSpaceConversionParameters, bracketProperties + 224224 * *p_sifrFrameIndex, bracketProperties + 224224 * *(v5 + 12), *v5, v5[2], *(v6 + 6), v103);
  }

  if (v106)
  {
    v40 = v106;
    sub_2958B90D4();
    goto LABEL_105;
  }

  v110 = objc_msgSend_syntheticReferenceMetadata(*(v6 + 26), v107, v108, v109);
  objc_msgSend_setObject_forKeyedSubscript_(v110, v111, v103, @"SyntheticReference");

  if (!objc_msgSend_proxyPixelBuffer(*(v6 + 26), v112, v113, v114))
  {
    goto LABEL_71;
  }

  v116 = self->_denoiseFusePipeline;
  v117 = *(v6 + 29);
  if (v254 < 0)
  {
    v118 = objc_msgSend_deepFusionBuildNoiseMap_lscGainsTex_config_evmProperties_evmGreenTintAdjustment_ev0Properties_nrfPlist_(v116, v115, v251, v117, self->_fusionConf.colorSpaceConversionParameters, 0, bracketProperties + 224224 * *(v5 + 12), *(v6 + 6), *v5, v5[2]);
  }

  else
  {
    v118 = objc_msgSend_deepFusionBuildNoiseMap_lscGainsTex_config_evmProperties_evmGreenTintAdjustment_ev0Properties_nrfPlist_(v116, v115, v251, v117, self->_fusionConf.colorSpaceConversionParameters, bracketProperties + 224224 * *p_sifrFrameIndex, bracketProperties + 224224 * *(v5 + 12), *(v6 + 6), *v5, v5[2]);
  }

  if (v118)
  {
    v40 = v118;
    sub_2958B9134();
  }

  else
  {
    v119 = [LumaChromaImage alloc];
    v120 = *(v6 + 17);
    v124 = objc_msgSend_proxyPixelBuffer(*(v6 + 26), v121, v122, v123);
    v126 = objc_msgSend_initWithContext_pixelBuffer_lumaAlignmentFactor_chromaAlignmentFactor_(v119, v125, v120, v124, 16, 8);
    if (v126)
    {
      v130 = v126;
      if (!objc_msgSend_linearOutputPixelBuffer(*(v6 + 26), v127, v128, v129))
      {
LABEL_63:
        if (*(v5 + 13))
        {
          v150 = objc_msgSend_processorGetInferenceResults_(v250, v131, self, v132);
        }

        else
        {
          v150 = 0;
        }

        v151 = self->_denoiseFusePipeline;
        if (v254 < 0)
        {
          v152 = objc_msgSend_doDeepFusionProxyAsset_syntheticReference_evmProperties_ev0Properties_inferenceResults_style_nrfPlist_(v151, v131, v130, v98, 0, bracketProperties + 224224 * *(v5 + 12), v150, *(v5 + 13), *(v6 + 6));
        }

        else
        {
          v152 = objc_msgSend_doDeepFusionProxyAsset_syntheticReference_evmProperties_ev0Properties_inferenceResults_style_nrfPlist_(v151, v131, v130, v98, bracketProperties + 224224 * *p_sifrFrameIndex, bracketProperties + 224224 * *(v5 + 12), v150, *(v5 + 13), *(v6 + 6));
        }

        if (v152)
        {
          v40 = v152;
          sub_2958B9240(v152, v150);
LABEL_62:

LABEL_89:
          v234 = MEMORY[0x29EDB9270];
          goto LABEL_90;
        }

LABEL_71:
        v153 = v250;
        if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_waitForSchedule(*(v6 + 17), v154, v155, v156), !objc_msgSend_proxyPixelBuffer(*(v6 + 26), v157, v158, v159)))
        {
LABEL_83:

          v231 = 0;
          v232 = *p_sifrFrameIndex;
          do
          {
            if (v232 != v231)
            {
              v25[v231] = 0;
            }

            ++v231;
          }

          while (v231 != 5);
          v233 = objc_msgSend_doDeepFusionPyramidGeneration_properties_syntheticReferenceFramesOnly_pyramidHasBeenBuiltArray_(self->_denoiseFusePipeline, v230, self->_fusionConf.colorSpaceConversionParameters, bracketProperties, 0, &self->_lscGainsTex + 2);
          if (!v233)
          {
            v6[224] = 1;

            v40 = 0;
            goto LABEL_89;
          }

          sub_2958B9310(v233, v249, v257);
LABEL_115:
          v40 = v257[0];
          goto LABEL_89;
        }

        if (*MEMORY[0x29EDB9270] == 1)
        {
          kdebug_trace();
        }

        if (objc_msgSend_linearOutputPixelBuffer(*(v6 + 26), v160, v161, v162))
        {
          v166 = objc_msgSend_linearOutputMetadata(*(v6 + 26), v163, v164, v165);
          objc_msgSend_setLinearOutputMetadata_(self, v167, v166, v168);

          v172 = objc_msgSend_linearOutputPixelBuffer(*(v6 + 26), v169, v170, v171);
          v176 = objc_msgSend_linearOutputMetadata(*(v6 + 26), v173, v174, v175);
          objc_msgSend_processor_outputReadyWithFrameType_outputPixelBuffer_outputMetadata_error_(v250, v177, self, 8, v172, v176, 0);
        }

        v178 = *(*(*(v6 + 6) + 40) + 79);
        v179 = objc_msgSend_proxyMetadata(*(v6 + 26), v163, v164, v165);
        v181 = v179;
        v182 = *MEMORY[0x29EDC0230];
        if (v178 == 1)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v179, v180, MEMORY[0x29EDB8EB0], v182);

          v183 = MEMORY[0x29EDBA070];
          STFStillApplied = objc_msgSend_getSTFStillApplied(self->_denoiseFusePipeline, v184, v185, v186);
          v190 = objc_msgSend_numberWithBool_(v183, v188, STFStillApplied, v189);
          v194 = objc_msgSend_proxyMetadata(*(v6 + 26), v191, v192, v193);
          objc_msgSend_setObject_forKeyedSubscript_(v194, v195, v190, *MEMORY[0x29EDC0220]);

          if (!objc_msgSend_getSTFStillApplied(self->_denoiseFusePipeline, v196, v197, v198))
          {
LABEL_82:
            v224 = objc_msgSend_proxyPixelBuffer(*(v6 + 26), v199, v200, v201);
            v228 = objc_msgSend_proxyMetadata(*(v6 + 26), v225, v226, v227);
            v153 = v250;
            objc_msgSend_processor_outputReadyWithFrameType_outputPixelBuffer_outputMetadata_error_(v250, v229, self, 1, v224, v228, 0);

            goto LABEL_83;
          }

          v202 = MEMORY[0x29EDBA070];
          STFStillCorrectionStrength = objc_msgSend_getSTFStillCorrectionStrength_(self->_denoiseFusePipeline, v199, 0, v201);
          v206 = objc_msgSend_numberWithInt_(v202, v204, STFStillCorrectionStrength, v205);
          v210 = objc_msgSend_proxyMetadata(*(v6 + 26), v207, v208, v209);
          objc_msgSend_setObject_forKeyedSubscript_(v210, v211, v206, *MEMORY[0x29EDC0228]);

          v212 = MEMORY[0x29EDBA070];
          STFStillAnalyticsVersion = objc_msgSend_getSTFStillAnalyticsVersion(self->_denoiseFusePipeline, v213, v214, v215);
          v181 = objc_msgSend_numberWithUnsignedInt_(v212, v217, STFStillAnalyticsVersion, v218);
          v222 = objc_msgSend_proxyMetadata(*(v6 + 26), v219, v220, v221);
          objc_msgSend_setObject_forKeyedSubscript_(v222, v223, v181, *MEMORY[0x29EDC0218]);
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(v179, v180, MEMORY[0x29EDB8EA8], v182);
        }

        goto LABEL_82;
      }

      v133 = *(*(v6 + 6) + 56);
      if (v133)
      {
        objc_msgSend_getLumaPedestalWithProperties_plistSource_(DeepFusionCommon, v131, &self->_referenceFrameProperties.meta.exposureParams.blue_gain, *(v133 + 56));
        v138 = v137;
        v139 = p_sifrFrameIndex;
        if (v254 < 0)
        {
          v139 = (v5 + 6);
        }

        v140 = self->_denoiseFusePipeline;
        v141 = v98[2];
        v142 = v98[3];
        v143 = bracketProperties + 224224 * *v139;
        v144 = objc_msgSend_linearOutputPixelBuffer(*(v6 + 26), v134, v135, v136);
        LODWORD(v145) = v138;
        v40 = objc_msgSend_extractLinearBufferWithLumaInput_chromaInput_inputIsLinear_removeChromaBias_lumaPedestal_exposureParams_ccm_output_(v140, v146, v141, v142, 0, 1, v143 + 16, v144, v145, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32));
        if (v40)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      sub_2958B9194(v130, v257);
      v40 = v257[0];
    }

    else
    {
      sub_2958B92B0();
      v40 = 0;
    }
  }

  v234 = MEMORY[0x29EDB9270];
LABEL_107:

LABEL_90:
  v235 = *v234;
  if (*v234 == 1)
  {
    kdebug_trace();
    v235 = *v234;
  }

  if (v235)
  {
    v236 = objc_msgSend_commandQueue(*(v6 + 17), v147, v148, v149);
    v240 = objc_msgSend_commandBuffer(v236, v237, v238, v239);

    objc_msgSend_setLabel_(v240, v241, @"KTRACE_END_MTL", v242);
    v255[0] = MEMORY[0x29EDCA5F8];
    v255[1] = 3221225472;
    v255[2] = sub_29585521C;
    v255[3] = &unk_29EDDBE78;
    memset(&v255[4], 0, 24);
    objc_msgSend_addCompletedHandler_(v240, v243, v255, v244);
    objc_msgSend_commit(v240, v245, v246, v247);
  }

  return v40;
}

- (int)_lowLightMotionDetection
{
  p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
  cntBracketSampleBuffers = self->_cntBracketSampleBuffers;
  if ((cntBracketSampleBuffers & 0x80000000) != 0)
  {
    return 0;
  }

  referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
  if (cntBracketSampleBuffers >= referenceFrameCandidatesCount)
  {
    return 0;
  }

  bracketProperties = self->_bracketProperties;
  if ((*(&self->_bracketProperties[1].meta.exposureParams.normalized_snr + 56056 * cntBracketSampleBuffers) & 1) == 0)
  {
    sub_2958B96F4(&v18);
    return v18;
  }

  v7 = bracketProperties + 224224 * (referenceFrameCandidatesCount - 1);
  if ((v7[224164] & 1) == 0)
  {
    *(v7 + 56042) = 0;
  }

  output = self->_output;
  if ((output - 1) >= 2)
  {
    if ((output - 4) < 2)
    {
      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], a2, *MEMORY[0x29EDB8CC8], @"*** RawNightMode is unsupported in this version of NRF.", 0);
    }

    else if (output == 9)
    {
      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], a2, *MEMORY[0x29EDB8CC8], @"*** LearnedHRNR is unsupported in this version of NRF.", 0);
    }

    else
    {
      if (output != 10)
      {
        return 0;
      }

      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], a2, *MEMORY[0x29EDB8CC8], @"*** LearnedFusion is unsupported in this version of NRF.", 0);
    }
    v17 = ;
    objc_exception_throw(v17);
  }

  v9 = bracketProperties + 224224 * cntBracketSampleBuffers;
  if (v9[224164])
  {
    goto LABEL_10;
  }

  v10 = objc_msgSend_runMotionDetectionLL_imgIndex_imgProperties_refProperties_(self->_denoiseFusePipeline, a2, 1, cntBracketSampleBuffers, v9, bracketProperties + 224224 * cntBracketSampleBuffers);
  if (v10)
  {
    v15 = v10;
    sub_2958B9790();
    return v15;
  }

  bracketProperties[1].meta.ltmCurves.ltmLut.bytes[224224 * *p_cntBracketSampleBuffers + 196] = 1;
  referenceFrameCandidatesCount = p_cntBracketSampleBuffers[2];
  if (referenceFrameCandidatesCount >= 1)
  {
LABEL_10:
    v11 = 0;
    p_highlights = &self->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].RG.highlights;
    v13 = bracketProperties;
    do
    {
      if ((*p_highlights & 1) == 0)
      {
        v14 = objc_msgSend_runMotionDetectionLL_imgIndex_imgProperties_refProperties_(self->_denoiseFusePipeline, a2, 0, v11, v13, bracketProperties + 224224 * *p_cntBracketSampleBuffers);
        if (v14)
        {
          v15 = v14;
          sub_2958B97F0();
          return v15;
        }

        *p_highlights = 1;
        referenceFrameCandidatesCount = p_cntBracketSampleBuffers[2];
      }

      ++v11;
      p_highlights += 112112;
      v13 = (v13 + 224224);
    }

    while (v11 < referenceFrameCandidatesCount);
  }

  return 0;
}

- (int)_lowLightGreenGhostPerFrameProcessing
{
  if (!objc_msgSend_doGreenGhostMitigation(self->_denoiseFusePipeline, a2, v2, v3))
  {
    return 0;
  }

  p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
  cntBracketSampleBuffers = self->_cntBracketSampleBuffers;
  if ((cntBracketSampleBuffers & 0x80000000) != 0)
  {
    return 0;
  }

  referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
  if (cntBracketSampleBuffers >= referenceFrameCandidatesCount)
  {
    return 0;
  }

  v9 = 0;
  output = self->_output;
  if (output > 3)
  {
    if ((output - 4) < 2)
    {
      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v5, *MEMORY[0x29EDB8CC8], @"*** RawNightMode is unsupported in this version of NRF.", 0);
    }

    else if (output == 9)
    {
      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v5, *MEMORY[0x29EDB8CC8], @"*** LearnedHRNR is unsupported in this version of NRF.", 0);
    }

    else
    {
      if (output != 10)
      {
        return v9;
      }

      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v5, *MEMORY[0x29EDB8CC8], @"*** LearnedFusion is unsupported in this version of NRF.", 0);
    }
    v19 = ;
    objc_exception_throw(v19);
  }

  if (output == 2)
  {
    bracketProperties = self->_bracketProperties;
    v12 = self->_bracketProperties + 224224 * cntBracketSampleBuffers;
    if (v12[224214])
    {
      goto LABEL_9;
    }

    v13 = objc_msgSend_greenGhostMitigationWithRefIndex_bracketIndex_refProperties_otherProperties_tuningParams_(self->_denoiseFusePipeline, v5, cntBracketSampleBuffers, self->_cntBracketSampleBuffers, v12, self->_bracketProperties + 224224 * cntBracketSampleBuffers, *(self->_regWarpInput + 15));
    if (v13)
    {
      v9 = v13;
      sub_2958B9850();
      return v9;
    }

    bracketProperties[1].meta.ltmCurves.ltmLut.bytes[224224 * *p_cntBracketSampleBuffers + 246] = 1;
    referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
    if (referenceFrameCandidatesCount >= 1)
    {
LABEL_9:
      v14 = 0;
      p_RG = &self->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[4].RG;
      for (i = self->_bracketProperties; ; i = (i + 224224))
      {
        if ((p_RG->shadows & 1) == 0)
        {
          v17 = objc_msgSend_greenGhostMitigationWithRefIndex_bracketIndex_refProperties_otherProperties_tuningParams_(self->_denoiseFusePipeline, v5, *p_cntBracketSampleBuffers, v14, bracketProperties + 224224 * *p_cntBracketSampleBuffers, i, *(self->_regWarpInput + 15));
          if (v17)
          {
            v9 = v17;
            sub_2958B98B0();
            return v9;
          }

          LOBYTE(p_RG->shadows) = 1;
          referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
        }

        ++v14;
        p_RG = (p_RG + 224224);
        if (v14 >= referenceFrameCandidatesCount)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return v9;
}

- (int)_computeMetricsForReferenceFrameSelection:(int)selection
{
  v3 = (self + 224224 * selection);
  if ((*(v3 + 448612) & 1) == 0)
  {
    v5 = *&selection;
    v91 = 0.0;
    HIDWORD(v90) = 0;
    v7 = CMGetAttachment(self->_bracketSampleBuffers[selection], *MEMORY[0x29EDBFF98], 0);
    v8 = v7;
    if (!v7)
    {
      sub_2958B9A04(&v92);
      LODWORD(v4) = v92;
      goto LABEL_47;
    }

    v87 = v3;
    if (CFDictionaryGetValue(v7, *MEMORY[0x29EDC0630]))
    {
      LODWORD(v4) = portIndexFromPortType();
    }

    else
    {
      LODWORD(v4) = 0;
    }

    LODWORD(v11) = -1.0;
    p_maxFocusScore = &self->_maxFocusScore;
    v12 = objc_msgSend_objectForKeyedSubscript_(v8, v9, *MEMORY[0x29EDC03E8], v10, v11);
    objc_msgSend_doubleValue(v12, v13, v14, v15);
    v17 = v16;

    v88 = objc_msgSend_objectForKeyedSubscript_(v8, v18, *MEMORY[0x29EDC0518], v19);
    v24 = objc_msgSend_objectForKeyedSubscript_(v88, v20, *MEMORY[0x29EDC0780], v21);
    if (v24)
    {
      v25 = objc_msgSend_objectForKeyedSubscript_(v8, v22, *MEMORY[0x29EDC0510], v23);
      v29 = objc_msgSend_intValue(v25, v26, v27, v28);

      if (*(*(self->_regWarpInput + 10) + 9) == 1)
      {
        if (v29 == 2)
        {
          v33 = objc_msgSend_objectAtIndexedSubscript_(v24, v30, 0, v32);
          objc_msgSend_doubleValue(v33, v34, v35, v36);
          v17 = v37;

          goto LABEL_22;
        }

        if (objc_msgSend_count(v24, v30, v31, v32) != 1)
        {
          v55 = 0;
          v41 = 0.0;
          do
          {
            v56 = objc_msgSend_objectAtIndexedSubscript_(v24, v53, v55, v54);
            objc_msgSend_doubleValue(v56, v57, v58, v59);
            v41 = v41 + v60;

            ++v55;
          }

          while (v55 < objc_msgSend_count(v24, v61, v62, v63) - 1);
          if (v41 > 0.0)
          {
            v52 = objc_msgSend_count(v24, v53, v64, v54) - 1;
            goto LABEL_21;
          }
        }
      }

      else
      {
        v38 = v29 == 2;
        if (objc_msgSend_count(v24, v30, v31, v32) - 1 > v38)
        {
          v41 = 0.0;
          v42 = v29 == 2;
          do
          {
            v43 = objc_msgSend_objectAtIndexedSubscript_(v24, v39, v42, v40);
            objc_msgSend_doubleValue(v43, v44, v45, v46);
            v41 = v41 + v47;

            ++v42;
          }

          while (v42 < objc_msgSend_count(v24, v48, v49, v50) - 1);
          if (v41 > 0.0)
          {
            v52 = objc_msgSend_count(v24, v39, v51, v40) + ~v38;
LABEL_21:
            v17 = v41 / v52;
          }
        }
      }
    }

LABEL_22:
    v65 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    objc_msgSend_addObject_(v65, v66, v8, v67);
    v68 = FigMotionComputeBlurScores();
    v72 = v68 != 0;
    if ((BYTE2(self->_nrfFusionOutput->_inferenceInputPixelBuffer) & 1) != 0 || (v73 = v68, objc_msgSend_statistics(self->_semanticStyleProperties, v69, v70, v71), v74 = objc_claimAutoreleasedReturnValue(), v78 = objc_msgSend_stationary(v74, v75, v76, v77), v74, v78))
    {
      if (v4)
      {
        v91 = 0.0;
      }
    }

    else
    {
      if (v73)
      {
        v79 = v4 == 0;
      }

      else
      {
        v79 = 0;
      }

      if (v79)
      {
        v4 = 23;
      }

      else
      {
        v4 = v4;
      }

      if (v4)
      {
        sub_2958B9910(v4);
LABEL_46:

LABEL_47:
        return v4;
      }
    }

    v80 = objc_msgSend__computeCornersStrengthWithBracketIndex_totalCornerStrength_(self, v69, v5, &v90 + 4);
    if (v80)
    {
      LODWORD(v4) = v80;
      sub_2958B9970();
    }

    else
    {
      if (!self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing)
      {
        referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
        if (referenceFrameCandidatesCount <= 3)
        {
          if (referenceFrameCandidatesCount == 1)
          {
            *&self->_maxBlinkDetectScore = v17;
            v82 = *(&v90 + 1);
            v83 = v91;
          }

          else
          {
            v84 = *&self->_maxBlinkDetectScore;
            if (v84 <= v17)
            {
              v84 = v17;
            }

            *&self->_maxBlinkDetectScore = v84;
            v82 = *(&v90 + 1);
            if (*p_maxFocusScore > *(&v90 + 1))
            {
              v82 = *p_maxFocusScore;
            }

            v83 = v91;
            if (*(&self->_maxFocusScore + 1) < v91)
            {
              v83 = *(&self->_maxFocusScore + 1);
            }
          }

          *p_maxFocusScore = v82;
          *(&self->_maxFocusScore + 1) = v83;
        }
      }

      LODWORD(v4) = 0;
      v87[56074] = v17;
      v85 = HIDWORD(v90);
      *(v87 + 112150) = v91;
      *(v87 + 448604) = v72;
      *(v87 + 112152) = v85;
      *(v87 + 448612) = 1;
    }

    goto LABEL_46;
  }

  LODWORD(v4) = 0;
  return v4;
}

- (int)_perFrameProcessingComputeReferenceFrameIndexIfReady
{
  if (self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing <= 0 && self->_referenceFrameCandidatesCount == 3)
  {
    return objc_msgSend__computeReferenceFrameIndex(self, a2, v2, v3);
  }

  else
  {
    return 0;
  }
}

- (int)_computeReferenceFrameIndex
{
  referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
  if ((referenceFrameCandidatesCount - 4) <= 0xFFFFFFFC)
  {
    sub_2958B9B34(&v27);
    return v27;
  }

  else
  {
    v4 = 0;
    p_shadows = &self->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[4].RR.shadows;
    memset(v25, 0, sizeof(v25));
    v26 = 0;
    memset(v23, 0, sizeof(v23));
    v24 = 0;
    memset(v21, 0, sizeof(v21));
    v22 = 0;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v6 = *&self->_maxBlinkDetectScore;
    if (v6 <= 1.0e-10)
    {
      v6 = 1.0;
    }

    v8 = *&self->_maxFocusScore;
    v7 = *(&self->_maxFocusScore + 1);
    if (v7 <= 1.0e-10)
    {
      v7 = 1.0;
    }

    if (v8 <= 1.0e-10)
    {
      v8 = 1.0;
    }

    if (*&self->_anon_17fa15[3] <= 1.0e-10)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = *&self->_anon_17fa15[3];
    }

    do
    {
      v10 = *(p_shadows - 4) / v6;
      *(v23 + v4) = v10;
      *(v25 + v4) = *(p_shadows - 6) / v7;
      *(v21 + v4) = *(p_shadows - 4) / v8;
      *(v19 + v4) = *p_shadows / v9;
      v4 += 4;
      p_shadows += 56056;
    }

    while (4 * referenceFrameCandidatesCount != v4);
    p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
    SharpestBracket_normGyroScores_normCornerScores_normFocusScores_normBlinkScores_useLongWeights_sharpFrameIndex = objc_msgSend__getSharpestBracket_normGyroScores_normCornerScores_normFocusScores_normBlinkScores_useLongWeights_sharpFrameIndex_(self, a2, referenceFrameCandidatesCount, v25, v21, v23, v19, (self->_bracketProperties[0].meta.exposureParams.exposure_time * 1000.0) > 200.0, &self->_cntBracketSampleBuffers);
    if (SharpestBracket_normGyroScores_normCornerScores_normFocusScores_normBlinkScores_useLongWeights_sharpFrameIndex)
    {
      v17 = SharpestBracket_normGyroScores_normCornerScores_normFocusScores_normBlinkScores_useLongWeights_sharpFrameIndex;
      sub_2958B9AA0();
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_progressiveBracketingParameters);
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = objc_loadWeakRetained(&self->_progressiveBracketingParameters);
        objc_msgSend_processor_didSelectProgressiveFusionReferenceFrameIndex_(v15, v16, self, *p_cntBracketSampleBuffers);
      }

      return 0;
    }
  }

  return v17;
}

- (int)_computeCornersStrengthWithBracketIndex:(unsigned int)index totalCornerStrength:(float *)strength
{
  p_referenceFrameCandidatesCount = &self->_referenceFrameCandidatesCount;
  if (self->_referenceFrameCandidatesCount <= index)
  {
    sub_2958B9BD0(&v34);
LABEL_22:
    LODWORD(v9) = v34;
    return v9;
  }

  if (!strength)
  {
    sub_2958B9D90(&v34);
    goto LABEL_22;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(self->_bracketSampleBuffers[index]);
  if (!ImageBuffer)
  {
    sub_2958B9D40(&v34);
    goto LABEL_22;
  }

  v9 = ImageBuffer;
  v10 = *(&self->_bracketProperties[0].meta.ROI.size + 14014 * index);
  p_curRegWarpTempIndex = &self->_curRegWarpTempIndex;
  v32 = *(&self->_bracketProperties[0].meta.ROI.origin + 14014 * index);
  v33 = v10;
  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  if (objc_msgSend_shouldDownsampleRWPPInputWithPixelFormat_processingType_(self, v13, PixelFormatType, p_referenceFrameCandidatesCount[4]))
  {
    if (*p_curRegWarpTempIndex != index)
    {
      if (PixelFormatType == 1751527984 || *&self->_registrationPipelineRWPPConfig.numThreads == 0)
      {
        regWarpM2M = self->_regWarpM2M;
        regWarpHelper = self->_regWarpHelper;
        v20 = objc_msgSend_commandBuffer(*&self->_fusionOptions, v14, v15, v16);
        v9 = objc_msgSend_convertInput10BitPixBuf_downsampledOutput8BitPixBuf_mtlCommandBuffer_(regWarpM2M, v21, v9, regWarpHelper, v20);

        if (v9)
        {
          sub_2958B9C80(v9);
          return v9;
        }

        objc_msgSend_waitForSchedule(*&self->_fusionOptions, v22, v23, v24);
      }

      else
      {
        v25 = objc_msgSend__downsampleImageForRegistration_outputImage_(self, v14, v9, self->_regWarpHelper);
        if (v25)
        {
          LODWORD(v9) = v25;
          sub_2958B9C20();
          return v9;
        }
      }

      *p_curRegWarpTempIndex = index;
    }

    v9 = self->_regWarpHelper;
    objc_msgSend__downscaleRoiForRegistration_(self, v14, v15, v16, v32, v33, v32, v33);
    *&v32 = v26;
    *(&v32 + 1) = v27;
    *&v33 = v28;
    *(&v33 + 1) = v29;
  }

  v30 = objc_msgSend_calculateTotalCornerStrength_regionOfInterest_mapping_outTotalCornerStrength_(self->_metal, v14, v9, &v32, 0, strength);
  LODWORD(v9) = v30;
  if (v30)
  {
    sub_2958B9CE0(v30);
  }

  return v9;
}

- (int)_getSharpestBracket:(int)bracket normGyroScores:(float *)scores normCornerScores:(float *)cornerScores normFocusScores:(float *)focusScores normBlinkScores:(float *)blinkScores useLongWeights:(unsigned __int8)weights sharpFrameIndex:(int *)index
{
  if (!index)
  {
    sub_2958BA188(&v21);
    return v21;
  }

  if (!scores)
  {
    sub_2958BA0EC(&v21);
    return v21;
  }

  if (!cornerScores)
  {
    sub_2958BA050(&v21);
    return v21;
  }

  if (!focusScores)
  {
    sub_2958B9FB4(&v21);
    return v21;
  }

  if (!blinkScores)
  {
    sub_2958B9F18(&v21);
    return v21;
  }

  if (bracket >= 4)
  {
    sub_2958B9E7C(&v21);
    return v21;
  }

  v9 = *(self->_regWarpInput + 10);
  if (!v9)
  {
    sub_2958B9DE0(&v21);
    return v21;
  }

  if (bracket >= 1)
  {
    v10 = 0;
    v11 = &OBJC_IVAR___FrameSelectionPlist_referenceSelectionRegressionWeightLongFrame;
    if (!weights)
    {
      v11 = &OBJC_IVAR___FrameSelectionPlist_referenceSelectionRegressionWeightShortFrame;
    }

    v12 = (v9 + *v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    v17 = 3.4028e38;
    do
    {
      v18 = v13 + v14 * scores[v10] + v15 * cornerScores[v10] + v16 * focusScores[v10];
      v19 = *(*(self->_regWarpInput + 10) + 184);
      if (v19 && *(v19 + 8))
      {
        v18 = (*(v19 + 72) * (1.0 - blinkScores[v10])) + v18 * (1.0 - *(v19 + 72));
      }

      if (!v10 || v17 > v18)
      {
        *index = v10;
        v17 = v18;
      }

      ++v10;
    }

    while (bracket != v10);
  }

  return 0;
}

- (int)_computeBlurryFrameWeight:(int)weight
{
  p_maxFocusScore = &self->_maxFocusScore;
  v4 = self + 224224 * weight;
  *(v4 + 112154) = 1065353216;
  if (LODWORD(self->_output) != 2)
  {
    return 0;
  }

  selfCopy = self;
  regWarpInput = self->_regWarpInput;
  v7 = *(regWarpInput + 10);
  if (v7)
  {
    if (*(v7 + 10) == 1 && (v4[448620] & 1) == 0)
    {
      cntBracketSampleBuffers = self->_cntBracketSampleBuffers;
      if ((cntBracketSampleBuffers & 0x80000000) == 0)
      {
        referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
        if (cntBracketSampleBuffers < referenceFrameCandidatesCount)
        {
          v10 = &OBJC_IVAR___FrameSelectionPlist_blurFrameRejectionRegressionWeightShortFrame;
          if (self->_bracketProperties[0].meta.exposureParams.exposure_time > 0.2)
          {
            v10 = &OBJC_IVAR___FrameSelectionPlist_blurFrameRejectionRegressionWeightLongFrame;
          }

          v11 = (v7 + *v10);
          do
          {
            _X8 = &selfCopy->_bracketProperties[4].meta.ltmCurves.ltmLut.ccmV1.lutsData[27].GG.mid;
            __asm { PRFM            #0, [X8] }

            if ((selfCopy->_bracketProperties[1].meta.ltmCurves.ltmLut.bytes[236] & 1) == 0)
            {
              if (cntBracketSampleBuffers)
              {
                v18 = *(regWarpInput + 10);
                v19 = *(v18 + 176);
                v20 = *(v18 + 180);
                v21 = 0.5;
                if (v19 < v20)
                {
                  v22 = *&selfCopy->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].GR.highlights / p_maxFocusScore[1];
                  v23 = exp(*v11 + v11[1] * *&selfCopy->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].GB.shadows + v11[2] * (*&selfCopy->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].BR.mid / *p_maxFocusScore) + v11[4] * *&selfCopy->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].RB.mid + v11[3] * v22);
                  *&v23 = v23 / (v23 + 1.0);
                  v24 = (*&v23 - v19) / (v20 - v19);
                  v25 = v24;
                  v26 = v24 >= 1.0;
                  v27 = v24 > 0.0 || v24 >= 1.0;
                  if (v24 <= 0.0)
                  {
                    v26 = 1;
                  }

                  if (v27)
                  {
                    v28 = 1.0;
                  }

                  else
                  {
                    v28 = 0.0;
                  }

                  if (!v26)
                  {
                    v28 = v25;
                  }

                  v21 = 1.0 - v28;
                }

                *&selfCopy->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].BG.highlights = v21;
              }

              selfCopy->_bracketProperties[1].meta.ltmCurves.ltmLut.bytes[236] = 1;
            }

            selfCopy = (selfCopy + 224224);
            --cntBracketSampleBuffers;
            --referenceFrameCandidatesCount;
          }

          while (referenceFrameCandidatesCount);
        }
      }
    }

    return 0;
  }

  v30 = qword_2A18C2390;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 0xFFFFFFFFLL, "<<<< NRF >>>>", 7135);
}

- (void)setSharedMetalBuffer:(id)buffer
{
  bufferCopy = buffer;
  objc_msgSend_releaseResources(self->_denoiseFusePipeline, v5, v6, v7);
  sharedMetalBuffer = self->_sharedMetalBuffer;
  self->_sharedMetalBuffer = bufferCopy;

  self->_usingExternalSharedMetalBuffer = 1;
}

- (void)setSharedRegWarpBuffer:(id)buffer
{
  bufferCopy = buffer;
  if (self->_sharedRegWarpBuffer != bufferCopy)
  {
    v9 = bufferCopy;
    objc_msgSend_releaseResources(self->_metal, v6, v7, v8);
    objc_storeStrong(&self->_sharedRegWarpBuffer, buffer);
    bufferCopy = v9;
    self->_usingExternalSharedRegWarpBuffer = 1;
    self->_regwarpHasBeenSetup = 0;
  }
}

- (NRFProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_progressiveBracketingParameters);

  return WeakRetained;
}

- (int)_nrfFuseImages:(BOOL)images
{
  imagesCopy = images;
  v5 = &self->_referenceFrameIndex + 1;
  denoiseFusePipeline = &self->_anon_14893c[1004];
  WeakRetained = objc_loadWeakRetained(&self->_progressiveBracketingParameters);
  v8 = *(v5 + 31);
  v12 = objc_msgSend_inferenceInputPixelBuffer(*(denoiseFusePipeline + 204), v9, v10, v11);
  v156 = WeakRetained;
  v16 = objc_opt_respondsToSelector();
  if (v12 || objc_msgSend_providesInferencesWithoutInferenceInputPixelBuffer(*(denoiseFusePipeline + 204), v13, v14, v15)) && (v16)
  {
    v17 = v161;
    v161[0] = MEMORY[0x29EDCA5F8];
    v161[1] = 3221225472;
    v161[2] = sub_295851BDC;
    v161[3] = &unk_29EDDC3A8;
    v144 = v162;
    v162[0] = WeakRetained;
    v162[1] = self;
    v18 = 1;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v149 = MEMORY[0x29C253310](v17);
  if (!*(*(denoiseFusePipeline + 52) + 24))
  {
    sub_2958569E0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v143, v144, v145, v146, v149, v150, v152);
    v134 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0xD4007FF0142BB800, 0xFFFFFFFFLL, "<<<< NRF >>>>", 5037, denoiseFusePipeline);
LABEL_75:
    v91 = v134;
    goto LABEL_76;
  }

  v147 = v18;
  v154 = imagesCopy;
  if (!v12 || !imagesCopy || v8 == 2)
  {
    goto LABEL_13;
  }

  if (denoiseFusePipeline[20] == 1)
  {
    sub_2958569E0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v143, v144, v145, v146, v149, v150, v152);
    v134 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0xD4007FF0142BB800, 4294954514, "<<<< NRF >>>>", 5042, denoiseFusePipeline);
    goto LABEL_75;
  }

  v22 = v8;
  v23 = objc_msgSend_inferenceInputPixelBuffer(*(denoiseFusePipeline + 204), v19, v20, v21);
  v24 = *(denoiseFusePipeline + 4);
  v25 = *denoiseFusePipeline;
  v26 = *(denoiseFusePipeline + 2);
  v30 = objc_msgSend_pixelBuffer(*(denoiseFusePipeline + 204), v27, v28, v29);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(v30, 0);
  v35 = objc_msgSend_pixelBuffer(*(denoiseFusePipeline + 204), v32, v33, v34);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(v35, 0);
  v38 = objc_msgSend__processInferenceImage_sourceFrameType_sourceFrameIndex_ltcFrameIndex_gtcFrameIndex_originalWidth_originalHeight_(self, v37, v23, 0, v24, v25, v26, WidthOfPlane, HeightOfPlane);
  if (v38)
  {
    v91 = v38;
    sub_295808C24();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v140, v143, v144, v145, v146, v149, v150, v152);
    v85 = 0;
    LODWORD(v18) = v148;
    goto LABEL_37;
  }

  v18 = v147;
  v8 = v22;
LABEL_13:
  LOBYTE(v140) = v8 == 2;
  bracketProperties = self->_bracketProperties;
  isLowLight = objc_msgSend_fuseFramesWithConfig_properties_nrfPlist_batchN_isLastBatch_usePatchBasedFusion_isLowLight_(self->_denoiseFusePipeline, v19, self->_fusionConf.colorSpaceConversionParameters, self->_bracketProperties, v140);
  if (isLowLight)
  {
    v91 = isLowLight;
    sub_295808C24();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v141, v143, v144, v145, v146, v149, bracketProperties, v152);
LABEL_76:
    v85 = 0;
    goto LABEL_37;
  }

  v153 = v8;
  v155 = denoiseFusePipeline;
  v40 = v156;
  v41 = objc_opt_respondsToSelector();
  v42 = objc_opt_respondsToSelector();
  v46 = v42;
  if (v41 & 1) != 0 || (v42)
  {
    v50 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v43, v44, v45);
    if (*(v5 + 15) >= 1)
    {
      v51 = 0;
      v40 = 0x29EDBA000uLL;
      do
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(self->_bracketSampleBuffers[v51]);
        IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
        ID = IOSurfaceGetID(IOSurface);
        denoiseFusePipeline = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v55, ID, v56);
        objc_msgSend_addObject_(v50, v57, denoiseFusePipeline, v58);

        if (v41)
        {
          objc_msgSend_processor_didEnqueueProcessingForSurfaceID_(v156, v47, self, ID);
        }

        ++v51;
      }

      while (v51 < *(v5 + 15));
    }

    if (v46)
    {
      denoiseFusePipeline = objc_msgSend_commandQueue(*(v155 + 140), v47, v48, v49);
      v62 = objc_msgSend_commandBuffer(denoiseFusePipeline, v59, v60, v61);

      v157[0] = MEMORY[0x29EDCA5F8];
      v157[1] = 3221225472;
      v157[2] = sub_295851BE8;
      v157[3] = &unk_29EDDC3D0;
      v158 = v50;
      v159 = v156;
      selfCopy = self;
      objc_msgSend_addCompletedHandler_(v62, v63, v157, v64);
      objc_msgSend_commit(v62, v65, v66, v67);
    }

    v18 = v147;
  }

  v68 = *(v5 + 15);
  v69 = v155;
  v70 = v153;
  if (v68 >= 1)
  {
    v40 = 0;
    bracketSampleBuffers = self->_bracketSampleBuffers;
    do
    {
      v72 = bracketSampleBuffers[v40];
      if (v72)
      {
        CFRelease(v72);
        bracketSampleBuffers[v40] = 0;
        v68 = *(v5 + 15);
      }

      ++v40;
    }

    while (v40 < v68);
  }

  objc_msgSend_releaseInputBindings(self->_denoiseFusePipeline, v43, v44, v45);
  if (!v154)
  {
    v85 = 0;
LABEL_36:
    v91 = 0;
LABEL_37:
    v92 = v149;
    goto LABEL_69;
  }

  if (objc_msgSend_gainMapOutputPixelBuffer(*(v155 + 204), v73, v74, v75))
  {
    v79 = objc_msgSend_gainMapOutputPixelBuffer(*(v155 + 204), v76, v77, v78);
    if (CVPixelBufferGetPixelFormatType(v79) != 1278226488)
    {
      sub_2957F884C();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v141, v143, v144, v145, v146, v149, bracketProperties, v153);
      v85 = 0;
      v91 = -12780;
      goto LABEL_37;
    }

    denoiseFusePipeline = *(v155 + 140);
    v83 = objc_msgSend_gainMapOutputPixelBuffer(*(v155 + 204), v80, v81, v82);
    v85 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(denoiseFusePipeline, v84, v83, 10, 7, 0);
    if (!v85)
    {
      sub_2958569E0();
      LODWORD(v141) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v141, v143, v144, v145, v146, v149, bracketProperties, v153);
      sub_2957F8880();
      v139 = 5114;
LABEL_82:
      LinearBufferWithConfig_referenceFrameProperties_output = FigSignalErrorAtGM(v135, v136, v137, v138, v139, denoiseFusePipeline);
      goto LABEL_83;
    }

    sub_2958569FC();
    if (objc_msgSend_doGainMap_properties_output_outputHeadroom_nrfPlist_useFusedFrame_(v86, v87, v88, bracketProperties, v85, &self->_processedSyntheticReference))
    {
      sub_2958569E0();
      LODWORD(v141) = v89;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v141, v143, v144, v145, v146, v149, bracketProperties, v153);
      LinearBufferWithConfig_referenceFrameProperties_output = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v40 + 912), 0xFFFFFFFFLL, "<<<< NRF >>>>", 5122, denoiseFusePipeline);
LABEL_83:
      v91 = LinearBufferWithConfig_referenceFrameProperties_output;
      goto LABEL_37;
    }
  }

  else
  {
    v85 = 0;
  }

  if (v153 == 2)
  {
    v93 = v18;
  }

  else
  {
    v93 = 0;
  }

  if (v93 != 1)
  {
    goto LABEL_45;
  }

  if (v155[20] == 1)
  {
    sub_2958569E0();
    LODWORD(v141) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v141, v143, v144, v145, v146, v149, bracketProperties, v153);
    v136 = *(v40 + 912);
    v135 = "%s signalled err=%d at <>:%d";
    v138 = "<<<< NRF >>>>";
    v137 = 4294954514;
    v139 = 5128;
    goto LABEL_82;
  }

  denoiseFusePipeline = objc_msgSend_inferenceInputPixelBuffer(*(v155 + 204), v76, v77, v78);
  v94 = *(v155 + 4);
  v95 = *v155;
  v96 = *(v155 + 2);
  v100 = objc_msgSend_pixelBuffer(*(v155 + 204), v97, v98, v99);
  v40 = v18;
  v18 = CVPixelBufferGetWidthOfPlane(v100, 0);
  v104 = objc_msgSend_pixelBuffer(*(v155 + 204), v101, v102, v103);
  v105 = CVPixelBufferGetHeightOfPlane(v104, 0);
  v70 = v153;
  v106 = v96;
  v69 = v155;
  v107 = v18;
  LODWORD(v18) = v40;
  v109 = objc_msgSend__processInferenceImage_sourceFrameType_sourceFrameIndex_ltcFrameIndex_gtcFrameIndex_originalWidth_originalHeight_(self, v108, denoiseFusePipeline, 2, v94, v95, v106, v107, v105);
  if (v109)
  {
    v91 = v109;
    sub_295808C24();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v141, v143, v144, v145, v146, v149, bracketProperties, v153);
    goto LABEL_37;
  }

LABEL_45:
  if (objc_msgSend_linearOutputPixelBuffer(*(v69 + 204), v76, v77, v78))
  {
    denoiseFusePipeline = self->_denoiseFusePipeline;
    v113 = bracketProperties + 224224 * *v69;
    objc_msgSend_linearOutputPixelBuffer(*(v69 + 204), v110, v111, v112);
    sub_2958569FC();
    LinearBufferWithConfig_referenceFrameProperties_output = objc_msgSend_extractLinearBufferWithConfig_referenceFrameProperties_output_(denoiseFusePipeline, v114, v115, v113);
    if (LinearBufferWithConfig_referenceFrameProperties_output)
    {
      goto LABEL_83;
    }
  }

  objc_msgSend_resetFusion_(self->_denoiseFusePipeline, v110, *(v5 + 31), v112);
  v119 = *(v69 + 52);
  v120 = *(v119 + 40);
  if (!v120)
  {
    sub_2958569E0();
    LODWORD(v141) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v141, v143, v144, v145, v146, v149, bracketProperties, v153);
    LinearBufferWithConfig_referenceFrameProperties_output = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v40 + 912), 0xFFFFFFFFLL, "<<<< NRF >>>>", 5152, denoiseFusePipeline);
    goto LABEL_83;
  }

  v121 = v70 == 2 && *(v120 + 108) == 1 && *(v69 + 91) > *(v120 + 112) && *(v69 + 93) > *(v120 + 116);
  v122 = *(v120 + 120);
  v123 = *(v120 + 121);
  if (v123 == 1 && v122 != 0)
  {
    sub_2957F884C();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v141, v143, v144, v145, v146, v149, bracketProperties, v153);
    goto LABEL_36;
  }

  v125 = v121 | v123;
  if (v123)
  {
    v126 = 3;
  }

  else
  {
    v126 = 2;
  }

  if (v121)
  {
    v127 = 1;
  }

  else
  {
    v127 = v126;
  }

  if ((v125 & 1) == 0 && (v122 & 1) == 0)
  {
    v127 = -(*v5 ^ 1);
  }

  v128 = self->_denoiseFusePipeline;
  v129 = *(v5 + 63);
  objc_msgSend_pixelBuffer(*(v69 + 204), v116, v117, v118);
  BYTE4(v141) = v70 == 2;
  sub_2958569FC();
  LODWORD(v141) = v127;
  v92 = v149;
  isLowLight_gainMap = objc_msgSend_toneMapAndDenoiseFusedFramesWithConfig_properties_nrfPlist_style_output_inferenceProvider_colorCubeFixType_isLowLight_gainMap_(v128, v130, v131, bracketProperties, v119, v129, v141, v85);
  v91 = isLowLight_gainMap;
  if (isLowLight_gainMap)
  {
    LODWORD(v142) = isLowLight_gainMap;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v142, v145, v144, v145, v146, v149, bracketProperties, v153);
  }

LABEL_69:

  if (v18)
  {
  }

  return v91;
}

@end