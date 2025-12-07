@interface FusionRemixStage
+ (BOOL)isSupported;
+ (int)prewarmShaders:(id)shaders;
- (SidecarWriter)sidecarWriter;
- (id)initBandFusion:(id)fusion nrfConfig:(id)config isPrewarm:(BOOL)prewarm;
- (int)computeFusionParams:(id)params properties:(const frameProperties_t *)properties config:(const FusionConfiguration *)config fusionMode:(int)mode staticScene:(BOOL)scene isLowLight:(BOOL)light;
- (int)computeGrayGhostCount:(id)count ev0Bands:(id)bands evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties atBand:(int)band nrfPlist:(id)plist size:(int *)size;
- (int)correctGTC:(id)c;
- (int)detectFlicker:(id)flicker ev0Bands:(id)bands evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties height:(int *)height;
- (int)prepareForFusion:(id)fusion config:(const FusionConfiguration *)config fusedPyramid:(id)pyramid properties:(const frameProperties_t *)properties nrfPlist:(id)plist staticScene:(BOOL)scene isLowLight:(BOOL)light;
- (int)runFusionForBandIndex:(int)index config:(const FusionConfiguration *)config oldFusedUpTex:(id)tex oldFusedTex:(id)fusedTex fusedUpTex:(id)upTex fusedTex:(id)a8 accWeightTex:(id)weightTex bandFusionParams:(const FusionRemixStageUniformsIBP *)self0 fragmentBufferIndex:(int)self1 processLuma:(BOOL)self2 processTopBand:(BOOL)self3 computeSpecialMap:(int)self4 inputs:(id)self5 simMapTex:(id)self6 confidence:(id)self7 noiseMap:(id)self8 batchN:(int)self9 isFirstBatch:(BOOL)batch isLastBatch:(BOOL)lastBatch usePatchBasedFusion:(BOOL)fusion minVarWeightSum:(float)sum outputChromaBias:(float)bias ggMaxFusionWeights:(id)weights;
- (int)runImageFusion:(id)fusion config:(const FusionConfiguration *)config fusedPyramid:(id)pyramid accWeightPyramid:(id)weightPyramid buffers:(id)buffers properties:(const frameProperties_t *)properties nrfPlist:(id)plist confidence:(id)self0 batchN:(int)self1 isLastBatch:(BOOL)self2 isLowLight:(BOOL)self3 usePatchBasedFusion:(BOOL)self4 outputChromaBias:(float)self5;
- (int)runStationaryFusionWithParams:(const FusionRemixStageUniformsIBP *)params inputs:(id)inputs fusedLumaTex:(id)tex fusedChromaTex:(id)chromaTex noiseMapLumaTex:(id)lumaTex noiseMapChromaTex:(id)mapChromaTex accWeightLumaTex:(id)weightLumaTex accWeightChromaTex:(id)self0 inferenceLumaTex:(id)self1 inferenceChromaTex:(id)self2 batchN:(int)self3;
- (int)selectNRFFusionReferenceFrame:(id)frame ev0Bands:(id)bands evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties nrfPlist:(id)plist outputFusionMode:(int *)mode staticScene:(BOOL *)scene motionDetection:(id)self0 grayGhostDetection:(id)self1;
@end

@implementation FusionRemixStage

+ (BOOL)isSupported
{
  v4 = objc_msgSend_metalDevice(MEMORY[0x29EDC0A40], a2, v2, v3);
  v7 = objc_msgSend_supportsFamily_(v4, v5, 1003, v6);

  return v7;
}

- (id)initBandFusion:(id)fusion nrfConfig:(id)config isPrewarm:(BOOL)prewarm
{
  fusionCopy = fusion;
  configCopy = config;
  v93.receiver = self;
  v93.super_class = FusionRemixStage;
  v11 = [(FusionRemixStage *)&v93 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_32;
  }

  objc_storeStrong(&v11->_metal, fusion);
  objc_storeStrong(&v12->_nrfConfig, config);
  v13 = objc_opt_new();
  if (!v13)
  {
    sub_2958C5CA8();
    goto LABEL_32;
  }

  v16 = v13;
  objc_msgSend_setStorageMode_(v13, v14, 0, v15);
  objc_msgSend_setHazardTrackingMode_(v16, v17, 2, v18);
  objc_msgSend_setSize_(v16, v19, 51200, v20);
  v24 = objc_msgSend_device(fusionCopy, v21, v22, v23);
  v27 = objc_msgSend_newHeapWithDescriptor_(v24, v25, v16, v26);
  uniformsHeap = v12->_uniformsHeap;
  v12->_uniformsHeap = v27;

  if (!v12->_uniformsHeap)
  {
    sub_2958C5C0C(v16);
    goto LABEL_32;
  }

  v29 = objc_opt_new();
  if (!v29)
  {
    sub_2958C5B70(v16);
    goto LABEL_32;
  }

  v33 = v29;
  v34 = objc_msgSend_resourceOptions(v12->_uniformsHeap, v30, v31, v32);
  objc_msgSend_setResourceOptions_(v33, v35, v34, v36);
  if (prewarm)
  {
LABEL_16:
    v81 = objc_msgSend_computePipelineStateFor_constants_(fusionCopy, v37, @"computeGrayGhostCount", 0);
    computeGrayGhostCount = v12->_computeGrayGhostCount;
    v12->_computeGrayGhostCount = v81;

    if (!v12->_computeGrayGhostCount)
    {
      sub_2958C5AD0();
      goto LABEL_32;
    }

    v84 = objc_msgSend_computePipelineStateFor_constants_(fusionCopy, v83, @"detectFlicker", 0);
    detectFlicker = v12->_detectFlicker;
    v12->_detectFlicker = v84;

    if (!v12->_detectFlicker)
    {
      sub_2958C5A30();
      goto LABEL_32;
    }

    v87 = objc_msgSend_computePipelineStateFor_constants_(fusionCopy, v86, @"correctGTC", 0);
    correctGTC = v12->_correctGTC;
    v12->_correctGTC = v87;

    if (!v12->_correctGTC)
    {
      sub_2958C5990();
      goto LABEL_32;
    }

    objc_msgSend_prewarmInternalMetalShadersForFormatsList_(v12->_metal, v89, &unk_2A1CC4528, v90);
    v45 = v12;

    goto LABEL_33;
  }

  v92 = configCopy;
  v40 = 0;
  v41 = 1;
  do
  {
    v42 = v41;
    v43 = objc_msgSend_sharedInstance(FusionRemixStageShared, v37, v38, v39);
    v45 = objc_msgSend_getShaders_fp16_(v43, v44, v12->_metal, v40 & 1);

    if (!v45)
    {
      sub_2958C58F0();
LABEL_22:
      configCopy = v92;
      goto LABEL_33;
    }

    v41 = 0;
    v40 = 1;
  }

  while ((v42 & 1) != 0);
  v46 = 0;
  uniforms = v12->_uniforms;
  do
  {
    v48 = [FusionRemixUniforms alloc];
    v50 = objc_msgSend_initWithMetal_heap_(v48, v49, fusionCopy, v12->_uniformsHeap);
    v51 = uniforms[v46];
    uniforms[v46] = v50;

    if (!uniforms[v46])
    {
      sub_2958C5850();
      v45 = 0;
      goto LABEL_22;
    }

    ++v46;
  }

  while (v46 != 10);
  v45 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v52, 10, 1, 1, 0);

  if (!v45)
  {
    sub_2958C57B4(v16);
    goto LABEL_22;
  }

  objc_msgSend_setUsage_(v45, v53, 1, v54);
  v58 = objc_msgSend_resourceOptions(v12->_uniformsHeap, v55, v56, v57);
  objc_msgSend_setResourceOptions_(v45, v59, v58, v60);
  v63 = objc_msgSend_newTextureWithDescriptor_(v12->_uniformsHeap, v61, v45, v62);
  placeHolderTex = v12->_placeHolderTex;
  v12->_placeHolderTex = v63;

  v65 = v12->_uniformsHeap;
  v69 = objc_msgSend_resourceOptions(v65, v66, v67, v68);
  v71 = objc_msgSend_newBufferWithLength_options_(v65, v70, 4, v69);
  grayGhostCountBuffer = v12->_grayGhostCountBuffer;
  v12->_grayGhostCountBuffer = v71;

  configCopy = v92;
  if (v12->_grayGhostCountBuffer)
  {
    v76 = v12->_uniformsHeap;
    v77 = objc_msgSend_resourceOptions(v76, v73, v74, v75);
    v79 = objc_msgSend_newBufferWithLength_options_(v76, v78, 4, v77);
    flickerCountBuffer = v12->_flickerCountBuffer;
    v12->_flickerCountBuffer = v79;

    if (v12->_flickerCountBuffer)
    {
      v33 = v45;
      goto LABEL_16;
    }

    sub_2958C5674();
  }

  else
  {
    sub_2958C5714();
  }

LABEL_32:
  v45 = 0;
LABEL_33:

  return v45;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v4 = [FuseRemixShaders alloc];
  v6 = objc_msgSend_initWithMetal_pixelFormatLuma_pixelFormatChroma_(v4, v5, shadersCopy, 25, 65);
  v7 = [FuseRemixShaders alloc];
  v9 = objc_msgSend_initWithMetal_pixelFormatLuma_pixelFormatChroma_(v7, v8, shadersCopy, 10, 30);

  v10 = [FusionRemixStage alloc];
  isPrewarm = objc_msgSend_initBandFusion_nrfConfig_isPrewarm_(v10, v11, shadersCopy, 0, 1);

  v16 = objc_msgSend_device(shadersCopy, v13, v14, v15);
  v18 = objc_msgSend_newBufferWithLength_options_(v16, v17, 1024, 0);

  if (v18)
  {
    v22 = objc_msgSend_commandQueue(shadersCopy, v19, v20, v21);
    v26 = objc_msgSend_commandBuffer(v22, v23, v24, v25);

    objc_msgSend_setLabel_(v26, v27, @"FusionRemixStage.prewarmShaders", v28);
    if (v26)
    {
      v35 = objc_msgSend_blitCommandEncoder(v26, v29, v30, v31);
      if (v35)
      {
        v36 = objc_msgSend_length(v18, v32, v33, v34);
        objc_msgSend_fillBuffer_range_value_(v35, v37, v18, 0, v36, 0);
        objc_msgSend_endEncoding(v35, v38, v39, v40);
        objc_msgSend_commit(v26, v41, v42, v43);
      }
    }
  }

  if (v6)
  {
    v44 = v9 == 0;
  }

  else
  {
    v44 = 1;
  }

  if (v44 || isPrewarm == 0)
  {
    v46 = -12786;
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

- (int)computeFusionParams:(id)params properties:(const frameProperties_t *)properties config:(const FusionConfiguration *)config fusionMode:(int)mode staticScene:(BOOL)scene isLowLight:(BOOL)light
{
  lightCopy = light;
  sceneCopy = scene;
  paramsCopy = params;
  v15 = 0;
  v16 = properties + 224224 * SLODWORD(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale);
  v17 = v16 + 16;
  v18 = (v16 + 112);
  if (!lightCopy)
  {
    v18 = v17;
  }

  v19 = *v18;
  arrayOfinputParams = self->_arrayOfinputParams;
  v20 = properties + 224224 * SLODWORD(config[4].colorSpaceConversionParameters[1].finalScale);
  v70 = !lightCopy;
  do
  {
    v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(paramsCopy + 3) + 8), v12, v15, v13);
    v22 = (&arrayOfinputParams->config.preWarpEnabled + 3040 * v15);
    v23 = &arrayOfinputParams->config.preWarpEnabled + 1520 * ((2 * v15) | 1);
    v24 = sub_29584472C(v21[1], v19);
    *(v23 + 336) = v24;
    v22[336] = v24;
    *(v23 + 337) = sub_29584472C(v21[2], v19);
    v22[337] = sub_29584472C(v21[3], v19);
    *(v23 + 338) = *(*(paramsCopy + 3) + 136);
    *(v23 + 341) = sub_29584472C(v21[4], v19);
    v28 = *(paramsCopy + 15);
    if (v28)
    {
      objc_msgSend_tuningParams(v28, v25, v26, v27);
      v29 = v77;
    }

    else
    {
      v29 = 0;
    }

    *(v22 + 377) = v29;
    *(v23 + 377) = v29;
    v30 = v21[5];
    v73 = v15;
    v74 = v21;
    if (mode == 2)
    {
      v31 = sub_29584472C(*(*(v30 + 16) + 8), v19);
      *(v23 + 342) = v31;
      v22[342] = v31;
      v32 = sub_29584472C(*(*(v21[5] + 16) + 24), v19);
      *(v23 + 343) = v32;
      v22[343] = v32;
      v22[344] = sub_29584472C(*(*(v21[7] + 16) + 8), v19);
      v22[345] = sub_29584472C(*(*(v21[7] + 16) + 24), v19);
      v33 = v21;
      v34 = sub_29584472C(*(*(v21[6] + 16) + 8), v19);
      v35 = &OBJC_IVAR___PerReferenceBandata_evm;
    }

    else
    {
      v36 = sub_29584472C(*(*(v30 + 8) + 8), v19);
      *(v23 + 342) = v36;
      v22[342] = v36;
      v37 = sub_29584472C(*(*(v21[5] + 8) + 24), v19);
      *(v23 + 343) = v37;
      v22[343] = v37;
      v22[344] = sub_29584472C(*(*(v21[7] + 8) + 8), v19);
      v22[345] = sub_29584472C(*(*(v21[7] + 8) + 24), v19);
      v38 = *(v21[6] + 8);
      if (sceneCopy)
      {
        v39 = *(v38 + 16);
        if (!v39)
        {
          sub_2958C5D3C();
          v67 = v75;
          goto LABEL_36;
        }
      }

      else
      {
        v39 = *(v38 + 8);
      }

      v34 = sub_29584472C(v39, v19);
      v35 = &OBJC_IVAR___PerReferenceBandata_ev0;
      v33 = v21;
    }

    *(v23 + 344) = v34;
    *(v23 + 345) = sub_29584472C(*(*(v33[6] + *v35) + 24), v19);
    v40 = *(paramsCopy + 3);
    v41 = *(v40 + 88);
    if (v41)
    {
      *(*(paramsCopy + 3) + 80) = sub_29584472C(v41, v19);
      v40 = *(paramsCopy + 3);
    }

    v42 = &arrayOfinputParams->config.preWarpEnabled + 3040 * v15;
    v43 = *(v40 + 80);
    *(v23 + 364) = v43;
    *(v22 + 364) = v43;
    v44 = *(*(*(paramsCopy + 2) + 8) + 32);
    v45 = 0.0;
    v46 = 0.0;
    if (*(v44 + 8) >= 1)
    {
      v46 = sub_29584472C(v44, v19);
    }

    *(v23 + 339) = v46;
    v47 = *(*(*(paramsCopy + 2) + 8) + 40);
    if (*(v47 + 8) >= 1)
    {
      v45 = sub_29584472C(v47, v19);
    }

    *(v23 + 340) = v45;
    if (!v15)
    {
      v48 = *(paramsCopy + 3);
      if (*(v48 + 120))
      {
        *(v23 + 369) = sub_29584472C(*(*(v48 + 128) + 8), v19);
        *(v23 + 370) = sub_29584472C(*(*(*(paramsCopy + 3) + 128) + 16), v19);
        *(v23 + 371) = sub_29584472C(*(*(*(paramsCopy + 3) + 128) + 24), v19);
        *(v23 + 372) = sub_29584472C(*(*(*(paramsCopy + 3) + 128) + 32), v19);
        *(v23 + 373) = sub_29584472C(*(*(*(paramsCopy + 3) + 128) + 40), v19);
        *(v23 + 374) = sub_29584472C(*(*(*(paramsCopy + 3) + 128) + 48), v19);
        *(v23 + 375) = sub_29584472C(*(*(*(paramsCopy + 3) + 128) + 56), v19);
        v42 = &arrayOfinputParams->config.preWarpEnabled + 3040 * v15;
        *(v23 + 376) = sub_29584472C(*(*(*(paramsCopy + 3) + 128) + 64), v19);
      }
    }

    v75 = 0uLL;
    v76 = 0;
    sub_2958133B0(&v75, *(paramsCopy + 4), &properties->meta.exposureParams + 224224 * SLODWORD(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale), v15);
    v49 = sub_295820728((v20 + 16), &properties->meta.exposureParams + 224224 * SLODWORD(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale), v20);
    nonLinearBias_low = LOBYTE(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.nonLinearBias);
    if ((v70 | nonLinearBias_low))
    {
      if (nonLinearBias_low)
      {
        goto LABEL_28;
      }

      linearScale = config[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale;
    }

    else
    {
      linearScale = config[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale;
      if (!*(&properties->meta.exposureParams.hr_enabled + 224224 * SLODWORD(linearScale)))
      {
        goto LABEL_28;
      }
    }

    v49 = (v49 * sqrtf(*(&properties->meta.exposureParams.hard_gain + 56056 * SLODWORD(linearScale)) / *(&properties->meta.exposureParams.gain + 56056 * SLODWORD(linearScale)))) / sqrtf(*(&properties->meta.exposureParams.hr_gain_down_ratio + 56056 * SLODWORD(linearScale)));
LABEL_28:
    sub_295813774(&v75, v49);
    v52 = v75;
    *(v42 + 1384) = v75;
    v53 = v76;
    *(v42 + 175) = v76;
    *(v23 + 1384) = v52;
    *(v23 + 175) = v53;
    memcpy(v42, config, 0x540uLL);
    memmove(v23, config, 0x540uLL);
    if (SLODWORD(config[4].colorSpaceConversionParameters[1].finalScaleFwd) >= 1)
    {
      v54 = 0;
      v55 = 2944;
      propertiesCopy = properties;
      do
      {
        v57 = sub_295820728((v20 + 16), &propertiesCopy->meta.exposureParams, v20);
        v58 = (self + 4 * v54);
        v58[356] = v57;
        v59 = (self + v55);
        *v59 = v57;
        exposure_time = propertiesCopy->meta.exposureParams.exposure_time;
        v58[364] = exposure_time;
        v59[8] = exposure_time;
        v61 = &OBJC_IVAR___DenoiseAndSharpeningTuning_shortFrameDenoiseBoost;
        if (v54 == *&config[4].colorSpaceConversionParameters[1].outputToLinearYCbCr || (v62 = 1.0, v61 = &OBJC_IVAR___DenoiseAndSharpeningTuning_ev0FrameDenoiseBoost, v54 != LODWORD(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearThreshold)))
        {
          v62 = sub_29584472C(*(*(*(paramsCopy + 2) + 8) + *v61), v19);
        }

        v63 = v62 * powf(*(&properties->meta.exposureParams.exposure_time + 56056 * SLODWORD(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale)) / propertiesCopy->meta.exposureParams.exposure_time, 0.25);
        v64 = (self + v55);
        v64[4] = v63;
        v58[360] = v63;
        v65 = *&propertiesCopy[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].BG.highlights;
        *(v64 + 13) = v65;
        *(v58 + 369) = v65;
        ++v54;
        propertiesCopy = (propertiesCopy + 224224);
        v55 += 4;
      }

      while (v54 < SLODWORD(config[4].colorSpaceConversionParameters[1].finalScaleFwd));
    }

    v15 = v73 + 1;
    self = (self + 3040);
  }

  while (v73 != 3);
  v67 = 0;
LABEL_36:

  return v67;
}

- (int)detectFlicker:(id)flicker ev0Bands:(id)bands evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties height:(int *)height
{
  flickerCopy = flicker;
  bandsCopy = bands;
  v17 = objc_msgSend_commandQueue(self->_metal, v14, v15, v16);
  v21 = objc_msgSend_commandBuffer(v17, v18, v19, v20);

  if (!v21)
  {
    sub_2958C5E78(&v65);
LABEL_7:
    v60 = v65;
    goto LABEL_4;
  }

  v25 = objc_msgSend_computeCommandEncoder(v21, v22, v23, v24);
  if (!v25)
  {
    sub_2958C5DDC(&v65);
    goto LABEL_7;
  }

  v28 = v25;
  objc_msgSend_setComputePipelineState_(v25, v26, self->_detectFlicker, v27);
  v29 = flickerCopy[45];
  v62 = bandsCopy[45];
  v30 = v29;
  objc_msgSend_setTexture_atIndex_(v28, v31, v30, 0);
  objc_msgSend_setTexture_atIndex_(v28, v32, v62, 1);
  objc_msgSend_setBytes_length_atIndex_(v28, v33, &properties[1].meta.exposureParams.conversion_gain, 48, 0);
  objc_msgSend_setBytes_length_atIndex_(v28, v34, &ev0Properties[1].meta.exposureParams.conversion_gain, 48, 1);
  v68 = sub_295820728(&properties->meta.exposureParams, &ev0Properties->meta.exposureParams, properties);
  objc_msgSend_setBytes_length_atIndex_(v28, v35, &v68, 4, 2);
  *height = objc_msgSend_height(v30, v36, v37, v38);
  v42 = objc_msgSend_width(v30, v39, v40, v41);
  v46 = objc_msgSend_height(v30, v43, v44, v45);
  *&v47 = 0;
  *(&v47 + 1) = __PAIR64__(v46, v42);
  v67 = v47;
  objc_msgSend_setBytes_length_atIndex_(v28, v48, &v67, 16, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v49, self->_flickerCountBuffer, 0, 4);
  v64 = 1;
  v65 = objc_msgSend_height(v30, v50, v51, v52);
  v66 = vdupq_n_s64(1uLL);
  v63 = xmmword_2958D5BB0;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v28, v53, &v65, &v63);
  objc_msgSend_endEncoding(v28, v54, v55, v56);
  objc_msgSend_commit(v21, v57, v58, v59);

  v60 = 0;
LABEL_4:

  return v60;
}

- (int)computeGrayGhostCount:(id)count ev0Bands:(id)bands evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties atBand:(int)band nrfPlist:(id)plist size:(int *)size
{
  countCopy = count;
  bandsCopy = bands;
  plistCopy = plist;
  v21 = objc_msgSend_commandQueue(self->_metal, v18, v19, v20);
  v25 = objc_msgSend_commandBuffer(v21, v22, v23, v24);

  if (!v25)
  {
    sub_2958C6118(v97);
LABEL_11:
    v90 = v97[0];
    goto LABEL_6;
  }

  v29 = objc_msgSend_computeCommandEncoder(v25, v26, v27, v28);
  if (!v29)
  {
    sub_2958C607C(v97);
    goto LABEL_11;
  }

  v32 = v29;
  objc_msgSend_setComputePipelineState_(v29, v30, self->_computeGrayGhostCount, v31);
  if (!properties->meta.isEVMFrame)
  {
    sub_2958C5F14(v32, v97);
    goto LABEL_11;
  }

  if (ev0Properties->meta.isEVMFrame)
  {
    sub_2958C5FC8(v32, v97);
    goto LABEL_11;
  }

  v92 = v25;
  v33 = plistCopy;
  v34 = countCopy[band + 42];
  v35 = countCopy[band + 62];
  v94 = countCopy;
  v36 = bandsCopy[band + 42];
  v37 = bandsCopy[band + 62];
  v38 = v36;
  v39 = v35;
  v93 = bandsCopy;
  v40 = v34;
  objc_msgSend_setTexture_atIndex_(v32, v41, v40, 0);
  objc_msgSend_setTexture_atIndex_(v32, v42, v39, 1);
  objc_msgSend_setTexture_atIndex_(v32, v43, v38, 2);
  objc_msgSend_setTexture_atIndex_(v32, v44, v37, 3);
  objc_msgSend_setBytes_length_atIndex_(v32, v45, &properties[1].meta.exposureParams.conversion_gain, 48, 0);
  objc_msgSend_setBytes_length_atIndex_(v32, v46, &ev0Properties[1].meta.exposureParams.conversion_gain, 48, 1);
  v101 = sub_295820728(&properties->meta.exposureParams, &ev0Properties->meta.exposureParams, properties);
  objc_msgSend_setBytes_length_atIndex_(v32, v47, &v101, 4, 2);
  v48 = v33[3];
  LODWORD(v49) = v48[9];
  HIDWORD(v49) = v48[8];
  v100 = v48[10];
  v99 = v49;
  objc_msgSend_setBytes_length_atIndex_(v32, v50, &v99, 16, 3);
  v54 = objc_msgSend_width(v37, v51, v52, v53);
  v58 = objc_msgSend_width(v37, v55, v56, v57);
  v62 = objc_msgSend_height(v37, v59, v60, v61);
  v66 = objc_msgSend_height(v37, v63, v64, v65);
  v67.i64[0] = v62;
  plistCopy = v33;
  v25 = v92;
  v67.i64[1] = v66;
  v68.i64[0] = v54;
  v68.i64[1] = v58;
  v98 = vcvtq_u32_f32(vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v68)), vcvtq_f64_u64(v67)), xmmword_2959D5F10));
  objc_msgSend_setBytes_length_atIndex_(v32, v69, &v98, 16, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v32, v70, self->_grayGhostCountBuffer, 0, 5);
  v97[0] = (objc_msgSend_width(v37, v71, v72, v73) + 7) >> 3;
  v97[1] = (objc_msgSend_height(v37, v74, v75, v76) + 7) >> 3;
  v97[2] = 1;
  v95 = vdupq_n_s64(8uLL);
  v96 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v32, v77, v97, &v95);
  objc_msgSend_endEncoding(v32, v78, v79, v80);
  objc_msgSend_commit(v92, v81, v82, v83);
  LODWORD(v54) = objc_msgSend_width(v38, v84, v85, v86);
  *size = objc_msgSend_height(v38, v87, v88, v89) * v54;

  bandsCopy = v93;
  countCopy = v94;

  v90 = 0;
LABEL_6:

  return v90;
}

- (int)runFusionForBandIndex:(int)index config:(const FusionConfiguration *)config oldFusedUpTex:(id)tex oldFusedTex:(id)fusedTex fusedUpTex:(id)upTex fusedTex:(id)a8 accWeightTex:(id)weightTex bandFusionParams:(const FusionRemixStageUniformsIBP *)self0 fragmentBufferIndex:(int)self1 processLuma:(BOOL)self2 processTopBand:(BOOL)self3 computeSpecialMap:(int)self4 inputs:(id)self5 simMapTex:(id)self6 confidence:(id)self7 noiseMap:(id)self8 batchN:(int)self9 isFirstBatch:(BOOL)batch isLastBatch:(BOOL)lastBatch usePatchBasedFusion:(BOOL)fusion minVarWeightSum:(float)sum outputChromaBias:(float)bias ggMaxFusionWeights:(id)weights
{
  v31 = *&index;
  texCopy = tex;
  fusedTexCopy = fusedTex;
  upTexCopy = upTex;
  v315 = a8;
  weightTexCopy = weightTex;
  inputsCopy = inputs;
  mapTexCopy = mapTex;
  confidenceCopy = confidence;
  noiseMapCopy = noiseMap;
  v323[0] = sum;
  weightsCopy = weights;
  v322 = 0;
  v318 = objc_msgSend_renderPassDescriptor(MEMORY[0x29EDBB5F8], v33, v34, v35);
  if (!v318)
  {
    sub_2958C6A3C(v321);
    v317 = 0;
    v60 = 0;
    v47 = 0;
    v40 = 0;
    v232 = 0;
    v299 = v321[0];
    v267 = texCopy;
    v39 = fusedTexCopy;
LABEL_119:
    v264 = upTexCopy;
    v265 = mapTexCopy;
    v268 = weightTexCopy;
    goto LABEL_107;
  }

  v39 = fusedTexCopy;
  if (bufferIndex >= 10)
  {
    sub_2958C69A0(v321);
LABEL_113:
    v317 = 0;
    v60 = 0;
    v47 = 0;
LABEL_117:
    v40 = 0;
LABEL_118:
    v232 = 0;
    v299 = v321[0];
    v267 = texCopy;
    goto LABEL_119;
  }

  if (v31 >= 4)
  {
    sub_2958C6904(v321);
    goto LABEL_113;
  }

  v40 = v315;
  v44 = objc_msgSend_pixelFormat(v315, v36, v37, v38) == 25 || objc_msgSend_pixelFormat(v315, v41, v42, v43) == 65;
  v45 = objc_msgSend_sharedInstance(FusionRemixStageShared, v41, v42, v43);
  v47 = objc_msgSend_getShaders_fp16_(v45, v46, self->_metal, v44);

  if (!v47)
  {
    sub_2958C6868(v321);
LABEL_116:
    v317 = 0;
    v60 = 0;
    goto LABEL_117;
  }

  if (v31)
  {
    v49 = 0;
  }

  else
  {
    v49 = luma && fusion;
  }

  if (!config)
  {
    sub_2958C67CC(v321);
    goto LABEL_116;
  }

  if ((v31 == 0) == v49 || HIBYTE(config[1].colorSpaceConversionParameters[2].finalScaleFwd) != 1)
  {
    v55 = 0;
  }

  else
  {
    finalScaleFwd_low = LODWORD(config[4].colorSpaceConversionParameters[1].finalScaleFwd);
    if (finalScaleFwd_low < 1)
    {
      v55 = 1;
    }

    else
    {
      v51 = inputsCopy + 1;
      v52 = finalScaleFwd_low - 1;
      do
      {
        v53 = *v51++;
        v54 = *(v53 + 656);
        v55 = v54 != 0;
        v57 = v52-- != 0;
      }

      while (v54 && v57);
    }
  }

  if (v31)
  {
    v58 = 1;
  }

  else
  {
    v58 = weightsCopy == 0;
  }

  v59 = !v58;
  v302 = v59;
  HIBYTE(v301) = v59;
  LOBYTE(v301) = v55;
  v60 = objc_msgSend_getFragmentShader_bandIndex_isLuma_isFirstBatch_isLastBatch_usePatchBasedFusion_useGpuCSC_ggmEnabled_(FusionRemixStage, v48, v47, v31, v301);
  v317 = self->_uniforms[bufferIndex];
  if (!v315)
  {
    sub_2958C6730(v321);
    goto LABEL_118;
  }

  v308 = v60;
  v312 = v47;
  v64 = objc_msgSend_colorAttachments(v318, v61, v62, v63);
  v67 = objc_msgSend_objectAtIndexedSubscript_(v64, v65, 0, v66);
  objc_msgSend_setTexture_(v67, v68, v315, v69);

  if (v31)
  {
    v73 = !batch;
  }

  else
  {
    v73 = 1;
  }

  v74 = objc_msgSend_colorAttachments(v318, v70, v71, v72);
  v77 = objc_msgSend_objectAtIndexedSubscript_(v74, v75, 0, v76);
  objc_msgSend_setLoadAction_(v77, v78, v73, v79);

  v83 = objc_msgSend_colorAttachments(v318, v80, v81, v82);
  v86 = objc_msgSend_objectAtIndexedSubscript_(v83, v84, 0, v85);
  objc_msgSend_setStoreAction_(v86, v87, 1, v88);

  if (v31)
  {
    if (!batch)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (!noiseMapCopy)
    {
      sub_2958C6694(v321);
      v40 = 0;
      v232 = 0;
      v299 = v321[0];
      v268 = weightTexCopy;
      v267 = texCopy;
      v264 = upTexCopy;
      v265 = mapTexCopy;
      goto LABEL_131;
    }

    v92 = objc_msgSend_colorAttachments(v318, v89, v90, v91);
    v95 = objc_msgSend_objectAtIndexedSubscript_(v92, v93, 1, v94);
    objc_msgSend_setTexture_(v95, v96, noiseMapCopy, v97);

    v101 = objc_msgSend_colorAttachments(v318, v98, v99, v100);
    v104 = objc_msgSend_objectAtIndexedSubscript_(v101, v102, 1, v103);
    objc_msgSend_setLoadAction_(v104, v105, !batch, v106);

    v110 = objc_msgSend_colorAttachments(v318, v107, v108, v109);
    v113 = objc_msgSend_objectAtIndexedSubscript_(v110, v111, 1, v112);
    objc_msgSend_setStoreAction_(v113, v114, 1, v115);

    if (!batch)
    {
LABEL_40:
      v116 = objc_msgSend_allocator(self->_metal, v89, v90, v91);
      v120 = objc_msgSend_newTextureDescriptor(v116, v117, v118, v119);

      if (v120)
      {
        v124 = objc_msgSend_width(v315, v121, v122, v123);
        v128 = objc_msgSend_desc(v120, v125, v126, v127);
        objc_msgSend_setWidth_(v128, v129, v124, v130);

        v134 = objc_msgSend_height(v315, v131, v132, v133);
        v138 = objc_msgSend_desc(v120, v135, v136, v137);
        objc_msgSend_setHeight_(v138, v139, v134, v140);

        v144 = objc_msgSend_desc(v120, v141, v142, v143);
        objc_msgSend_setUsage_(v144, v145, 7, v146);

        if (luma)
        {
          v150 = 25;
        }

        else
        {
          v150 = 65;
        }

        v151 = objc_msgSend_desc(v120, v147, v148, v149);
        objc_msgSend_setPixelFormat_(v151, v152, v150, v153);

        objc_msgSend_setLabel_(v120, v154, 0, v155);
        v159 = objc_msgSend_allocator(self->_metal, v156, v157, v158);
        v162 = objc_msgSend_newTextureWithDescriptor_(v159, v160, v120, v161);
        v322 = v162;

        if (v162)
        {
          v166 = objc_msgSend_colorAttachments(v318, v163, v164, v165);
          v169 = objc_msgSend_objectAtIndexedSubscript_(v166, v167, 2, v168);
          v170 = v162;
          v171 = v169;
          v306 = v170;
          objc_msgSend_setTexture_(v169, v172, v170, v173);

          v177 = objc_msgSend_colorAttachments(v318, v174, v175, v176);
          v180 = objc_msgSend_objectAtIndexedSubscript_(v177, v178, 2, v179);
          objc_msgSend_setLoadAction_(v180, v181, 0, v182);

          v186 = objc_msgSend_colorAttachments(v318, v183, v184, v185);
          v189 = objc_msgSend_objectAtIndexedSubscript_(v186, v187, 2, v188);
          objc_msgSend_setStoreAction_(v189, v190, !lastBatch, v191);

          goto LABEL_46;
        }

        sub_2958C61B4(v321);
      }

      else
      {
        sub_2958C6250(v321);
      }

      v299 = v321[0];

      v40 = 0;
      v232 = 0;
      v268 = weightTexCopy;
      v267 = texCopy;
      v264 = upTexCopy;
      v265 = mapTexCopy;
LABEL_131:
      v39 = fusedTexCopy;
      v60 = v308;
      goto LABEL_107;
    }
  }

  if (!lastBatch)
  {
    goto LABEL_40;
  }

  v306 = 0;
LABEL_46:
  v39 = fusedTexCopy;
  if (v31 && !batch)
  {
    if (!fusedTexCopy)
    {
      sub_2958C65F8(v321);
      v40 = 0;
      v232 = 0;
      goto LABEL_125;
    }

    v192 = objc_msgSend_colorAttachments(v318, v89, v90, v91);
    v195 = objc_msgSend_objectAtIndexedSubscript_(v192, v193, 3, v194);
    objc_msgSend_setTexture_(v195, v196, fusedTexCopy, v197);

    v201 = objc_msgSend_colorAttachments(v318, v198, v199, v200);
    v204 = objc_msgSend_objectAtIndexedSubscript_(v201, v202, 3, v203);
    objc_msgSend_setLoadAction_(v204, v205, 0, v206);

    v210 = objc_msgSend_colorAttachments(v318, v207, v208, v209);
    v213 = objc_msgSend_objectAtIndexedSubscript_(v210, v211, 3, v212);
    objc_msgSend_setStoreAction_(v213, v214, 1, v215);
  }

  memcpy(v317->_ptr2FragBufSBP, params, 0x5F0uLL);
  *&self->_anon_3138[1032] = objc_msgSend_width(v315, v216, v217, v218);
  *&self->_anon_3138[1036] = objc_msgSend_height(v315, v219, v220, v221);
  *&self->_anon_3138[1040] = v31;
  memcpy(v317->_ptr2VertBufSBP, &self->_vertexUniforms, 0x550uLL);
  ptr2FragBufInt = v317->_ptr2FragBufInt;
  ptr2FragBufInt->var0 = v31;
  ptr2FragBufInt->var1 = map;
  ptr2FragBufInt->var2 = bias;
  v226 = 0.0;
  if (v31)
  {
    v227 = 0.0;
  }

  else
  {
    v227 = 0.5;
  }

  if (!BYTE2(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.nonLinearBias))
  {
    v227 = 0.5;
    v226 = 0.5;
  }

  ptr2FragBufInt->var3 = v227;
  ptr2FragBufInt->var4 = v226;
  ptr2FragBufInt->var5 = BYTE2(config[4].colorSpaceConversionParameters[2].transferFunctionInv.linearScale);
  v228 = objc_msgSend_commandQueue(self->_metal, v222, v223, v224);
  v232 = objc_msgSend_commandBuffer(v228, v229, v230, v231);

  if (!v232)
  {
    sub_2958C655C(v321);
    v40 = 0;
LABEL_125:
    v299 = v321[0];
    v268 = weightTexCopy;
    v267 = texCopy;
    v60 = v308;
    v264 = upTexCopy;
    v265 = mapTexCopy;
    goto LABEL_107;
  }

  v40 = objc_msgSend_renderCommandEncoderWithDescriptor_(v232, v233, v318, v234);
  if (!v40)
  {
    sub_2958C64C0(v321);
    goto LABEL_125;
  }

  v238 = objc_msgSend_fullRangeVertexBuf(self->_metal, v235, v236, v237);
  objc_msgSend_setVertexBuffer_offset_atIndex_(v40, v239, v238, 0, 0);

  objc_msgSend_setVertexBuffer_offset_atIndex_(v40, v240, v317->_vertexUniBufSBP, 0, 1);
  for (i = 0; i != 16; ++i)
  {
    objc_msgSend_setFragmentTexture_atIndex_(v40, v241, self->_placeHolderTex, i);
  }

  finalScaleFwd = config[4].colorSpaceConversionParameters[1].finalScaleFwd;
  v244 = 4 - LODWORD(finalScaleFwd);
  v39 = fusedTexCopy;
  v310 = v232;
  *&v245 = finalScaleFwd;
  if (!v55)
  {
    v246 = 4 - LODWORD(finalScaleFwd);
    if (SLODWORD(finalScaleFwd) >= 1)
    {
      v252 = 0;
      v253 = (inputsCopy + 1);
      do
      {
        v254 = v252;
        v255 = *(*&v253[8 * v252++] + 336 + 8 * v31);
        objc_msgSend_setFragmentTexture_atIndex_(v40, v241, v255, v254);
        v245 = SLODWORD(config[4].colorSpaceConversionParameters[1].finalScaleFwd);
      }

      while (v252 < v245);
      if (v245 > 0)
      {
        for (j = 0; j < v245; ++j)
        {
          objc_msgSend_setFragmentTexture_atIndex_(v40, v241, *(*&v253[8 * j] + 496 + 8 * v31), (v252 + v244 + j));
          v245 = SLODWORD(config[4].colorSpaceConversionParameters[1].finalScaleFwd);
        }

        v246 = v244 + v252 + j;
        v39 = fusedTexCopy;
        v47 = v312;
        if (band)
        {
          goto LABEL_88;
        }

        goto LABEL_80;
      }

      v246 = v252 + v244;
      v39 = fusedTexCopy;
    }

LABEL_77:
    if (band)
    {
      goto LABEL_88;
    }

LABEL_80:
    if (v245 >= 1)
    {
      v257 = 0;
      v258 = v246 + v244;
      v259 = (inputsCopy + 1);
      v260 = v31 + 1;
      do
      {
        objc_msgSend_setFragmentTexture_atIndex_(v40, v241, *(*&v259[8 * v257] + 336 + 8 * v260), v258 + v257);
        ++v257;
        v261 = SLODWORD(config[4].colorSpaceConversionParameters[1].finalScaleFwd);
      }

      while (v257 < v261);
      if (v261 >= 1)
      {
        v262 = 0;
        v263 = v246 - 2 * LODWORD(finalScaleFwd) + 8 + v257;
        do
        {
          objc_msgSend_setFragmentTexture_atIndex_(v40, v241, *(*&v259[8 * v262] + 496 + 8 * v260), (v263 + v262));
          ++v262;
        }

        while (v262 < SLODWORD(config[4].colorSpaceConversionParameters[1].finalScaleFwd));
      }
    }

    v264 = upTexCopy;
    if (!upTexCopy)
    {
      sub_2958C62EC(v321);
      v299 = v321[0];
      v268 = weightTexCopy;
      v267 = texCopy;
      v39 = fusedTexCopy;
      v265 = mapTexCopy;
      v47 = v312;
      v60 = v308;
      v232 = v310;
      goto LABEL_107;
    }

    objc_msgSend_setFragmentTexture_atIndex_(v40, v241, upTexCopy, 16);
    v39 = fusedTexCopy;
    v47 = v312;
    v232 = v310;
    goto LABEL_88;
  }

  v246 = 4 - LODWORD(finalScaleFwd);
  if (SLODWORD(finalScaleFwd) < 1)
  {
    goto LABEL_77;
  }

  v247 = 0;
  do
  {
    v248 = *(inputsCopy[v247 + 1] + 656);
    if (!v248)
    {
      sub_2958C6424(v321);
      v299 = v321[0];
      v268 = weightTexCopy;
      v267 = texCopy;
      v60 = v308;
      v264 = upTexCopy;
      v265 = mapTexCopy;
      goto LABEL_107;
    }

    v249 = v247 + 1;
    objc_msgSend_setFragmentTexture_atIndex_(v40, v241, v248, v247);
    v245 = SLODWORD(config[4].colorSpaceConversionParameters[1].finalScaleFwd);
    v247 = v249;
  }

  while (v249 < v245);
  v246 = v249 + v244;
  if (v245 > 0)
  {
    v250 = 0;
    do
    {
      v251 = v246++;
      objc_msgSend_setFragmentTexture_atIndex_(v40, v241, 0, v251);
      ++v250;
      *&v245 = config[4].colorSpaceConversionParameters[1].finalScaleFwd;
    }

    while (v250 < v245);
    v232 = v310;
  }

  if (!band)
  {
    goto LABEL_80;
  }

LABEL_88:
  v265 = mapTexCopy;
  objc_msgSend_setFragmentTexture_atIndex_(v40, v241, mapTexCopy, 17);
  if (confidenceCopy)
  {
    objc_msgSend_setFragmentTexture_atIndex_(v40, v266, confidenceCopy[v31 + 42], 18);
  }

  if (luma && !band)
  {
    objc_msgSend_setFragmentBytes_length_atIndex_(v40, v266, v323, 4, 2);
  }

  v268 = weightTexCopy;
  v267 = texCopy;
  v60 = v308;
  if (texCopy)
  {
    objc_msgSend_setFragmentTexture_atIndex_(v40, v266, texCopy, 19);
  }

  batchCopy = batch;
  if (!weightTexCopy)
  {
    batchCopy = 1;
  }

  v264 = upTexCopy;
  if (!batchCopy)
  {
    objc_msgSend_setFragmentTexture_atIndex_(v40, v266, weightTexCopy, 20);
  }

  if (v302)
  {
    objc_msgSend_setFragmentTexture_atIndex_(v40, v266, weightsCopy, 31);
  }

  objc_msgSend_setFragmentBuffer_offset_atIndex_(v40, v266, v317->_fragUniBufSBP, 0, 0);
  objc_msgSend_setFragmentBuffer_offset_atIndex_(v40, v270, v317->_fragUniBufInt, 0, 1);
  objc_msgSend_setRenderPipelineState_(v40, v271, v308[1], v272);
  objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v40, v273, 4, 0, 4);
  objc_msgSend_endEncoding(v40, v274, v275, v276);
  if (weightTexCopy && !lastBatch && v306)
  {
    v280 = objc_msgSend_computeCommandEncoder(v232, v277, v278, v279);
    if (!v280)
    {
      sub_2958C6388(v321);
      v299 = v321[0];
      goto LABEL_107;
    }

    v283 = v280;
    objc_msgSend_setComputePipelineState_(v280, v281, v47[257], v282);
    objc_msgSend_setTexture_atIndex_(v283, v284, v306, 0);
    objc_msgSend_setTexture_atIndex_(v283, v285, weightTexCopy, 1);
    v321[0] = objc_msgSend_width(weightTexCopy, v286, v287, v288);
    v321[1] = objc_msgSend_height(weightTexCopy, v289, v290, v291);
    v60 = v308;
    v321[2] = 1;
    v319 = vdupq_n_s64(0x10uLL);
    v320 = 1;
    v232 = v310;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v283, v292, v321, &v319);
    objc_msgSend_endEncoding(v283, v293, v294, v295);
  }

  FigMetalDecRef();
  objc_msgSend_commit(v232, v296, v297, v298);
  v299 = 0;
LABEL_107:

  return v299;
}

- (int)runStationaryFusionWithParams:(const FusionRemixStageUniformsIBP *)params inputs:(id)inputs fusedLumaTex:(id)tex fusedChromaTex:(id)chromaTex noiseMapLumaTex:(id)lumaTex noiseMapChromaTex:(id)mapChromaTex accWeightLumaTex:(id)weightLumaTex accWeightChromaTex:(id)self0 inferenceLumaTex:(id)self1 inferenceChromaTex:(id)self2 batchN:(int)self3
{
  inputsCopy = inputs;
  texCopy = tex;
  chromaTexCopy = chromaTex;
  lumaTexCopy = lumaTex;
  mapChromaTexCopy = mapChromaTex;
  weightLumaTexCopy = weightLumaTex;
  weightChromaTexCopy = weightChromaTex;
  inferenceLumaTexCopy = inferenceLumaTex;
  inferenceChromaTexCopy = inferenceChromaTex;
  v249 = 0;
  v250[0] = 0;
  v26 = objc_msgSend_allocator(self->_metal, v23, v24, v25);
  v30 = objc_msgSend_newTextureDescriptor(v26, v27, v28, v29);

  if (!v30)
  {
    sub_2958C6F28(&v246);
LABEL_32:
    v231 = v246;
    goto LABEL_29;
  }

  v34 = objc_msgSend_desc(v30, v31, v32, v33);
  objc_msgSend_setUsage_(v34, v35, 7, v36);

  v40 = objc_msgSend_width(texCopy, v37, v38, v39);
  v44 = objc_msgSend_desc(v30, v41, v42, v43);
  objc_msgSend_setWidth_(v44, v45, v40, v46);

  v50 = objc_msgSend_height(texCopy, v47, v48, v49);
  v54 = objc_msgSend_desc(v30, v51, v52, v53);
  objc_msgSend_setHeight_(v54, v55, v50, v56);

  v60 = objc_msgSend_desc(v30, v57, v58, v59);
  objc_msgSend_setPixelFormat_(v60, v61, 25, v62);

  objc_msgSend_setLabel_(v30, v63, 0, v64);
  v68 = objc_msgSend_allocator(self->_metal, v65, v66, v67);
  v71 = objc_msgSend_newTextureWithDescriptor_(v68, v69, v30, v70);
  v250[0] = v71;

  if (!v71)
  {
    sub_2958C6E8C(&v246);
    goto LABEL_32;
  }

  v75 = objc_msgSend_allocator(self->_metal, v72, v73, v74);
  v78 = objc_msgSend_newTextureDescriptor_(v75, v76, 0, v77);

  if (!v78)
  {
    sub_2958C6DF0(&v246);
    v231 = v246;
LABEL_35:
    v153 = mapChromaTexCopy;
    v151 = lumaTexCopy;
    v216 = inferenceLumaTexCopy;

    goto LABEL_25;
  }

  v241 = texCopy;
  v82 = objc_msgSend_desc(v78, v79, v80, v81);
  objc_msgSend_setUsage_(v82, v83, 7, v84);

  v88 = objc_msgSend_width(chromaTexCopy, v85, v86, v87);
  v92 = objc_msgSend_desc(v78, v89, v90, v91);
  objc_msgSend_setWidth_(v92, v93, v88, v94);

  v98 = objc_msgSend_height(chromaTexCopy, v95, v96, v97);
  v102 = objc_msgSend_desc(v78, v99, v100, v101);
  objc_msgSend_setHeight_(v102, v103, v98, v104);

  v108 = objc_msgSend_desc(v78, v105, v106, v107);
  objc_msgSend_setPixelFormat_(v108, v109, 65, v110);

  objc_msgSend_setLabel_(v78, v111, 0, v112);
  v116 = objc_msgSend_allocator(self->_metal, v113, v114, v115);
  v118 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v116, v117, v78, 0);
  v249 = v118;

  if (!v118)
  {
    sub_2958C6D54(&v246);
    v231 = v246;
    texCopy = v241;
    goto LABEL_35;
  }

  texCopy = v241;
  if ((BYTE2(params[2].blurryFrameWeight[1]) & 1) == 0)
  {
    sub_2958C6AD8();
LABEL_28:
    v231 = -12782;
LABEL_29:
    v153 = mapChromaTexCopy;
    v151 = lumaTexCopy;
    v216 = inferenceLumaTexCopy;
    goto LABEL_25;
  }

  v124 = LODWORD(params[2].exposureEffectiveTime[0]);
  if (v124 >= 1)
  {
    p_nonLinearPower = &params[3].config.colorSpaceConversionParameters[0].transferFunctionInv.nonLinearPower;
    v122.n128_u32[0] = *(&params[3].config.colorSpaceConversionParameters[0].transferFunctionInv.nonLinearPower + SLODWORD(params[2].blurryFrameWeight[0]));
    p_fusionBoostMatchedTexture = &params->patchBasedFusionParameters.fusionBoostMatchedTexture;
    v123.n128_u64[0] = 0x3FA999999999999ALL;
    while (1)
    {
      v127 = *p_fusionBoostMatchedTexture;
      p_fusionBoostMatchedTexture += 52;
      if ((v127 & 1) == 0)
      {
        sub_2958C6B3C(v122, v123);
        goto LABEL_28;
      }

      if ((vabds_f32(*p_nonLinearPower, v122.n128_f32[0]) / v122.n128_f32[0]) >= 0.05)
      {
        break;
      }

      ++p_nonLinearPower;
      if (!--v124)
      {
        goto LABEL_11;
      }
    }

    sub_2958C6CF0();
    goto LABEL_28;
  }

LABEL_11:
  v128 = objc_msgSend_sharedInstance(FusionRemixStageShared, v119, v120, v121);
  v130 = objc_msgSend_getShaders_fp16_(v128, v129, self->_metal, 1);

  if (!v130)
  {
    sub_2958C6C54(&v246);
LABEL_39:
    v231 = v246;
    texCopy = v241;
    goto LABEL_29;
  }

  v238 = v71;
  v134 = objc_msgSend_commandQueue(self->_metal, v131, v132, v133);
  v138 = objc_msgSend_commandBuffer(v134, v135, v136, v137);

  if (!v138)
  {
    sub_2958C6BA0(v130, &v246);
    goto LABEL_39;
  }

  v240 = v130;
  v234 = v30;
  v142 = weightLumaTexCopy;
  v233 = v138;
  v144 = objc_msgSend_computeCommandEncoder(v138, v139, v140, v141);
  v145 = 0;
  p_placeHolderTex = &self->_placeHolderTex;
  v147 = inputsCopy + 8;
  do
  {
    if (v145 >= SLODWORD(params[2].exposureEffectiveTime[0]))
    {
      objc_msgSend_setTexture_atIndex_(v144, v143, *p_placeHolderTex, v145);
      v149 = p_placeHolderTex;
    }

    else
    {
      objc_msgSend_setTexture_atIndex_(v144, v143, *(*&v147[8 * v145] + 336), v145);
      v149 = (*&v147[8 * v145] + 496);
    }

    objc_msgSend_setTexture_atIndex_(v144, v148, *v149, v145 + 4);
    ++v145;
  }

  while (v145 != 4);
  texCopy = v241;
  objc_msgSend_setTexture_atIndex_(v144, v143, v241, 21);
  objc_msgSend_setTexture_atIndex_(v144, v150, chromaTexCopy, 22);
  v151 = lumaTexCopy;
  objc_msgSend_setTexture_atIndex_(v144, v152, lumaTexCopy, 23);
  v153 = mapChromaTexCopy;
  objc_msgSend_setTexture_atIndex_(v144, v154, mapChromaTexCopy, 24);
  objc_msgSend_setTexture_atIndex_(v144, v155, v238, 25);
  weightLumaTexCopy = v142;
  objc_msgSend_setTexture_atIndex_(v144, v156, v142, 26);
  objc_msgSend_setTexture_atIndex_(v144, v157, v118, 27);
  objc_msgSend_setTexture_atIndex_(v144, v158, weightChromaTexCopy, 28);
  objc_msgSend_setBytes_length_atIndex_(v144, v159, params, 1520, 0);
  objc_msgSend_setImageblockWidth_height_(v144, v160, 32, 32);
  v163 = v240;
  if (n)
  {
    objc_msgSend_setComputePipelineState_(v144, v161, v240[262], v162);
    v246 = objc_msgSend_width(v118, v164, v165, v166);
    v247 = objc_msgSend_height(v118, v167, v168, v169);
    v248 = 1;
    v239 = vdupq_n_s64(0x10uLL);
    v244 = v239;
    v245 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v144, v170, &v246, &v244);
    objc_msgSend_setComputePipelineState_(v144, v171, v240[263], v172);
    v176 = objc_msgSend_width(weightChromaTexCopy, v173, v174, v175);
    v180 = objc_msgSend_height(weightChromaTexCopy, v177, v178, v179);
    v246 = v176;
    v247 = v180;
    v248 = 1;
    v244 = v239;
    v245 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v144, v181, &v246, &v244);
    objc_msgSend_setComputePipelineState_(v144, v182, v240[259], v183);
    v187 = objc_msgSend_width(chromaTexCopy, v184, v185, v186);
    v191 = objc_msgSend_height(chromaTexCopy, v188, v189, v190);
    v246 = v187;
    v247 = v191;
    v248 = 1;
    v244 = v239;
    v245 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v144, v192, &v246, &v244);
    objc_msgSend_setComputePipelineState_(v144, v193, v240[261], v194);
  }

  else
  {
    objc_msgSend_setComputePipelineState_(v144, v161, v240[258], v162);
    v246 = objc_msgSend_width(chromaTexCopy, v198, v199, v200);
    v247 = objc_msgSend_height(chromaTexCopy, v201, v202, v203);
    v248 = 1;
    v239 = vdupq_n_s64(0x10uLL);
    v244 = v239;
    v245 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v144, v204, &v246, &v244);
    objc_msgSend_setComputePipelineState_(v144, v205, v240[260], v206);
  }

  v207 = objc_msgSend_width(weightLumaTexCopy, v195, v196, v197);
  v211 = objc_msgSend_height(weightLumaTexCopy, v208, v209, v210);
  v246 = v207;
  v247 = v211;
  v248 = 1;
  v244 = v239;
  v245 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v144, v212, &v246, &v244);
  v216 = inferenceLumaTexCopy;
  if (inferenceLumaTexCopy && inferenceChromaTexCopy)
  {
    objc_msgSend_setComputePipelineState_(v144, v213, v240[264], v215);
    objc_msgSend_setTexture_atIndex_(v144, v217, inferenceLumaTexCopy, 29);
    objc_msgSend_setTexture_atIndex_(v144, v218, inferenceChromaTexCopy, 30);
    v222 = objc_msgSend_width(inferenceChromaTexCopy, v219, v220, v221);
    v163 = v240;
    v226 = objc_msgSend_height(inferenceChromaTexCopy, v223, v224, v225);
    v246 = v222;
    v247 = v226;
    v248 = 1;
    v244 = vdupq_n_s64(0x10uLL);
    v245 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v144, v227, &v246, &v244);
  }

  objc_msgSend_endEncoding(v144, v213, v214, v215);
  objc_msgSend_commit(v233, v228, v229, v230);
  FigMetalDecRef();
  FigMetalDecRef();

  v231 = 0;
  v30 = v234;
LABEL_25:

  return v231;
}

- (int)prepareForFusion:(id)fusion config:(const FusionConfiguration *)config fusedPyramid:(id)pyramid properties:(const frameProperties_t *)properties nrfPlist:(id)plist staticScene:(BOOL)scene isLowLight:(BOOL)light
{
  fusionCopy = fusion;
  pyramidCopy = pyramid;
  plistCopy = plist;
  if (LODWORD(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.nonLinearPower))
  {
    if (SLODWORD(config[4].colorSpaceConversionParameters[1].finalScaleFwd) >= 5)
    {
      sub_2958C710C(&v40);
      v38 = v40;
    }

    else
    {
      v18 = pyramidCopy[2];
      isLowLight = objc_msgSend_computeFusionParams_properties_config_fusionMode_staticScene_isLowLight_(self, v16, plistCopy, properties, config);
      if (isLowLight)
      {
        v38 = isLowLight;
        sub_2958C6FC4(isLowLight);
      }

      else
      {
        memcpy(&self->_vertexUniforms, config, 0x540uLL);
        v23 = objc_msgSend_width(*(fusionCopy[1] + 336 + 8 * (v18 - 1)), v20, v21, v22);
        v27 = objc_msgSend_height(*(fusionCopy[1] + 336 + 8 * (v18 - 1)), v24, v25, v26);
        v31 = objc_msgSend_width(*&pyramidCopy[2 * v18 + 82], v28, v29, v30);
        v35 = objc_msgSend_height(*&pyramidCopy[2 * v18 + 82], v32, v33, v34);
        if (v23 == v31 && v27 == v35)
        {
          v38 = 0;
        }

        else
        {
          sub_2958C7070(&v39);
          v38 = v39;
        }
      }
    }
  }

  else
  {
    sub_2958C71A8(&v41);
    v38 = v41;
  }

  return v38;
}

- (int)selectNRFFusionReferenceFrame:(id)frame ev0Bands:(id)bands evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties nrfPlist:(id)plist outputFusionMode:(int *)mode staticScene:(BOOL *)scene motionDetection:(id)self0 grayGhostDetection:(id)self1
{
  frameCopy = frame;
  bandsCopy = bands;
  plistCopy = plist;
  detectionCopy = detection;
  ghostDetectionCopy = ghostDetection;
  v53 = 0;
  *objc_msgSend_contents(self->_flickerCountBuffer, v21, v22, v23) = 0;
  nrfConfig = self->_nrfConfig;
  if (nrfConfig->_enableFlickerDetection)
  {
    if (objc_msgSend_detectFlicker_ev0Bands_evmProperties_ev0Properties_height_(self, v24, frameCopy, bandsCopy, properties, ev0Properties, &v53))
    {
      sub_2958C7244(v52);
      v47 = v52[0];
      goto LABEL_27;
    }

    nrfConfig = self->_nrfConfig;
  }

  if (nrfConfig->_enableGrayGhostDetection)
  {
    v28 = plistCopy[3];
    v52[0] = v28[9];
    v52[1] = v28[8];
    v52[2] = v28[10];
    if (objc_msgSend_runGrayGhostDetection_ev0Bands_evmProperties_ev0Properties_hasChromaBias_atBand_params_(ghostDetectionCopy, v24, frameCopy, bandsCopy, properties, ev0Properties, LODWORD(ev0Properties[1].meta.ROI.origin.y) != 2, 2, v52))
    {
      sub_2958C72E0(v52, &v54);
      v47 = v54;
      goto LABEL_27;
    }
  }

  objc_msgSend_waitForIdle(self->_metal, v24, v25, v26);
  v32 = 0.0;
  if (self->_nrfConfig->_enableGrayGhostDetection)
  {
    objc_msgSend_getGrayGhostResultSync(ghostDetectionCopy, v29, v30, v31);
    v32 = v33;
  }

  v34 = objc_msgSend_contents(self->_flickerCountBuffer, v29, v30, v31);
  v36 = plistCopy[3];
  v37 = *(v36 + 28);
  if (v32 < v37)
  {
    v38 = 1;
  }

  else
  {
    v38 = 2;
  }

  if ((*v34 / v53) > 0.08 && v32 >= v37)
  {
    v47 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, mode, detectionCopy);
LABEL_27:
    v43 = detectionCopy;
    goto LABEL_32;
  }

  v40 = *(v36 + 44);
  v51 = 0.0;
  v41 = v40 == 1 && v32 < v37;
  if ((v41 || self->_nrfConfig->_forceEnableMotionDetection) && ((v42 = properties->meta.exposureParams.exposure_time * properties->meta.exposureParams.gain, v42 <= (*(v36 + 56) / 0.98)) && v42 >= (*(v36 + 60) * 0.98) || self->_nrfConfig->_forceEnableMotionDetection))
  {
    v43 = detectionCopy;
    v44 = objc_msgSend_runMotionDetection_evm_ev0_evmProperties_ev0Properties_nrfPlist_(detectionCopy, v35, &v51, frameCopy[43], bandsCopy[43], properties, ev0Properties, plistCopy);
    if (v44)
    {
      sub_2958C737C(v44, v52);
      v47 = v52[0];
      goto LABEL_32;
    }

    v45 = plistCopy[3];
    if (v51 >= *(v45 + 76))
    {
      v46 = 0;
      if (v51 > *(v45 + 72))
      {
        v38 = 2;
      }
    }

    else
    {
      v46 = 1;
    }
  }

  else
  {
    v46 = 0;
    v43 = detectionCopy;
  }

  v47 = 0;
  *mode = v38;
  *scene = v46;
LABEL_32:

  return v47;
}

- (int)correctGTC:(id)c
{
  cCopy = c;
  v8 = objc_msgSend_commandQueue(self->_metal, v5, v6, v7);
  v12 = objc_msgSend_commandBuffer(v8, v9, v10, v11);

  if (!v12)
  {
    sub_2958C74DC(v60);
LABEL_11:
    v55 = v60[0];
    goto LABEL_9;
  }

  if (cCopy[2] >= 2)
  {
    v16 = cCopy + 2;
    v57 = xmmword_2959D5ED0;
    v17 = 1;
    while (1)
    {
      v18 = *(v16 + 42);
      v19 = *(v16 + 62);
      v23 = objc_msgSend_computeCommandEncoder(v12, v20, v21, v22);
      if (!v23)
      {
        break;
      }

      v26 = v23;
      objc_msgSend_setComputePipelineState_(v23, v24, self->_correctGTC, v25);
      objc_msgSend_setTexture_atIndex_(v26, v27, v18, 0);
      objc_msgSend_setTexture_atIndex_(v26, v28, v19, 1);
      v32 = (objc_msgSend_width(v19, v29, v30, v31) + 7) >> 3;
      v36 = objc_msgSend_height(v19, v33, v34, v35);
      v60[0] = v32;
      v60[1] = (v36 + 3) >> 2;
      v60[2] = 1;
      v58 = xmmword_2959D5ED0;
      v59 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v26, v37, v60, &v58);
      objc_msgSend_endEncoding(v26, v38, v39, v40);

      ++v17;
      v16 += 2;
      if (v17 >= cCopy[2])
      {
        goto LABEL_6;
      }
    }

    sub_2958C7420(v19, v18, v60);
    goto LABEL_11;
  }

LABEL_6:
  if (*MEMORY[0x29EDB9270])
  {
    v41 = objc_msgSend_commandQueue(v12, v13, v14, v15);
    v45 = objc_msgSend_commandBuffer(v41, v42, v43, v44);

    objc_msgSend_setLabel_(v45, v46, @"KTRACE_MTLCMDBUF", v47);
    objc_msgSend_addCompletedHandler_(v45, v48, &unk_2A1CA9880, v49);
    objc_msgSend_commit(v45, v50, v51, v52);
    objc_msgSend_addCompletedHandler_(v12, v53, &unk_2A1CA98A0, v54);
  }

  objc_msgSend_commit(v12, v13, v14, v15, v57);
  v55 = 0;
LABEL_9:

  return v55;
}

- (int)runImageFusion:(id)fusion config:(const FusionConfiguration *)config fusedPyramid:(id)pyramid accWeightPyramid:(id)weightPyramid buffers:(id)buffers properties:(const frameProperties_t *)properties nrfPlist:(id)plist confidence:(id)self0 batchN:(int)self1 isLastBatch:(BOOL)self2 isLowLight:(BOOL)self3 usePatchBasedFusion:(BOOL)self4 outputChromaBias:(float)self5
{
  fusionCopy = fusion;
  pyramidCopy = pyramid;
  weightPyramidCopy = weightPyramid;
  buffersCopy = buffers;
  confidenceCopy = confidence;
  if (n)
  {
    batchCopy = 0;
  }

  else
  {
    batchCopy = batch;
  }

  v388 = batchCopy;
  configCopy = config;
  v27 = BYTE1(config[4].colorSpaceConversionParameters[2].transferFunctionInv.linearScale);
  v28 = *(pyramidCopy + 2);
  selfCopy = self;
  v29 = objc_msgSend_allocator(self->_metal, v22, v23, v24);
  v33 = objc_msgSend_newTextureDescriptor(v29, v30, v31, v32);

  if (!v33)
  {
    sub_2958C7FF0(&location);
    v367 = location;
    v369 = buffersCopy;
    v44 = fusionCopy;
    goto LABEL_132;
  }

  v37 = objc_msgSend_desc(v33, v34, v35, v36);
  objc_msgSend_setUsage_(v37, v38, 7, v39);

  nCopy2 = n;
  v44 = fusionCopy;
  if (!n && light)
  {
    v45 = objc_msgSend_width(*(*(fusionCopy + 1) + 336), v40, v41, v42);
    v49 = objc_msgSend_height(*(*(fusionCopy + 1) + 336), v46, v47, v48);
    sub_29586AF94(buffersCopy, v45, v49, selfCopy->_metal, 1, 1);
  }

  if (v27)
  {
    v50 = buffersCopy[1];
    buffersCopy[1] = 0;

    if (batch)
    {
      if (pyramidCopy[43])
      {
        sub_2958C7DF0();
      }

      else
      {
        v54 = objc_msgSend_width(*(*(fusionCopy + 1) + 344), v51, v52, v53);
        v58 = objc_msgSend_desc(v33, v55, v56, v57);
        objc_msgSend_setWidth_(v58, v59, v54, v60);

        v64 = objc_msgSend_height(*(*(fusionCopy + 1) + 344), v61, v62, v63);
        v68 = objc_msgSend_desc(v33, v65, v66, v67);
        objc_msgSend_setHeight_(v68, v69, v64, v70);

        v74 = objc_msgSend_desc(v33, v71, v72, v73);
        objc_msgSend_setPixelFormat_(v74, v75, 25, v76);

        objc_msgSend_setLabel_(v33, v77, 0, v78);
        v82 = objc_msgSend_allocator(selfCopy->_metal, v79, v80, v81);
        v85 = objc_msgSend_newTextureWithDescriptor_(v82, v83, v33, v84);
        v86 = pyramidCopy[43];
        pyramidCopy[43] = v85;

        if (!pyramidCopy[43])
        {
          sub_2958C7F54(&location);
          goto LABEL_148;
        }

        if (!pyramidCopy[63])
        {
          v90 = objc_msgSend_width(*(*(fusionCopy + 1) + 504), v87, v88, v89);
          v94 = objc_msgSend_desc(v33, v91, v92, v93);
          objc_msgSend_setWidth_(v94, v95, v90, v96);

          v100 = objc_msgSend_height(*(*(fusionCopy + 1) + 504), v97, v98, v99);
          v104 = objc_msgSend_desc(v33, v101, v102, v103);
          objc_msgSend_setHeight_(v104, v105, v100, v106);

          v110 = objc_msgSend_desc(v33, v107, v108, v109);
          objc_msgSend_setPixelFormat_(v110, v111, 65, v112);

          objc_msgSend_setLabel_(v33, v113, 0, v114);
          v118 = objc_msgSend_allocator(selfCopy->_metal, v115, v116, v117);
          v121 = objc_msgSend_newTextureWithDescriptor_(v118, v119, v33, v120);
          v122 = pyramidCopy[63];
          pyramidCopy[63] = v121;

          if (!pyramidCopy[63])
          {
            sub_2958C7EB8(&location);
LABEL_148:
            v367 = location;
LABEL_151:
            v369 = buffersCopy;
            goto LABEL_132;
          }

          goto LABEL_113;
        }

        sub_2958C7E54();
      }

      v367 = 0;
      goto LABEL_151;
    }

LABEL_113:
    if (batch)
    {
      v363 = pyramidCopy[43];
      v364 = pyramidCopy[63];
    }

    else
    {
      v363 = 0;
      v364 = 0;
    }

    v367 = objc_msgSend_runStationaryFusionWithParams_inputs_fusedLumaTex_fusedChromaTex_noiseMapLumaTex_noiseMapChromaTex_accWeightLumaTex_accWeightChromaTex_inferenceLumaTex_inferenceChromaTex_batchN_(selfCopy, v51, &selfCopy->_arrayOfinputParams[3].config.colorSpaceConversionParameters[2].finalScale, fusionCopy, buffersCopy[4], buffersCopy[5], buffersCopy[2], buffersCopy[3], weightPyramidCopy[42], weightPyramidCopy[62], v363, v364, n);
    for (i = 0; i != 32; i += 8)
    {
      objc_msgSend_makePyramidAliasable_metal_releaseBand0_(PyramidStorage_NRF, v366, *&fusionCopy[i + 8], selfCopy->_metal, 1);
    }

    v369 = buffersCopy;
LABEL_131:
    FigMetalDecRef();
    goto LABEL_132;
  }

  v123 = (v28 - 1);
  v124 = selfCopy;
  v393 = v123;
  if (SLODWORD(config[4].colorSpaceConversionParameters[1].finalScaleFwd) < 2)
  {
    v365 = buffersCopy[1];
    buffersCopy[1] = 0;

    if (n)
    {
      goto LABEL_19;
    }

    goto LABEL_116;
  }

  v125 = objc_msgSend_width(*(*(fusionCopy + 1) + 336), v40, v41, v42) >> 3;
  v129 = objc_msgSend_desc(v33, v126, v127, v128);
  objc_msgSend_setWidth_(v129, v130, v125, v131);

  v135 = objc_msgSend_height(*(*(fusionCopy + 1) + 336), v132, v133, v134) >> 3;
  v139 = objc_msgSend_desc(v33, v136, v137, v138);
  objc_msgSend_setHeight_(v139, v140, v135, v141);

  v145 = objc_msgSend_desc(v33, v142, v143, v144);
  objc_msgSend_setPixelFormat_(v145, v146, 10, v147);

  objc_msgSend_setLabel_(v33, v148, 0, v149);
  v153 = objc_msgSend_allocator(selfCopy->_metal, v150, v151, v152);
  v156 = objc_msgSend_newTextureWithDescriptor_(v153, v154, v33, v155);
  v157 = buffersCopy[1];
  buffersCopy[1] = v156;

  if (!buffersCopy[1])
  {
    sub_2958C7D54(&location);
    goto LABEL_148;
  }

  BYTE6(v378) = 0;
  WORD2(v378) = 257;
  nCopy2 = n;
  LODWORD(v378) = n;
  WORD2(v374) = 257;
  LODWORD(v374) = 0;
  v123 = (v28 - 1);
  *&v159 = bias;
  if (objc_msgSend_runFusionForBandIndex_config_oldFusedUpTex_oldFusedTex_fusedUpTex_fusedTex_accWeightTex_bandFusionParams_fragmentBufferIndex_processLuma_processTopBand_computeSpecialMap_inputs_simMapTex_confidence_noiseMap_batchN_isFirstBatch_isLastBatch_usePatchBasedFusion_minVarWeightSum_outputChromaBias_ggMaxFusionWeights_(selfCopy, v158, v393, config, 0, 0, 0, 0.0, v159, 0, &selfCopy->_anon_e50[6992], v374, 1, fusionCopy, selfCopy->_placeHolderTex, 0, 0, v378, 0))
  {
    sub_2958C7884(&location);
    goto LABEL_148;
  }

  if (!n)
  {
LABEL_116:
    selfCopy->_exposureEffectiveTimeSumSoFar = 0.0;
  }

LABEL_19:
  finalScaleFwd_low = LODWORD(config[4].colorSpaceConversionParameters[1].finalScaleFwd);
  nonLinearScale_low = LODWORD(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.nonLinearScale);
  if (finalScaleFwd_low >= 1)
  {
    for (j = 0; j != finalScaleFwd_low; ++j)
    {
      if ((!nCopy2 || nonLinearScale_low != j) && (nCopy2 || j != *&config[4].colorSpaceConversionParameters[1].outputToLinearYCbCr || (HIBYTE(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.nonLinearBias) & 1) == 0))
      {
        selfCopy->_exposureEffectiveTimeSumSoFar = *(&selfCopy->_arrayOfinputParams[6].config.colorSpaceConversionParameters[4].transferFunctionFwd.nonLinearBias + j) + selfCopy->_exposureEffectiveTimeSumSoFar;
      }
    }
  }

  exposureEffectiveTimeSumSoFar = selfCopy->_exposureEffectiveTimeSumSoFar;
  v167 = *(&selfCopy->_arrayOfinputParams[6].config.colorSpaceConversionParameters[4].transferFunctionFwd.nonLinearBias + nonLinearScale_low);
  v397 = 0;
  location = 0;
  if (v28 >= 1)
  {
    v395 = 0;
    v394 = 0;
    arrayOfinputParams = selfCopy->_arrayOfinputParams;
    v168 = fusionCopy + 8;
    v169 = v123;
    v170 = exposureEffectiveTimeSumSoFar / v167;
    v396 = pyramidCopy;
    v387 = confidenceCopy;
    while (1)
    {
      if (v169)
      {
        v171 = v169 == v123;
      }

      else
      {
        v171 = 1;
      }

      v172 = n != 0;
      if (v171)
      {
        v172 = 1;
      }

      if (v172)
      {
        if (!v169)
        {

          nCopy4 = n;
          if (n)
          {
            v392 = 0;
            v177 = 0;
            v382 = 1;
            v178 = buffersCopy + 4;
            v179 = buffersCopy;
          }

          else
          {
            v358 = objc_msgSend_width(*(*v168 + 336), v173, v174, v175);
            v362 = objc_msgSend_height(*(*v168 + 336), v359, v360, v361);
            v179 = buffersCopy;
            sub_29586AF94(buffersCopy, v358, v362, v124->_metal, 1, 0);
            v392 = 0;
            v177 = 0;
            v382 = 0;
            v178 = buffersCopy + 4;
          }

          goto LABEL_48;
        }
      }

      else
      {
        if (pyramidCopy[v169 + 42])
        {
          sub_2958C7920();
          v372 = 0;
          v367 = 0;
          goto LABEL_129;
        }

        v180 = objc_msgSend_width(*(*v168 + 336 + 8 * v169), v160, v161, v162);
        v184 = objc_msgSend_desc(v33, v181, v182, v183);
        objc_msgSend_setWidth_(v184, v185, v180, v186);

        v190 = objc_msgSend_height(*(*v168 + 336 + 8 * v169), v187, v188, v189);
        v194 = objc_msgSend_desc(v33, v191, v192, v193);
        objc_msgSend_setHeight_(v194, v195, v190, v196);

        v200 = objc_msgSend_desc(v33, v197, v198, v199);
        objc_msgSend_setPixelFormat_(v200, v201, 25, v202);

        objc_msgSend_setLabel_(v33, v203, 0, v204);
        v208 = objc_msgSend_allocator(v124->_metal, v205, v206, v207);
        v211 = objc_msgSend_newTextureWithDescriptor_(v208, v209, v33, v210);
        v212 = pyramidCopy[v169 + 42];
        pyramidCopy[v169 + 42] = v211;

        if (!pyramidCopy[v169 + 42])
        {
          sub_2958C7984(v399);
LABEL_141:
          v372 = 0;
          v367 = v399[0];
LABEL_129:
          v44 = fusionCopy;
          goto LABEL_130;
        }
      }

      if (v169 == 1)
      {
        v213 = 0;
      }

      else
      {
        v213 = 255;
      }

      v214 = objc_msgSend_allocator(v124->_metal, v160, v161, v162);
      v217 = objc_msgSend_newTextureDescriptor_(v214, v215, v213, v216);

      if (!v217)
      {
        sub_2958C7ABC(v399);
        v367 = v399[0];
        pyramidCopy = v396;
LABEL_138:

        v372 = 0;
        goto LABEL_129;
      }

      v221 = objc_msgSend_desc(v217, v218, v219, v220);
      objc_msgSend_setUsage_(v221, v222, 7, v223);

      v227 = objc_msgSend_width(v396[v169 + 42], v224, v225, v226);
      v231 = objc_msgSend_desc(v217, v228, v229, v230);
      objc_msgSend_setWidth_(v231, v232, v227, v233);

      v237 = objc_msgSend_height(v396[v169 + 42], v234, v235, v236);
      v241 = objc_msgSend_desc(v217, v238, v239, v240);
      objc_msgSend_setHeight_(v241, v242, v237, v243);

      v247 = objc_msgSend_desc(v217, v244, v245, v246);
      objc_msgSend_setPixelFormat_(v247, v248, 25, v249);

      objc_msgSend_setLabel_(v217, v250, 0, v251);
      v255 = objc_msgSend_allocator(v124->_metal, v252, v253, v254);
      v177 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v255, v256, v217, v213);

      if (!v177)
      {
        sub_2958C7A20(v399);
        v394 = 0;
        v367 = v399[0];
        pyramidCopy = v396;
        confidenceCopy = v387;
        goto LABEL_138;
      }

      v178 = &v396[v169 + 42];
      v392 = 1;
      v382 = 1;
      v179 = buffersCopy;
      nCopy4 = n;
LABEL_48:
      v257 = *v178;
      v260 = 0;
      v261 = v169 == v393 || nCopy4 == 0;
      if (v261)
      {
        v262 = 0;
      }

      else
      {
        v262 = location;
      }

      if (v169)
      {
        v263 = nCopy4 == 0;
      }

      else
      {
        v263 = 1;
      }

      v264 = v393;
      v383 = v263;
      v384 = v261;
      if (v263)
      {
        v265 = 0;
      }

      else
      {
        v265 = v177;
      }

      if (v169 != v393)
      {
        v260 = v396[v169 + 43];
      }

      if (v388)
      {
        v266 = 0;
      }

      else
      {
        v266 = weightPyramidCopy[v169 + 42];
      }

      v394 = v177;
      placeHolderTex = v179[1];
      if (!placeHolderTex)
      {
        placeHolderTex = v124->_placeHolderTex;
      }

      basedFusionCopy = basedFusion;
      if (v169)
      {
        basedFusionCopy = 0;
      }

      BYTE6(v378) = basedFusionCopy;
      BYTE5(v378) = batch;
      BYTE4(v378) = nCopy4 == 0;
      LODWORD(v378) = nCopy4;
      LODWORD(v376) = 0;
      BYTE5(v374) = v169 == v393;
      BYTE4(v374) = 1;
      LODWORD(v374) = 2 * v169 + 3;
      *&v258 = v170;
      *&v259 = bias;
      v385 = v257;
      if (objc_msgSend_runFusionForBandIndex_config_oldFusedUpTex_oldFusedTex_fusedUpTex_fusedTex_accWeightTex_bandFusionParams_fragmentBufferIndex_processLuma_processTopBand_computeSpecialMap_inputs_simMapTex_confidence_noiseMap_batchN_isFirstBatch_isLastBatch_usePatchBasedFusion_minVarWeightSum_outputChromaBias_ggMaxFusionWeights_(v124, v257, v169, configCopy, v262, v265, v260, v257, v258, v259, v266, arrayOfinputParams + 1520 * ((2 * (v169 & 0x3FFFFFFFFFFFFFFFLL)) | 1), v374, v376, fusionCopy, placeHolderTex, v387, v179[2], v378, v179[6]))
      {
        sub_2958C7B58();
LABEL_134:
        v372 = 0;
        v367 = v399[0];
        v44 = fusionCopy;
        pyramidCopy = v396;
        confidenceCopy = v387;
        goto LABEL_130;
      }

      FigMetalDecRef();
      objc_storeStrong(&location, v177);
      if (v169 < v393)
      {
        for (k = 0; k != 32; k += 8)
        {
          FigMetalDecRef();
        }

        v264 = v393;
        if (v392 & batch)
        {
          FigMetalDecRef();
        }
      }

      v273 = n != 0;
      if (!v169)
      {
        v273 = 1;
      }

      if (!v273 && v169 != v264 && (FigMetalIsValid() & 1) == 0)
      {
        v274 = objc_msgSend_width(*(*v168 + 496 + 8 * v169), v269, v270, v271);
        v278 = objc_msgSend_desc(v33, v275, v276, v277);
        objc_msgSend_setWidth_(v278, v279, v274, v280);

        v284 = objc_msgSend_height(*(*v168 + 496 + 8 * v169), v281, v282, v283);
        v288 = objc_msgSend_desc(v33, v285, v286, v287);
        objc_msgSend_setHeight_(v288, v289, v284, v290);

        v294 = objc_msgSend_desc(v33, v291, v292, v293);
        objc_msgSend_setPixelFormat_(v294, v295, 65, v296);

        objc_msgSend_setLabel_(v33, v297, 0, v298);
        v302 = objc_msgSend_allocator(selfCopy->_metal, v299, v300, v301);
        v124 = selfCopy;
        v305 = objc_msgSend_newTextureWithDescriptor_(v302, v303, v33, v304);
        v306 = v396[v169 + 62];
        v396[v169 + 62] = v305;

        if (!v396[v169 + 62])
        {
          sub_2958C7BF8();
          goto LABEL_134;
        }
      }

      if (v392)
      {
        v307 = objc_msgSend_width(v396[v169 + 62], v269, v270, v271);
        v311 = objc_msgSend_desc(v33, v308, v309, v310);
        objc_msgSend_setWidth_(v311, v312, v307, v313);

        v179 = buffersCopy;
        v317 = objc_msgSend_height(v396[v169 + 62], v314, v315, v316);
        v321 = objc_msgSend_desc(v33, v318, v319, v320);
        objc_msgSend_setHeight_(v321, v322, v317, v323);

        v327 = objc_msgSend_desc(v33, v324, v325, v326);
        objc_msgSend_setPixelFormat_(v327, v328, 65, v329);

        objc_msgSend_setLabel_(v33, v330, 0, v331);
        v335 = objc_msgSend_allocator(selfCopy->_metal, v332, v333, v334);
        v124 = selfCopy;
        v338 = objc_msgSend_newTextureWithDescriptor_(v335, v336, v33, v337);

        v395 = v338;
      }

      else
      {
        v335 = v395;
        v395 = 0;
      }

      if ((v382 & 1) == 0)
      {
        v342 = objc_msgSend_width(*(*v168 + 336), v339, v340, v341);
        v346 = objc_msgSend_height(*(*v168 + 336), v343, v344, v345);
        sub_29586AF94(v179, v342, v346, v124->_metal, 0, 1);
      }

      v347 = buffersCopy + 5;
      v123 = v393;
      if (v169)
      {
        v347 = &v396[v169 + 62];
      }

      v349 = *v347;
      v351 = 0;
      pyramidCopy = v396;
      if (v384)
      {
        v352 = 0;
      }

      else
      {
        v352 = v397;
      }

      if (v383)
      {
        v353 = 0;
      }

      else
      {
        v353 = v395;
      }

      if (v169 != v393)
      {
        v351 = v396[v169 + 63];
      }

      if (v388)
      {
        v354 = 0;
      }

      else
      {
        v354 = weightPyramidCopy[v169 + 62];
      }

      v355 = buffersCopy[1];
      if (!v355)
      {
        v355 = v124->_placeHolderTex;
      }

      *(&v379 + 5) = batch;
      BYTE4(v379) = n == 0;
      LODWORD(v379) = n;
      confidenceCopy = v387;
      LODWORD(v377) = 0;
      BYTE5(v375) = v169 == v393;
      BYTE4(v375) = 0;
      LODWORD(v375) = 2 * v169 + 2;
      *&v350 = bias;
      if (objc_msgSend_runFusionForBandIndex_config_oldFusedUpTex_oldFusedTex_fusedUpTex_fusedTex_accWeightTex_bandFusionParams_fragmentBufferIndex_processLuma_processTopBand_computeSpecialMap_inputs_simMapTex_confidence_noiseMap_batchN_isFirstBatch_isLastBatch_usePatchBasedFusion_minVarWeightSum_outputChromaBias_ggMaxFusionWeights_(v124, v348, v169, configCopy, v352, v353, v351, v349, 0.0, v350, v354, arrayOfinputParams + 3040 * v169, v375, v377, fusionCopy, v355, v387, buffersCopy[3], v379, buffersCopy[6]))
      {
        sub_2958C7C98(v349, v385, v399);
        goto LABEL_141;
      }

      FigMetalDecRef();
      objc_storeStrong(&v397, v395);
      if (v169 < v393)
      {
        for (m = 0; m != 32; m += 8)
        {
          FigMetalDecRef();
        }

        v123 = v393;
        if (v392 & batch)
        {
          FigMetalDecRef();
        }
      }

      if (v387)
      {
        FigMetalDecRef();
      }

      if (v169-- < 1)
      {
        goto LABEL_122;
      }
    }
  }

  v394 = 0;
  v395 = 0;
LABEL_122:
  if (*(pyramidCopy + 2) < 1)
  {
    v367 = 0;
    v372 = 1;
    goto LABEL_129;
  }

  v370 = 0;
  v44 = fusionCopy;
  do
  {
    for (n = 0; n != 32; n += 8)
    {
      FigMetalDecRef();
      FigMetalDecRef();
    }

    ++v370;
  }

  while (v370 < *(pyramidCopy + 2));
  v367 = 0;
  v372 = 1;
LABEL_130:

  v369 = buffersCopy;
  if (v372)
  {
    goto LABEL_131;
  }

LABEL_132:

  return v367;
}

- (SidecarWriter)sidecarWriter
{
  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);

  return WeakRetained;
}

@end