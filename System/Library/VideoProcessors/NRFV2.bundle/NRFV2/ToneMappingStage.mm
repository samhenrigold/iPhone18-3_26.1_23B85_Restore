@interface ToneMappingStage
+ (int)prewarmShaders:(id)shaders;
- (SidecarWriter)sidecarWriter;
- (ToneMappingStage)initWithContext:(id)context mtlSuballocatorID:(unsigned int)d;
- (__n64)getCcmRoi:(int)roi chromaTexHeight:(int)height ccmLut:(unsigned __int16 *)lut isHalfResolution:(int)resolution;
- (__n64)getLtmRoi:(int)roi chromaTexHeight:(int)height ltmLut:(unsigned __int16 *)lut isHalfResolution:(int)resolution;
- (float)getExposureBiasFactor:(const frameMetadata *)factor inputIsLinear:(BOOL)linear;
- (id)getSTFLTM_asNSData;
- (int)allocateResourcesForWidth:(unint64_t)width height:(unint64_t)height srlVersion:(int)version;
- (int)calculateBlackWhiteContrastCenter:(float)center contrastParam:(id)param curves:;
- (int)fetchTuningParametersFromPlist:(id)plist ev0FrameMetadata:(const frameMetadata *)metadata toneMap:(id)map destinationMTLBuffer:(id)buffer;
- (int)getSTFStillCorrectionStrength:(BOOL)strength;
- (int)mstmsApplyLumaGain:(id)gain inputLuma:(id)luma inputChroma:(id)chroma outputChroma:(id)outputChroma localGainMap:(id)map chromaGainAdjPower:(float)power inputIsLinear:(BOOL)linear chromaBias:(float)self0;
- (int)performBlackSubtractionWithBlackWhiteParams:(float)params maxContrastStrength:(id)strength inOutTex:(id)tex curves:;
- (int)performSmallFaceFix:(id)fix faceLandmarks:(id)landmarks faceLandmarkOrientation:(int)orientation tmPlist:(id)plist;
- (int)performSubjectRelightingWithTonemap:(id)tonemap luma:(id)luma chroma:(id)chroma ltmChroma:(id)ltmChroma validROI:(CGRect)i skinMask:(id)mask personMask:(id)personMask faceLandmarks:(id)self0 ev0FrameMetadata:(const frameMetadata *)self1 ltmOutputMode:(int)self2 inputIsLinear:(BOOL)self3 chromaBias:(float)self4 tmPlist:(id)self5;
- (int)performToneMapSmoothing:(id)smoothing mask:(id)mask skyMask:(id)skyMask tmPlist:(id)plist ev0FrameMetadata:(const frameMetadata *)metadata useMaskPyramid:(BOOL)pyramid;
- (uint64_t)performLTM:(__n128)m bilateralGrid:(__n128)grid bilateralGridHomography:(__n128)homography detailEnhance:(float)enhance darkestFrameMetadata:(__n128)metadata scaleInput:(__n128)input colorCorrection:(__n128)correction outputMode:(uint64_t)self0 chromaGainAdjPower:(void *)self1 inputIsLinear:(void *)self2 chromaBias:(uint64_t)self3 isHalfResolution:(unsigned int)self4;
- (unsigned)getSRLStatus;
- (void)dealloc;
- (void)reset;
- (void)runToneMapping:(double)mapping bilateralGrid:(double)grid bilateralGridHomography:(float)homography tmPlist:(double)plist darkestFrameMetadata:(double)metadata ev0FrameMetadata:(double)frameMetadata scaleInput:(uint64_t)input colorCorrection:(void *)self0 hasChromaBias:(void *)self1 quality:(void *)self2 inputIsLinear:(uint64_t)self3;
@end

@implementation ToneMappingStage

- (ToneMappingStage)initWithContext:(id)context mtlSuballocatorID:(unsigned int)d
{
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = ToneMappingStage;
  v8 = [(ToneMappingStage *)&v26 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v8->_metal, context);
  v10 = [SubjectRelightingStage alloc];
  v13 = objc_msgSend_initWithMetalContext_(v10, v11, v9->_metal, v12);
  subjectRelightV2 = v9->_subjectRelightV2;
  v9->_subjectRelightV2 = v13;

  if (v9->_subjectRelightV2)
  {
    v9->_mtlSuballocatorID = d;
    v18 = objc_msgSend_sharedInstance(ToneMappingShared, v15, v16, v17);
    v21 = objc_msgSend_getShaders_(v18, v19, v9->_metal, v20);
    shaders = v9->_shaders;
    v9->_shaders = v21;

    if (v9->_shaders)
    {
      goto LABEL_4;
    }

    sub_2958BF538(&v27);
  }

  else
  {
    sub_2958BF5D4(&v27);
  }

  if (v27)
  {
    v23 = 0;
    goto LABEL_5;
  }

LABEL_4:
  v23 = v9;
LABEL_5:
  v24 = v23;

  return v24;
}

- (int)allocateResourcesForWidth:(unint64_t)width height:(unint64_t)height srlVersion:(int)version
{
  v5 = *&version;
  if (objc_msgSend_width(self->_toneMapSmoothingResources, a2, width, height) == width && objc_msgSend_height(self->_toneMapSmoothingResources, v9, v10, v11) == height || (v14 = [ToneMapSmoothingResources alloc], v16 = objc_msgSend_initWithMetalContext_width_height_mtlSubAllocatorID_srlVersion_(v14, v15, self->_metal, width, height, self->_mtlSuballocatorID, v5), toneMapSmoothingResources = self->_toneMapSmoothingResources, self->_toneMapSmoothingResources = v16, toneMapSmoothingResources, self->_toneMapSmoothingResources))
  {
    if (self->_enableSTF && !self->_stfProcessor)
    {
      v18 = objc_msgSend_STFStillIBPForVersion_(MEMORY[0x29EDC0A88], v12, 1, v13);
      stfProcessor = self->_stfProcessor;
      self->_stfProcessor = v18;

      if (!self->_stfProcessor)
      {
        sub_2958BF7D8(&v36);
        return v36;
      }

      v23 = objc_msgSend_commandQueue(self->_metal, v20, v21, v22);
      objc_msgSend_setMetalCommandQueue_(self->_stfProcessor, v24, v23, v25);

      objc_msgSend_setTuningParameters_(self->_stfProcessor, v26, self->_stfTuningParameters, v27);
      v31 = objc_msgSend_setup(self->_stfProcessor, v28, v29, v30);
      if (v31)
      {
        v33 = v31;
        sub_2958BF6D4(v31);
        return v33;
      }
    }

    v32 = objc_msgSend_prepareToProcess_(self->_stfProcessor, v12, 0, v13);
    v33 = 0;
    self->_stfStillCorrectionStrength = 0;
    self->_stfStillApplied = 0;
    self->_stfStillAnalyticsVersion = 0;
    self->_SRLWaitCompleted = 0;
    if (v32)
    {
      v35 = v32;
      sub_2958BF778();
      return v35;
    }
  }

  else
  {
    sub_2958BF670();
    return -12786;
  }

  return v33;
}

- (void)dealloc
{
  objc_msgSend_purgeResources(self->_stfProcessor, a2, v2, v3);
  toneMapSmoothingResources = self->_toneMapSmoothingResources;
  self->_toneMapSmoothingResources = 0;

  subjectRelightV2 = self->_subjectRelightV2;
  self->_subjectRelightV2 = 0;

  v7.receiver = self;
  v7.super_class = ToneMappingStage;
  [(ToneMappingStage *)&v7 dealloc];
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v4 = [ToneMappingShaders alloc];
  v7 = objc_msgSend_initWithMetal_(v4, v5, shadersCopy, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -12786;
  }

  return v8;
}

- (int)calculateBlackWhiteContrastCenter:(float)center contrastParam:(id)param curves:
{
  v54 = *&center;
  v53 = v4;
  paramCopy = param;
  v10 = objc_msgSend_commandQueue(self->_metal, v7, v8, v9);
  v14 = objc_msgSend_commandBuffer(v10, v11, v12, v13);

  if (!v14)
  {
    sub_2958BF910(&v51);
LABEL_9:
    v47 = v51.i32[0];
    goto LABEL_6;
  }

  v18 = objc_msgSend_computeCommandEncoder(v14, v15, v16, v17);
  if (!v18)
  {
    sub_2958BF874(&v51);
    goto LABEL_9;
  }

  v21 = v18;
  objc_msgSend_setComputePipelineState_(v18, v19, self->_shaders->_calculateBlackWhiteStrengthCenter, v20);
  objc_msgSend_setBuffer_offset_atIndex_(v21, v22, paramCopy[4], 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v21, v23, &v54, 16, 1);
  objc_msgSend_setBytes_length_atIndex_(v21, v24, &v53, 4, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v21, v25, paramCopy[5], 0, 3);
  v51 = vdupq_n_s64(1uLL);
  v52 = 1;
  v49 = v51;
  v50 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v21, v26, &v51, &v49);
  objc_msgSend_endEncoding(v21, v27, v28, v29);
  if (*MEMORY[0x29EDB9270])
  {
    v33 = objc_msgSend_commandQueue(v14, v30, v31, v32);
    v37 = objc_msgSend_commandBuffer(v33, v34, v35, v36);

    objc_msgSend_setLabel_(v37, v38, @"KTRACE_MTLCMDBUF", v39);
    objc_msgSend_addCompletedHandler_(v37, v40, &unk_2A1CA96A0, v41);
    objc_msgSend_commit(v37, v42, v43, v44);
    objc_msgSend_addCompletedHandler_(v14, v45, &unk_2A1CA96C0, v46);
  }

  objc_msgSend_commit(v14, v30, v31, v32);

  v47 = 0;
LABEL_6:

  return v47;
}

- (int)performBlackSubtractionWithBlackWhiteParams:(float)params maxContrastStrength:(id)strength inOutTex:(id)tex curves:
{
  v7 = v5;
  v61 = *&params;
  strengthCopy = strength;
  texCopy = tex;
  LODWORD(v11) = v7;
  objc_msgSend_calculateBlackWhiteContrastCenter_contrastParam_curves_(self, v12, texCopy, v13, *&v61, v11);
  v17 = objc_msgSend_commandQueue(self->_metal, v14, v15, v16);
  v21 = objc_msgSend_commandBuffer(v17, v18, v19, v20);

  if (!v21)
  {
    sub_2958BFA48(v64);
LABEL_9:
    v59 = v64[0];
    goto LABEL_6;
  }

  v25 = objc_msgSend_computeCommandEncoder(v21, v22, v23, v24);
  if (!v25)
  {
    sub_2958BF9AC(v64);
    goto LABEL_9;
  }

  v28 = v25;
  objc_msgSend_setComputePipelineState_(v25, v26, self->_shaders->_blackSubtractAndAddingContrast, v27);
  objc_msgSend_setTexture_atIndex_(v28, v29, strengthCopy, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v30, texCopy[5], 0, 0);
  objc_msgSend_setImageblockWidth_height_(v28, v31, 32, 32);
  v64[0] = objc_msgSend_width(strengthCopy, v32, v33, v34);
  v64[1] = objc_msgSend_height(strengthCopy, v35, v36, v37);
  v64[2] = 1;
  v62 = vdupq_n_s64(0x20uLL);
  v63 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v28, v38, v64, &v62);
  objc_msgSend_endEncoding(v28, v39, v40, v41);
  if (*MEMORY[0x29EDB9270])
  {
    v45 = objc_msgSend_commandQueue(v21, v42, v43, v44);
    v49 = objc_msgSend_commandBuffer(v45, v46, v47, v48);

    objc_msgSend_setLabel_(v49, v50, @"KTRACE_MTLCMDBUF", v51);
    objc_msgSend_addCompletedHandler_(v49, v52, &unk_2A1CA96E0, v53);
    objc_msgSend_commit(v49, v54, v55, v56);
    objc_msgSend_addCompletedHandler_(v21, v57, &unk_2A1CA9700, v58);
  }

  objc_msgSend_commit(v21, v42, v43, v44, v61);

  v59 = 0;
LABEL_6:

  return v59;
}

- (int)mstmsApplyLumaGain:(id)gain inputLuma:(id)luma inputChroma:(id)chroma outputChroma:(id)outputChroma localGainMap:(id)map chromaGainAdjPower:(float)power inputIsLinear:(BOOL)linear chromaBias:(float)self0
{
  gainCopy = gain;
  lumaCopy = luma;
  chromaCopy = chroma;
  outputChromaCopy = outputChroma;
  mapCopy = map;
  powerCopy = power;
  linearCopy = linear;
  biasCopy = bias;
  v26 = objc_msgSend_commandQueue(self->_metal, v23, v24, v25);
  v30 = objc_msgSend_commandBuffer(v26, v27, v28, v29);

  if (!v30)
  {
    sub_2958BFB80(v78);
LABEL_9:
    v74 = v78[0];
    goto LABEL_6;
  }

  v34 = objc_msgSend_computeCommandEncoder(v30, v31, v32, v33);
  if (!v34)
  {
    sub_2958BFAE4(v78);
    goto LABEL_9;
  }

  v37 = v34;
  objc_msgSend_setComputePipelineState_(v34, v35, self->_shaders->_mstmsApply, v36);
  objc_msgSend_setTexture_atIndex_(v37, v38, gainCopy, 0);
  objc_msgSend_setTexture_atIndex_(v37, v39, lumaCopy, 1);
  objc_msgSend_setTexture_atIndex_(v37, v40, chromaCopy, 2);
  objc_msgSend_setTexture_atIndex_(v37, v41, outputChromaCopy, 3);
  objc_msgSend_setTexture_atIndex_(v37, v42, mapCopy, 4);
  objc_msgSend_setBytes_length_atIndex_(v37, v43, &powerCopy, 4, 0);
  objc_msgSend_setBytes_length_atIndex_(v37, v44, &linearCopy, 1, 1);
  objc_msgSend_setBytes_length_atIndex_(v37, v45, &biasCopy, 4, 2);
  objc_msgSend_setImageblockWidth_height_(v37, v46, 32, 32);
  v78[0] = ((objc_msgSend_width(gainCopy, v47, v48, v49) >> 1) + 15) >> 4;
  v78[1] = ((objc_msgSend_height(gainCopy, v50, v51, v52) >> 1) + 15) >> 4;
  v78[2] = 1;
  v76 = vdupq_n_s64(0x10uLL);
  v77 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v37, v53, v78, &v76);
  objc_msgSend_endEncoding(v37, v54, v55, v56);

  if (*MEMORY[0x29EDB9270])
  {
    v60 = objc_msgSend_commandQueue(v30, v57, v58, v59);
    v64 = objc_msgSend_commandBuffer(v60, v61, v62, v63);

    objc_msgSend_setLabel_(v64, v65, @"KTRACE_MTLCMDBUF", v66);
    objc_msgSend_addCompletedHandler_(v64, v67, &unk_2A1CA9720, v68);
    objc_msgSend_commit(v64, v69, v70, v71);
    objc_msgSend_addCompletedHandler_(v30, v72, &unk_2A1CA9740, v73);
  }

  objc_msgSend_commit(v30, v57, v58, v59);
  v74 = 0;
LABEL_6:

  return v74;
}

- (uint64_t)performLTM:(__n128)m bilateralGrid:(__n128)grid bilateralGridHomography:(__n128)homography detailEnhance:(float)enhance darkestFrameMetadata:(__n128)metadata scaleInput:(__n128)input colorCorrection:(__n128)correction outputMode:(uint64_t)self0 chromaGainAdjPower:(void *)self1 inputIsLinear:(void *)self2 chromaBias:(uint64_t)self3 isHalfResolution:(unsigned int)self4
{
  v150[0] = a2;
  v150[1] = m;
  v150[2] = grid;
  v149[0] = metadata;
  v149[1] = input;
  v149[2] = correction;
  v24 = bias + 221184;
  powerCopy = power;
  linearCopy = linear;
  homographyCopy = homography;
  enhanceCopy = enhance;
  v146 = a15;
  v30 = objc_msgSend_width(*(powerCopy + 2), v27, v28, v29);
  v34 = objc_msgSend_height(*(powerCopy + 2), v31, v32, v33);
  objc_msgSend_getLtmRoi_chromaTexHeight_ltmLut_isHalfResolution_(self, v35, v30, v34, bias + 168, a16);
  v145 = v36;
  v40 = objc_msgSend_width(*(powerCopy + 2), v37, v38, v39);
  v44 = objc_msgSend_height(*(powerCopy + 2), v41, v42, v43);
  objc_msgSend_getCcmRoi_chromaTexHeight_ccmLut_isHalfResolution_(self, v45, v40, v44, bias + 168, a16);
  v144 = v47;
  if (*(*(powerCopy + 16) + 56) == 1)
  {
    v48 = *(v24 + 1825);
  }

  else
  {
    v48 = 0;
  }

  v143 = *(v24 + 1248);
  objc_msgSend_getExposureBiasFactor_inputIsLinear_(self, v46, bias, a15, *&homography);
  v142 = v49;
  v53 = objc_msgSend_commandQueue(*(self + 8), v50, v51, v52);
  v57 = objc_msgSend_commandBuffer(v53, v54, v55, v56);

  if (!v57)
  {
    sub_2958BFE00(v141);
    v136 = LODWORD(v141[0]);
    goto LABEL_22;
  }

  v64 = objc_msgSend_blitCommandEncoder(v57, v58, v59, v60);
  if (!v64)
  {
    sub_2958BFD64(v141);
    v136 = LODWORD(v141[0]);
    goto LABEL_21;
  }

  v65 = *(*(powerCopy + 16) + 32);
  v66 = objc_msgSend_length(v65, v61, v62, v63);
  objc_msgSend_fillBuffer_range_value_(v64, v67, v65, 0, v66, 0);
  objc_msgSend_endEncoding(v64, v68, v69, v70);
  v74 = objc_msgSend_computeCommandEncoder(v57, v71, v72, v73);
  if (v74)
  {
    v75 = 32;
    if (!linearCopy)
    {
      v75 = 24;
    }

    v76 = *(*(self + 16) + v75);
    objc_msgSend_setComputePipelineState_(v74, v77, v76, v78);
    objc_msgSend_setTexture_atIndex_(v74, v79, *(powerCopy + 2), 1);
    objc_msgSend_setTexture_atIndex_(v74, v80, *(powerCopy + 3), 3);
    objc_msgSend_setTexture_atIndex_(v74, v81, *(*(powerCopy + 16) + 8), 4);
    objc_msgSend_setTexture_atIndex_(v74, v82, *(*(powerCopy + 16) + 16), 5);
    objc_msgSend_setTexture_atIndex_(v74, v83, *(*(powerCopy + 16) + 24), 6);
    objc_msgSend_setTexture_atIndex_(v74, v84, *(powerCopy + 1), 8);
    if (v48)
    {
      objc_msgSend_setTexture_atIndex_(v74, v85, *(*(powerCopy + 16) + 48), 12);
    }

    else
    {
      objc_msgSend_setTexture_atIndex_(v74, v85, 0, 12);
    }

    if (resolution <= 2)
    {
      v87 = qword_2959D6410[resolution];
      v88 = qword_2959D6428[resolution];
      objc_msgSend_setTexture_atIndex_(v74, v86, *(powerCopy + 4), v87);
      objc_msgSend_setTexture_atIndex_(v74, v89, *(powerCopy + 5), v88);
    }

    objc_msgSend_setBytes_length_atIndex_(v74, v86, &v145, 16, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v74, v90, *(*(powerCopy + 16) + 32), 0, 2);
    objc_msgSend_setBytes_length_atIndex_(v74, v91, &v143, 4, 3);
    if (linearCopy)
    {
      objc_msgSend_setTexture_atIndex_(v74, v92, linearCopy[1], 7);
      objc_msgSend_setBuffer_offset_atIndex_(v74, v93, linearCopy[2], 0, 4);
      objc_msgSend_setBytes_length_atIndex_(v74, v94, &homographyCopy, 16, 5);
      objc_msgSend_setBytes_length_atIndex_(v74, v95, v150, 48, 6);
    }

    objc_msgSend_setBytes_length_atIndex_(v74, v92, &v142, 4, 7);
    objc_msgSend_setBytes_length_atIndex_(v74, v96, &enhanceCopy, 4, 8);
    objc_msgSend_setBytes_length_atIndex_(v74, v97, &a17, 4, 9);
    objc_msgSend_setBytes_length_atIndex_(v74, v98, &v146, 1, 10);
    objc_msgSend_setBytes_length_atIndex_(v74, v99, v149, 48, 11);
    objc_msgSend_setBytes_length_atIndex_(v74, v100, &a17 + 4, 4, 12);
    objc_msgSend_setBytes_length_atIndex_(v74, v101, powerCopy + 136, 4, 13);
    objc_msgSend_setBytes_length_atIndex_(v74, v102, &v144, 16, 14);
    objc_msgSend_setImageblockWidth_height_(v74, v103, 32, 32);
    if (objc_msgSend_maxTotalThreadsPerThreadgroup(v76, v104, v105, v106) > 0xFF)
    {
      v110 = objc_msgSend_width(*(powerCopy + 2), v107, v108, v109);
      v114 = objc_msgSend_height(*(powerCopy + 2), v111, v112, v113);
      v141[0] = v110;
      v141[1] = v114;
      v141[2] = 1;
      v139 = vdupq_n_s64(0x10uLL);
      v140 = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v74, v115, v141, &v139);
      objc_msgSend_endEncoding(v74, v116, v117, v118);
      if (*MEMORY[0x29EDB9270])
      {
        v122 = objc_msgSend_commandQueue(v57, v119, v120, v121);
        v126 = objc_msgSend_commandBuffer(v122, v123, v124, v125);

        objc_msgSend_setLabel_(v126, v127, @"KTRACE_MTLCMDBUF", v128);
        objc_msgSend_addCompletedHandler_(v126, v129, &unk_2A1CA9760, v130);
        objc_msgSend_commit(v126, v131, v132, v133);
        objc_msgSend_addCompletedHandler_(v57, v134, &unk_2A1CA9780, v135);
      }

      objc_msgSend_commit(v57, v119, v120, v121);

      v136 = 0;
      goto LABEL_20;
    }

    sub_2958BFC1C(v76, v141);
  }

  else
  {
    sub_2958BFCC8(v141);
  }

  v136 = LODWORD(v141[0]);
LABEL_20:

LABEL_21:
LABEL_22:

  return v136;
}

- (int)fetchTuningParametersFromPlist:(id)plist ev0FrameMetadata:(const frameMetadata *)metadata toneMap:(id)map destinationMTLBuffer:(id)buffer
{
  plistCopy = plist;
  mapCopy = map;
  bufferCopy = buffer;
  v15 = objc_msgSend_count(*(plistCopy + 1), v12, v13, v14);
  if (objc_msgSend_length(bufferCopy, v16, v17, v18) < (v15 << 7))
  {
    sub_2958BFE9C();
    LODWORD(v15) = -12780;
  }

  else
  {
    v19 = bufferCopy;
    v23 = objc_msgSend_contents(v19, v20, v21, v22);
    gain = metadata->exposureParams.gain;
    v25 = sub_29584472C(*(plistCopy + 4), gain);
    v26 = *(plistCopy + 5);
    v27 = sub_29584472C(*(plistCopy + 5), gain);
    v65 = *(plistCopy + 6);
    v28 = sub_29584472C(*(plistCopy + 6), gain);
    v29 = *(plistCopy + 7);
    v30 = sub_29584472C(*(plistCopy + 7), gain);
    v34 = objc_msgSend_width(mapCopy, v31, v32, v33);
    v38 = objc_msgSend_height(mapCopy, v35, v36, v37);
    v39.f64[0] = metadata->ROI.origin.x;
    v40 = sub_295862268(v39, metadata->ROI.origin.y);
    v41.f64[0] = metadata->ROI.size.width;
    v44 = sub_295862268(v41, metadata->ROI.size.height);
    if (v15)
    {
      v45 = 0;
      v46.f32[0] = v34;
      v46.f32[1] = v38;
      __asm { FMOV            V2.2S, #1.0 }

      v52 = vdiv_f32(_D2, vdiv_f32(*&v44, v46));
      v63 = vmul_f32(vdiv_f32(vneg_f32(*&v40), v46), v52);
      v64 = v52;
      v53 = (v23 + 120);
      v61 = v30;
      v62 = gain;
      do
      {
        v54 = objc_msgSend_objectAtIndexedSubscript_(*(plistCopy + 1), v42, v45, v43);
        v55 = powf(0.75, (v45 + 1));
        v66 = v25 * v55;
        v67 = v27 * v55;
        v68 = v28 * v55;
        v56 = powf(0.75, v45);
        v57 = sub_29584472C(v54[1], v62);
        v58 = sub_29584472C(v54[2], v62);
        v59 = sub_29584472C(v54[3], v62);
        *(v53 - 15) = v63;
        *(v53 - 14) = v64;
        *(v53 - 26) = v61;
        *(v53 - 25) = v66;
        *(v53 - 24) = v26;
        *(v53 - 23) = 1.0;
        *(v53 - 22) = v67;
        *(v53 - 21) = v65;
        *(v53 - 20) = 1.0;
        *(v53 - 19) = v68;
        *(v53 - 18) = v29;
        *(v53 - 17) = 1.0;
        *(v53 - 8) = 0;
        *(v53 - 7) = v63;
        *(v53 - 6) = v64;
        *(v53 - 10) = v61;
        *(v53 - 9) = v25 * v56;
        *(v53 - 8) = v26;
        *(v53 - 7) = v57;
        *(v53 - 6) = v27 * v56;
        *(v53 - 5) = v65;
        *(v53 - 4) = v58;
        *(v53 - 3) = v28 * v56;
        *(v53 - 2) = v29;
        *(v53 - 1) = v59;
        *v53 = 0;
        v53 += 32;

        ++v45;
      }

      while (v45 != v15);
      LODWORD(v15) = 0;
    }
  }

  return v15;
}

- (int)performSmallFaceFix:(id)fix faceLandmarks:(id)landmarks faceLandmarkOrientation:(int)orientation tmPlist:(id)plist
{
  fixCopy = fix;
  landmarksCopy = landmarks;
  plistCopy = plist;
  v13 = plistCopy;
  if (!fixCopy)
  {
    sub_2958C04D0();
LABEL_47:
    v17 = 0;
LABEL_49:
    v149 = 0;
    v140 = 0;
    v193 = -12780;
    goto LABEL_43;
  }

  if (!landmarksCopy)
  {
    sub_2958C046C();
    goto LABEL_47;
  }

  if (!plistCopy)
  {
    sub_2958C0408();
    goto LABEL_47;
  }

  v17 = plistCopy[4];
  if (!v17)
  {
    sub_2958C03A4();
    goto LABEL_49;
  }

  v198 = v13;
  v18 = objc_msgSend_width(fixCopy, v14, v15, v16);
  v22 = objc_msgSend_height(fixCopy, v19, v20, v21);
  memset(&v221, 0, sizeof(v221));
  sub_295816EA0(orientation, &v221);
  memset(&v220, 0, sizeof(v220));
  CGAffineTransformMakeTranslation(&t1, -0.5, -0.5);
  CGAffineTransformMakeScale(&t2, 1.0, -1.0);
  CGAffineTransformConcat(&v219, &t1, &t2);
  CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
  CGAffineTransformConcat(&v220, &v219, &t1);
  memset(&v216, 0, sizeof(v216));
  v219 = v221;
  t1 = v220;
  CGAffineTransformConcat(&v216, &v219, &t1);
  v23 = v17[6];
  v24 = v17[5];
  v28 = objc_msgSend_count(landmarksCopy, v25, v26, v27);
  v32 = objc_msgSend_sffDescriptorsBuffer(self->_toneMapSmoothingResources, v29, v30, v31);
  v33 = v32;
  v201 = objc_msgSend_contents(v33, v34, v35, v36);

  v40 = objc_msgSend_sffNThreadGroupsBuffer(self->_toneMapSmoothingResources, v37, v38, v39);
  v41 = v40;
  v45 = objc_msgSend_contents(v41, v42, v43, v44);

  if (!v28)
  {
    v149 = 0;
    v140 = 0;
    v193 = 0;
    v13 = v198;
    goto LABEL_43;
  }

  selfCopy = self;
  v197 = fixCopy;
  v196 = 0;
  v48 = 0.0;
  v49 = 0;
  v50.f32[0] = v18;
  v50.f32[1] = v22;
  v203 = v50;
  v199 = (v23 / v24) * (v23 / v24);
  v200 = vneg_f32(0x80000000800000);
  do
  {
    if (*&v48 >= 0x20uLL)
    {
      sub_2958C0280();
      v66 = 0;
      v58 = 0;
    }

    else
    {
      v51 = objc_msgSend_objectAtIndexedSubscript_(landmarksCopy, v46, v49, v47);
      sub_29585E9DC(v51, v52, v53, v54);
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v58 = objc_msgSend_objectAtIndexedSubscript_(landmarksCopy, v56, v49, v57);
        v62 = objc_msgSend_landmarks(v58, v59, v60, v61);
        v66 = objc_msgSend_faceContour(v62, v63, v64, v65);

        if (v66)
        {
          v70 = objc_msgSend_pointCount(v66, v67, v68, v69);
          if (v70 <= 2)
          {
            sub_2958C01B8();
          }

          else
          {
            v74 = v70;
            objc_msgSend_boundingBox(v58, v71, v72, v73);
            v219 = v216;
            v223 = CGRectApplyAffineTransform(v222, &v219);
            x = v223.origin.x;
            y = v223.origin.y;
            if (fmax(v223.size.width, v223.size.height) <= v17[2])
            {
              width = v223.size.width;
              height = v223.size.height;
              v78 = v66;
              v82 = objc_msgSend_normalizedPoints(v78, v79, v80, v81);
              v83 = vaddq_f64(*&v216.tx, vmlaq_n_f64(vmulq_n_f64(*&v216.c, v82[1]), *&v216.a, *v82));
              v84 = sub_295862268(v83, v83.f64[1]);
              v85 = v66;
              v89 = objc_msgSend_normalizedPoints(v85, v86, v87, v88);
              v90 = vaddq_f64(*&v216.tx, vmlaq_n_f64(vmulq_n_f64(*&v216.c, *(v89 + 16 * v74 - 8)), *&v216.a, *(v89 + 16 * v74 - 16)));
              v91 = vmul_f32(vadd_f32(*&v84, COERCE_FLOAT32X2_T(sub_295862268(v90, v90.f64[1]))), 0x3F0000003F000000);
              v92.f64[0] = width;
              v93 = sub_295862268(v92, height);
              v94.f64[0] = x;
              v95 = 0;
              v202 = vmul_f32(v203, vmla_f32(COERCE_FLOAT32X2_T(sub_295862268(v94, y)), *&v93, v91));
              v96 = vneg_f32(v202);
              v100.columns[2].i64[0] = 0;
              v100.columns[2].i64[1] = 0;
              v97 = 0x80000000800000;
              v100.columns[1] = 0uLL;
              v98 = 0uLL;
              v99 = v200;
              v214 = 0u;
              v101.i32[3] = v211;
              v100.columns[0].i32[3] = v213;
              v102.i32[3] = v209;
              do
              {
                v208 = v98;
                v210 = v100.columns[1];
                v212 = v100.columns[2];
                v206 = v101.i32[3];
                v207 = v102.i32[3];
                v205 = v100.columns[0].i32[3];
                v103 = v66;
                v107 = objc_msgSend_normalizedPoints(v103, v104, v105, v106);
                v108 = vaddq_f64(*&v216.tx, vmlaq_n_f64(vmulq_n_f64(*&v216.c, *(v107 + v95 + 8)), *&v216.a, *(v107 + v95)));
                v109 = sub_295862268(v108, v108.f64[1]);
                v110.f64[0] = width;
                v111 = sub_295862268(v110, height);
                v112.f64[0] = x;
                v113 = vmla_f32(v96, vmla_f32(COERCE_FLOAT32X2_T(sub_295862268(v112, y)), *&v111, *&v109), v203);
                *v114.f32 = vmul_f32(v113, v113);
                v115 = v114;
                v115.i32[1] = vmuls_lane_f32(v113.f32[1], v113, 1);
                v115.i32[2] = vmuls_lane_f32(v113.f32[0], v113, 1);
                v100.columns[0] = vmulq_n_f32(v115, v114.f32[0]);
                v101 = vmulq_n_f32(v115, v115.f32[1]);
                v102 = vmulq_n_f32(v115, v115.f32[2]);
                v100.columns[0].i32[3] = v205;
                v101.i32[3] = v206;
                v102.i32[3] = v207;
                v98 = vaddq_f32(v208, v100.columns[0]);
                v100.columns[1] = vaddq_f32(v210, v101);
                v100.columns[2] = vaddq_f32(v212, v102);
                v214 = vaddq_f32(v214, v115);
                v99 = vminnm_f32(v99, v113);
                v97 = vmaxnm_f32(v97, v113);
                v95 += 16;
                --v74;
              }

              while (v74);
              v209 = v207;
              v211 = v206;
              v213 = v205;
              v100.columns[0] = v98;
              v116 = __invert_f3(v100);
              v116.columns[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v116.columns[0], v214.f32[0]), v116.columns[1], *v214.f32, 1), v116.columns[2], v214, 2);
              if (v116.columns[0].f32[0] <= 0.0)
              {
                sub_2958C0154();
              }

              else if (v116.columns[0].f32[1] <= 0.0)
              {
                sub_2958C00F0();
              }

              else
              {
                v116.columns[2].f32[0] = vmuls_lane_f32(-v116.columns[0].f32[2], v116.columns[0], 2) + ((v116.columns[0].f32[0] * 4.0) * v116.columns[0].f32[1]);
                __asm { FMOV            V4.2S, #4.0 }

                v122 = vmul_n_f32(vmul_n_f32(vmul_f32(vrev64_s32(*v116.columns[0].f32), _D4), v199), v116.columns[2].f32[0] * 4.0);
                if (v122.f32[0] <= 0.0)
                {
                  sub_2958C008C();
                }

                else if (v122.f32[1] <= 0.0)
                {
                  sub_2958C0028();
                }

                else
                {
                  v123 = vrsqrte_f32(v122);
                  v124 = vmul_f32(v123, vrsqrts_f32(v122, vmul_f32(v123, v123)));
                  v125 = vmul_f32(v124, vrsqrts_f32(v122, vmul_f32(v124, v124)));
                  v126 = vrecpe_f32(v125);
                  v127 = vmul_f32(v126, vrecps_f32(v125, v126));
                  v116.columns[2].f32[0] = v116.columns[2].f32[0] + v116.columns[2].f32[0];
                  v128 = vdiv_f32(vmul_f32(v127, vrecps_f32(v125, v127)), vdup_lane_s32(*v116.columns[2].f32, 0));
                  v129 = vrndm_f32(vsub_f32(v202, v128));
                  v130 = vsub_f32(v97, v99);
                  *v116.columns[2].f32 = vsub_f32(vrndp_f32(vadd_f32(v202, v128)), v129);
                  v131 = v17[3];
                  if (v116.columns[2].f32[0] > (v131 * v130.f32[0]))
                  {
                    sub_2958BFFC4();
                  }

                  else if (v116.columns[2].f32[1] > vmuls_lane_f32(v131, v130, 1))
                  {
                    sub_2958BFF60();
                  }

                  else
                  {
                    v132 = (v201 + 48 * *&v48);
                    v132[5].i32[0] = v116.columns[0].i32[2];
                    v132[3] = v202;
                    v132[4] = *v116.columns[0].f32;
                    v132->f32[1] = v17[5];
                    v132->f32[0] = v17[6];
                    v132[1] = v129;
                    v132[2] = *v116.columns[2].f32;
                    v132[5].i32[1] = vcvtd_n_u64_f64(v17[4] * 255.0 * 32.0, 5uLL);
                    v133 = (v45 + 12 * *&v48);
                    *v133 = vshr_n_u32(vadd_s32(vcvt_u32_f32(*v116.columns[2].f32), 0x1F0000001FLL), 5uLL);
                    v133[1].i32[0] = 1;
                    ++*&v48;
                  }
                }
              }
            }
          }
        }

        else
        {
          sub_2958C021C();
        }
      }

      else
      {
        sub_2958BFF00();
        v66 = 0;
        v58 = 0;
        v196 = -12780;
      }
    }

    ++v49;
  }

  while (v49 != v28);
  if (v48 != 0.0)
  {
    v135 = selfCopy;
    v136 = objc_msgSend_commandQueue(selfCopy->_metal, v46, v134, v47);
    v140 = objc_msgSend_commandBuffer(v136, v137, v138, v139);

    if (v140)
    {
      objc_msgSend_setLabel_(v140, v141, @"SFF", v142);
      v146 = objc_msgSend_computeCommandEncoder(v140, v143, v144, v145);
      v149 = v146;
      if (v146)
      {
        v215 = v140;
        objc_msgSend_setLabel_(v146, v147, @"SFF", v148);
        objc_msgSend_setComputePipelineState_(v149, v150, selfCopy->_shaders->_sffTestFace, v151);
        v155 = objc_msgSend_sffDescriptorsBuffer(selfCopy->_toneMapSmoothingResources, v152, v153, v154);
        objc_msgSend_setBuffer_offset_atIndex_(v149, v156, v155, 0, 0);

        v160 = objc_msgSend_sffNThreadGroupsBuffer(selfCopy->_toneMapSmoothingResources, v157, v158, v159);
        objc_msgSend_setBuffer_offset_atIndex_(v149, v161, v160, 0, 1);

        objc_msgSend_setTexture_atIndex_(v149, v162, v197, 0);
        v219.a = v48;
        *&v219.b = vdupq_n_s64(1uLL);
        *&t1.a = vdupq_n_s64(0x20uLL);
        *&t1.c = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v149, v163, &v219, &t1);
        objc_msgSend_setComputePipelineState_(v149, v164, selfCopy->_shaders->_sffFillFace, v165);
        v167 = 0;
        v168 = 0;
        do
        {
          objc_msgSend_setBufferOffset_atIndex_(v149, v166, v167, 0, selfCopy);
          v172 = objc_msgSend_sffNThreadGroupsBuffer(v135->_toneMapSmoothingResources, v169, v170, v171);
          *&v219.a = vdupq_n_s64(0x20uLL);
          *&v219.c = 1;
          objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v149, v173, v172, v168, &v219);

          v168 += 12;
          v167 += 48;
          --*&v48;
        }

        while (v48 != 0.0);
        objc_msgSend_endEncoding(v149, v166, v174, v175);
        v140 = v215;
        if (*MEMORY[0x29EDB9270])
        {
          v179 = objc_msgSend_commandQueue(v215, v176, v177, v178);
          v183 = objc_msgSend_commandBuffer(v179, v180, v181, v182);

          objc_msgSend_setLabel_(v183, v184, @"KTRACE_MTLCMDBUF", v185);
          objc_msgSend_addCompletedHandler_(v183, v186, &unk_2A1CA97E0, v187);
          objc_msgSend_commit(v183, v188, v189, v190);
          objc_msgSend_addCompletedHandler_(v215, v191, &unk_2A1CA9800, v192);
        }

        objc_msgSend_commit(v215, v176, v177, v178);
        goto LABEL_41;
      }

      sub_2958C02E4();
    }

    else
    {
      sub_2958C0344();
      v149 = 0;
    }

    v193 = -12786;
    fixCopy = v197;
    v13 = v198;
    goto LABEL_43;
  }

  v149 = 0;
  v140 = 0;
LABEL_41:
  fixCopy = v197;
  v13 = v198;
  v193 = v196;
LABEL_43:

  return v193;
}

- (int)performToneMapSmoothing:(id)smoothing mask:(id)mask skyMask:(id)skyMask tmPlist:(id)plist ev0FrameMetadata:(const frameMetadata *)metadata useMaskPyramid:(BOOL)pyramid
{
  pyramidCopy = pyramid;
  smoothingCopy = smoothing;
  maskCopy = mask;
  skyMaskCopy = skyMask;
  plistCopy = plist;
  toneMapSmoothingResources = self->_toneMapSmoothingResources;
  v20 = objc_msgSend_width(toneMapSmoothingResources, v17, v18, v19);
  v24 = objc_msgSend_height(self->_toneMapSmoothingResources, v21, v22, v23);
  ResourcesForWidth_height_useMaskPyramid = objc_msgSend_allocateResourcesForWidth_height_useMaskPyramid_(toneMapSmoothingResources, v25, v20, v24, pyramidCopy);
  if (ResourcesForWidth_height_useMaskPyramid)
  {
    sub_2958C0534(ResourcesForWidth_height_useMaskPyramid, &v346);
    v327 = v346.i32[0];
    goto LABEL_50;
  }

  if (!smoothingCopy)
  {
    sub_2958C08BC();
LABEL_56:
    v327 = -12780;
    goto LABEL_50;
  }

  if (!plistCopy)
  {
    sub_2958C085C();
    goto LABEL_56;
  }

  if (!metadata)
  {
    sub_2958C07FC();
    goto LABEL_56;
  }

  if (objc_msgSend_pixelFormat(smoothingCopy, v27, v28, v29) != 25)
  {
    sub_2958C05D0();
    goto LABEL_56;
  }

  v33 = plistCopy[5];
  v335 = *(v33 + 16);
  v334 = objc_msgSend_count(*(v33 + 8), v30, v31, v32);
  v37 = objc_msgSend_commandQueue(self->_metal, v34, v35, v36);
  v41 = objc_msgSend_commandBuffer(v37, v38, v39, v40);

  if (!v41)
  {
    sub_2958C079C();
LABEL_59:
    v327 = -12786;
    goto LABEL_50;
  }

  objc_msgSend_setLabel_(v41, v42, @"MSTM", v43);
  v47 = objc_msgSend_computeCommandEncoder(v41, v44, v45, v46);
  if (!v47)
  {
    sub_2958C0724(v41);
    goto LABEL_59;
  }

  v50 = v47;
  v329 = plistCopy;
  objc_msgSend_setLabel_(v47, v48, @"MSTM Downsample", v49);
  if (pyramidCopy)
  {
    objc_msgSend_setComputePipelineState_(v50, v51, self->_shaders->_mstmCombineAndDownsampleMask, v52);
    objc_msgSend_setImageblockWidth_height_(v50, v53, 32, 32);
    v57 = objc_msgSend_mstmTuningParams(self->_toneMapSmoothingResources, v54, v55, v56);
    objc_msgSend_setBuffer_offset_atIndex_(v50, v58, v57, 0, 0);

    objc_msgSend_setTexture_atIndex_(v50, v59, maskCopy, 9);
    objc_msgSend_setTexture_atIndex_(v50, v60, skyMaskCopy, 10);
    v64 = objc_msgSend_masksPyramid(self->_toneMapSmoothingResources, v61, v62, v63);
    v67 = objc_msgSend_objectAtIndexedSubscript_(v64, v65, 0, v66);
    objc_msgSend_setTexture_atIndex_(v50, v68, v67, 12);

    v70 = self->_toneMapSmoothingResources;
    if (v70)
    {
      objc_msgSend_computeSizeForLevel_xDivisor_yDivisor_(v70, v69, 0, 1, 1);
    }

    else
    {
      v346 = 0uLL;
      v347 = 0;
    }

    v344 = vdupq_n_s64(0x20uLL);
    v345 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v50, v69, &v346, &v344);
    objc_msgSend_setComputePipelineState_(v50, v71, self->_shaders->_mstmDownsampleMask, v72);
    objc_msgSend_setImageblockWidth_height_(v50, v73, 32, 32);
    if (v334 >= 2)
    {
      v336 = vdupq_n_s64(0x20uLL);
      v75 = 1;
      do
      {
        v76 = objc_msgSend_masksPyramid(self->_toneMapSmoothingResources, v51, v74, v52);
        v79 = objc_msgSend_objectAtIndexedSubscript_(v76, v77, v75 - 1, v78);
        objc_msgSend_setTexture_atIndex_(v50, v80, v79, 11);

        v84 = objc_msgSend_masksPyramid(self->_toneMapSmoothingResources, v81, v82, v83);
        v87 = objc_msgSend_objectAtIndexedSubscript_(v84, v85, v75, v86);
        objc_msgSend_setTexture_atIndex_(v50, v88, v87, 12);

        v90 = self->_toneMapSmoothingResources;
        if (v90)
        {
          objc_msgSend_computeSizeForLevel_xDivisor_yDivisor_(v90, v89, v75, 1, 1);
        }

        else
        {
          v346 = 0uLL;
          v347 = 0;
        }

        v344 = v336;
        v345 = 1;
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v50, v89, &v346, &v344);
        ++v75;
      }

      while ((v334 & 0x7FFFFFFF) != v75);
    }
  }

  objc_msgSend_setComputePipelineState_(v50, v51, self->_shaders->_mstmDownsampleInitial, v52);
  objc_msgSend_setImageblockWidth_height_(v50, v91, 32, 32);
  objc_msgSend_setTexture_atIndex_(v50, v92, smoothingCopy, 4);
  v96 = objc_msgSend_referencePyramidOdd(self->_toneMapSmoothingResources, v93, v94, v95);
  v99 = objc_msgSend_objectAtIndexedSubscript_(v96, v97, 0, v98);
  objc_msgSend_setTexture_atIndex_(v50, v100, v99, 0);

  v104 = objc_msgSend_referencePyramidEven(self->_toneMapSmoothingResources, v101, v102, v103);
  v107 = objc_msgSend_objectAtIndexedSubscript_(v104, v105, 0, v106);
  objc_msgSend_setTexture_atIndex_(v50, v108, v107, 1);

  v110 = self->_toneMapSmoothingResources;
  v331 = v41;
  if (v110)
  {
    objc_msgSend_computeSizeForOddEvenLevel_xDivisor_yDivisor_(v110, v109, 0, 1, 2);
  }

  else
  {
    v346 = 0uLL;
    v347 = 0;
  }

  v344 = xmmword_2959D63F0;
  v345 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v50, v109, &v346, &v344);
  objc_msgSend_setComputePipelineState_(v50, v111, self->_shaders->_mstmDownsampleSubsequent, v112);
  objc_msgSend_setImageblockWidth_height_(v50, v113, 32, 32);
  if (v334 >= 2)
  {
    v117 = 1;
    do
    {
      v118 = objc_msgSend_referencePyramidOdd(self->_toneMapSmoothingResources, v114, v115, v116);
      v121 = objc_msgSend_objectAtIndexedSubscript_(v118, v119, v117 - 1, v120);
      objc_msgSend_setTexture_atIndex_(v50, v122, v121, 5);

      v126 = objc_msgSend_referencePyramidEven(self->_toneMapSmoothingResources, v123, v124, v125);
      v129 = objc_msgSend_objectAtIndexedSubscript_(v126, v127, v117 - 1, v128);
      objc_msgSend_setTexture_atIndex_(v50, v130, v129, 6);

      v134 = objc_msgSend_referencePyramidOdd(self->_toneMapSmoothingResources, v131, v132, v133);
      v137 = objc_msgSend_objectAtIndexedSubscript_(v134, v135, v117, v136);
      objc_msgSend_setTexture_atIndex_(v50, v138, v137, 0);

      v142 = objc_msgSend_referencePyramidEven(self->_toneMapSmoothingResources, v139, v140, v141);
      v145 = objc_msgSend_objectAtIndexedSubscript_(v142, v143, v117, v144);
      objc_msgSend_setTexture_atIndex_(v50, v146, v145, 1);

      v148 = self->_toneMapSmoothingResources;
      if (v148)
      {
        objc_msgSend_computeSizeForOddEvenLevel_xDivisor_yDivisor_(v148, v147, v117, 1, 2);
      }

      else
      {
        v346 = 0uLL;
        v347 = 0;
      }

      v344 = xmmword_2959D63F0;
      v345 = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v50, v147, &v346, &v344);
      ++v117;
    }

    while ((v334 & 0x7FFFFFFF) != v117);
  }

  v330 = smoothingCopy;
  objc_msgSend_endEncoding(v50, v114, v115, v116);
  v342 = 0uLL;
  v343 = 0;
  v152 = self->_toneMapSmoothingResources;
  v153 = v334 - 1;
  if (v152)
  {
    objc_msgSend_computeSizeForOddEvenLevel_xDivisor_yDivisor_(v152, v149, v153, 1, 1);
  }

  v154 = objc_msgSend_blitCommandEncoder(v331, v149, v150, v151);
  if (v154)
  {
    v157 = v154;
    objc_msgSend_setLabel_(v154, v155, @"MSTM Blit", v156);
    v161 = objc_msgSend_referencePyramidOdd(self->_toneMapSmoothingResources, v158, v159, v160);
    v164 = objc_msgSend_objectAtIndexedSubscript_(v161, v162, v153, v163);
    v346 = 0uLL;
    v347 = 0;
    v168 = objc_msgSend_outputPyramidOdd(self->_toneMapSmoothingResources, v165, v166, v167);
    v171 = objc_msgSend_objectAtIndexedSubscript_(v168, v169, v153, v170);
    v344 = 0uLL;
    v345 = 0;
    v340 = v342;
    v341 = v343;
    objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v157, v172, v164, 0, 0, &v346, &v340, v171, 0, 0, &v344);

    v176 = objc_msgSend_referencePyramidEven(self->_toneMapSmoothingResources, v173, v174, v175);
    v179 = objc_msgSend_objectAtIndexedSubscript_(v176, v177, v153, v178);
    v346 = 0uLL;
    v347 = 0;
    v183 = objc_msgSend_outputPyramidEven(self->_toneMapSmoothingResources, v180, v181, v182);
    v186 = objc_msgSend_objectAtIndexedSubscript_(v183, v184, v153, v185);
    v344 = 0uLL;
    v345 = 0;
    v340 = v342;
    v341 = v343;
    objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v157, v187, v179, 0, 0, &v346, &v340, v186, 0, 0, &v344);

    objc_msgSend_endEncoding(v157, v188, v189, v190);
    v194 = objc_msgSend_computeCommandEncoder(v331, v191, v192, v193);

    if (v194)
    {
      objc_msgSend_setLabel_(v194, v195, @"MSTM Solver", v196);
      objc_msgSend_setTexture_atIndex_(v194, v197, maskCopy, 9);
      objc_msgSend_setTexture_atIndex_(v194, v198, skyMaskCopy, 10);
      v202 = objc_msgSend_mstmTuningParams(self->_toneMapSmoothingResources, v199, v200, v201);
      objc_msgSend_setBuffer_offset_atIndex_(v194, v203, v202, 0, 0);

      if (v334 >= 1)
      {
        v337 = vdupq_n_s64(0x10uLL);
        do
        {
          if (pyramidCopy)
          {
            v207 = objc_msgSend_masksPyramid(self->_toneMapSmoothingResources, v204, v205, v206);
            v210 = objc_msgSend_objectAtIndexedSubscript_(v207, v208, v153, v209);
            objc_msgSend_setTexture_atIndex_(v194, v211, v210, 11);
          }

          objc_msgSend_setImageblockWidth_height_(v194, v204, 32, 32);
          v215 = objc_msgSend_referencePyramidOdd(self->_toneMapSmoothingResources, v212, v213, v214);
          v218 = objc_msgSend_objectAtIndexedSubscript_(v215, v216, v153, v217);
          objc_msgSend_setTexture_atIndex_(v194, v219, v218, 0);

          v223 = objc_msgSend_referencePyramidEven(self->_toneMapSmoothingResources, v220, v221, v222);
          v226 = objc_msgSend_objectAtIndexedSubscript_(v223, v224, v153, v225);
          objc_msgSend_setTexture_atIndex_(v194, v227, v226, 1);

          v231 = objc_msgSend_outputPyramidOdd(self->_toneMapSmoothingResources, v228, v229, v230);
          v234 = objc_msgSend_objectAtIndexedSubscript_(v231, v232, v153, v233);
          objc_msgSend_setTexture_atIndex_(v194, v235, v234, 2);

          v239 = objc_msgSend_outputPyramidEven(self->_toneMapSmoothingResources, v236, v237, v238);
          v242 = objc_msgSend_objectAtIndexedSubscript_(v239, v240, v153, v241);
          objc_msgSend_setTexture_atIndex_(v194, v243, v242, 3);

          objc_msgSend_setBufferOffset_atIndex_(v194, v244, v153 << 7, 0);
          v346 = 0uLL;
          v347 = 0;
          v245 = self->_toneMapSmoothingResources;
          if (v245)
          {
            objc_msgSend_computeSizeForOddEvenLevel_xDivisor_yDivisor_(v245, v204, v153, 2, 2);
          }

          v246 = (2 << v153) * v335;
          if (v246 >= 1)
          {
            do
            {
              objc_msgSend_setComputePipelineState_(v194, v204, self->_shaders->_mstmDiffusionEven, v206);
              v344 = v346;
              v345 = v347;
              v340 = v337;
              v341 = 1;
              objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v194, v247, &v344, &v340);
              objc_msgSend_setComputePipelineState_(v194, v248, self->_shaders->_mstmDiffusionOdd, v249);
              v344 = v346;
              v345 = v347;
              v340 = v337;
              v341 = 1;
              objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v194, v250, &v344, &v340);
              --v246;
            }

            while (v246);
          }

          if (!v153)
          {
            break;
          }

          v344 = 0uLL;
          v345 = 0;
          v251 = self->_toneMapSmoothingResources;
          if (v251)
          {
            objc_msgSend_computeSizeForOddEvenLevel_xDivisor_yDivisor_(v251, v204, v153 - 1, 2, 2);
          }

          objc_msgSend_setComputePipelineState_(v194, v204, self->_shaders->_mstmPyramidRemixIntermediate, v206);
          objc_msgSend_setImageblockWidth_height_(v194, v252, 32, 32);
          if (pyramidCopy)
          {
            v256 = objc_msgSend_masksPyramid(self->_toneMapSmoothingResources, v253, v254, v255);
            v259 = objc_msgSend_objectAtIndexedSubscript_(v256, v257, v153 - 1, v258);
            objc_msgSend_setTexture_atIndex_(v194, v260, v259, 11);
          }

          v261 = objc_msgSend_referencePyramidOdd(self->_toneMapSmoothingResources, v253, v254, v255);
          v264 = objc_msgSend_objectAtIndexedSubscript_(v261, v262, v153 - 1, v263);
          objc_msgSend_setTexture_atIndex_(v194, v265, v264, 5);

          v269 = objc_msgSend_referencePyramidEven(self->_toneMapSmoothingResources, v266, v267, v268);
          v272 = objc_msgSend_objectAtIndexedSubscript_(v269, v270, v153 - 1, v271);
          objc_msgSend_setTexture_atIndex_(v194, v273, v272, 6);

          v277 = objc_msgSend_outputPyramidOdd(self->_toneMapSmoothingResources, v274, v275, v276);
          v280 = objc_msgSend_objectAtIndexedSubscript_(v277, v278, v153 - 1, v279);
          objc_msgSend_setTexture_atIndex_(v194, v281, v280, 7);

          v285 = objc_msgSend_outputPyramidEven(self->_toneMapSmoothingResources, v282, v283, v284);
          v288 = objc_msgSend_objectAtIndexedSubscript_(v285, v286, v153 - 1, v287);
          objc_msgSend_setTexture_atIndex_(v194, v289, v288, 8);

          objc_msgSend_setBufferOffset_atIndex_(v194, v290, (v153 << 7) | 0x40, 0);
          v340 = v344;
          v341 = v345;
          v338 = vdupq_n_s64(0x10uLL);
          v339 = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v194, v291, &v340, &v338);
        }

        while (v153-- > 0);
      }

      smoothingCopy = v330;
      v293 = (objc_msgSend_width(v330, v204, v205, v206) + 3) >> 2;
      v297 = (objc_msgSend_height(v330, v294, v295, v296) + 1) >> 1;
      objc_msgSend_setComputePipelineState_(v194, v298, self->_shaders->_mstmPyramidRemixFinal, v299);
      objc_msgSend_setTexture_atIndex_(v194, v300, v330, 4);
      objc_msgSend_setImageblockWidth_height_(v194, v301, 32, 32);
      objc_msgSend_setBufferOffset_atIndex_(v194, v302, 64, 0);
      v346.i64[0] = v293;
      v346.i64[1] = v297;
      v347 = 1;
      v344 = xmmword_2959D6400;
      v345 = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v194, v303, &v346, &v344);
      objc_msgSend_endEncoding(v194, v304, v305, v306);
      if (*MEMORY[0x29EDB9270])
      {
        v310 = objc_msgSend_commandQueue(v331, v307, v308, v309);
        v314 = objc_msgSend_commandBuffer(v310, v311, v312, v313);

        objc_msgSend_setLabel_(v314, v315, @"KTRACE_MTLCMDBUF", v316);
        objc_msgSend_addCompletedHandler_(v314, v317, &unk_2A1CA9820, v318);
        objc_msgSend_commit(v314, v319, v320, v321);
        objc_msgSend_addCompletedHandler_(v331, v322, &unk_2A1CA9840, v323);
      }

      objc_msgSend_commit(v331, v307, v308, v309);
      objc_msgSend_makeResourcesAliasable(self->_toneMapSmoothingResources, v324, v325, v326);

      v327 = 0;
      goto LABEL_49;
    }

    sub_2958C0634(v157, v331);
  }

  else
  {
    sub_2958C06AC(v50, v331);
  }

  v327 = -12786;
  smoothingCopy = v330;
LABEL_49:
  plistCopy = v329;
LABEL_50:

  return v327;
}

- (void)runToneMapping:(double)mapping bilateralGrid:(double)grid bilateralGridHomography:(float)homography tmPlist:(double)plist darkestFrameMetadata:(double)metadata ev0FrameMetadata:(double)frameMetadata scaleInput:(uint64_t)input colorCorrection:(void *)self0 hasChromaBias:(void *)self1 quality:(void *)self2 inputIsLinear:(uint64_t)self3
{
  correctionCopy = correction;
  biasCopy = bias;
  qualityCopy = quality;
  v26 = qualityCopy;
  LODWORD(v27) = 0;
  if (a15)
  {
    v28 = 0.5;
  }

  else
  {
    v28 = 0.0;
  }

  memset(__dst, 0, 400);
  v30 = a16 < 2 || a16 == 4;
  v31 = *(qualityCopy + 76) == 1 && v30;
  if (!v31 || (a16 & 0xFFFFFFFB) != 0)
  {
    v33 = 0;
  }

  else
  {
    v32 = *(qualityCopy + 18);
    v33 = 0;
    if (v32)
    {
      v27 = *(correctionCopy + 6);
      if (v27 && (v27 = *(correctionCopy + 7)) != 0 && (v27 = *(correctionCopy + 15)) != 0)
      {
        v33 = v32 == 2 && *(correctionCopy + 9) != 0;
        LODWORD(v27) = 1;
      }

      else
      {
        v33 = 0;
      }
    }
  }

  v319 = v27;
  if (*(qualityCopy + 77) != 1)
  {
    goto LABEL_30;
  }

  v34 = 0;
  if (a16 > 4 || ((1 << a16) & 0x13) == 0)
  {
    goto LABEL_31;
  }

  if (*(correctionCopy + 6))
  {
    v34 = *(correctionCopy + 15) != 0;
  }

  else
  {
LABEL_30:
    v34 = 0;
  }

LABEL_31:
  v35 = qualityCopy[22];
  v39 = sub_2958170BC(*(correctionCopy + 15));
  v302 = v31 && v35 > 0.0;
  if (v302)
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  if (v31)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v318 = biasCopy;
  selfCopy = self;
  v322 = v31;
  v303 = v42;
  if (v26[79] == 1 && a16 != 3 && *(self + 64) && v31)
  {
    if (dword_2A18C2398)
    {
      v345 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v51 = objc_msgSend_commandQueue(*(self + 8), v36, v37, v38);
    v55 = objc_msgSend_commandBuffer(v51, v52, v53, v54);

    v62 = objc_msgSend_blitCommandEncoder(v55, v56, v57, v58);
    if (v62)
    {
      v63 = *(*(correctionCopy + 16) + 32);
      v64 = objc_msgSend_length(v63, v59, v60, v61);
      objc_msgSend_fillBuffer_range_value_(v62, v65, v63, 0, v64, 0);
      objc_msgSend_endEncoding(v62, v66, v67, v68);
      objc_msgSend_commit(v55, v69, v70, v71);
      v75 = objc_msgSend_device(*(selfCopy + 8), v72, v73, v74);
      v77 = objc_msgSend_newBufferWithLength_options_(v75, v76, 399360, 0);
      v78 = *(selfCopy + 72);
      *(selfCopy + 72) = v77;

      if (*(selfCopy + 72))
      {
        v306 = v55;
        *(selfCopy + 80) = objc_msgSend_width(*(correctionCopy + 1), v79, v80, v81);
        *(selfCopy + 82) = objc_msgSend_height(*(correctionCopy + 1), v82, v83, v84);
        v88 = objc_msgSend_width(*(correctionCopy + 2), v85, v86, v87);
        v92 = objc_msgSend_height(*(correctionCopy + 2), v89, v90, v91);
        objc_msgSend_getLtmRoi_chromaTexHeight_ltmLut_isHalfResolution_(selfCopy, v93, v88, v92, linear + 168, 0);
        v297 = v94;
        v98 = objc_msgSend_width(*(correctionCopy + 2), v95, v96, v97);
        v102 = objc_msgSend_height(*(correctionCopy + 2), v99, v100, v101);
        objc_msgSend_getCcmRoi_chromaTexHeight_ccmLut_isHalfResolution_(selfCopy, v103, v98, v102, linear + 168, 0);
        v299 = v104;
        objc_msgSend_getExposureBiasFactor_inputIsLinear_(selfCopy, v105, linear, a17);
        v107 = v106;
        v295 = linear + 221184;
        v108 = *(linear + 222432);
        v109 = *(correctionCopy + 1);
        v113 = objc_msgSend_stfParams(*(selfCopy + 64), v110, v111, v112);
        objc_msgSend_setInLuma_(v113, v114, v109, v115);

        v116 = *(correctionCopy + 2);
        v120 = objc_msgSend_stfParams(*(selfCopy + 64), v117, v118, v119);
        objc_msgSend_setInChroma_(v120, v121, v116, v122);

        v123 = *(correctionCopy + 4);
        v127 = objc_msgSend_stfParams(*(selfCopy + 64), v124, v125, v126);
        objc_msgSend_setOutLuma_(v127, v128, v123, v129);

        v130 = *(correctionCopy + 5);
        v134 = objc_msgSend_stfParams(*(selfCopy + 64), v131, v132, v133);
        objc_msgSend_setOutChroma_(v134, v135, v130, v136);

        v140 = objc_msgSend_stfParams(*(selfCopy + 64), v137, v138, v139);
        objc_msgSend_setInputIsLinear_(v140, v141, a17, v142);

        v146 = objc_msgSend_stfParams(*(selfCopy + 64), v143, v144, v145);
        LODWORD(v134) = objc_msgSend_conformsToProtocol_(v146, v147, &unk_2A1CD4460, v148);

        if (v134)
        {
          v152 = objc_msgSend_stfParams(*(selfCopy + 64), v149, v150, v151);
          objc_msgSend_setGtcRatioTex_(v152, v153, *(*(correctionCopy + 16) + 16), v154);
          objc_msgSend_setGtcFinalTex_(v152, v155, *(*(correctionCopy + 16) + 24), v156);
          objc_msgSend_setColorCorrection_(v152, v157, v158, v159, plist, metadata, frameMetadata);
          if (*(*(v26 + 3) + 36))
          {
            v162 = &OBJC_IVAR___ToneMappingBuffers_skinMask;
          }

          else
          {
            v162 = &OBJC_IVAR___ToneMappingBuffers_skyMask;
          }

          objc_msgSend_setSkySkinMask_(v152, v160, *&correctionCopy[*v162], v161);
          objc_msgSend_setLtcLutData_(v152, v163, *(*(correctionCopy + 16) + 64), v164);
          v167 = *(correctionCopy + 16);
          if (*(v167 + 57) == 1)
          {
            objc_msgSend_setLtcTcrLutData_(v152, v165, *(v167 + 72), v166);
          }

          else
          {
            objc_msgSend_setLtcTcrLutData_(v152, v165, 0, v166);
          }

          objc_msgSend_setLtmRoi_(v152, v168, v169, v170, v297);
          v173 = *(correctionCopy + 16);
          if (*(v173 + 56) == 1 && *(v295 + 1825) == 1)
          {
            objc_msgSend_setCcmLut_(v152, v171, *(v173 + 48), v172);
          }

          else
          {
            objc_msgSend_setCcmLut_(v152, v171, 0, v172);
          }

          objc_msgSend_setCcmRoi_(v152, v174, v175, v176, v299);
          objc_msgSend_setLumaHistogram_(v152, v177, *(*(correctionCopy + 16) + 32), v178);
          LODWORD(v179) = v107;
          objc_msgSend_setExposureBiasFactor_(v152, v180, v181, v182, v179);
          *&v183 = homography;
          objc_msgSend_setScaleInput_(v152, v184, v185, v186, v183);
          *&v187 = v35;
          objc_msgSend_setChromaGainAdjPower_(v152, v188, v189, v190, v187);
          *&v191 = v28;
          objc_msgSend_setChromaBias_(v152, v192, v193, v194, v191);
          LODWORD(v195) = *(correctionCopy + 34);
          objc_msgSend_setInputLumaPedestal_(v152, v196, v197, v198, v195);
          LODWORD(v199) = v108;
          objc_msgSend_setLtmHardGain_(v152, v200, v201, v202, v199);
          objc_msgSend_setOutputLTCs_(v152, v203, *(selfCopy + 72), v204);
          objc_msgSend_setCurrentTuning_(v152, v205, *(v26 + 10), v206);
        }

        v207 = objc_msgSend_process(*(selfCopy + 64), v149, v150, v151);
        if (!v207)
        {
          self = selfCopy;
          *(selfCopy + 90) = 1;
          v211 = objc_msgSend_stfParams(*(selfCopy + 64), v208, v209, v210);
          *(selfCopy + 92) = objc_msgSend_analyticsVersion(v211, v212, v213, v214);

          v215 = *(correctionCopy + 16);
          if (*(v215 + 57) == 1)
          {
            *(v215 + 57) = 0;
          }

          v50 = a14;
          v31 = v322;
          goto LABEL_63;
        }

        TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = v207;
        v55 = v306;
      }

      else
      {
        sub_2958C091C(v324);
        TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = v324[0];
      }
    }

    else
    {
      sub_2958C09B8(v324);
      TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = v324[0];
    }

    goto LABEL_93;
  }

  *&v40 = homography;
  isHalfResolution = objc_msgSend_performLTM_bilateralGrid_bilateralGridHomography_detailEnhance_darkestFrameMetadata_scaleInput_colorCorrection_outputMode_chromaGainAdjPower_inputIsLinear_chromaBias_isHalfResolution_(self, v36, correctionCopy, biasCopy, linear, a2, mapping, grid, *(v26 + 60), v40, plist, metadata, frameMetadata, __PAIR64__(LODWORD(v28), LODWORD(v35)));
  v50 = a14;
  if (isHalfResolution)
  {
    sub_2958C0A54(isHalfResolution, v324);
    goto LABEL_102;
  }

LABEL_63:
  v317 = v34;
  v216 = *(correctionCopy + 4);
  v217 = !v31;
  if (!v216)
  {
    v217 = 1;
  }

  if ((v217 & 1) == 0)
  {
    v218 = *(v26 + 5);
    v219 = objc_msgSend_mstmTuningParams(*(self + 24), v45, v46, v47);
    selfCopy2 = self;
    v221 = v219;
    TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = objc_msgSend_fetchTuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer_(selfCopy2, v222, v218, v50, v216, v219);

    if (TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer)
    {
      sub_2958C0AF0(TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer);
      goto LABEL_93;
    }

    self = selfCopy;
    v31 = v322;
    if ((v319 | v33))
    {
      v226 = *(v26 + 6);
      v227 = *(correctionCopy + 4);
      v228 = objc_msgSend_srlOnMSTMTuningParams(*(selfCopy + 24), v45, v224, v225);
      TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = objc_msgSend_fetchTuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer_(selfCopy, v229, v226, v50, v227, v228);

      if (TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer)
      {
        sub_2958C0B50(TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer);
        goto LABEL_93;
      }

      self = selfCopy;
      v31 = v322;
    }
  }

  v230 = *(correctionCopy + 4);
  if (v230 != 0 && (v319 & 1) != 0 && !v33)
  {
    if (dword_2A18C2398)
    {
      v345 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v231 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      v230 = *(correctionCopy + 4);
      self = selfCopy;
      v31 = v322;
    }

    BYTE4(v275) = a17;
    LODWORD(v275) = v303;
    *&v49 = v28;
    IsLinear_chromaBias_tmPlist = objc_msgSend_performSubjectRelightingWithTonemap_luma_chroma_ltmChroma_validROI_skinMask_personMask_faceLandmarks_ev0FrameMetadata_ltmOutputMode_inputIsLinear_chromaBias_tmPlist_(self, v45, v230, *(correctionCopy + 1), *(correctionCopy + 2), *(correctionCopy + 5), *(correctionCopy + 6), *(correctionCopy + 7), *(v50 + 128), *(v50 + 136), *(v50 + 144), *(v50 + 152), v49, v39, v50, v275, v26);
    if (IsLinear_chromaBias_tmPlist)
    {
      sub_2958C0BB0(IsLinear_chromaBias_tmPlist, v324);
      goto LABEL_102;
    }

    v230 = *(correctionCopy + 4);
  }

  if (v230 != 0 && v33)
  {
    v320 = v28;
    v309 = v39;
    if (dword_2A18C2398)
    {
      v345 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v233 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      self = selfCopy;
    }

    v277 = v35;
    memcpy(__dst, (v50 + 223016), 0x190uLL);
    v311 = v26;
    v234 = *(v26 + 2);
    v300 = *(v234 + 8);
    v298 = *(v234 + 12);
    v296 = *(v234 + 16);
    v294 = *(v234 + 20);
    v293 = *(v234 + 24);
    v292 = *(v234 + 28);
    v291 = *(v234 + 32);
    v290 = *(v234 + 36);
    v289 = *(v234 + 40);
    v287 = *(v234 + 44);
    v288 = *(v234 + 48);
    v285 = *(v234 + 52);
    v284 = *(v234 + 56);
    v281 = *(v234 + 60);
    v235 = *(v234 + 64);
    v236 = *(v234 + 68);
    v237 = *(v234 + 72);
    v238 = *(v234 + 76);
    v239 = *(v234 + 80);
    v240 = *(v234 + 84);
    v241 = *(v234 + 88);
    v242 = *(v234 + 92);
    v315 = *(correctionCopy + 4);
    v313 = *(correctionCopy + 1);
    v307 = *(correctionCopy + 2);
    v304 = *(correctionCopy + 5);
    v301 = *(correctionCopy + 6);
    v286 = *(correctionCopy + 7);
    v280 = *(correctionCopy + 72);
    v278 = *(correctionCopy + 14);
    v243 = *(correctionCopy + 12);
    v279 = *(correctionCopy + 11);
    v244 = *(correctionCopy + 13);
    v282 = *(v50 + 116);
    v283 = *(v50 + 76);
    v245 = *(v50 + 160);
    v246 = *(v50 + 223012);
    v247 = *(self + 32);
    v251 = objc_msgSend_mstmTuningParams(*(self + 24), v248, v249, v250);
    v255 = objc_msgSend_srlOnMSTMTuningParams(*(self + 24), v252, v253, v254);
    v256 = *(v50 + 128);
    v257 = *(v50 + 136);
    v258 = *(v50 + 144);
    v259 = *(v50 + 152);
    v324[0] = v300;
    v324[1] = v298;
    v324[2] = v296;
    v324[3] = v294;
    v324[4] = v293;
    v324[5] = v292;
    v324[6] = v291;
    v324[7] = v290;
    v324[8] = v289;
    v325 = v287;
    v326 = 0;
    v327 = 0;
    v328 = v288;
    v329 = v285;
    v330 = v284;
    v331 = v281;
    v332 = v235;
    v333 = v236;
    v334 = v237;
    v335 = v238;
    v336 = v239;
    v337 = v240;
    v338 = v241;
    v339 = v242;
    v341 = 0;
    v340 = 0;
    v343 = 0;
    v342 = 0;
    HIBYTE(v276) = a17;
    LOBYTE(v276) = v302;
    LODWORD(v260) = v282;
    v28 = v320;
    *&v261 = v320;
    IsLinear_chromaBias_srlV2Plist_mstmParams_mstmSRLParams_blackPoint_playBackCurve_iptSkinMedian = objc_msgSend_runSubjectRelightingVersion_toneMap_luma_chroma_ltmChroma_skinMask_personMask_glassesMask_instanceMask0_instanceMask1_instanceMask2_instanceMask3_gammaCurve_instanceMaskConfidences_skinToneClassification_validROI_expBias_faceExpRatio_exifOrientation_numFacesISPDetected_faceBoundingBoxesFromISP_isChromaGainAdjusted_inputIsLinear_chromaBias_srlV2Plist_mstmParams_mstmSRLParams_blackPoint_playBackCurve_iptSkinMedian_(v247, v262, @"v2", v315, v313, v307, v304, v301, v256, v257, v258, v259, COERCE_DOUBLE(__PAIR64__(DWORD1(v280), v283)), v260, v261, v286, 0, v280, v279, v243, 0, v278, v244, v245, v246, __dst, v276, v324, v251, v255, 0, 0, 0);

    if (IsLinear_chromaBias_srlV2Plist_mstmParams_mstmSRLParams_blackPoint_playBackCurve_iptSkinMedian)
    {
      sub_2958C0C4C(IsLinear_chromaBias_srlV2Plist_mstmParams_mstmSRLParams_blackPoint_playBackCurve_iptSkinMedian, v324);
      TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = v324[0];
      biasCopy = v318;
      v26 = v311;
      v39 = v309;
      goto LABEL_93;
    }

    v230 = *(correctionCopy + 4);
    biasCopy = v318;
    v26 = v311;
    self = selfCopy;
    v39 = v309;
    v50 = a14;
    v31 = v322;
    v35 = v277;
  }

  if (!v230)
  {
    goto LABEL_92;
  }

  if (v317)
  {
    fixed = objc_msgSend_performSmallFaceFix_faceLandmarks_faceLandmarkOrientation_tmPlist_(self, v45, *(correctionCopy + 6), v39, *(v50 + 160), v26);
    if (fixed)
    {
      sub_2958C0CE8(fixed, v324);
      goto LABEL_102;
    }
  }

  if (v31)
  {
    v265 = objc_msgSend_performToneMapSmoothing_mask_skyMask_tmPlist_ev0FrameMetadata_useMaskPyramid_(self, v45, *(correctionCopy + 4), *(correctionCopy + 6), *(correctionCopy + 8), v26, v50, a16 != 4);
    if (v265)
    {
      sub_2958C0D84(v265, v324);
      goto LABEL_102;
    }

    if (v35 <= 0.0)
    {
      v269 = 0;
    }

    else
    {
      v269 = *(correctionCopy + 5);
    }

    *&v267 = v35;
    *&v268 = v28;
    IsLinear_chromaBias = objc_msgSend_mstmsApplyLumaGain_inputLuma_inputChroma_outputChroma_localGainMap_chromaGainAdjPower_inputIsLinear_chromaBias_(self, v266, *(correctionCopy + 4), *(correctionCopy + 1), *(correctionCopy + 2), v269, *(correctionCopy + 3), a17, v267, v268);
    if (IsLinear_chromaBias)
    {
      sub_2958C0E20(IsLinear_chromaBias, v324);
      goto LABEL_102;
    }
  }

  if (v26[92] == 1)
  {
    v271 = *(correctionCopy + 4);
    if (v271)
    {
      LODWORD(v272) = *(v26 + 24);
      HIDWORD(v272) = 973279855;
      LODWORD(v48) = *(v26 + 26);
      v273 = objc_msgSend_performBlackSubtractionWithBlackWhiteParams_maxContrastStrength_inOutTex_curves_(self, v45, v271, *(correctionCopy + 16), v272, v48);
      if (!v273)
      {
        goto LABEL_92;
      }

      sub_2958C0EBC(v273, v324);
    }

    else
    {
      sub_2958C0F58(v324);
    }

LABEL_102:
    TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = v324[0];
    goto LABEL_93;
  }

LABEL_92:
  TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = 0;
LABEL_93:

  return TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer;
}

- (void)reset
{
  objc_msgSend_reset(self->_subjectRelightV2, a2, v2, v3);
  lastSRLCommandBuffer = self->_lastSRLCommandBuffer;
  self->_lastSRLCommandBuffer = 0;

  self->_lastSRLStatusValue = 0;
  v9 = objc_msgSend_stfParams(self->_stfProcessor, v6, v7, v8);
  objc_msgSend_reset(v9, v10, v11, v12);

  stfOutputLTCs = self->_stfOutputLTCs;
  self->_stfOutputLTCs = 0;

  self->_stfStillCorrectionStrength = 0;
  self->_stfStillApplied = 0;
  self->_stfStillAnalyticsVersion = 0;
  self->_SRLWaitCompleted = 0;
}

- (unsigned)getSRLStatus
{
  if (objc_msgSend_srlVersion(self->_toneMapSmoothingResources, a2, v2, v3) == 2)
  {
    self->_lastSRLStatusValue = objc_msgSend_getSRLStatus(self->_subjectRelightV2, v5, v6, v7);
  }

  lastSRLCommandBuffer = self->_lastSRLCommandBuffer;
  if (lastSRLCommandBuffer)
  {
    objc_msgSend_waitUntilCompleted(lastSRLCommandBuffer, v5, v6, v7);
    if (objc_msgSend_srlVersion(self->_toneMapSmoothingResources, v9, v10, v11) == 1)
    {
      v15 = objc_msgSend_srlCoeffsBuffer(self->_toneMapSmoothingResources, v12, v13, v14);
      v16 = v15;
      v20 = objc_msgSend_contents(v16, v17, v18, v19);

      self->_lastSRLStatusValue |= *v20 << 16;
    }

    v21 = self->_lastSRLCommandBuffer;
    self->_lastSRLCommandBuffer = 0;

    self->_SRLWaitCompleted = 1;
  }

  return self->_lastSRLStatusValue;
}

- (float)getExposureBiasFactor:(const frameMetadata *)factor inputIsLinear:(BOOL)linear
{
  if (!factor->exposureParams.ltm_locked || !factor->exposureParams.ae_locked || factor->isEVMFrame || linear)
  {
    return 1.0;
  }

  else
  {
    return exp2f(-factor->exposureParams.exposure_bias);
  }
}

- (__n64)getCcmRoi:(int)roi chromaTexHeight:(int)height ccmLut:(unsigned __int16 *)lut isHalfResolution:(int)resolution
{
  if (resolution)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_29583737C(lut) / v9;
  v11 = sub_2958373B8(lut) / v9;
  v12 = sub_29583725C(lut);
  v13 = sub_2958372C4(lut);
  result.n64_u32[0] = ((2 * roi - v10 * v12) / 2 + v10 / 2) / 2;
  result.n64_u32[1] = ((2 * height - v11 * v13) / 2 + v11 / 2) / 2;
  return result;
}

- (__n64)getLtmRoi:(int)roi chromaTexHeight:(int)height ltmLut:(unsigned __int16 *)lut isHalfResolution:(int)resolution
{
  if (resolution)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_29583737C(lut) / v9;
  v11 = sub_2958373B8(lut) / v9;
  v12 = sub_29583725C(lut);
  v13 = sub_2958372C4(lut);
  result.n64_u32[0] = ((2 * roi - v10 * v12) / 2 + v10 / 2) / 2;
  result.n64_u32[1] = ((2 * height - v11 * v13) / 2 + v11 / 2) / 2;
  return result;
}

- (id)getSTFLTM_asNSData
{
  v5 = objc_msgSend_stfParams(self->_stfProcessor, a2, v2, v3);
  v9 = objc_msgSend_lastSTFCommandBuffer(v5, v6, v7, v8);

  if (v9)
  {
    v13 = objc_msgSend_lastSTFCommandBuffer(v5, v10, v11, v12);
    objc_msgSend_waitUntilCompleted(v13, v14, v15, v16);

    v17 = objc_alloc(MEMORY[0x29EDB8DF8]);
    v20 = objc_msgSend_initWithLength_(v17, v18, 399384, v19);
    v9 = v20;
    if (v20)
    {
      v21 = v20;
      v25 = objc_msgSend_mutableBytes(v21, v22, v23, v24);
      if (v25)
      {
        v29 = v25;
        *(v25 + 4) = 48;
        *(v25 + 22) = 65;
        *v25 = 4194308;
        *(v25 + 10) = 0;
        *(v25 + 6) = 8528000;
        *(v25 + 18) = self->_lastInputLumaTexWidth >> 6;
        *(v25 + 20) = self->_lastInputLumaTexHeight / 0x30u;
        if (objc_msgSend_contents(self->_stfOutputLTCs, v26, v27, v28))
        {
          v33 = objc_msgSend_contents(self->_stfOutputLTCs, v30, v31, v32);
          memcpy((v29 + 24), v33, 0x61800uLL);
          goto LABEL_6;
        }

        sub_2958C0FF4(&v37);
      }

      else
      {
        sub_2958C1090(&v37);
      }
    }

    else
    {
      sub_2958C112C(&v37);
    }
  }

  else
  {
    sub_2958C11C8(&v37);
  }

  if (v37)
  {
    v34 = 0;
    goto LABEL_7;
  }

LABEL_6:
  v34 = v9;
LABEL_7:
  v35 = v34;

  return v34;
}

- (int)getSTFStillCorrectionStrength:(BOOL)strength
{
  if (strength || self->_SRLWaitCompleted)
  {
    v5 = objc_msgSend_stfParams(self->_stfProcessor, a2, strength, v3);
    v9 = objc_msgSend_lastSTFCommandBuffer(v5, v6, v7, v8);

    if (v9)
    {
      v13 = objc_msgSend_lastSTFCommandBuffer(v5, v10, v11, v12);
      objc_msgSend_waitUntilCompleted(v13, v14, v15, v16);

      self->_stfStillCorrectionStrength = objc_msgSend_getCorrectionStrength(self->_stfProcessor, v17, v18, v19);
    }

    self->_SRLWaitCompleted = 0;
  }

  return self->_stfStillCorrectionStrength;
}

- (SidecarWriter)sidecarWriter
{
  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);

  return WeakRetained;
}

- (int)performSubjectRelightingWithTonemap:(id)tonemap luma:(id)luma chroma:(id)chroma ltmChroma:(id)ltmChroma validROI:(CGRect)i skinMask:(id)mask personMask:(id)personMask faceLandmarks:(id)self0 ev0FrameMetadata:(const frameMetadata *)self1 ltmOutputMode:(int)self2 inputIsLinear:(BOOL)self3 chromaBias:(float)self4 tmPlist:(id)self5
{
  height = i.size.height;
  width = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  tonemapCopy = tonemap;
  lumaCopy = luma;
  chromaCopy = chroma;
  ltmChromaCopy = ltmChroma;
  isKindOfClass = mask;
  personMaskCopy = personMask;
  landmarksCopy = landmarks;
  plistCopy = plist;
  *&v399.f64[0] = metadata;
  exifOrientation = metadata->exifOrientation;
  self->_lastSRLStatusValue = 1;
  v389 = tonemapCopy;
  v385 = personMaskCopy;
  if (!tonemapCopy)
  {
    sub_2957F8838();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v362, v364, v366, v368, v370, v373, v376, v379);
    sub_295862228();
    v358 = -12780;
    v47 = 0;
    v37 = chromaCopy;
    v36 = lumaCopy;
    goto LABEL_69;
  }

  v36 = lumaCopy;
  if (!lumaCopy)
  {
    sub_2957F8838();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v362, v364, v366, v368, v370, v373, v376, v379);
    sub_295862228();
    v358 = -12780;
    v47 = v389;
    v37 = chromaCopy;
    goto LABEL_69;
  }

  v37 = chromaCopy;
  if (!chromaCopy)
  {
    goto LABEL_79;
  }

  self->_lastSRLStatusValue = 2;
  if (!isKindOfClass)
  {
    goto LABEL_79;
  }

  if (!personMaskCopy)
  {
    sub_2957F8838();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v362, v364, v366, v368, v370, v373, v376, v379);
    v397 = 0;
LABEL_80:
    exifOrientation = 0;
    v358 = -12780;
LABEL_91:
    v47 = v389;
    goto LABEL_69;
  }

  if (!landmarksCopy)
  {
LABEL_79:
    sub_2957F8838();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    v397 = 0;
    personMaskCopy = 0;
    goto LABEL_80;
  }

  self->_lastSRLStatusValue = 3;
  selfCopy = self;
  v41 = objc_msgSend_count(landmarksCopy, v31, v32, v33);
  selfCopy2 = self;
  y_high = HIDWORD(metadata->faces[1].rect.origin.y);
  v44 = y_high;
  if (v41)
  {
    v45 = 1;
  }

  else
  {
    v45 = y_high == 0;
  }

  v46 = !v45;
  HIDWORD(v383) = v46;
  if (!v45)
  {
    self->_lastSRLStatusValue = 7;
    v41 = v44;
  }

  v47 = v389;
  if (!plistCopy)
  {
    sub_2957F8838();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v362, v364, v366, v368, v370, v373, v376, v379);
    sub_295862228();
    v358 = -12780;
    goto LABEL_69;
  }

  selfCopy2->_lastSRLStatusValue = 4;
  if (!v41 && !v44 || (v41 >= 0x11 ? (v48 = v44 > 0x10) : (v48 = 0), v48))
  {
    sub_295862228();
    v358 = 0;
    goto LABEL_69;
  }

  v380 = isKindOfClass;
  isKindOfClass = v41 << 8;
  selfCopy2->_lastSRLStatusValue = isKindOfClass | 4;
  personMaskCopy = objc_msgSend_count(*(*(plistCopy + 6) + 8), v38, v39, v40);
  *v52.f64 = objc_msgSend_width(lumaCopy, v49, v50, v51);
  v403 = v52;
  v56 = objc_msgSend_height(lumaCopy, v53, v54, v55);
  v57 = v403;
  *(v57.f64 + 1) = v56;
  v404 = v57;
  bzero(v418, 0xD8uLL);
  v417[0] = v41;
  v417[1] = personMaskCopy;
  v418[0] = linear;
  biasCopy = bias;
  v420 = *(plistCopy + 22);
  v58.f64[0] = x;
  v421 = vdiv_f32(COERCE_FLOAT32X2_T(sub_295862268(v58, y)), *&v404.f64[0]);
  v59.f64[0] = width;
  v422 = vdiv_f32(COERCE_FLOAT32X2_T(sub_295862268(v59, height)), *&v404.f64[0]);
  v60 = *(plistCopy + 1);
  v423 = *(v60 + 8);
  v424 = *(v60 + 12);
  v425 = *(v60 + 16);
  v426 = *(v60 + 20);
  v427 = *(v60 + 24);
  v428 = *(v60 + 28);
  v429 = *(v60 + 32);
  v430 = *(v60 + 36);
  v431 = *(v60 + 40);
  v432 = *(v60 + 44);
  v433 = *(v60 + 48);
  v434 = *(v60 + 52);
  v435 = *(v60 + 56);
  v436 = *(v60 + 60);
  v437 = *(v60 + 64);
  v438 = *(v60 + 68);
  v439 = *(v60 + 72);
  v440 = *(v60 + 76);
  v441 = *(v60 + 80);
  v442 = *(v60 + 84);
  v443 = *(v60 + 88);
  v444 = *(v60 + 92);
  v445 = *(v60 + 96);
  v446 = *(v60 + 100);
  v447 = *(v60 + 104);
  v448 = *(v60 + 108);
  v449 = *(v60 + 112);
  v450 = *(v60 + 116);
  v451 = *(v60 + 124);
  v452 = *(v60 + 128);
  v453 = *(v60 + 132);
  v454 = *(v60 + 136);
  v455 = *(v60 + 140);
  v456 = *(v60 + 144);
  v457 = *(v60 + 148);
  v458 = *(v60 + 152);
  v459 = *(v60 + 156);
  v460 = *(v60 + 160);
  v461 = *(v60 + 164);
  v462 = *(v60 + 168);
  v463 = *(v60 + 172);
  v464 = *(v60 + 176);
  v37 = HIDWORD(v383);
  v465 = BYTE4(v383);
  v397 = malloc_type_calloc(v41, 0xE8uLL, 0x1000040F515A0E0uLL);
  if (!v397)
  {
    sub_2957F8838();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v362, v364, v366, v368, v370, v373, v376, v380);
    sub_295862228();
    v358 = -12786;
    isKindOfClass = v382;
    v37 = chromaCopy;
    goto LABEL_69;
  }

  memset(&v416, 0, sizeof(v416));
  v64.f64[0] = sub_295816EA0(exifOrientation, &v416);
  v395 = landmarksCopy;
  v374 = lumaCopy;
  v377 = plistCopy;
  v371 = v41 << 8;
  if ((v383 & 0x100000000) != 0)
  {
    if (v41)
    {
      v65 = 0;
      v66 = (v397 + 72);
      v67 = v397 + 120;
      v68 = 0.0;
      isKindOfClass = 40;
      do
      {
        p_size = &metadata->faces[v65 + 1].rect.size;
        v64.f64[0] = p_size->width;
        v70 = p_size[1].width;
        v71 = p_size[1].height;
        v72 = &v397[232 * v65];
        *v72 = sub_295862268(v64, p_size->height);
        v73.f64[0] = v70;
        v74 = sub_295862268(v73, v71);
        v72[1] = v74;
        if (*&v74 <= *(&v74 + 1))
        {
          v75 = *(&v74 + 1);
        }

        else
        {
          v75 = *&v74;
        }

        *(v72 + 4) = 1077936128;
        v76 = 6;
        v77 = v66;
        do
        {
          v78.f64[0] = sub_295862250();
          *(v77 - 6) = sub_295862268(v78, v79);
          v80.f64[0] = sub_295862250();
          *v77++ = sub_295862268(v80, v81);
          --v76;
        }

        while (v76);
        for (i = 0; i != 112; i += 8)
        {
          v83.f64[0] = sub_295862250();
          *&v67[i] = sub_295862268(v83, v84);
        }

        if (v68 < v75)
        {
          v68 = v75;
        }

        ++v65;
        v66 += 29;
        v67 += 232;
      }

      while (v65 != v41);
    }

    else
    {
      v68 = 0.0;
    }
  }

  else
  {
    v68 = 0.0;
    if (v41)
    {
      v85 = 0;
      v86 = (v397 + 72);
      v87 = (v397 + 120);
      while (1)
      {
        v88 = objc_msgSend_objectAtIndexedSubscript_(landmarksCopy, v61, v85, v63, v64.f64[0]);
        sub_29585E9DC(v88, v89, v90, v91);
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          sub_2957F8838();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v362, v364, v366, v368, v371, v374, v377, v380);
          goto LABEL_72;
        }

        v94 = objc_msgSend_objectAtIndexedSubscript_(landmarksCopy, v92, v85, v93);
        isKindOfClass = objc_msgSend_landmarks(v94, v95, v96, v97);
        v37 = objc_msgSend_leftEye(isKindOfClass, v98, v99, v100);
        v104 = objc_msgSend_pointCount(v37, v101, v102, v103);

        if (v104 != 6)
        {
          break;
        }

        v37 = objc_msgSend_landmarks(v94, v105, v106, v107);
        v111 = objc_msgSend_rightEye(v37, v108, v109, v110);
        isKindOfClass = objc_msgSend_pointCount(v111, v112, v113, v114);

        if (isKindOfClass != 6)
        {
          break;
        }

        v37 = objc_msgSend_landmarks(v94, v115, v116, v117);
        v121 = objc_msgSend_outerLips(v37, v118, v119, v120);
        isKindOfClass = objc_msgSend_pointCount(v121, v122, v123, v124);

        if (isKindOfClass != 14)
        {
          break;
        }

        objc_msgSend_boundingBox(v94, v125, v126, v127);
        v415 = v416;
        v467 = CGRectApplyAffineTransform(v466, &v415);
        v128 = &v397[232 * v85];
        *v128 = sub_295862268(v467.origin, v467.origin.y);
        v129.f64[0] = sub_295862250();
        v128[1] = sub_295862268(v129, v130);
        v134 = objc_msgSend_yaw(v94, v131, v132, v133);
        objc_msgSend_floatValue(v134, v135, v136, v137);
        *(v128 + 4) = (v138 * 3.0) / 1.5708;

        v142 = 8;
        v143 = v86;
        do
        {
          v144 = objc_msgSend_landmarks(v94, v139, v140, v141);
          v148 = objc_msgSend_leftEye(v144, v145, v146, v147);
          v149 = v148;
          v153 = objc_msgSend_normalizedPoints(v149, v150, v151, v152);
          *&v167 = sub_295862238(*(v153 + v142 - 8), *(v153 + v142), v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v362, v364, v366, v368, v371, v374, v377, v380, v383, v385, ltmChromaCopy, v389, chromaCopy, selfCopy, v395, v397, *&v399.f64[0], *&v399.f64[1], *&v404.f64[0], *&v404.f64[1], v407, v409, v411, v413, *&v415.a, *&v415.b, *&v415.c, *&v415.d, *&v415.tx, *&v415.ty, v164, v165, v166);
          v405 = v167;

          v171 = objc_msgSend_landmarks(v94, v168, v169, v170);
          v175 = objc_msgSend_rightEye(v171, v172, v173, v174);
          v176 = v175;
          v180 = objc_msgSend_normalizedPoints(v176, v177, v178, v179);
          v194.f64[0] = sub_295862238(*(v180 + v142 - 8), *(v180 + v142), v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v363, v365, v367, v369, v372, v375, v378, v381, v384, v386, v388, v390, v392, v394, v396, v398, v400, v402, v405, *(&v405 + 1), v408, v410, v412, v414, *&v415.a, *&v415.b, *&v415.c, *&v415.d, *&v415.tx, *&v415.ty, v191, v192, v193);
          v399 = v194;

          *(v143 - 6) = sub_295862268(v404, v404.f64[1]);
          *v143++ = sub_295862268(v399, v399.f64[1]);
          v142 += 16;
        }

        while (v142 != 104);
        isKindOfClass = 0;
        v195 = v87;
        do
        {
          v37 = objc_msgSend_landmarks(v94, v139, v140, v141);
          v199 = objc_msgSend_outerLips(v37, v196, v197, v198);
          v200 = v199;
          v204 = objc_msgSend_normalizedPoints(v200, v201, v202, v203);
          v218.f64[0] = sub_295862238(*(v204 + isKindOfClass), *(v204 + isKindOfClass + 8), v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v362, v364, v366, v368, v371, v374, v377, v380, v383, v385, ltmChromaCopy, v389, chromaCopy, selfCopy, v395, v397, *&v399.f64[0], *&v399.f64[1], *&v404.f64[0], *&v404.f64[1], v407, v409, v411, v413, *&v415.a, *&v415.b, *&v415.c, *&v415.d, *&v415.tx, *&v415.ty, v215, v216, v217);
          v404 = v218;

          *v195++ = sub_295862268(v404, v404.f64[1]);
          isKindOfClass += 16;
        }

        while (isKindOfClass != 224);

        ++v85;
        v86 += 29;
        v87 += 29;
        landmarksCopy = v395;
        if (v85 == v41)
        {
          goto LABEL_50;
        }
      }

      sub_2957F8838();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");

LABEL_72:
      personMaskCopy = 0;
      exifOrientation = 0;
      v358 = -12780;
      v36 = v374;
      goto LABEL_67;
    }
  }

LABEL_50:
  selfCopy->_lastSRLStatusValue = 8;
  if (v68 >= v452)
  {
    personMaskCopy = 0;
    exifOrientation = 0;
    v358 = 0;
    v47 = v389;
    v37 = chromaCopy;
    v36 = v374;
    isKindOfClass = v380;
    landmarksCopy = v395;
    goto LABEL_68;
  }

  if (HIDWORD(v383))
  {
    v219 = 7;
  }

  else
  {
    v219 = 0;
  }

  v220 = v371 | v219;
  selfCopy->_lastSRLStatusValue = v371 | v219 | 5;
  v221 = objc_msgSend_commandQueue(selfCopy->_metal, v61, v62, v63);
  exifOrientation = objc_msgSend_commandBuffer(v221, v222, v223, v224);

  v47 = v389;
  v36 = v374;
  plistCopy = v377;
  landmarksCopy = v395;
  if (!exifOrientation)
  {
    v37 = v368;
    sub_2957F888C();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v362, v364, v366, v368, v371, v374, v377, v380);
    sub_2957F8880();
    v358 = FigSignalErrorAtGM(v360);
    personMaskCopy = 0;
LABEL_86:
    sub_29586225C();
    goto LABEL_69;
  }

  personMaskCopy = objc_msgSend_computeCommandEncoder(exifOrientation, v225, v226, v227);
  if (!personMaskCopy)
  {
    v37 = v368;
    sub_2957F888C();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v362, v364, v366, v368, v371, v374, v377, v380);
    sub_2957F8880();
    v358 = FigSignalErrorAtGM(v361);
    goto LABEL_86;
  }

  v401 = v220;
  isKindOfClass = v374;
  v231 = objc_msgSend_maxTotalThreadsPerThreadgroup(selfCopy->_shaders->_srlGlobalHistogram, v228, v229, v230);
  v235 = objc_msgSend_maxTotalThreadsPerThreadgroup(selfCopy->_shaders->_srlFaceHistogram, v232, v233, v234);
  v239 = 48;
  if (v231 < v235)
  {
    v239 = 40;
  }

  v240 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(&selfCopy->_shaders->super.isa + v239), v236, v237, v238);
  v241 = log2f((v240 >> 6));
  exp2f(floorf(v241));
  v36 = v374;
  objc_msgSend_setTexture_atIndex_(personMaskCopy, v242, v389, 0);
  objc_msgSend_setTexture_atIndex_(personMaskCopy, v243, v374, 1);
  objc_msgSend_setTexture_atIndex_(personMaskCopy, v244, chromaCopy, 2);
  if (mode == 2)
  {
    objc_msgSend_setTexture_atIndex_(personMaskCopy, v245, ltmChromaCopy, 4);
  }

  else
  {
    objc_msgSend_setTexture_atIndex_(personMaskCopy, v245, ltmChromaCopy, 3);
  }

  objc_msgSend_setTexture_atIndex_(personMaskCopy, v246, v380, 5);
  objc_msgSend_setTexture_atIndex_(personMaskCopy, v247, v385, 6);
  objc_msgSend_setBytes_length_atIndex_(personMaskCopy, v248, v417, 224, 0);
  objc_msgSend_setBytes_length_atIndex_(personMaskCopy, v249, v397, 232 * v41, 1);
  v37 = objc_msgSend_srlGlobalStatsBuffer(selfCopy->_toneMapSmoothingResources, v250, v251, v252);
  v256 = objc_msgSend_length(v37, v253, v254, v255);

  if (v256 <= 0x4213)
  {
    goto LABEL_89;
  }

  objc_msgSend_srlGlobalStatsBuffer(selfCopy->_toneMapSmoothingResources, v257, v258, v259);
  objc_claimAutoreleasedReturnValue();
  v260 = sub_295862200();
  objc_msgSend_setBuffer_offset_atIndex_(v260, v261, v262, v263, 2);

  v37 = objc_msgSend_srlFaceStatsBuffer(selfCopy->_toneMapSmoothingResources, v264, v265, v266);
  v270 = objc_msgSend_length(v37, v267, v268, v269);

  if (v270 < 13616 * v41)
  {
    sub_2957F8838();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v362, v364, v366, v368, v371, v374, v377, v380);
    v358 = -12780;
    sub_29586225C();
    landmarksCopy = v395;
LABEL_90:
    plistCopy = v377;
    goto LABEL_91;
  }

  objc_msgSend_srlFaceStatsBuffer(selfCopy->_toneMapSmoothingResources, v271, v272, v273);
  objc_claimAutoreleasedReturnValue();
  v274 = sub_295862200();
  objc_msgSend_setBuffer_offset_atIndex_(v274, v275, v276, v277, 3);

  v37 = objc_msgSend_srlCoeffsBuffer(selfCopy->_toneMapSmoothingResources, v278, v279, v280);
  v284 = objc_msgSend_length(v37, v281, v282, v283);

  landmarksCopy = v395;
  if (v284 <= 0x2F)
  {
LABEL_89:
    sub_2957F8838();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    v358 = -12780;
    sub_29586225C();
    goto LABEL_90;
  }

  objc_msgSend_srlCoeffsBuffer(selfCopy->_toneMapSmoothingResources, v285, v286, v287);
  objc_claimAutoreleasedReturnValue();
  v288 = sub_295862200();
  objc_msgSend_setBuffer_offset_atIndex_(v288, v289, v290, v291, 4);

  objc_msgSend_mstmTuningParams(selfCopy->_toneMapSmoothingResources, v292, v293, v294);
  objc_claimAutoreleasedReturnValue();
  v295 = sub_295862200();
  objc_msgSend_setBuffer_offset_atIndex_(v295, v296, v297, v298, 5);

  objc_msgSend_srlOnMSTMTuningParams(selfCopy->_toneMapSmoothingResources, v299, v300, v301);
  objc_claimAutoreleasedReturnValue();
  v302 = sub_295862200();
  objc_msgSend_setBuffer_offset_atIndex_(v302, v303, v304, v305, 6);

  objc_msgSend_setComputePipelineState_(personMaskCopy, v306, selfCopy->_shaders->_srlGlobalHistogram, v307);
  v37 = 1;
  v406 = vdupq_n_s64(1uLL);
  *&v415.a = v406;
  *&v415.c = 1;
  v308 = sub_295862214();
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v308, v309, v310, v311);
  objc_msgSend_setComputePipelineState_(personMaskCopy, v312, selfCopy->_shaders->_srlFaceHistogram, v313);
  *&v415.a = v41;
  *&v415.b = v406;
  v314 = sub_295862214();
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v314, v315, v316, v317);
  objc_msgSend_setComputePipelineState_(personMaskCopy, v318, selfCopy->_shaders->_srlCalcCoefficients, v319);
  *&v415.a = v406;
  *&v415.c = 1;
  v320 = sub_295862214();
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v320, v321, v322, v323);
  objc_msgSend_setComputePipelineState_(personMaskCopy, v324, selfCopy->_shaders->_srlApply, v325);
  objc_msgSend_setImageblockWidth_height_(personMaskCopy, v326, 32, 32);
  v47 = v389;
  v330 = objc_msgSend_width(v389, v327, v328, v329) >> 1;
  v334 = objc_msgSend_height(v389, v331, v332, v333);
  *&v415.a = v330;
  *&v415.b = v334 >> 1;
  *&v415.c = 1;
  v335 = sub_295862214();
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v335, v336, v337, v338);
  objc_msgSend_endEncoding(personMaskCopy, v339, v340, v341);
  if (*MEMORY[0x29EDB9270])
  {
    v37 = objc_msgSend_commandQueue(exifOrientation, v342, v343, v344);
    v348 = objc_msgSend_commandBuffer(v37, v345, v346, v347);

    objc_msgSend_setLabel_(v348, v349, @"KTRACE_MTLCMDBUF", v350);
    objc_msgSend_addCompletedHandler_(v348, v351, &unk_2A1CA97A0, v352);
    objc_msgSend_commit(v348, v353, v354, v355);
    objc_msgSend_addCompletedHandler_(exifOrientation, v356, &unk_2A1CA97C0, v357);
  }

  objc_msgSend_commit(exifOrientation, v342, v343, v344);
  selfCopy->_lastSRLStatusValue = v401 | 6;
  objc_storeStrong(&selfCopy->_lastSRLCommandBuffer, exifOrientation);
  v358 = 0;
LABEL_67:
  sub_29586225C();
LABEL_68:
  plistCopy = v377;
LABEL_69:
  free(v397);

  return v358;
}

@end