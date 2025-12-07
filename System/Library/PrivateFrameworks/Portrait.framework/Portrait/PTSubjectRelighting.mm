@interface PTSubjectRelighting
- (PTSubjectRelighting)initWithMetalContext:(id)context effectUtil:(id)util prewarmOnly:(BOOL)only;
- (int)runSRLForLivePhotosWithInputBuffer:(id)buffer lumaTexture:(id)texture chromaTexture:(id)chromaTexture skinMaskTexture:(id)maskTexture personMaskTexture:(id)personMaskTexture skinToneClassification:(id)classification validROI:(CGRect)i expBias:(float)self0 faceExpRatio:(float)self1 transform:(CGAffineTransform *)self2;
@end

@implementation PTSubjectRelighting

- (PTSubjectRelighting)initWithMetalContext:(id)context effectUtil:(id)util prewarmOnly:(BOOL)only
{
  contextCopy = context;
  v88.receiver = self;
  v88.super_class = PTSubjectRelighting;
  v8 = [(PTSubjectRelighting *)&v88 init];
  if (!v8)
  {
    goto LABEL_30;
  }

  v9 = [contextCopy computePipelineStateFor:@"srlV2GlobalSparseHistogramLivePhotos" withConstants:0];
  srlV2GlobalHistogramLivePhotos = v8->_srlV2GlobalHistogramLivePhotos;
  v8->_srlV2GlobalHistogramLivePhotos = v9;

  if (!v8->_srlV2GlobalHistogramLivePhotos)
  {
    v33 = _PTLogSystem(v11);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [(PTSubjectRelighting *)v33 initWithMetalContext:v44 effectUtil:v45 prewarmOnly:v46, v47, v48, v49, v50];
    }

    goto LABEL_29;
  }

  v12 = [contextCopy computePipelineStateFor:@"srlV2FaceSparseHistogramLivePhotos" withConstants:0];
  srlV2FaceHistogramLivePhotos = v8->_srlV2FaceHistogramLivePhotos;
  v8->_srlV2FaceHistogramLivePhotos = v12;

  if (!v8->_srlV2FaceHistogramLivePhotos)
  {
    v33 = _PTLogSystem(v14);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [(PTSubjectRelighting *)v33 initWithMetalContext:v51 effectUtil:v52 prewarmOnly:v53, v54, v55, v56, v57];
    }

    goto LABEL_29;
  }

  v15 = [contextCopy computePipelineStateFor:@"srlV2CalcCoefficientsLivePhotos" withConstants:0];
  srlV2CalcCoefficientsLivePhotos = v8->_srlV2CalcCoefficientsLivePhotos;
  v8->_srlV2CalcCoefficientsLivePhotos = v15;

  if (!v8->_srlV2CalcCoefficientsLivePhotos)
  {
    v33 = _PTLogSystem(v17);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [(PTSubjectRelighting *)v33 initWithMetalContext:v58 effectUtil:v59 prewarmOnly:v60, v61, v62, v63, v64];
    }

    goto LABEL_29;
  }

  v18 = objc_msgSend_device(contextCopy);
  v19 = [v18 newBufferWithLength:8460 options:0];
  srlV2GlobalStatsBuffer = v8->_srlV2GlobalStatsBuffer;
  v8->_srlV2GlobalStatsBuffer = v19;

  if (!v8->_srlV2GlobalStatsBuffer)
  {
    v33 = _PTLogSystem(v21);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [(PTSubjectRelighting *)v33 initWithMetalContext:v65 effectUtil:v66 prewarmOnly:v67, v68, v69, v70, v71];
    }

    goto LABEL_29;
  }

  v22 = objc_msgSend_device(contextCopy);
  v23 = [v22 newBufferWithLength:271680 options:0];
  srlV2FaceStatsBuffer = v8->_srlV2FaceStatsBuffer;
  v8->_srlV2FaceStatsBuffer = v23;

  if (!v8->_srlV2FaceStatsBuffer)
  {
    v33 = _PTLogSystem(v25);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [(PTSubjectRelighting *)v33 initWithMetalContext:v72 effectUtil:v73 prewarmOnly:v74, v75, v76, v77, v78];
    }

    goto LABEL_29;
  }

  v26 = objc_msgSend_device(contextCopy);
  v27 = [v26 newBufferWithLength:100 options:0];
  srlV2CoeffsBuffer = v8->_srlV2CoeffsBuffer;
  v8->_srlV2CoeffsBuffer = v27;

  v29 = v8->_srlV2CoeffsBuffer;
  if (!v29)
  {
    v33 = _PTLogSystem(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [(PTSubjectRelighting *)v33 initWithMetalContext:v79 effectUtil:v80 prewarmOnly:v81, v82, v83, v84, v85];
    }

    goto LABEL_29;
  }

  if (!v8->_srlV2GlobalStatsBuffer || !v8->_srlV2FaceStatsBuffer)
  {
    v33 = _PTLogSystem(v29);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [PTSubjectRelighting initWithMetalContext:v33 effectUtil:? prewarmOnly:?];
    }

    goto LABEL_29;
  }

  *([(MTLBuffer *)v29 contents]+ 96) = 1056964608;
  v30 = objc_opt_new();
  srlV2Plist = v8->_srlV2Plist;
  v8->_srlV2Plist = v30;

  if (only)
  {
LABEL_33:
    v86 = v8;
    goto LABEL_31;
  }

  v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v33 = [v32 pathForResource:@"BackWide-IQTuning" ofType:@"plist" inDirectory:&stru_2837D16E8];

  v34 = MEMORY[0x277CBEAC0];
  v35 = [MEMORY[0x277CBEBC0] fileURLWithPath:v33];
  v36 = [v34 dictionaryWithContentsOfURL:v35 error:0];

  v37 = [v36 objectForKeyedSubscript:@"DeepFusionParameters"];
  v38 = [v37 objectForKeyedSubscript:@"ToneMapping"];
  v39 = [v38 objectForKeyedSubscript:@"DefaultParameters"];
  v40 = [v39 objectForKeyedSubscript:@"SRLv2"];
  plistSRL = v8->_plistSRL;
  v8->_plistSRL = v40;

  v42 = [(PTSRLv2Plist *)v8->_srlV2Plist readPlist:v8->_plistSRL];
  if (!v42)
  {

    goto LABEL_33;
  }

  v43 = _PTLogSystem(v42);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    [PTSubjectRelighting initWithMetalContext:v43 effectUtil:? prewarmOnly:?];
  }

LABEL_29:
LABEL_30:
  v86 = 0;
LABEL_31:

  return v86;
}

- (int)runSRLForLivePhotosWithInputBuffer:(id)buffer lumaTexture:(id)texture chromaTexture:(id)chromaTexture skinMaskTexture:(id)maskTexture personMaskTexture:(id)personMaskTexture skinToneClassification:(id)classification validROI:(CGRect)i expBias:(float)self0 faceExpRatio:(float)self1 transform:(CGAffineTransform *)self2
{
  bufferCopy = buffer;
  textureCopy = texture;
  chromaTextureCopy = chromaTexture;
  maskTextureCopy = maskTexture;
  personMaskTextureCopy = personMaskTexture;
  ratioCopy = ratio;
  v87[0] = bias;
  classificationCopy = classification;
  v20 = [classificationCopy count];
  v21 = 4;
  if (v20 < 4)
  {
    v21 = v20;
  }

  v77 = 0u;
  v78 = 0;
  v85 = 0;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v71 = v21;
  v76[0] = v21;
  v76[1] = 6;
  *(&v77 + 4) = 0x3F8000003F000000;
  __asm { FMOV            V0.2S, #1.0 }

  v79 = _D0;
  srlV2Plist = self->_srlV2Plist;
  *&v80 = srlV2Plist->maskThreshold;
  *(&v80 + 4) = *&srlV2Plist->targetMedian_I;
  HIDWORD(v80) = LODWORD(srlV2Plist->targetMedian_III);
  v81 = *&srlV2Plist->targetMedian_IV;
  v82 = *&srlV2Plist->maxBoost_II;
  *&v83 = srlV2Plist->maxBoost_VI;
  *(&v83 + 4) = *&srlV2Plist->minFaceSize;
  HIDWORD(v83) = LODWORD(srlV2Plist->minCurveBoost);
  v84 = *&srlV2Plist->maxTargetRatioDarkening;
  *&v85 = srlV2Plist->faceExpDifThreshold;
  BYTE4(v85) = srlV2Plist->relightOnlyPersonMask;
  BYTE5(v85) = 1;
  if (v20)
  {
    v28 = 0;
    p_srlV2FaceHistogramLivePhotos = &self[1]._srlV2FaceHistogramLivePhotos;
    do
    {
      v30 = [classificationCopy objectAtIndexedSubscript:v28];
      faceAttributes = [v30 faceAttributes];
      [v30 boundingBox];
      v33 = v32;
      facemaskCategory = [faceAttributes facemaskCategory];
      label = [facemaskCategory label];
      identifier = [label identifier];
      v37 = [identifier isEqualToString:@"UNKNOWN_17_unknown0"];

      [v30 boundingBox];
      v39 = v38;
      if (v37)
      {
        [v30 boundingBox];
        v40 = v39;
        v42 = v41;
        v39 = fminf((v42 / 2.5) + v40, 1.0);
      }

      [v30 boundingBox];
      [v30 boundingBox];
      v43 = *&transform->c;
      *v74 = *&transform->a;
      *&v74[16] = v43;
      v75 = *&transform->tx;
      [PTEffectUtil rotateNormalizedRect:v74 transform:1 inverse:v33, v39];
      v45.f64[1] = v44;
      v46 = (&self[1] + 48 * v28);
      v48.f64[1] = v47;
      *v46 = vcvt_f32_f64(v45);
      v46[1] = vcvt_f32_f64(v48);
      v49 = [v30 yaw];
      [v49 floatValue];
      v51 = (v50 * 3.0) / 1.57079633;
      v46[5].f32[0] = v51;

      vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq = [faceAttributes VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
      allLabelsWithConfidences = [vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq allLabelsWithConfidences];

      for (i = 0; i < [allLabelsWithConfidences count]; ++i)
      {
        v55 = [allLabelsWithConfidences objectAtIndexedSubscript:i];
        [v55 confidence];
        *(p_srlV2FaceHistogramLivePhotos + i) = v56;
      }

      ++v28;
      p_srlV2FaceHistogramLivePhotos += 6;
    }

    while (v28 != v71);
  }

  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_srlV2GlobalHistogramLivePhotos maxTotalThreadsPerThreadgroup];
  maxTotalThreadsPerThreadgroup2 = [(MTLComputePipelineState *)self->_srlV2FaceHistogramLivePhotos maxTotalThreadsPerThreadgroup];
  if (maxTotalThreadsPerThreadgroup >= maxTotalThreadsPerThreadgroup2)
  {
    v60 = maxTotalThreadsPerThreadgroup2;
  }

  else
  {
    v60 = maxTotalThreadsPerThreadgroup;
  }

  v61 = log2f((v60 >> 6));
  v62 = exp2f(floorf(v61));
  if (v62 >= 0x40)
  {
    v63 = 64;
  }

  else
  {
    v63 = v62;
  }

  [computeCommandEncoder setTexture:textureCopy atIndex:1];
  [computeCommandEncoder setTexture:chromaTextureCopy atIndex:2];
  [computeCommandEncoder setTexture:maskTextureCopy atIndex:5];
  [computeCommandEncoder setTexture:personMaskTextureCopy atIndex:6];
  [computeCommandEncoder setBytes:v76 length:128 atIndex:0];
  [computeCommandEncoder setBytes:&self[1] length:48 * v71 atIndex:1];
  [computeCommandEncoder setBytes:v87 length:4 atIndex:7];
  [computeCommandEncoder setBytes:&ratioCopy length:4 atIndex:8];
  [computeCommandEncoder setBuffer:self->_srlV2GlobalStatsBuffer offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:self->_srlV2FaceStatsBuffer offset:0 atIndex:3];
  [computeCommandEncoder setBuffer:self->_srlV2CoeffsBuffer offset:0 atIndex:4];
  [computeCommandEncoder setComputePipelineState:self->_srlV2GlobalHistogramLivePhotos];
  *v74 = vdupq_n_s64(1uLL);
  *&v74[16] = 1;
  threadExecutionWidth = 64;
  v73.i64[0] = v63;
  v73.i64[1] = 1;
  [computeCommandEncoder dispatchThreadgroups:v74 threadsPerThreadgroup:&threadExecutionWidth];
  [computeCommandEncoder setComputePipelineState:self->_srlV2FaceHistogramLivePhotos];
  v73.i64[1] = 1;
  *v74 = v71;
  *&v74[8] = vdupq_n_s64(1uLL);
  threadExecutionWidth = 64;
  v73.i64[0] = v63;
  [computeCommandEncoder dispatchThreadgroups:v74 threadsPerThreadgroup:&threadExecutionWidth];
  [computeCommandEncoder setComputePipelineState:self->_srlV2CalcCoefficientsLivePhotos];
  *v74 = vdupq_n_s64(1uLL);
  *&v74[16] = 1;
  threadExecutionWidth = [(MTLComputePipelineState *)self->_srlV2CalcCoefficientsLivePhotos threadExecutionWidth];
  v73 = vdupq_n_s64(1uLL);
  [computeCommandEncoder dispatchThreadgroups:v74 threadsPerThreadgroup:&threadExecutionWidth];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (void)initWithMetalContext:(uint64_t)a3 effectUtil:(uint64_t)a4 prewarmOnly:(uint64_t)a5 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_srlV2CoeffsBuffer";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 effectUtil:(uint64_t)a4 prewarmOnly:(uint64_t)a5 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_srlV2FaceStatsBuffer";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 effectUtil:(uint64_t)a4 prewarmOnly:(uint64_t)a5 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_srlV2GlobalStatsBuffer";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 effectUtil:(uint64_t)a4 prewarmOnly:(uint64_t)a5 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_srlV2CalcCoefficientsLivePhotos";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 effectUtil:(uint64_t)a4 prewarmOnly:(uint64_t)a5 .cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_srlV2FaceHistogramLivePhotos";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 effectUtil:(uint64_t)a4 prewarmOnly:(uint64_t)a5 .cold.8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_srlV2GlobalHistogramLivePhotos";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end