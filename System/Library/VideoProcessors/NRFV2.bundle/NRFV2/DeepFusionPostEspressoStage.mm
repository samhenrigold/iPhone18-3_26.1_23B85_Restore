@interface DeepFusionPostEspressoStage
+ (int)prewarmShaders:(id)shaders networkVersion:(int)version;
- (DeepFusionPostEspressoStage)initWithMetalContext:(id)context networkVersion:(int)version;
- (int)_addPreviousLevel:(id)level inoutTex:(id)tex inTexPrevLevel:(id)prevLevel writeOffset:(DFApplyEspressoOutputUniforms *)offset applyUniforms:(unsigned int)uniforms useUpsampledImage:;
- (int)_applyEspressoOutputLumaOnlyToLevel:(id)level uniforms:(DFApplyEspressoOutputUniforms *)uniforms inRefGaussian:(id)gaussian slFusionMap:(id)map longFusionMap:(id)fusionMap prefusionWeightsTexture:(id)texture inTexArray:(id)array inTexArrayUp:(id)self0 skinMaskTexture:(id)self1 skyMaskTexture:(id)self2 deghostedAndDenoisedAndTextureness:(id)self3 outTex:(id)self4 tile:(TileBounds *)self5;
- (int)_applyEspressoOutputToLevel:(id)level uniforms:(DFApplyEspressoOutputUniforms *)uniforms inRefGaussian:(id)gaussian slFusionMap:(id)map longFusionMap:(id)fusionMap prefusionWeightsTexture:(id)texture inTexArray:(id)array inTexArrayUp:(id)self0 skinMaskTexture:(id)self1 skyMaskTexture:(id)self2 deghostedAndDenoisedAndTextureness:(id)self3 outTex:(id)self4 tile:(TileBounds *)self5;
- (int)_collapseWeightsOnTile:(id)tile inoutTexNSArray:(id)array;
- (int)_computeTextureness:(id)textureness applyUniforms:(DFApplyEspressoOutputUniforms *)uniforms inputTexture:(id)texture outputTexture:(id)outputTexture lscGainsTex:(id)tex;
- (int)_createUpsampledWithGaussianFilter:(id)filter inTexPrevLevel:(id *)level;
- (int)_deghostAndDenoise:(id)denoise uniforms:(DFApplyEspressoOutputUniforms *)uniforms inTexEspressoWeights:(id)weights inTexEspressoWeightsUp:(id)up inRefLaplacian:(id)laplacian inSynthLongLaplacian:(id)longLaplacian inRefGaussian:(id)gaussian inSynthLongGaussian:(id)self0 inRefNoisePyramidLevel3:(id)self1 inSynthLongNoisePyramidLevel3:(id)self2 refNoisePretuning:(id)self3 LSCGains:(id)self4 inTexPrevLevel:(id)self5 outDeghostedDenoised:(id)self6 lowLightMode:(BOOL)self7;
- (int)_validateInputsForTile:(TileBounds *)tile espressoOutputTextureArray:(id)array inRefGaussianArray:(id)gaussianArray inSLGaussianArray:(id)lGaussianArray inRefLaplacianArray:(id)laplacianArray inSLLaplacianArray:(id)lLaplacianArray inRefNoisePyramidLevel3:(id)level3 inSLNoisePyramidLevel3:(id)self0 slFusionMap:(id)self1 longFusionMap:(id)self2 prefusionWeightsTexture:(id)self3 skinMaskTexture:(id)self4 skyMaskTexture:(id)self5 finalOutputTexture:(id)self6 lscGains:(id)self7 refNoisePretuning:(id)self8;
- (int)allocateTextures;
- (int)applyWeightsOnTile:(id)tile uniforms:(DFApplyEspressoOutputUniforms *)uniforms espressoOutputTextureArray:(id)array inRefGaussianArray:(id)gaussianArray inSLGaussianArray:(id)lGaussianArray inRefLaplacianArray:(id)laplacianArray inSLLaplacianArray:(id)lLaplacianArray inRefNoisePyramidLevel3:(id)self0 inSLNoisePyramidLevel3:(id)self1 slFusionMap:(id)self2 longFusionMap:(id)self3 prefusionWeightsTexture:(id)self4 skinMaskTexture:(id)self5 skyMaskTexture:(id)self6 lscGains:(id)self7 refNoisePretuning:(id)self8 tile:(TileBounds *)self9 finalOutputTexture:(id)outputTexture lowLightMode:(BOOL)mode;
- (int)computeAMBNRDenoiseBoostMap:(id)map boostMap:(id)boostMap longFusionMap:(id)fusionMap ev0FusionMap:(id)ev0FusionMap ev0Metadata:(frameMetadata *)metadata longMetadata:(frameMetadata *)longMetadata numEV0:(int)v0 ev0FusionTarget:(float)self0 longFusionTarget:(float)self1;
- (int)convert444to420:(id)convert444to420 input444:(id)input444 outputLuma:(id)luma outputChroma:(id)chroma outputOffset:(TileBounds *)offset;
- (int)setWidth:(unint64_t)width andHeight:(unint64_t)height andPixelFormat:(unint64_t)format;
- (uint64_t)createShaderUniforms:(float)uniforms totalGain:(float)gain EVM_EV0_motionScore:(float)score lscGainGreenMax:(int64x2_t)max slQuantBounds:(float)bounds espressoModel:(uint64_t)model fullSize:(uint64_t)size uniforms:(void *)self0 hasLong:(uint64_t)self1 hasSIFR:(uint64_t)self2 isStationary:(int)self3 isSyntheticLongWithRealLong:(int)self4 aeShutterTimeRatio:(uint64_t)self5 colorCorrection:(BOOL)self6 inverseColorCorrection:(uint64_t)self7;
- (void)makeTextureAliasable;
- (void)purgeResources;
@end

@implementation DeepFusionPostEspressoStage

- (DeepFusionPostEspressoStage)initWithMetalContext:(id)context networkVersion:(int)version
{
  v4 = *&version;
  contextCopy = context;
  v33.receiver = self;
  v33.super_class = DeepFusionPostEspressoStage;
  v8 = [(DeepFusionPostEspressoStage *)&v33 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_metal, context);
    *(v9 + 64) = v4;
    v13 = objc_msgSend_sharedInstance(PostEspressoShared, v10, v11, v12);
    v15 = objc_msgSend_getShaders_networkVersion_(v13, v14, *(v9 + 8), v4);
    v16 = *(v9 + 16);
    *(v9 + 16) = v15;

    if (*(v9 + 16))
    {
      v17 = [DeepFusionLaplacianPyramid alloc];
      v20 = objc_msgSend_initWithMetalContext_(v17, v18, contextCopy, v19);
      v21 = *(v9 + 72);
      *(v9 + 72) = v20;

      if (!*(v9 + 72))
      {
        sub_2958864C4();
      }

      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      v24 = objc_msgSend_arrayWithCapacity_(MEMORY[0x29EDB8DE8], v22, 3, v23);
      v25 = *(v9 + 24);
      *(v9 + 24) = v24;

      v28 = objc_msgSend_arrayWithCapacity_(MEMORY[0x29EDB8DE8], v26, 3, v27);
      v29 = *(v9 + 32);
      *(v9 + 32) = v28;

      v30 = v9;
    }

    else
    {
      sub_295886528(v9, &v34);
      v30 = v34;
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  return v31;
}

+ (int)prewarmShaders:(id)shaders networkVersion:(int)version
{
  v4 = *&version;
  shadersCopy = shaders;
  v6 = [PostEspressoShaders alloc];
  v8 = objc_msgSend_initWithMetal_networkVersion_(v6, v7, shadersCopy, v4);

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -12786;
  }

  return v9;
}

- (void)purgeResources
{
  objc_msgSend_removeAllObjects(self->_yinfTextures[0], a2, v2, v3);
  v8 = self->_yinfTextures[1];

  objc_msgSend_removeAllObjects(v8, v5, v6, v7);
}

- (int)setWidth:(unint64_t)width andHeight:(unint64_t)height andPixelFormat:(unint64_t)format
{
  self->_width = width;
  self->_height = height;
  self->_pixelFormat = format;
  return 0;
}

- (int)allocateTextures
{
  v5 = objc_msgSend_allocator(self->_metal, a2, v2, v3);
  v9 = objc_msgSend_newTextureDescriptor(v5, v6, v7, v8);

  if (v9)
  {
    v13 = objc_msgSend_desc(v9, v10, v11, v12);
    objc_msgSend_setCompressionMode_(v13, v14, 2, v15);

    v19 = objc_msgSend_desc(v9, v16, v17, v18);
    objc_msgSend_setCompressionFootprint_(v19, v20, 0, v21);

    v25 = objc_msgSend_desc(v9, v22, v23, v24);
    objc_msgSend_setUsage_(v25, v26, 7, v27);

    v31 = objc_msgSend_desc(v9, v28, v29, v30);
    objc_msgSend_setPixelFormat_(v31, v32, 115, v33);

    v37 = 0;
    v38 = 1;
    while (2)
    {
      v39 = v38;
      for (i = 1; i != 4; ++i)
      {
        v41 = self->_width >> i;
        v42 = objc_msgSend_desc(v9, v34, v35, v36);
        objc_msgSend_setWidth_(v42, v43, v41, v44);

        v45 = self->_height >> i;
        v49 = objc_msgSend_desc(v9, v46, v47, v48);
        objc_msgSend_setHeight_(v49, v50, v45, v51);

        objc_msgSend_setLabel_(v9, v52, 0, v53);
        v57 = objc_msgSend_allocator(self->_metal, v54, v55, v56);
        v60 = objc_msgSend_newTextureWithDescriptor_(v57, v58, v9, v59);

        if (!v60)
        {
          sub_2958865D8(&v65);
          v63 = v65;
          goto LABEL_9;
        }

        objc_msgSend_addObject_(self->_yinfTextures[v37], v61, v60, v62);
      }

      v38 = 0;
      v37 = 1;
      if (v39)
      {
        continue;
      }

      break;
    }

    v63 = 0;
  }

  else
  {
    sub_295886674(&v66);
    v63 = v66;
  }

LABEL_9:

  return v63;
}

- (void)makeTextureAliasable
{
  v4 = 0;
  yinfTextures = self->_yinfTextures;
  v6 = 1;
  do
  {
    v7 = v6;
    if (objc_msgSend_count(yinfTextures[v4], a2, v2, v3))
    {
      v11 = 0;
      do
      {
        v15 = objc_msgSend_objectAtIndexedSubscript_(yinfTextures[v4], v8, v11, v10);
        FigMetalDecRef();

        ++v11;
      }

      while (v11 < objc_msgSend_count(yinfTextures[v4], v12, v13, v14));
    }

    objc_msgSend_removeAllObjects(yinfTextures[v4], v8, v9, v10);
    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
}

- (int)_deghostAndDenoise:(id)denoise uniforms:(DFApplyEspressoOutputUniforms *)uniforms inTexEspressoWeights:(id)weights inTexEspressoWeightsUp:(id)up inRefLaplacian:(id)laplacian inSynthLongLaplacian:(id)longLaplacian inRefGaussian:(id)gaussian inSynthLongGaussian:(id)self0 inRefNoisePyramidLevel3:(id)self1 inSynthLongNoisePyramidLevel3:(id)self2 refNoisePretuning:(id)self3 LSCGains:(id)self4 inTexPrevLevel:(id)self5 outDeghostedDenoised:(id)self6 lowLightMode:(BOOL)self7
{
  denoiseCopy = denoise;
  weightsCopy = weights;
  upCopy = up;
  laplacianCopy = laplacian;
  longLaplacianCopy = longLaplacian;
  gaussianCopy = gaussian;
  longGaussianCopy = longGaussian;
  level3Copy = level3;
  pyramidLevel3Copy = pyramidLevel3;
  pretuningCopy = pretuning;
  gainsCopy = gains;
  levelCopy = level;
  denoisedCopy = denoised;
  v29 = weightsCopy;
  v106 = v29;
  v107 = @"inTexEspressoWeights";
  v108 = 0;
  v30 = upCopy;
  v109 = v30;
  v110 = @"inTexEspressoWeightsUp";
  v111 = 1;
  v94 = laplacianCopy;
  v112 = v94;
  v113 = @"outDeghostedAndDenoised";
  v114 = 2;
  v31 = longLaplacianCopy;
  v115 = v31;
  v116 = @"inSynthLongLaplacian";
  v117 = 3;
  v32 = gaussianCopy;
  v118 = v32;
  v119 = @"inRefGaussian";
  v120 = 4;
  v33 = longGaussianCopy;
  v121 = v33;
  v122 = @"inSynthLongGaussian";
  v123 = 5;
  v124 = pretuningCopy;
  v125 = @"refNoisePretuning";
  v126 = 6;
  v127 = gainsCopy;
  v128 = @"LSCGains";
  v129 = 7;
  v86 = levelCopy;
  v130 = v86;
  v131 = @"inTexPrevLevel";
  v132 = 8;
  v90 = level3Copy;
  v133 = v90;
  v134 = @"inRefNoisePyramidLevel3";
  v135 = 9;
  v80 = pyramidLevel3Copy;
  v136 = v80;
  v137 = @"inSynthLongNoisePyramidLevel3";
  v138 = 10;
  v139 = denoisedCopy;
  v140 = @"outDeghostedDenoised";
  v141 = 11;
  v82 = v124;
  v84 = v127;
  v88 = v139;
  if (!uniforms)
  {
    goto LABEL_13;
  }

  v37 = 0;
  memset(v101, 0, sizeof(v101));
  *&v38 = *&uniforms->var29;
  *(&v38 + 1) = uniforms[1].var2;
  HIDWORD(v38) = LODWORD(uniforms->var31);
  v98 = v38;
  v99 = *&uniforms->var32;
  var1 = uniforms[1].var1;
  v101[0] = uniforms[1].var3.var0;
  *&v101[4] = uniforms->var21;
  *&v101[8] = uniforms[1].var3.var1;
  *&v101[12] = *&uniforms->var12;
  *&v101[28] = *&uniforms->var16;
  *&v101[44] = *&uniforms->var19;
  v101[52] = LOBYTE(uniforms->var26);
  var11 = uniforms->var11;
  if (LODWORD(var11) == 3 && mode)
  {
    v37 = self->_networkVersion == 2;
  }

  v101[53] = v37;
  v102 = var11;
  LODWORD(v40) = uniforms[1].var3.var8;
  DWORD1(v40) = LODWORD(uniforms[1].var31);
  *(&v40 + 1) = *&uniforms[1].var32;
  v103 = *&uniforms[1].var3.var4;
  v104 = v40;
  v105 = uniforms[2].var1;
  *&v101[32] = 0;
  v41 = objc_msgSend_commandBuffer(denoiseCopy, v34, v35, v36);
  v45 = v41;
  if (!v41)
  {
LABEL_13:
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v77, v77, v80, v124, v127, v86, v139);
    v93 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v75, v78);
    v70 = v29;
    v45 = 0;
LABEL_15:
    v49 = 0;
    goto LABEL_10;
  }

  v46 = objc_msgSend_computeCommandEncoder(v41, v42, v43, v44);
  v49 = v46;
  if (!v46)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v77, v77, v80, v124, v127, v86, v139);
    v93 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v74, v76, v79);
    v70 = v29;
    goto LABEL_15;
  }

  v50 = uniforms->var11;
  networkVersion = self->_networkVersion;
  objc_msgSend_setLabel_(v46, v47, @"_shaders->_kernelDeghostAndDenoise[configFlags]", v48);
  objc_msgSend_setComputePipelineState_(v49, v52, *(self->_shaders->_kernelDeghostAndDenoise + ((8 * (LODWORD(v50) == 0)) | (16 * (networkVersion == 2)))), v53);
  objc_msgSend_setBytes_length_atIndex_(v49, v54, &v98, 124, 0);
  v56 = &v108;
  v57 = 12;
  do
  {
    objc_msgSend_setTexture_atIndex_(v49, v55, *(v56 - 2), *v56);
    v56 += 6;
    --v57;
  }

  while (v57);
  v97[0] = objc_msgSend_width(v94, v55, v58, v59);
  v97[1] = objc_msgSend_height(v94, v60, v61, v62);
  v97[2] = 1;
  v95 = vdupq_n_s64(8uLL);
  v96 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v49, v63, v97, &v95);
  objc_msgSend_endEncoding(v49, v64, v65, v66);
  objc_msgSend_commit(v45, v67, v68, v69);
  v70 = v29;
  v93 = 0;
LABEL_10:
  v71 = 288;
  do
  {

    v71 -= 24;
  }

  while (v71);

  return v93;
}

- (int)_applyEspressoOutputToLevel:(id)level uniforms:(DFApplyEspressoOutputUniforms *)uniforms inRefGaussian:(id)gaussian slFusionMap:(id)map longFusionMap:(id)fusionMap prefusionWeightsTexture:(id)texture inTexArray:(id)array inTexArrayUp:(id)self0 skinMaskTexture:(id)self1 skyMaskTexture:(id)self2 deghostedAndDenoisedAndTextureness:(id)self3 outTex:(id)self4 tile:(TileBounds *)self5
{
  levelCopy = level;
  gaussianCopy = gaussian;
  mapCopy = map;
  fusionMapCopy = fusionMap;
  textureCopy = texture;
  arrayCopy = array;
  upCopy = up;
  maskTextureCopy = maskTexture;
  skyMaskTextureCopy = skyMaskTexture;
  texturenessCopy = textureness;
  texCopy = tex;
  var11 = uniforms->var11;
  v77 = gaussianCopy;
  v88 = v77;
  v89 = @"RefGaussian";
  v90 = 0;
  v76 = mapCopy;
  v91 = v76;
  v92 = @"SLFusionMap";
  v93 = 1;
  v75 = fusionMapCopy;
  v94 = v75;
  v95 = @"longFusionMap";
  v96 = 2;
  v74 = textureCopy;
  v97 = v74;
  v98 = @"prefusionWeights";
  v99 = 3;
  v73 = arrayCopy;
  v100 = v73;
  v101 = @"inTexArray";
  v102 = 4;
  v72 = upCopy;
  v103 = v72;
  v104 = @"inTexArrayUp";
  v105 = 5;
  v29 = maskTextureCopy;
  v106 = v29;
  v107 = @"skinMaskTexture";
  v108 = 6;
  v30 = skyMaskTextureCopy;
  v109 = v30;
  v110 = @"skyMaskTexture";
  v111 = 7;
  v31 = texturenessCopy;
  v112 = v31;
  v113 = @"deghostedAndDenoisedAndTextureness";
  v114 = 8;
  v32 = texCopy;
  v115 = v32;
  v116 = @"outTex";
  v117 = 9;
  memcpy(__dst, uniforms, 0x150uLL);
  v36 = *&tile->var4;
  *&__dst[10].u8[4] = *&tile->var0;
  *&__dst[12].u8[4] = v36;
  *(&__dst[14] + 4) = *&tile->var8;
  if (var11 != 0.0)
  {
    __dst[13] = 0;
  }

  v37 = objc_msgSend_commandBuffer(levelCopy, v33, v34, v35);
  v41 = v37;
  if (v37 && (objc_msgSend_computeCommandEncoder(v37, v38, v39, v40), v42 = objc_claimAutoreleasedReturnValue(), (v45 = v42) != 0))
  {
    v46 = uniforms->var11;
    networkVersion = self->_networkVersion;
    objc_msgSend_setLabel_(v42, v43, @"_shaders->_kernelApplyEspressoOutput[configFlags]", v44);
    objc_msgSend_setComputePipelineState_(v45, v48, *(self->_shaders->_kernelApplyEspressoOutput + ((8 * (LODWORD(v46) == 0)) | (16 * (networkVersion == 2)))), v49);
    objc_msgSend_setBytes_length_atIndex_(v45, v50, __dst, 336, 0);
    v52 = &v90;
    v53 = 10;
    do
    {
      objc_msgSend_setTexture_atIndex_(v45, v51, *(v52 - 2), *v52);
      v52 += 6;
      --v53;
    }

    while (v53);
    if (var11 == 0.0)
    {
      v54 = vdup_n_s32(LOWORD(tile->var9));
    }

    else
    {
      v54 = 0;
    }

    v87[1] = v54.i16[2];
    v87[0] = v54.i16[0];
    v55 = vshl_s32(*&tile->var3, vdup_lane_s32(vneg_s32(__dst[10]), 0));
    v56.i64[0] = v55.i32[0];
    v56.i64[1] = v55.i32[1];
    v57 = v56;
    if (var11 == 0.0)
    {
      v57 = vsubq_s64(v57, vdupq_n_s64(2 * tile->var9));
    }

    v81 = v57;
    objc_msgSend_setBytes_length_atIndex_(v45, v51, v87, 4, 1);
    v85 = v81;
    v86 = 1;
    v83 = vdupq_n_s64(8uLL);
    v84 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v45, v58, &v85, &v83);
    objc_msgSend_endEncoding(v45, v59, v60, v61);
    objc_msgSend_commit(v41, v62, v63, v64);
    v65 = 0;
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v70, v70, v72, v73, v74, v75, v76);
    v65 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v68, v69, v71);
    v45 = 0;
  }

  for (i = 0; i != -240; i -= 24)
  {
  }

  return v65;
}

- (int)_applyEspressoOutputLumaOnlyToLevel:(id)level uniforms:(DFApplyEspressoOutputUniforms *)uniforms inRefGaussian:(id)gaussian slFusionMap:(id)map longFusionMap:(id)fusionMap prefusionWeightsTexture:(id)texture inTexArray:(id)array inTexArrayUp:(id)self0 skinMaskTexture:(id)self1 skyMaskTexture:(id)self2 deghostedAndDenoisedAndTextureness:(id)self3 outTex:(id)self4 tile:(TileBounds *)self5
{
  levelCopy = level;
  gaussianCopy = gaussian;
  mapCopy = map;
  fusionMapCopy = fusionMap;
  textureCopy = texture;
  arrayCopy = array;
  upCopy = up;
  maskTextureCopy = maskTexture;
  skyMaskTextureCopy = skyMaskTexture;
  texturenessCopy = textureness;
  texCopy = tex;
  var11 = uniforms->var11;
  v78 = gaussianCopy;
  v89 = v78;
  v90 = @"RefGaussian";
  v91 = 0;
  v77 = mapCopy;
  v92 = v77;
  v93 = @"SLFusionMap";
  v94 = 1;
  v76 = fusionMapCopy;
  v95 = v76;
  v96 = @"longFusionMap";
  v97 = 2;
  v75 = textureCopy;
  v98 = v75;
  v99 = @"prefusionWeights";
  v100 = 3;
  v74 = arrayCopy;
  v101 = v74;
  v102 = @"inTexArray";
  v103 = 4;
  v73 = upCopy;
  v104 = v73;
  v105 = @"inTexArrayUp";
  v106 = 5;
  v29 = maskTextureCopy;
  v107 = v29;
  v108 = @"skinMaskTexture";
  v109 = 6;
  v30 = skyMaskTextureCopy;
  v110 = v30;
  v111 = @"skyMaskTexture";
  v112 = 7;
  v31 = texturenessCopy;
  v113 = v31;
  v114 = @"deghostedAndDenoisedAndTextureness";
  v115 = 8;
  v32 = texCopy;
  v116 = v32;
  v117 = @"outTex";
  v118 = 9;
  memcpy(__dst, uniforms, 0x150uLL);
  v36 = *&tile->var4;
  *&__dst[10].u8[4] = *&tile->var0;
  *&__dst[12].u8[4] = v36;
  *(&__dst[14] + 4) = *&tile->var8;
  if (var11 != 0.0)
  {
    __dst[13] = 0;
  }

  if (!self->_shaders->_kernelApplyEspressoOutputLumaOnly || (objc_msgSend_commandBuffer(levelCopy, v33, v34, v35), v37 = objc_claimAutoreleasedReturnValue(), (v41 = v37) == 0))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v70, v70, v73, v74, v75, v76, v77);
    v63 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, v68, v71);
    v41 = 0;
LABEL_19:
    v45 = 0;
    goto LABEL_14;
  }

  v42 = objc_msgSend_computeCommandEncoder(v37, v38, v39, v40);
  v45 = v42;
  if (!v42)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v70, v70, v73, v74, v75, v76, v77);
    v63 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v67, v69, v72);
    goto LABEL_19;
  }

  objc_msgSend_setLabel_(v42, v43, @"_shaders->_kernelApplyEspressoOutputLumaOnly", v44);
  objc_msgSend_setComputePipelineState_(v45, v46, self->_shaders->_kernelApplyEspressoOutputLumaOnly, v47);
  objc_msgSend_setBytes_length_atIndex_(v45, v48, __dst, 336, 0);
  v50 = &v91;
  v51 = 10;
  do
  {
    objc_msgSend_setTexture_atIndex_(v45, v49, *(v50 - 2), *v50);
    v50 += 6;
    --v51;
  }

  while (v51);
  if (var11 == 0.0)
  {
    v52 = vdup_n_s32(LOWORD(tile->var9));
  }

  else
  {
    v52 = 0;
  }

  v88[1] = v52.i16[2];
  v88[0] = v52.i16[0];
  v53 = vshl_s32(*&tile->var3, vdup_lane_s32(vneg_s32(__dst[10]), 0));
  v54.i64[0] = v53.i32[0];
  v54.i64[1] = v53.i32[1];
  v55 = v54;
  if (var11 == 0.0)
  {
    v55 = vsubq_s64(v55, vdupq_n_s64(2 * tile->var9));
  }

  v82 = v55;
  objc_msgSend_setBytes_length_atIndex_(v45, v49, v88, 4, 1);
  v86 = v82;
  v87 = 1;
  v84 = vdupq_n_s64(8uLL);
  v85 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v45, v56, &v86, &v84);
  objc_msgSend_endEncoding(v45, v57, v58, v59);
  objc_msgSend_commit(v41, v60, v61, v62);
  v63 = 0;
LABEL_14:
  for (i = 0; i != -240; i -= 24)
  {
  }

  return v63;
}

- (int)_collapseWeightsOnTile:(id)tile inoutTexNSArray:(id)array
{
  tileCopy = tile;
  arrayCopy = array;
  if (!arrayCopy)
  {
    sub_2958868F8(v56);
LABEL_16:
    v52 = v56[0];
    goto LABEL_11;
  }

  if (!self->_shaders->_kernelCollapseWeightsOnTileStage1)
  {
    sub_29588685C(v56);
    goto LABEL_16;
  }

  v11 = objc_msgSend_commandBuffer(tileCopy, v7, v8, v9);
  if (!v11)
  {
    sub_2958867C0(v56);
    goto LABEL_16;
  }

  v15 = v11;
  v16 = objc_msgSend_computeCommandEncoder(v11, v12, v13, v14);
  if (!v16)
  {
    sub_295886710(v15);
    goto LABEL_16;
  }

  v19 = v16;
  objc_msgSend_setLabel_(v16, v17, @"_shaders->_kernelCollapseWeightsOnTileStage1", v18);
  objc_msgSend_setComputePipelineState_(v19, v20, self->_shaders->_kernelCollapseWeightsOnTileStage1, v21);
  objc_msgSend_setImageblockWidth_height_(v19, v22, 32, 32);
  if (self->_networkVersion == 2)
  {
    v25 = 1;
    goto LABEL_8;
  }

  v25 = 2;
  objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v23, 2, v24);
  while (1)
    v26 = {;
    v30 = objc_msgSend_width(v26, v27, v28, v29);

    v33 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v31, v25, v32);
    v37 = objc_msgSend_height(v33, v34, v35, v36);

    v40 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v38, v25, v39);
    objc_msgSend_setTexture_atIndex_(v19, v41, v40, 0);

    v44 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v42, v25 + 1, v43);
    objc_msgSend_setTexture_atIndex_(v19, v45, v44, 1);

    v56[0] = v30;
    v56[1] = v37;
    v56[2] = 1;
    v54 = vdupq_n_s64(0x20uLL);
    v55 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v19, v46, v56, &v54);
    if (v25-- <= 1)
    {
      break;
    }

LABEL_8:
    objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v23, v25, v24);
  }

  objc_msgSend_endEncoding(v19, v23, v47, v24);
  objc_msgSend_commit(v15, v49, v50, v51);

  v52 = 0;
LABEL_11:

  return v52;
}

- (int)_addPreviousLevel:(id)level inoutTex:(id)tex inTexPrevLevel:(id)prevLevel writeOffset:(DFApplyEspressoOutputUniforms *)offset applyUniforms:(unsigned int)uniforms useUpsampledImage:
{
  v8 = v7;
  v9 = *&uniforms;
  offsetCopy = offset;
  levelCopy = level;
  texCopy = tex;
  prevLevelCopy = prevLevel;
  v70 = v8;
  v71 = offsetCopy;
  v20 = objc_msgSend_width(prevLevelCopy, v17, v18, v19);
  v24 = v20;
  if (v8)
  {
    v28 = objc_msgSend_height(prevLevelCopy, v21, v22, v23);
  }

  else
  {
    v24 = 2 * v20;
    v28 = 2 * objc_msgSend_height(prevLevelCopy, v21, v22, v23);
  }

  if (!self->_shaders->_kernelAddPreviousLevel)
  {
    sub_295886AE0(v60);
LABEL_12:
    v56 = v60[0];
    goto LABEL_8;
  }

  v29 = objc_msgSend_commandBuffer(levelCopy, v25, v26, v27);
  if (!v29)
  {
    sub_295886A44(v60);
    goto LABEL_12;
  }

  v33 = v29;
  v34 = objc_msgSend_computeCommandEncoder(v29, v30, v31, v32);
  if (!v34)
  {
    sub_295886994(v33);
    goto LABEL_12;
  }

  v37 = v34;
  v61 = *(v9 + 80);
  v62 = *(v9 + 212);
  v63 = *(v9 + 220);
  v38 = *(v9 + 240);
  v64 = *(v9 + 224);
  v65 = v38;
  v39 = *(v9 + 272);
  v66 = *(v9 + 256);
  v67 = v39;
  v40 = *(v9 + 304);
  v68 = *(v9 + 288);
  v69 = v40;
  objc_msgSend_setLabel_(v34, v35, @"_shaders->_kernelAddPreviousLevel", v36);
  objc_msgSend_setComputePipelineState_(v37, v41, self->_shaders->_kernelAddPreviousLevel, v42);
  objc_msgSend_setImageblockWidth_height_(v37, v43, 32, 32);
  objc_msgSend_setTexture_atIndex_(v37, v44, texCopy, 0);
  objc_msgSend_setTexture_atIndex_(v37, v45, prevLevelCopy, 1);
  objc_msgSend_setBytes_length_atIndex_(v37, v46, &v71, 4, 0);
  objc_msgSend_setBytes_length_atIndex_(v37, v47, &v61, 112, 1);
  objc_msgSend_setBytes_length_atIndex_(v37, v48, &v70, 4, 2);
  v60[0] = v24;
  v60[1] = v28;
  v60[2] = 1;
  v58 = vdupq_n_s64(0x20uLL);
  v59 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v37, v49, v60, &v58);
  objc_msgSend_endEncoding(v37, v50, v51, v52);
  objc_msgSend_commit(v33, v53, v54, v55);

  v56 = 0;
LABEL_8:

  return v56;
}

- (int)_computeTextureness:(id)textureness applyUniforms:(DFApplyEspressoOutputUniforms *)uniforms inputTexture:(id)texture outputTexture:(id)outputTexture lscGainsTex:(id)tex
{
  texturenessCopy = textureness;
  textureCopy = texture;
  outputTextureCopy = outputTexture;
  texCopy = tex;
  v19 = objc_msgSend_width(textureCopy, v16, v17, v18);
  v23 = objc_msgSend_height(textureCopy, v20, v21, v22);
  if (!self->_shaders->_kernelComputeTextureness)
  {
    sub_295886CC8(v55);
LABEL_9:
    v51 = v55[0];
    goto LABEL_5;
  }

  v27 = v23;
  v28 = objc_msgSend_commandBuffer(texturenessCopy, v24, v25, v26);
  if (!v28)
  {
    sub_295886C2C(v55);
    goto LABEL_9;
  }

  v32 = v28;
  v33 = objc_msgSend_computeCommandEncoder(v28, v29, v30, v31);
  if (!v33)
  {
    sub_295886B7C(v32);
    goto LABEL_9;
  }

  v36 = v33;
  v56 = *&uniforms->var23;
  var25 = uniforms->var25;
  v59 = *&uniforms->var16;
  v58 = *&uniforms->var12;
  v60 = *&uniforms->var19;
  var21 = uniforms->var21;
  var1 = uniforms[1].var3.var1;
  *(&v59 + 4) = 0;
  objc_msgSend_setLabel_(v33, v34, @"_shaders->_kernelComputeTextureness", v35);
  objc_msgSend_setComputePipelineState_(v36, v37, self->_shaders->_kernelComputeTextureness, v38);
  objc_msgSend_setImageblockWidth_height_(v36, v39, 32, 32);
  objc_msgSend_setTexture_atIndex_(v36, v40, textureCopy, 0);
  objc_msgSend_setTexture_atIndex_(v36, v41, texCopy, 1);
  objc_msgSend_setTexture_atIndex_(v36, v42, outputTextureCopy, 2);
  objc_msgSend_setBytes_length_atIndex_(v36, v43, &v56, 60, 0);
  v55[0] = v19;
  v55[1] = v27;
  v55[2] = 1;
  v53 = vdupq_n_s64(0x20uLL);
  v54 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v36, v44, v55, &v53);
  objc_msgSend_endEncoding(v36, v45, v46, v47);
  objc_msgSend_commit(v32, v48, v49, v50);

  v51 = 0;
LABEL_5:

  return v51;
}

- (int)_validateInputsForTile:(TileBounds *)tile espressoOutputTextureArray:(id)array inRefGaussianArray:(id)gaussianArray inSLGaussianArray:(id)lGaussianArray inRefLaplacianArray:(id)laplacianArray inSLLaplacianArray:(id)lLaplacianArray inRefNoisePyramidLevel3:(id)level3 inSLNoisePyramidLevel3:(id)self0 slFusionMap:(id)self1 longFusionMap:(id)self2 prefusionWeightsTexture:(id)self3 skinMaskTexture:(id)self4 skyMaskTexture:(id)self5 finalOutputTexture:(id)self6 lscGains:(id)self7 refNoisePretuning:(id)self8
{
  arrayCopy = array;
  gaussianArrayCopy = gaussianArray;
  lGaussianArrayCopy = lGaussianArray;
  laplacianArrayCopy = laplacianArray;
  lLaplacianArrayCopy = lLaplacianArray;
  level3Copy = level3;
  pyramidLevel3Copy = pyramidLevel3;
  mapCopy = map;
  fusionMapCopy = fusionMap;
  textureCopy = texture;
  maskTextureCopy = maskTexture;
  skyMaskTextureCopy = skyMaskTexture;
  outputTextureCopy = outputTexture;
  gainsCopy = gains;
  pretuningCopy = pretuning;
  v117 = pretuningCopy;
  if (!tile)
  {
    sub_295887FBC(v158);
    v73 = 0;
    v115 = v158[0];
    v32 = arrayCopy;
    goto LABEL_79;
  }

  v32 = arrayCopy;
  if (!arrayCopy)
  {
    sub_295887F20(v158);
    goto LABEL_111;
  }

  if (!mapCopy)
  {
    sub_295887E84(v158);
    goto LABEL_111;
  }

  if (!textureCopy)
  {
    sub_295887DE8(v158);
    goto LABEL_111;
  }

  if (!outputTextureCopy)
  {
    sub_295887D4C(v158);
    goto LABEL_111;
  }

  if (!gaussianArrayCopy)
  {
    sub_295887CB0(v158);
    goto LABEL_111;
  }

  if (!lGaussianArrayCopy)
  {
    sub_295887C14(v158);
    goto LABEL_111;
  }

  if (!laplacianArrayCopy)
  {
    sub_295887B78(v158);
    goto LABEL_111;
  }

  if (!lLaplacianArrayCopy)
  {
    sub_295887ADC(v158);
    goto LABEL_111;
  }

  if (!gainsCopy)
  {
    sub_295887A40(v158);
    goto LABEL_111;
  }

  if (!pretuningCopy)
  {
    sub_2958879A4(v158);
    goto LABEL_111;
  }

  v121 = maskTextureCopy;
  v122 = fusionMapCopy;
  v33 = objc_msgSend_width(mapCopy, v29, v30, v31);
  v123 = mapCopy;
  v37 = objc_msgSend_height(mapCopy, v34, v35, v36);
  if (!self->_width || !self->_height)
  {
    sub_295887908(v158);
LABEL_102:
    v73 = 0;
LABEL_103:
    v115 = v158[0];
    goto LABEL_78;
  }

  if (!self->_pixelFormat)
  {
    sub_29588786C(v158);
    goto LABEL_102;
  }

  v41 = v37;
  if (v33 != objc_msgSend_width(textureCopy, v38, v39, v40) || v41 != objc_msgSend_height(textureCopy, v42, v43, v44))
  {
    sub_295886D64(v158);
    goto LABEL_102;
  }

  fusionMapCopy = v122;
  maskTextureCopy = v121;
  if (sub_29580B938(textureCopy) != 1)
  {
    sub_295886E00(v158);
    goto LABEL_111;
  }

  if (v121 && sub_29580B938(v121) != 1)
  {
    sub_295886E9C(v158);
    goto LABEL_111;
  }

  if (skyMaskTextureCopy && sub_29580B938(skyMaskTextureCopy) != 1)
  {
    sub_295886F38(v158);
    goto LABEL_111;
  }

  if (sub_29580B938(mapCopy) != 1)
  {
    sub_295886FD4(v158);
    goto LABEL_111;
  }

  if (v122 && sub_29580B938(v122) != 1)
  {
    sub_295887070(v158);
    goto LABEL_111;
  }

  if (sub_29580B938(outputTextureCopy) != 4)
  {
    sub_29588710C(v158);
    goto LABEL_111;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(arrayCopy, v45, v46, v47) != 4)
  {
    sub_2958871A8(v158);
LABEL_111:
    v73 = 0;
    v115 = v158[0];
    goto LABEL_79;
  }

  if (sub_29580B938(gainsCopy) < 3)
  {
    sub_2958877D0(v158);
    goto LABEL_111;
  }

  v134 = skyMaskTextureCopy;
  for (i = 0; i != 4; ++i)
  {
    v51 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v48, i, v49);
    if ((objc_msgSend_conformsToProtocol_(v51, v52, &unk_2A1CD4400, v53) & 1) == 0)
    {
      sub_295887244(v158);
LABEL_83:
      v115 = v158[0];

      v73 = 0;
      fusionMapCopy = v122;
      maskTextureCopy = v121;
      goto LABEL_79;
    }

    if (sub_29580B938(v51) != 1)
    {
      sub_2958872E0(v158);
      goto LABEL_83;
    }

    objc_msgSend_pixelFormat(v51, v54, v55, v56);
    v60 = objc_msgSend_device(v51, v57, v58, v59);
    v159 = 0;
    memset(v158, 0, sizeof(v158));
    MTLPixelFormatGetInfoForDevice();
    v157 = 0;
    v155 = 0u;
    v156 = 0u;
    v154 = 0u;
    MTLPixelFormatGetInfoForDevice();
  }

  v61 = 1;
  do
  {
    width = self->_width;
    height = self->_height;
    v64 = objc_msgSend_objectAtIndexedSubscript_(self->_yinfTextures[0], v48, v61 - 1, v49);
    v68 = v64;
    if (!v64)
    {
      sub_295887734(v158);
      goto LABEL_85;
    }

    v69 = v61;
    if (objc_msgSend_width(v64, v65, v66, v67) != width >> v61 || objc_msgSend_height(v68, v70, v71, v72) != height >> v61)
    {
      sub_295887418(v158);
LABEL_85:
      v115 = v158[0];
      v32 = arrayCopy;

      v73 = 0;
      goto LABEL_78;
    }

    ++v61;
  }

  while (v69 != 3);
  v153[0] = lGaussianArrayCopy;
  v153[1] = gaussianArrayCopy;
  v153[2] = laplacianArrayCopy;
  v153[3] = lLaplacianArrayCopy;
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v48, v153, 4);
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v73 = v152 = 0u;
  v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v149, v148, 16);
  if (v124)
  {
    v126 = textureCopy;
    v127 = *v150;
    v125 = v73;
    while (2)
    {
      v75 = 0;
      do
      {
        if (*v150 != v127)
        {
          objc_enumerationMutation(v73);
        }

        v76 = *(*(&v149 + 1) + 8 * v75);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v76, v77, v78, v79) != 4)
        {
          sub_2958874B4(v158);
          v115 = v158[0];
LABEL_70:

          goto LABEL_77;
        }

        v136 = v75;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v80 = v76;
        v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v81, &v144, v143, 16);
        if (v82)
        {
          v86 = v82;
          v87 = 0;
          v88 = *v145;
          while (2)
          {
            v89 = 0;
            v90 = v87;
            v87 += v86;
            do
            {
              if (*v145 != v88)
              {
                objc_enumerationMutation(v80);
              }

              v91 = *(*(&v144 + 1) + 8 * v89);
              v92 = self->_height;
              v93 = self->_width >> v90;
              if (v93 != objc_msgSend_width(v91, v83, v84, v85) || v92 >> v90 != objc_msgSend_height(v91, v94, v95, v96))
              {
                sub_295887550(v80, v158);
                v115 = v158[0];
                v73 = v125;
                textureCopy = v126;
                skyMaskTextureCopy = v134;
                goto LABEL_70;
              }

              ++v90;
              ++v89;
            }

            while (v86 != v89);
            v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v83, &v144, v143, 16);
            if (v86)
            {
              continue;
            }

            break;
          }
        }

        skyMaskTextureCopy = v134;
        v75 = v136 + 1;
        v73 = v125;
        textureCopy = v126;
      }

      while (v136 + 1 != v124);
      v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v125, v97, &v149, v148, 16);
      if (v124)
      {
        continue;
      }

      break;
    }
  }

  networkVersion = self->_networkVersion;
  if (!pyramidLevel3Copy || !level3Copy || networkVersion != 2)
  {
    v32 = arrayCopy;
    if (!pyramidLevel3Copy && !level3Copy && networkVersion == 1)
    {
      v115 = 0;
      goto LABEL_78;
    }

    sub_2958875FC(v158);
    goto LABEL_103;
  }

  v142[0] = level3Copy;
  v142[1] = pyramidLevel3Copy;
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v98, v142, 2);
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v100 = v141 = 0u;
  v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v101, &v138, v137, 16);
  if (v102)
  {
    v106 = v102;
    v107 = *v139;
    while (2)
    {
      for (j = 0; j != v106; ++j)
      {
        if (*v139 != v107)
        {
          objc_enumerationMutation(v100);
        }

        v109 = *(*(&v138 + 1) + 8 * j);
        v110 = self->_width;
        if (objc_msgSend_width(v109, v103, v104, v105) == v110 >> 3)
        {
          v114 = self->_height;
          if (objc_msgSend_height(v109, v111, v112, v113) == v114 >> 3)
          {
            continue;
          }
        }

        sub_295887698(v158);
        v115 = v158[0];
        goto LABEL_76;
      }

      v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v103, &v138, v137, 16);
      if (v106)
      {
        continue;
      }

      break;
    }
  }

  v115 = 0;
LABEL_76:

LABEL_77:
  v32 = arrayCopy;
LABEL_78:
  fusionMapCopy = v122;
  mapCopy = v123;
  maskTextureCopy = v121;
LABEL_79:

  return v115;
}

- (int)_createUpsampledWithGaussianFilter:(id)filter inTexPrevLevel:(id *)level
{
  filterCopy = filter;
  v10 = objc_msgSend_allocator(self->_metal, v7, v8, v9);
  v14 = objc_msgSend_newTextureDescriptor(v10, v11, v12, v13);

  if (v14)
  {
    v18 = objc_msgSend_desc(v14, v15, v16, v17);
    objc_msgSend_setCompressionMode_(v18, v19, 2, v20);

    v24 = objc_msgSend_desc(v14, v21, v22, v23);
    objc_msgSend_setCompressionFootprint_(v24, v25, 0, v26);

    v30 = objc_msgSend_pixelFormat(*level, v27, v28, v29);
    v34 = objc_msgSend_desc(v14, v31, v32, v33);
    objc_msgSend_setPixelFormat_(v34, v35, v30, v36);

    v40 = 2 * objc_msgSend_width(*level, v37, v38, v39);
    v44 = objc_msgSend_desc(v14, v41, v42, v43);
    objc_msgSend_setWidth_(v44, v45, v40, v46);

    v50 = 2 * objc_msgSend_height(*level, v47, v48, v49);
    v54 = objc_msgSend_desc(v14, v51, v52, v53);
    objc_msgSend_setHeight_(v54, v55, v50, v56);

    v60 = objc_msgSend_desc(v14, v57, v58, v59);
    objc_msgSend_setUsage_(v60, v61, 3, v62);

    objc_msgSend_setLabel_(v14, v63, 0, v64);
    v68 = objc_msgSend_allocator(self->_metal, v65, v66, v67);
    v71 = objc_msgSend_newTextureWithDescriptor_(v68, v69, v14, v70);

    v75 = objc_msgSend_commandBuffer(filterCopy, v72, v73, v74);
    if (v75)
    {
      v77 = v75;
      v78 = objc_msgSend_upsampleUsing_inputTex_outputTexUpsampled_upsamplingFilter_(self->_laplacianPyram, v76, v75, *level, v71, 1);
      v82 = v78;
      if (v78)
      {
        sub_295888058(v78, v71, v77);
      }

      else
      {
        objc_msgSend_commit(v77, v79, v80, v81);
        v83 = v71;
        *level = v71;
      }
    }

    else
    {
      sub_2958880E0(v71);
      v82 = v85;
    }
  }

  else
  {
    sub_295888190(&v86);
    v82 = v86;
  }

  return v82;
}

- (int)applyWeightsOnTile:(id)tile uniforms:(DFApplyEspressoOutputUniforms *)uniforms espressoOutputTextureArray:(id)array inRefGaussianArray:(id)gaussianArray inSLGaussianArray:(id)lGaussianArray inRefLaplacianArray:(id)laplacianArray inSLLaplacianArray:(id)lLaplacianArray inRefNoisePyramidLevel3:(id)self0 inSLNoisePyramidLevel3:(id)self1 slFusionMap:(id)self2 longFusionMap:(id)self3 prefusionWeightsTexture:(id)self4 skinMaskTexture:(id)self5 skyMaskTexture:(id)self6 lscGains:(id)self7 refNoisePretuning:(id)self8 tile:(TileBounds *)self9 finalOutputTexture:(id)outputTexture lowLightMode:(BOOL)mode
{
  tileCopy = tile;
  arrayCopy = array;
  gaussianArrayCopy = gaussianArray;
  lGaussianArrayCopy = lGaussianArray;
  laplacianArrayCopy = laplacianArray;
  lLaplacianArrayCopy = lLaplacianArray;
  level3Copy = level3;
  v27 = laplacianArrayCopy;
  pyramidLevel3Copy = pyramidLevel3;
  mapCopy = map;
  selfCopy = self;
  fusionMapCopy = fusionMap;
  textureCopy = texture;
  maskTextureCopy = maskTexture;
  skyMaskTextureCopy = skyMaskTexture;
  gainsCopy = gains;
  pretuningCopy = pretuning;
  outputTextureCopy = outputTexture;
  if (a19->var0 >= 0)
  {
    v38 = a19->var0 & 1;
  }

  else
  {
    v38 = -(a19->var0 & 1);
  }

  v114 = v38;
  v106 = pretuningCopy;
  v112 = gainsCopy;
  v99 = outputTextureCopy;
  v100 = skyMaskTextureCopy;
  v101 = maskTextureCopy;
  v102 = textureCopy;
  v103 = fusionMapCopy;
  v104 = mapCopy;
  v39 = objc_msgSend__validateInputsForTile_espressoOutputTextureArray_inRefGaussianArray_inSLGaussianArray_inRefLaplacianArray_inSLLaplacianArray_inRefNoisePyramidLevel3_inSLNoisePyramidLevel3_slFusionMap_longFusionMap_prefusionWeightsTexture_skinMaskTexture_skyMaskTexture_finalOutputTexture_lscGains_refNoisePretuning_(self, v37, a19, arrayCopy, gaussianArrayCopy, lGaussianArrayCopy, v27, lLaplacianArrayCopy, level3Copy, pyramidLevel3Copy, mapCopy, fusionMapCopy, textureCopy, maskTextureCopy, skyMaskTextureCopy, outputTextureCopy, gainsCopy, pretuningCopy);
  if (v39)
  {
    LODWORD(Level_outDeghostedDenoised_lowLightMode) = v39;
    sub_29588822C();
    v41 = tileCopy;
  }

  else
  {
    v41 = tileCopy;
    v42 = objc_msgSend__collapseWeightsOnTile_inoutTexNSArray_(self, v40, tileCopy, arrayCopy);
    if (!v42)
    {
      yinfTextures = self->_yinfTextures;
      p_var3 = &uniforms[6].var3.var3;
      v46 = 4;
      v105 = arrayCopy;
      while (1)
      {
        v47 = v46 - 1;
        v124 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v43, v46 - 1, v44);
        if ((v46 - 1) > 2)
        {
          v123 = 0;
        }

        else
        {
          v123 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v48, v46, v49);
          if (v46 == 1)
          {
            v52 = v99;
            v116 = 1;
            goto LABEL_13;
          }
        }

        v53 = objc_msgSend_objectAtIndexedSubscript_(yinfTextures[v114], v48, v46 - 2, v49);
        v52 = v53;
        if (v46 == 4)
        {
          v121 = v53;
          v116 = 0;
          v56 = 0;
          location = 0;
          goto LABEL_18;
        }

        v116 = 0;
LABEL_13:
        v54 = objc_msgSend_objectAtIndexedSubscript_(yinfTextures[v114], v50, v46 - 1, v51);
        location = v54;
        v121 = v52;
        if (selfCopy->_networkVersion != 2)
        {
          v56 = 0;
LABEL_18:
          v119 = v46;
          v57 = *&a19->var0;
          v58 = *&a19->var4;
          *(p_var3 + 116) = *&a19->var8;
          *(p_var3 + 100) = v58;
          *(p_var3 + 84) = v57;
          v59 = selfCopy;
          v60 = v46 == 4 && selfCopy->_networkVersion == 2;
          v61 = !v60;
          v111 = v56;
          if (v60)
          {
            v62 = v121;
          }

          else
          {
            v62 = objc_msgSend_objectAtIndexedSubscript_(v27, v50, v46 - 1, v51);
          }

          v65 = v62;
          v66 = v27;
          v67 = objc_msgSend_objectAtIndexedSubscript_(v27, v63, v47, v64);
          v70 = objc_msgSend_objectAtIndexedSubscript_(lLaplacianArrayCopy, v68, v47, v69);
          v73 = objc_msgSend_objectAtIndexedSubscript_(gaussianArrayCopy, v71, v47, v72);
          v76 = objc_msgSend_objectAtIndexedSubscript_(lGaussianArrayCopy, v74, v47, v75);
          v78 = v76;
          v80 = pyramidLevel3Copy;
          v79 = level3Copy;
          if (v61 | mode)
          {
            v79 = 0;
            v80 = 0;
          }

          LOBYTE(v98) = mode;
          v122 = v65;
          Level_outDeghostedDenoised_lowLightMode = objc_msgSend__deghostAndDenoise_uniforms_inTexEspressoWeights_inTexEspressoWeightsUp_inRefLaplacian_inSynthLongLaplacian_inRefGaussian_inSynthLongGaussian_inRefNoisePyramidLevel3_inSynthLongNoisePyramidLevel3_refNoisePretuning_LSCGains_inTexPrevLevel_outDeghostedDenoised_lowLightMode_(v59, v77, tileCopy, p_var3, v124, v123, v67, v70, v73, v76, v79, v80, v106, v112, location, v65, v98);

          if (Level_outDeghostedDenoised_lowLightMode)
          {
            sub_29588834C(Level_outDeghostedDenoised_lowLightMode);
            v94 = 1;
            v41 = tileCopy;
            arrayCopy = v105;
            v27 = v66;
          }

          else
          {
            arrayCopy = v105;
            v27 = v66;
            if (v61)
            {
              v83 = *(p_var3 + 32);
              v41 = tileCopy;
              selfCopy = v59;
              if (!v83)
              {
                goto LABEL_36;
              }

              if (v83 == 1)
              {
                objc_msgSend_objectAtIndexedSubscript_(gaussianArrayCopy, v81, v47, v82);
              }

              else
              {
                objc_msgSend_objectAtIndexedSubscript_(lGaussianArrayCopy, v81, v47, v82);
              }
              v84 = ;
              Level_outDeghostedDenoised_lowLightMode = objc_msgSend__computeTextureness_applyUniforms_inputTexture_outputTexture_lscGainsTex_(v59, v85, tileCopy, p_var3, v84, v122, v112);

              if (!Level_outDeghostedDenoised_lowLightMode)
              {
LABEL_36:
                v86 = v116 ^ 1;
                if (v59->_networkVersion != 2)
                {
                  v86 = 1;
                }

                v46 = v119;
                v52 = v121;
                if (v86)
                {
                  v95 = objc_msgSend_objectAtIndexedSubscript_(gaussianArrayCopy, v81, v47, v82);
                  Level_outDeghostedDenoised_lowLightMode = objc_msgSend__applyEspressoOutputToLevel_uniforms_inRefGaussian_slFusionMap_longFusionMap_prefusionWeightsTexture_inTexArray_inTexArrayUp_skinMaskTexture_skyMaskTexture_deghostedAndDenoisedAndTextureness_outTex_tile_(selfCopy, v96, tileCopy, p_var3, v95, v104, v103, v102, v124, v123, v101, v100, v122, v121, a19);

                  if (Level_outDeghostedDenoised_lowLightMode)
                  {
                    sub_29588840C(Level_outDeghostedDenoised_lowLightMode);
                    goto LABEL_66;
                  }

                  if (v119 != 4)
                  {
                    v90 = location;
                    if (v116)
                    {
LABEL_41:
                      v91 = v111;
                      HIWORD(v125) = WORD2(*&a19->var5);
                      LOWORD(v125) = *&a19->var5;
                      v92 = objc_msgSend__addPreviousLevel_inoutTex_inTexPrevLevel_writeOffset_applyUniforms_useUpsampledImage_(selfCopy, v89, tileCopy, v121, v90, v125, p_var3, v111);
                    }

                    else
                    {
                      v91 = v111;
                      v92 = objc_msgSend__addPreviousLevel_inoutTex_inTexPrevLevel_writeOffset_applyUniforms_useUpsampledImage_(selfCopy, v89, tileCopy, v121, location, 0, p_var3, v111);
                    }

                    if (v92)
                    {
                      LODWORD(Level_outDeghostedDenoised_lowLightMode) = v92;
                      sub_2958884CC();
                      goto LABEL_66;
                    }

                    v93 = v91 ^ 1;
                    if (v119 == 4)
                    {
                      v93 = 1;
                    }

                    if ((v93 & 1) == 0)
                    {
                      FigMetalDecRef();
                    }
                  }

                  v94 = 0;
                  LODWORD(Level_outDeghostedDenoised_lowLightMode) = 0;
                }

                else
                {
                  v87 = objc_msgSend_objectAtIndexedSubscript_(gaussianArrayCopy, v81, 0, v82);
                  Level_outDeghostedDenoised_lowLightMode = objc_msgSend__applyEspressoOutputLumaOnlyToLevel_uniforms_inRefGaussian_slFusionMap_longFusionMap_prefusionWeightsTexture_inTexArray_inTexArrayUp_skinMaskTexture_skyMaskTexture_deghostedAndDenoisedAndTextureness_outTex_tile_(selfCopy, v88, tileCopy, p_var3, v87, v104, v103, v102, v124, v123, v101, v100, v122, v121, a19);

                  if (!Level_outDeghostedDenoised_lowLightMode)
                  {
                    v90 = location;
                    goto LABEL_41;
                  }

                  sub_29588846C(Level_outDeghostedDenoised_lowLightMode);
LABEL_66:
                  v94 = 1;
                }

LABEL_53:

                goto LABEL_54;
              }

              sub_2958883AC(Level_outDeghostedDenoised_lowLightMode);
              v94 = 1;
LABEL_49:
              v46 = v119;
              v52 = v121;
              goto LABEL_53;
            }

            v94 = 0;
            LODWORD(Level_outDeghostedDenoised_lowLightMode) = 0;
            v41 = tileCopy;
          }

          selfCopy = v59;
          goto LABEL_49;
        }

        v126 = v54;
        Level_outDeghostedDenoised_lowLightMode = objc_msgSend__createUpsampledWithGaussianFilter_inTexPrevLevel_(selfCopy, v50, v41, &v126);
        objc_storeStrong(&location, v126);
        if (!Level_outDeghostedDenoised_lowLightMode)
        {
          v56 = 1;
          goto LABEL_18;
        }

        sub_2958882EC(Level_outDeghostedDenoised_lowLightMode);
        v94 = 1;
LABEL_54:

        if ((v94 & 1) == 0)
        {
          p_var3 -= 336;
          v60 = v46 == 1;
          v46 = v47;
          if (!v60)
          {
            continue;
          }
        }

        goto LABEL_69;
      }
    }

    LODWORD(Level_outDeghostedDenoised_lowLightMode) = v42;
    sub_29588828C();
  }

LABEL_69:

  return Level_outDeghostedDenoised_lowLightMode;
}

- (int)convert444to420:(id)convert444to420 input444:(id)input444 outputLuma:(id)luma outputChroma:(id)chroma outputOffset:(TileBounds *)offset
{
  convert444to420Copy = convert444to420;
  input444Copy = input444;
  lumaCopy = luma;
  chromaCopy = chroma;
  v19 = chromaCopy;
  if (!input444Copy)
  {
    sub_295888984(v63);
LABEL_19:
    v59 = v63[0];
    goto LABEL_10;
  }

  if (!lumaCopy)
  {
    sub_2958888E8(v63);
    goto LABEL_19;
  }

  if (!chromaCopy)
  {
    sub_29588884C(v63);
    goto LABEL_19;
  }

  v20 = objc_msgSend_width(lumaCopy, v16, v17, v18);
  if (v20 != 2 * objc_msgSend_width(v19, v21, v22, v23))
  {
    sub_29588852C(v63);
    goto LABEL_19;
  }

  v27 = objc_msgSend_height(lumaCopy, v24, v25, v26);
  if (v27 != 2 * objc_msgSend_height(v19, v28, v29, v30))
  {
    sub_2958885C8(v63);
    goto LABEL_19;
  }

  if (!self->_shaders->_kernelConvert444to420)
  {
    sub_2958887B0(v63);
    goto LABEL_19;
  }

  var7 = offset->var7;
  var8 = offset->var8;
  v36 = objc_msgSend_commandBuffer(convert444to420Copy, v31, v32, v33);
  if (!v36)
  {
    sub_295888714(v63);
    goto LABEL_19;
  }

  v40 = v36;
  v41 = objc_msgSend_computeCommandEncoder(v36, v37, v38, v39);
  if (!v41)
  {
    sub_295888664(v40);
    goto LABEL_19;
  }

  v44 = v41;
  objc_msgSend_setLabel_(v41, v42, @"_shaders->_kernelConvert444to420", v43);
  objc_msgSend_setComputePipelineState_(v44, v45, self->_shaders->_kernelConvert444to420, v46);
  objc_msgSend_setImageblockWidth_height_(v44, v47, 32, 32);
  objc_msgSend_setTexture_atIndex_(v44, v48, input444Copy, 0);
  objc_msgSend_setTexture_atIndex_(v44, v49, lumaCopy, 1);
  objc_msgSend_setTexture_atIndex_(v44, v50, v19, 2);
  objc_msgSend_setBytes_length_atIndex_(v44, v51, offset, 40, 0);
  v63[0] = var7 >> 1;
  v63[1] = var8 >> 1;
  v63[2] = 1;
  v61 = vdupq_n_s64(0x10uLL);
  v62 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v44, v52, v63, &v61);
  objc_msgSend_endEncoding(v44, v53, v54, v55);
  objc_msgSend_commit(v40, v56, v57, v58);

  v59 = 0;
LABEL_10:

  return v59;
}

- (uint64_t)createShaderUniforms:(float)uniforms totalGain:(float)gain EVM_EV0_motionScore:(float)score lscGainGreenMax:(int64x2_t)max slQuantBounds:(float)bounds espressoModel:(uint64_t)model fullSize:(uint64_t)size uniforms:(void *)self0 hasLong:(uint64_t)self1 hasSIFR:(uint64_t)self2 isStationary:(int)self3 isSyntheticLongWithRealLong:(int)self4 aeShutterTimeRatio:(uint64_t)self5 colorCorrection:(BOOL)self6 inverseColorCorrection:(uint64_t)self7
{
  v29 = a10;
  v32 = v29;
  if (!v29)
  {
    sub_295888C90(&v214);
LABEL_48:
    v127 = v214;
    goto LABEL_45;
  }

  if (!r)
  {
    sub_295888BF4(&v214);
    goto LABEL_48;
  }

  v33 = objc_msgSend_addBackModulationBandsForModel_(v29, v30, long, v31);
  v36 = objc_msgSend_fusionDataForModel_(v32, v34, long, v35);
  v181 = objc_msgSend_chromaBoostBandsForModel_isSyntheticLongWithRealLong_(v32, v37, long, correction);
  v40 = objc_msgSend_desaturationDataForModel_(v32, v38, long, v39);
  v180 = objc_msgSend_haloSuppressionBandsForModel_(v32, v41, long, v42);
  objc_msgSend_darkEdgeSuppressionBandsForModel_(v32, v43, long, v44);
  v179 = v178 = v33;
  if (!v33)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v23, v146, v154, v156, v158, v161, v162);
    v127 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v132, v139, v147);

    goto LABEL_45;
  }

  if (!v36)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v23, v146, v154, v156, v158, v161, v162);
    v127 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v133, v140, v148);

LABEL_65:
    goto LABEL_45;
  }

  if (!v181)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v23, v146, v154, v156, v158, v161, v162);
    v127 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v134, v141, v149);

LABEL_64:
    goto LABEL_65;
  }

  if (!v40)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v23, v146, v154, v156, v158, v161, v162);
    v127 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v135, v142, v150);

LABEL_62:
    v131 = v181;
LABEL_63:

    goto LABEL_64;
  }

  if (!v180)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v23, v146, v154, v156, v158, v161, v162);
    v127 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v136, v143, v151);
    v129 = v179;
LABEL_61:

    goto LABEL_62;
  }

  if (!v179)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v23, v146, v154, v156, v158, v161, v162);
    v127 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v137, v144, v152);
LABEL_60:
    v129 = v180;
    goto LABEL_61;
  }

  if (objc_msgSend_count(v33, v45, v46, v47) <= 3)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v23, v146, v154, v156, v158, v161, v162);
    v130 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_2A18C2390, 4294954513, "<<<< Deep Fusion Processor(NRF) >>>>", 1494);
LABEL_59:
    v127 = v130;

    goto LABEL_60;
  }

  if (objc_msgSend_count(v181, v48, v49, v50) <= 3)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v23, v146, v154, v156, v158, v161, v162);
    v130 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_2A18C2390, 4294954513, "<<<< Deep Fusion Processor(NRF) >>>>", 1496);
    goto LABEL_59;
  }

  if (objc_msgSend_count(v180, v51, v52, v53) <= 3)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v23, v146, v154, v156, v158, v161, v162);
    v130 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_2A18C2390, 4294954513, "<<<< Deep Fusion Processor(NRF) >>>>", 1498);
    goto LABEL_59;
  }

  if (objc_msgSend_count(v179, v54, v55, v56) <= 3)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v23, v146, v154, v156, v158, v161, v162);
    v130 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_2A18C2390, 4294954513, "<<<< Deep Fusion Processor(NRF) >>>>", 1500);
    goto LABEL_59;
  }

  v57 = &OBJC_IVAR___DeepFusionFusion_slEv0;
  if (stationary)
  {
    v57 = &OBJC_IVAR___DeepFusionFusion_slEv0Long;
  }

  v58 = *&v36[*v57];
  v59 = &OBJC_IVAR___DeepFusionFusionData_noSifrBands;
  if (realLong)
  {
    v59 = &OBJC_IVAR___DeepFusionFusionData_sifrBands;
  }

  v177 = v58;
  v60 = *(v58 + *v59);
  if (!v60)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v23, v146, v154, v156, v158, v161, v162);
    v127 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v138, v145, v153);

    v131 = v177;
    goto LABEL_63;
  }

  v61 = v60;
  rCopy = r;
  v155 = v36;
  v157 = v32;
  v168 = sub_29584472C(v40[1], self);
  v62 = sub_29584472C(v40[2], self);
  v171 = sub_29584472C(v40[3], self);
  v65 = 0;
  v66 = 0;
  v159 = 0;
  v166 = *(MEMORY[0x29EDCA928] + 16);
  v167 = *MEMORY[0x29EDCA928];
  v165 = *(MEMORY[0x29EDCA928] + 32);
  if (realLong)
  {
    v67 = 1;
  }

  else
  {
    v67 = 2;
  }

  v160 = v67;
  v164 = vmovn_s64(max);
  v163 = 1.0 / (v62 * v62);
  realLongCopy = realLong;
  do
  {
    v219 = 0;
    v220 = 0;
    v216 = 0;
    v217 = 0;
    v218 = 0;
    v214 = 0u;
    v215 = 0u;
    v68 = objc_msgSend_objectAtIndexedSubscript_(v178, v63, v66, v64);
    v71 = objc_msgSend_objectAtIndexedSubscript_(v181, v69, v66, v70);
    v74 = objc_msgSend_objectAtIndexedSubscript_(v180, v72, v66, v73);
    v77 = objc_msgSend_objectAtIndexedSubscript_(v179, v75, v66, v76);
    v78 = sub_29584472C(v71[1], self);
    v79 = sub_29584472C(v71[2], self);
    v80 = sub_29584472C(v71[3], self);
    v81 = sub_29584472C(v71[4], self);
    if (v78 >= v79)
    {
      sub_295888B58(v221);
      goto LABEL_42;
    }

    v82 = v81;
    if (v80 >= v81)
    {
      sub_295888ABC(v221);
      goto LABEL_42;
    }

    v83 = 0.0;
    if (v65)
    {
      v84 = 0.0;
    }

    else
    {
      v84 = v171;
    }

    v85 = sub_29584472C(v68[7], self);
    *&v86 = sub_29584472C(v68[2], self);
    v212 = v86;
    v201 = sub_29584472C(v68[3], self);
    v199 = sub_29584472C(v68[3], self);
    *&v87 = sub_29584472C(v68[8], self);
    v209 = v87;
    v197 = sub_29584472C(v68[9], self);
    v195 = sub_29584472C(v68[9], self);
    *&v88 = sub_29584472C(v68[4], self);
    v207 = v88;
    v193 = sub_29584472C(v68[5], self);
    v191 = sub_29584472C(v68[5], self);
    v203 = sub_29584472C(v68[6], self);
    v206 = v78;
    v205 = v80;
    v204 = v82;
    if (!v65 && sub_29584472C(v68[1], self) > 0.1)
    {
      v83 = sub_29584472C(v68[10], self);
      v126 = sub_29584472C(v68[11], self);
      if (v83 < v126)
      {
        v188 = v126;
        v189 = v160;
        *v91.i32 = 1.0 / sub_29584472C(v68[12], self);
        goto LABEL_30;
      }

      sub_295888A20(v221);
LABEL_42:
      v159 = v221[0];
      v122 = 1;
      goto LABEL_34;
    }

    v189 = 0;
    v91.i32[0] = 0;
    v188 = 0.0;
LABEL_30:
    v182 = v91.i32[0];
    v190 = v84;
    v91.i64[0] = 0;
    v92.i64[0] = v65;
    v93 = vdupq_lane_s64(vceqq_s64(v92, v91).i64[0], 0);
    v187 = vbslq_s8(v93, a19, v167);
    v186 = vbslq_s8(v93, a20, v166);
    v185 = vbslq_s8(v93, a21, v165);
    v184 = vbslq_s8(v93, a22, v167);
    v183 = vbslq_s8(v93, a23, v166);
    v94 = v212;
    *(&v94 + 1) = v201;
    *(&v94 + 2) = v199;
    v213 = v94;
    v95 = v209;
    *(&v95 + 1) = v197;
    *(&v95 + 2) = v195;
    v210 = v95;
    v96 = v207;
    *(&v96 + 1) = v193;
    *(&v96 + 2) = v191;
    v208 = v96;
    v202 = vbslq_s8(v93, v222, v165);
    v97 = v177[2] >= a2;
    v98 = objc_msgSend_objectAtIndexedSubscript_(v61, v89, v66, v90);
    v200 = sub_29584472C(v98[2], self);

    v101 = objc_msgSend_objectAtIndexedSubscript_(v61, v99, v66, v100);
    v198 = sub_29584472C(v101[3], self);

    v104 = objc_msgSend_objectAtIndexedSubscript_(v61, v102, v66, v103);
    v196 = sub_29584472C(v104[5], self);

    v107 = objc_msgSend_objectAtIndexedSubscript_(v61, v105, v66, v106);
    v194 = sub_29584472C(v107[4], self);

    v110 = objc_msgSend_objectAtIndexedSubscript_(v61, v108, v66, v109);
    v192 = sub_29584472C(v110[1], self);

    v113 = objc_msgSend_objectAtIndexedSubscript_(v61, v111, v66, v112);
    LODWORD(v110) = *(v113[6] + 8);

    if (v110 < 1)
    {
      v117 = 1.0;
    }

    else
    {
      v116 = objc_msgSend_objectAtIndexedSubscript_(v61, v114, v66, v115);
      v117 = sub_29584472C(v116[6], self);
    }

    v118 = sub_29584472C(v74[1], self);
    v119 = sub_29584472C(v77[2], self);
    v120 = sub_29584472C(v77[1], self);
    v121 = sub_29584472C(v77[3], self);
    v122 = 0;
    v123 = rCopy + v65;
    *(rCopy + v65 + 8) = DWORD2(v213);
    *v123 = v213;
    *(v123 + 16) = v85;
    *(v123 + 40) = DWORD2(v208);
    *(v123 + 32) = v208;
    *(v123 + 84) = 0u;
    *(v123 + 48) = v203;
    *(v123 + 72) = DWORD2(v210);
    *(v123 + 64) = v210;
    v124 = v215;
    *(v123 + 84) = v214;
    *(v123 + 100) = 0u;
    *(v123 + 100) = v124;
    *(v123 + 124) = (1 << v66);
    *(v123 + 132) = v83;
    *(v123 + 136) = v188;
    *(v123 + 140) = v182;
    *(v123 + 148) = v200;
    *(v123 + 152) = v198;
    *(v123 + 156) = v196;
    *(v123 + 160) = v194;
    *(v123 + 164) = v192;
    *(v123 + 168) = v117;
    *(v123 + 192) = v206;
    *(v123 + 196) = v79;
    *(v123 + 200) = v205;
    *(v123 + 204) = v204;
    *(v123 + 224) = v187;
    *(v123 + 240) = v186;
    *(v123 + 256) = v185;
    *(v123 + 272) = v184;
    *(v123 + 288) = v183;
    *(v123 + 304) = v202;
    *(v123 + 320) = v118;
    *(v123 + 324) = v120;
    *(v123 + 328) = v119;
    *(v123 + 332) = v121;
    *(v123 + 216) = v163;
    *(v123 + 220) = v190;
    *(v123 + 116) = 0;
    *(v123 + 20) = v219;
    *(v123 + 28) = v220;
    *(v123 + 52) = v217;
    *(v123 + 60) = v218;
    *(v123 + 116) = v216;
    *(v123 + 12) = 0;
    *(v123 + 44) = 0;
    *(v123 + 76) = 0;
    *(v123 + 80) = v66;
    *(v123 + 128) = v189;
    *(v123 + 144) = v97;
    *(v123 + 145) = 0;
    *(v123 + 147) = 0;
    *(v123 + 172) = uniforms;
    *(v123 + 176) = realLongCopy;
    *(v123 + 177) = 0;
    *(v123 + 179) = 0;
    *(v123 + 182) = v164.i16[2];
    *(v123 + 180) = v164.i16[0];
    *(v123 + 184) = gain;
    *(v123 + 188) = score;
    *(v123 + 208) = bounds;
    *(v123 + 212) = v168;
LABEL_34:

    if (v122)
    {
      break;
    }

    ++v66;
    v125 = v65 == 1008;
    v65 += 336;
  }

  while (!v125);

  v32 = v157;
  v127 = v159;
LABEL_45:

  return v127;
}

- (int)computeAMBNRDenoiseBoostMap:(id)map boostMap:(id)boostMap longFusionMap:(id)fusionMap ev0FusionMap:(id)ev0FusionMap ev0Metadata:(frameMetadata *)metadata longMetadata:(frameMetadata *)longMetadata numEV0:(int)v0 ev0FusionTarget:(float)self0 longFusionTarget:(float)self1
{
  boostMapCopy = boostMap;
  fusionMapCopy = fusionMap;
  ev0FusionMapCopy = ev0FusionMap;
  fusionTargetCopy = fusionTarget;
  targetCopy = target;
  v74 = longMetadata->exposureParams.exposure_time / metadata->exposureParams.exposure_time;
  v22 = self->_shaders->_kernelComputeDenoiseBoostMap;
  mapCopy = map;
  v27 = objc_msgSend_threadExecutionWidth(v22, v24, v25, v26);
  v31 = objc_msgSend_maxTotalThreadsPerThreadgroup(v22, v28, v29, v30);
  v35 = objc_msgSend_threadExecutionWidth(v22, v32, v33, v34);

  v39 = objc_msgSend_commandBuffer(mapCopy, v36, v37, v38);

  if (!v39)
  {
    sub_295888DC8(v73);
LABEL_7:
    v70 = v73[0];
    goto LABEL_4;
  }

  v43 = objc_msgSend_computeCommandEncoder(v39, v40, v41, v42);
  if (!v43)
  {
    sub_295888D2C(v73);
    goto LABEL_7;
  }

  v46 = v43;
  objc_msgSend_setLabel_(v43, v44, @"_shaders->_kernelComputeDenoiseBoostMap", v45);
  objc_msgSend_setComputePipelineState_(v46, v47, self->_shaders->_kernelComputeDenoiseBoostMap, v48);
  objc_msgSend_setTexture_atIndex_(v46, v49, fusionMapCopy, 0);
  objc_msgSend_setTexture_atIndex_(v46, v50, ev0FusionMapCopy, 1);
  objc_msgSend_setTexture_atIndex_(v46, v51, boostMapCopy, 2);
  objc_msgSend_setBytes_length_atIndex_(v46, v52, &v74, 4, 0);
  objc_msgSend_setBytes_length_atIndex_(v46, v53, &v0, 4, 1);
  objc_msgSend_setBytes_length_atIndex_(v46, v54, &targetCopy, 4, 2);
  objc_msgSend_setBytes_length_atIndex_(v46, v55, &fusionTargetCopy, 4, 3);
  objc_msgSend_setBytes_length_atIndex_(v46, v56, &self->_networkVersion, 4, 4);
  v73[0] = objc_msgSend_width(boostMapCopy, v57, v58, v59);
  v73[1] = objc_msgSend_height(boostMapCopy, v60, v61, v62);
  v73[2] = 1;
  v72[0] = v27;
  v72[1] = v31 / v35;
  v72[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v46, v63, v73, v72);
  objc_msgSend_endEncoding(v46, v64, v65, v66);
  objc_msgSend_commit(v39, v67, v68, v69);

  v70 = 0;
LABEL_4:

  return v70;
}

@end