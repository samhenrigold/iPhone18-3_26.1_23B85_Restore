@interface DenoiseRemixStageShared
+ (id)getSharedInstanceOrRelease:(BOOL)release;
- (DenoiseRemixStageShared)init;
- (id)getShaders:(id)shaders lumaFP16:(BOOL)p16 chromaFP16:(BOOL)fP16 options:(const DenoiseRemixStageOptions *)options;
@end

@implementation DenoiseRemixStageShared

- (DenoiseRemixStageShared)init
{
  v7.receiver = self;
  v7.super_class = DenoiseRemixStageShared;
  v2 = [(DenoiseRemixStageShared *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_cache.count = 0;
    v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    denoiseShaders = v3->_denoiseShaders;
    v3->_denoiseShaders = v4;
  }

  else
  {
    sub_2958CDC18();
  }

  return v3;
}

- (id)getShaders:(id)shaders lumaFP16:(BOOL)p16 chromaFP16:(BOOL)fP16 options:(const DenoiseRemixStageOptions *)options
{
  fP16Copy = fP16;
  p16Copy = p16;
  shadersCopy = shaders;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  count = selfCopy->_cache.count;
  if (count >= 1)
  {
    v16 = 0;
    p_enableGdFlatness = &selfCopy->_cache.entries[0].options.enableGdFlatness;
    while (*(p_enableGdFlatness - 13) != p16Copy || *(p_enableGdFlatness - 12) != fP16Copy || options->lgaAlgorithm != *(p_enableGdFlatness - 9) || options->enableBandZeroDenoising != *(p_enableGdFlatness - 5) || options->enableBilateralRegression != *(p_enableGdFlatness - 4) || options->enableLoGOffset != *(p_enableGdFlatness - 3) || options->enableLowVarSharpening != *(p_enableGdFlatness - 2) || options->enableNoiseMap != *(p_enableGdFlatness - 1) || options->enableGdFlatness != *p_enableGdFlatness)
    {
      p_enableGdFlatness += 20;
      if (count == ++v16)
      {
        goto LABEL_13;
      }
    }

    v24 = objc_msgSend_objectAtIndexedSubscript_(selfCopy->_denoiseShaders, v13, v16, v14);
    if (v24)
    {
      goto LABEL_22;
    }
  }

LABEL_13:
  v18 = [DenoiseRemixShaders alloc];
  if (p16Copy)
  {
    v20 = 25;
  }

  else
  {
    v20 = 10;
  }

  if (fP16Copy)
  {
    v21 = objc_msgSend_initWithMetal_vertName_pixelFormatLuma_pixelFormatChroma_options_(v18, v19, shadersCopy, @"RemixDenoise_vert", v20, 65, options);
  }

  else
  {
    v21 = objc_msgSend_initWithMetal_vertName_pixelFormatLuma_pixelFormatChroma_options_(v18, v19, shadersCopy, @"RemixDenoise_vert", v20, 30, options);
  }

  v24 = v21;
  if (v21)
  {
    v25 = selfCopy->_cache.count;
    if (v25 < 100)
    {
      v26 = &selfCopy->_cache.entries[v25];
      *(v26 + 4) = p16Copy;
      *(v26 + 5) = fP16Copy;
      v27 = *&options->lgaAlgorithm;
      *(v26 + 16) = *&options->enableNoiseMap;
      *(v26 + 8) = v27;
      selfCopy->_cache.count = v25 + 1;
      objc_msgSend_addObject_(selfCopy->_denoiseShaders, v22, v21, v23);
LABEL_22:
      v28 = v24;
      v24 = v28;
      goto LABEL_23;
    }

    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v6, v34, v37, v38, v39, v40, v41);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v33, v36);
    v28 = 0;
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v6, v34, v37, v38, v39, v40, v41);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v32, v35);
    v28 = 0;
    v24 = 0;
  }

LABEL_23:

  objc_sync_exit(selfCopy);

  return v28;
}

+ (id)getSharedInstanceOrRelease:(BOOL)release
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C2328;
  if (release)
  {
    v6 = 0;
  }

  else
  {
    if (qword_2A18C2328)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(DenoiseRemixStageShared);
    v5 = qword_2A18C2328;
  }

  qword_2A18C2328 = v6;

LABEL_6:
  v7 = qword_2A18C2328;
  objc_sync_exit(v4);

  return v7;
}

@end