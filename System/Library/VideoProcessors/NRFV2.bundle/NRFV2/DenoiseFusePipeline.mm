@interface DenoiseFusePipeline
+ (int)prewarmShaders:(id)shaders;
+ (unint64_t)calculateBackingBufferSizeForDesc:(id)desc nrfConfig:(id)config metal:(id)metal;
- (DenoiseFusePipeline)initWithContext:(id)context nrfConfig:(id)config dasTuningOptions:(id)options toneMappingOptions:(id)mappingOptions;
- (SidecarWriter)sidecarWriter;
- (id)_runInferenceProvider:(id)provider;
- (id)getAMBNRStage:(const DenoiseRemixStageOptions *)stage;
- (int)_ensureInputBandPyramidIsAllocatedForFrame:(int)frame;
- (int)_freeInputBandPyramidForFrame:(int)frame;
- (int)addFrame:(__CVBuffer *)frame cfp:(const frameProperties_t *)cfp processingType:(unsigned int)type batchCount:(int)count;
- (int)allocateCoallesedFusionInputPyramidsForWidth:(unint64_t)width height:(unint64_t)height levels:(int)levels frames:(int)frames;
- (int)allocateResourcesIfNeededForDesc:(id)desc didAllocate:(BOOL *)allocate;
- (int)applyGlobalDistortionCorrectionInplaceWithPixelBuffer:(__CVBuffer *)buffer amount:(float)amount gdcPlist:(id)plist cscParams:(const ColorSpaceConversionParameters *)params;
- (int)baseLayer:(__CVBuffer *)layer;
- (int)collectSyntheticReferenceDetectorsResultsSync:(float *)sync srMode:(int *)mode nrfPlist:(id)plist;
- (int)computeMotionScore:(int)score ev0FrameIndex:(int)index evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties motionScore:(float *)motionScore nrfPlist:(id)plist;
- (int)computeRansacColorMatchingCoefficients:(const FusionConfiguration *)coefficients scaleEv0brightness:(float)ev0brightness applyToPyramid:(BOOL)pyramid andStoreTransform:(id *)transform;
- (int)createPyramidForFrame:(id)frame cfp:(const frameProperties_t *)cfp;
- (int)denoiseFrameWithOutput:(id)output input:(id)input localGainMap:(id)map skinMask:(id)mask skyMask:(id)skyMask maskExtent:(CGRect)extent exposure:(const exposureParameters *)exposure staticScene:(BOOL)self0 nrfPlist:(id)self1 defringeEnabled:(BOOL)self2 isLowLight:(BOOL)self3 greenGhostEnabled:(BOOL)self4 faceLandMarks:(id)self5 ev0FrameMetadata:(const frameMetadata *)self6 evmFrameMetadata:(const frameMetadata *)self7 gainMap:(id)self8;
- (int)denoiseSingleImage:(__CVBuffer *)image linearOutput:(__CVBuffer *)output input:(__CVBuffer *)input cfp:(frameProperties_t *)cfp nrfPlist:(id)plist style:(id)MetalYCbCrFormat inferenceProvider:(id)provider defringeEnabled:(BOOL)self0 colorCubeFixType:(int)self1;
- (int)doDeepFusionProxyAsset:(id)asset syntheticReference:(id)reference evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties inferenceResults:(id)results style:(id)style nrfPlist:(id)plist;
- (int)doDeepFusionPyramidGeneration:(const FusionConfiguration *)generation properties:(const frameProperties_t *)properties syntheticReferenceFramesOnly:(BOOL)only pyramidHasBeenBuiltArray:(BOOL *)array;
- (int)doGainMap:(const FusionConfiguration *)map properties:(const frameProperties_t *)properties output:(id)output outputHeadroom:(float *)headroom nrfPlist:(id)plist useFusedFrame:(BOOL)frame;
- (int)doSyntheticLong:(id)long noiseDivisorTex:(id)tex realLongNoiseDivisorTex:(id)divisorTex lscGainsTex:(id)gainsTex config:(const FusionConfiguration *)config properties:(const frameProperties_t *)properties motionScore:(float)score nrfPlist:(id)self0 intermediateMetadata:(id)self1;
- (int)downsampleBand0Frame:(id)frame sourceFrameIndex:(int)index;
- (int)freeInputBandPyramids;
- (int)fuseFramesWithConfig:(const FusionConfiguration *)config properties:(frameProperties_t *)properties nrfPlist:(id)plist batchN:(int)n isLastBatch:(BOOL)batch usePatchBasedFusion:(BOOL)fusion isLowLight:(BOOL)light;
- (int)greenGhostMitigationWithRefIndex:(int)index bracketIndex:(int)bracketIndex refProperties:(frameProperties_t *)properties otherProperties:(frameProperties_t *)otherProperties tuningParams:(id)params;
- (int)lowLightHybridRegister:(int)register refFrameIdx:(int)idx nonRefFrameProps:(frameProperties_t *)props refFrameProps:(const frameProperties_t *)frameProps canCopyBack:(BOOL)back nrfPlist:(id)plist;
- (int)nrfFusionDenseRegister:(int)register ev0FrameIndex:(int)index evmProperties:(const frameProperties_t *)properties ev0Properties:(frameProperties_t *)ev0Properties;
- (int)runMotionDetectionLL:(BOOL)l imgIndex:(int)index imgProperties:(frameProperties_t *)properties refProperties:(frameProperties_t *)refProperties;
- (int)sanityCheckRansacColorModel:(RansacModel *)model;
- (int)selectNRFFusionReferenceFrame:(int)frame ev0FrameIndex:(int)index evmProperties:(const frameProperties_t *)properties ev0Properties:(frameProperties_t *)ev0Properties nrfPlist:(id)plist;
- (int)startSyntheticReferenceDetectors:(const FusionConfiguration *)detectors properties:(const frameProperties_t *)properties nrfPlist:(id)plist;
- (int)toneMapAndDenoiseFusedFramesWithConfig:(const FusionConfiguration *)config properties:(const frameProperties_t *)properties nrfPlist:(id)plist style:(id)style output:(__CVBuffer *)output inferenceProvider:(id)provider colorCubeFixType:(int)type isLowLight:(BOOL)self0 gainMap:(id)self1;
- (int)toneMapBand1Frame:(id)frame properties:(const frameProperties_t *)properties sourceFrameType:(int)type sourceFrameIndex:(int)index ltcFrameIndex:(int)frameIndex gtcFrameIndex:(int)gtcFrameIndex nrfPlist:(id)plist;
- (uint64_t)doSyntheticReference:(double)reference noiseDivisorOutputTex:(uint64_t)tex lscGainsTex:(void *)gainsTex config:(void *)config evmProperties:(void *)properties evmGreenTintAdjustment:(uint64_t)adjustment ev0Properties:(uint64_t)ev0Properties nrfPlist:(uint64_t)self0 intermediateMetadata:(id)self1;
- (unint64_t)deepFusionBuildNoiseMap:(double)map lscGainsTex:(uint64_t)tex config:(void *)config evmProperties:(void *)properties evmGreenTintAdjustment:(uint64_t)adjustment ev0Properties:(uint64_t)ev0Properties nrfPlist:(uint64_t)plist;
- (unsigned)filterOutlierPairsInPlace:(float *)place and:(float *)and withMinX:(float)x maxX:(float)maxX inputSize:(int)size;
- (void)dealloc;
- (void)releaseAllBindings;
- (void)releaseInputBindings;
- (void)releaseResources;
- (void)reset;
- (void)resetFusion:(unsigned int)fusion;
- (void)setSidecarWriter:(id)writer;
@end

@implementation DenoiseFusePipeline

- (id)getAMBNRStage:(const DenoiseRemixStageOptions *)stage
{
  count = self->_ambnrStageCache.count;
  if (count)
  {
    v6 = 0;
    p_enableGdFlatness = &self->_ambnrStageCache.entries[0].options.enableGdFlatness;
    while (stage->lgaAlgorithm != *(p_enableGdFlatness - 9) || stage->enableBandZeroDenoising != *(p_enableGdFlatness - 5) || stage->enableBilateralRegression != *(p_enableGdFlatness - 4) || stage->enableLoGOffset != *(p_enableGdFlatness - 3) || stage->enableLowVarSharpening != *(p_enableGdFlatness - 2) || stage->enableNoiseMap != *(p_enableGdFlatness - 1) || stage->enableGdFlatness != *p_enableGdFlatness)
    {
      ++v6;
      p_enableGdFlatness += 16;
      if (count == v6)
      {
        v8 = 0;
        goto LABEL_12;
      }
    }

    v8 = objc_msgSend_objectAtIndexedSubscript_(self->_ambnrStages, a2, v6, v3);
LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v6 = objc_msgSend_prewarmShaders_(WarpStage, v4, shadersCopy, v5);
  v7 = [DenoiseFusePipelineShaders alloc];
  v10 = objc_msgSend_initWithMetal_(v7, v8, shadersCopy, v9);
  if (!v10)
  {
    v6 = -12786;
  }

  objc_msgSend_prewarmShaders_(ColorCubeCorrectionStage, v11, shadersCopy, v12);
  objc_msgSend_prewarmShaders_(BlinkDetectionStage, v13, shadersCopy, v14);

  return v6;
}

- (DenoiseFusePipeline)initWithContext:(id)context nrfConfig:(id)config dasTuningOptions:(id)options toneMappingOptions:(id)mappingOptions
{
  contextCopy = context;
  configCopy = config;
  optionsCopy = options;
  mappingOptionsCopy = mappingOptions;
  v348.receiver = self;
  v348.super_class = DenoiseFusePipeline;
  v14 = [(DenoiseFusePipeline *)&v348 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_152;
  }

  if (configCopy[61])
  {
    v16 = 0;
  }

  else
  {
    v16 = configCopy[66];
  }

  v14->_progressiveFusionEnabled = v16 & 1;
  if (configCopy[61])
  {
    v17 = 0;
  }

  else
  {
    v17 = configCopy[63];
  }

  v14->_deepFusionEnabled = v17 & 1;
  if (configCopy[61])
  {
    v18 = 0;
  }

  else
  {
    v18 = configCopy[65];
  }

  v14->_ubFusionEnabled = v18 & 1;
  objc_storeStrong(&v14->_metal, context);
  objc_storeStrong(&v15->_nrfConfig, config);
  v22 = objc_msgSend_sharedInstance(DenoiseFusePipelineShared, v19, v20, v21);
  v25 = objc_msgSend_getShaders_(v22, v23, v15->_metal, v24);
  shaders = v15->_shaders;
  v15->_shaders = v25;

  if (!v15->_shaders)
  {
    sub_2958808C0();
    goto LABEL_152;
  }

  v27 = [PyramidStage_NRF alloc];
  v346[0] = @"PyrGen.UseHW";
  v346[1] = @"PyrGen.SupportFP16";
  v347[0] = &unk_2A1CC3FD0;
  v347[1] = &unk_2A1CC3FE8;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v28, v347, v346, 2);
  v31 = objc_msgSend_initWithOptions_context_(v27, v30, v29, contextCopy);
  pyramidStage = v15->_pyramidStage;
  v15->_pyramidStage = v31;

  if (!v15->_pyramidStage)
  {
    sub_295880880();
    goto LABEL_152;
  }

  v33 = [TextureUtils alloc];
  v36 = objc_msgSend_initWithMetalContext_(v33, v34, contextCopy, v35);
  textureUtils = v15->_textureUtils;
  v15->_textureUtils = v36;

  if (!v15->_textureUtils)
  {
    sub_295880840();
    goto LABEL_152;
  }

  v38 = [ColorConvertStage alloc];
  v41 = objc_msgSend_initWithMetalContext_(v38, v39, contextCopy, v40);
  colorConvertStage = v15->_colorConvertStage;
  v15->_colorConvertStage = v41;

  if (!v15->_colorConvertStage)
  {
    sub_295880800();
    goto LABEL_152;
  }

  v43 = [GlobalDistortionCorrectionStage alloc];
  v46 = objc_msgSend_initWithMetalContext_(v43, v44, contextCopy, v45);
  globalDistortionCorrectionStage = v15->_globalDistortionCorrectionStage;
  v15->_globalDistortionCorrectionStage = v46;

  if (!v15->_globalDistortionCorrectionStage)
  {
    sub_295880774();
    goto LABEL_152;
  }

  v284 = contextCopy;
  v285 = mappingOptionsCopy;
  v15->_ambnrStageCache.count = 0;
  v48 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  ambnrStages = v15->_ambnrStages;
  v15->_ambnrStages = v48;

  v15->_doGreenGhostMitigation = 0;
  v298 = v15;
  v50 = MEMORY[0x29EDB8EB0];
  v345[0] = MEMORY[0x29EDB8EB0];
  v344[0] = @"SingleImageParameters";
  v344[1] = @"DefaultUBModeParameters";
  v53 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v51, configCopy[61] ^ 1u, v52);
  v345[1] = v53;
  v344[2] = @"ToneMappedUBParameters";
  v283 = configCopy;
  v56 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v54, configCopy[61] ^ 1u, v55);
  v345[2] = v56;
  v344[3] = @"LowLightUBParameters";
  v59 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v57, v298->_progressiveFusionEnabled, v58);
  v345[3] = v59;
  v344[4] = @"LowLightUBParameters_max";
  v62 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v60, v298->_progressiveFusionEnabled, v61);
  v345[4] = v62;
  v344[5] = @"ProxyAssetEV0RefParameters";
  v65 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v63, v298->_deepFusionEnabled, v64);
  v345[5] = v65;
  v344[6] = @"ProxyAssetEVMRefParameters";
  v68 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v66, v298->_deepFusionEnabled, v67);
  v344[7] = @"SingleImageParametersForLearnedNR";
  v345[6] = v68;
  v345[7] = v50;
  v15 = v298;
  v70 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v69, v345, v344, 8);

  v343 = 0u;
  v342 = 0u;
  v341 = 0u;
  v340 = 0u;
  obj = optionsCopy;
  v288 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v71, &v340, v339, 16);
  if (!v288)
  {
    goto LABEL_41;
  }

  v290 = *v341;
  do
  {
    v72 = 0;
    do
    {
      if (*v341 != v290)
      {
        objc_enumerationMutation(obj);
      }

      v293 = v72;
      v73 = *(*(&v340 + 1) + 8 * v72);
      v335 = 0u;
      v336 = 0u;
      v337 = 0u;
      v338 = 0u;
      v74 = v73;
      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v335, v334, 16);
      if (!v76)
      {
        goto LABEL_39;
      }

      v80 = v76;
      v81 = *v336;
      while (2)
      {
        for (i = 0; i != v80; ++i)
        {
          if (*v336 != v81)
          {
            objc_enumerationMutation(v74);
          }

          v83 = *(*(&v335 + 1) + 8 * i);
          v84 = objc_msgSend_getSharedInstance(DenoiseRemixStageConfig, v77, v78, v79);
          v87 = objc_msgSend_objectForKeyedSubscript_(v84, v85, v83, v86);

          v90 = objc_msgSend_objectForKeyedSubscript_(v74, v88, v83, v89);
          v93 = objc_msgSend_objectForKeyedSubscript_(v70, v91, v83, v92);

          if (v93)
          {
            v97 = v87 == 0;
          }

          else
          {
            v97 = 1;
          }

          if (!v97 && v90 != 0)
          {
            v333 = 0;
            v332 = 0;
            LODWORD(v332) = objc_msgSend_lgaAlgorithm(v87, v94, v95, v96);
            BYTE4(v332) = objc_msgSend_enableBandZeroDenoising(v87, v99, v100, v101);
            BYTE5(v332) = v90[18];
            BYTE6(v332) = v90[40];
            BYTE1(v333) = v90[20];
            HIBYTE(v332) = v90[19];
            LOBYTE(v333) = objc_msgSend_enableNoiseMap(v87, v102, v103, v104);
            nrfConfig = v298->_nrfConfig;
            BYTE2(v333) = nrfConfig->_enableChromaticAberrationCorrection;
            HIBYTE(v333) = nrfConfig->_greenGhostMitigationType & 1;
            v108 = objc_msgSend_getAMBNRStage_(v298, v106, &v332, v107);

            if (!v108)
            {
              v109 = [AMBNRStage alloc];
              v113 = objc_msgSend_initWithContext_denoisingOptions_(v109, v110, v298->_metal, &v332);
              if (v113)
              {
                count = v298->_ambnrStageCache.count;
                if (count < 0xA)
                {
                  v298->_ambnrStageCache.count = count + 1;
                  v115 = &v298->_ambnrStageCache.entries[count];
                  v116 = v333;
                  *(v115 + 4) = v332;
                  *(v115 + 12) = v116;
                  objc_msgSend_addObject_(v298->_ambnrStages, v111, v113, v112);

                  goto LABEL_37;
                }

                sub_29587FD78();
              }

              else
              {
                sub_29587FE04();
              }

              goto LABEL_116;
            }
          }

LABEL_37:
        }

        v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v77, &v335, v334, 16);
        if (v80)
        {
          continue;
        }

        break;
      }

LABEL_39:

      v72 = v293 + 1;
    }

    while ((v293 + 1) != v288);
    v288 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v117, &v340, v339, 16);
  }

  while (v288);
LABEL_41:

  v331 = 0u;
  v330 = 0u;
  v329 = 0u;
  v328 = 0u;
  v289 = v285;
  v294 = objc_msgSend_countByEnumeratingWithState_objects_count_(v289, v118, &v328, v327, 16);
  v120 = 0;
  if (v294)
  {
    v291 = *v329;
    do
    {
      v121 = 0;
      do
      {
        if (*v329 != v291)
        {
          objc_enumerationMutation(v289);
        }

        v122 = *(*(&v328 + 1) + 8 * v121);
        v296 = v121;
        if (v15->_nrfConfig->_isOnlySingleImage)
        {
          v326[0] = @"SingleImageParameters";
          v326[1] = @"SingleImageParametersForLearnedNR";
          objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v119, v326, 2);
        }

        else if (v15->_progressiveFusionEnabled)
        {
          v325[0] = @"SingleImageParameters";
          v325[1] = @"DefaultUBModeParameters";
          v325[2] = @"ToneMappedUBParameters";
          v325[3] = @"LowLightUBParameters";
          v325[4] = @"LowLightUBParameters_max";
          objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v119, v325, 5);
        }

        else
        {
          v324[0] = @"SingleImageParameters";
          v324[1] = @"DefaultUBModeParameters";
          v324[2] = @"ToneMappedUBParameters";
          objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v119, v324, 3);
        }
        v123 = ;
        v323 = 0u;
        v322 = 0u;
        v321 = 0u;
        v320 = 0u;
        v124 = v123;
        v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, &v320, v319, 16);
        if (v126)
        {
          v129 = v126;
          v130 = *v321;
          do
          {
            for (j = 0; j != v129; ++j)
            {
              if (*v321 != v130)
              {
                objc_enumerationMutation(v124);
              }

              v132 = *(*(&v320 + 1) + 8 * j);
              v133 = objc_msgSend_objectForKeyedSubscript_(v122, v127, v132, v128);
              v136 = v133;
              if (v133)
              {
                v120 = (*(v133 + 56) | v120) != 0;
                if (objc_msgSend_isEqual_(v132, v134, @"DefaultUBModeParameters", v135))
                {
                  v298->_srlVersion = v136[18];
                }
              }
            }

            v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v127, &v320, v319, 16);
          }

          while (v129);
        }

        v121 = v296 + 1;
        v15 = v298;
      }

      while (v296 + 1 != v294);
      v294 = objc_msgSend_countByEnumeratingWithState_objects_count_(v289, v119, &v328, v327, 16);
    }

    while (v294);
  }

  v137 = objc_alloc_init(FusionInputBands);
  inputBands = v15->_inputBands;
  v15->_inputBands = v137;

  v139 = objc_alloc_init(AMBNRBuffers);
  ambnrBuffers = v15->_ambnrBuffers;
  v15->_ambnrBuffers = v139;

  fusedBand = v15->_fusedBand;
  v15->_fusedBand = 0;

  accWeightPyramid = v15->_accWeightPyramid;
  v15->_accWeightPyramid = 0;

  v143 = [OutliersRemovalStage alloc];
  v146 = objc_msgSend_initWithMetalContext_(v143, v144, v15->_metal, v145);
  outliersRemovalStage = v15->_outliersRemovalStage;
  v15->_outliersRemovalStage = v146;

  mappingOptionsCopy = v285;
  if (v15->_nrfConfig->_isOnlySingleImage)
  {
LABEL_76:
    v192 = [ToneMappingStage alloc];
    v194 = objc_msgSend_initWithContext_mtlSuballocatorID_(v192, v193, v15->_metal, 255);
    toneMappingStage = v15->_toneMappingStage;
    v15->_toneMappingStage = v194;

    v198 = v15->_toneMappingStage;
    if (!v198)
    {
      sub_2958806E8();
      goto LABEL_157;
    }

    objc_msgSend_setEnableSTF_(v198, v196, v15->_nrfConfig->_enableSTF, v197);
    v202 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v199, v200, v201);
    objc_msgSend_setStfTuningParameters_(v15->_toneMappingStage, v203, v202, v204);

    v317 = 0u;
    v318 = 0u;
    v315 = 0u;
    v316 = 0u;
    v205 = v289;
    v297 = objc_msgSend_countByEnumeratingWithState_objects_count_(v205, v206, &v315, v314, 16);
    if (v297)
    {
      v210 = 0;
      v295 = *v316;
      v292 = v205;
      do
      {
        for (k = 0; k != v297; ++k)
        {
          if (*v316 != v295)
          {
            objc_enumerationMutation(v292);
          }

          v212 = *(*(&v315 + 1) + 8 * k);
          v213 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v207, v208, v209);
          v310 = 0u;
          v311 = 0u;
          v312 = 0u;
          v313 = 0u;
          v214 = v212;
          v216 = objc_msgSend_countByEnumeratingWithState_objects_count_(v214, v215, &v310, v309, 16);
          if (v216)
          {
            v219 = v216;
            v220 = *v311;
            do
            {
              for (m = 0; m != v219; ++m)
              {
                if (*v311 != v220)
                {
                  objc_enumerationMutation(v214);
                }

                v222 = *(*(&v310 + 1) + 8 * m);
                v224 = objc_msgSend_objectForKeyedSubscript_(v214, v217, v222, v218);
                v225 = v224[10];
                if (v225)
                {
                  objc_msgSend_setObject_forKey_(v213, v223, v225, v222);
                }
              }

              v219 = objc_msgSend_countByEnumeratingWithState_objects_count_(v214, v217, &v310, v309, 16);
            }

            while (v219);
          }

          v15 = v298;
          v229 = objc_msgSend_stfTuningParameters(v298->_toneMappingStage, v226, v227, v228);
          v232 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v230, v210, v231);
          objc_msgSend_setObject_forKey_(v229, v233, v213, v232);

          v210 = (v210 + 1);
        }

        v205 = v292;
        v297 = objc_msgSend_countByEnumeratingWithState_objects_count_(v292, v207, &v315, v314, 16);
      }

      while (v297);
    }

    v234 = [ColorCubeCorrectionStage alloc];
    v237 = objc_msgSend_init_(v234, v235, contextCopy, v236);
    ColorCubeCorrectionStage = v15->_ColorCubeCorrectionStage;
    v15->_ColorCubeCorrectionStage = v237;

    if (v15->_ColorCubeCorrectionStage)
    {
      v307 = 0u;
      v308 = 0u;
      v305 = 0u;
      v306 = 0u;
      v239 = v205;
      v241 = objc_msgSend_countByEnumeratingWithState_objects_count_(v239, v240, &v305, v304, 16);
      if (v241)
      {
        v242 = v241;
        v243 = 0;
        v244 = *v306;
        do
        {
          for (n = 0; n != v242; ++n)
          {
            if (*v306 != v244)
            {
              objc_enumerationMutation(v239);
            }

            v246 = *(*(&v305 + 1) + 8 * n);
            v300 = 0u;
            v301 = 0u;
            v302 = 0u;
            v303 = 0u;
            v247 = v246;
            v249 = objc_msgSend_countByEnumeratingWithState_objects_count_(v247, v248, &v300, v299, 16);
            if (v249)
            {
              v252 = v249;
              v253 = *v301;
              while (2)
              {
                for (ii = 0; ii != v252; ++ii)
                {
                  if (*v301 != v253)
                  {
                    objc_enumerationMutation(v247);
                  }

                  v255 = objc_msgSend_objectForKeyedSubscript_(v247, v250, *(*(&v300 + 1) + 8 * ii), v251);
                  if (v255)
                  {
                    v243 = v255[31];

                    goto LABEL_109;
                  }
                }

                v252 = objc_msgSend_countByEnumeratingWithState_objects_count_(v247, v250, &v300, v299, 16);
                if (v252)
                {
                  continue;
                }

                break;
              }

LABEL_109:
              v15 = v298;
            }
          }

          v242 = objc_msgSend_countByEnumeratingWithState_objects_count_(v239, v256, &v305, v304, 16);
        }

        while (v242);
      }

      else
      {
        v243 = 0;
      }

      if (!objc_msgSend_setMaskedSkyCubeVersion_(v15->_ColorCubeCorrectionStage, v258, v243, v259))
      {
        v260 = v15->_nrfConfig;
        configCopy = v283;
        contextCopy = v284;
        mappingOptionsCopy = v285;
        if (v260->_enableGainMap)
        {
          v261 = [GainMapStage alloc];
          v264 = objc_msgSend_initWithMetalContext_(v261, v262, v284, v263);
          gainMapStage = v15->_gainMapStage;
          v15->_gainMapStage = v264;

          if (!v15->_gainMapStage)
          {
            sub_295880620();
            goto LABEL_152;
          }

          v260 = v15->_nrfConfig;
        }

        if (v260->_enableSemanticStyles)
        {
          v266 = [SemanticStylesStage alloc];
          v269 = objc_msgSend_initWithMetalContext_(v266, v267, v284, v268);
          styleStage = v15->_styleStage;
          v15->_styleStage = v269;

          if (!v15->_styleStage)
          {
            sub_2958805BC();
            goto LABEL_152;
          }

          v260 = v15->_nrfConfig;
        }

        if ((v260->_greenGhostMitigationType & 2) != 0)
        {
          v271 = [GreenGhostLowLightStage alloc];
          v274 = objc_msgSend_initWithMetalContext_(v271, v272, v284, v273);
          greenGhostLowLightStage = v15->_greenGhostLowLightStage;
          v15->_greenGhostLowLightStage = v274;

          if (!v15->_greenGhostLowLightStage)
          {
            sub_295880440();
            goto LABEL_152;
          }

          v276 = objc_opt_new();
          greenGhostBuffers = v15->_greenGhostBuffers;
          v15->_greenGhostBuffers = v276;

          if (!v15->_greenGhostBuffers)
          {
            sub_2958803DC();
            goto LABEL_152;
          }
        }

        v278 = objc_alloc_init(FusionBuffers);
        fusionBuffers = v15->_fusionBuffers;
        v15->_fusionBuffers = v278;

        if (v15->_fusionBuffers)
        {
          v15->_currentFrame = 0;
          v15->_isStaticScene = 0;
          v15->_fusionReferenceFrame = 0;
          v280 = objc_opt_new();
          v281 = v15->_fusedBand;
          v15->_fusedBand = v280;

          if (v15->_fusedBand)
          {
            v257 = v15;
            goto LABEL_153;
          }

          sub_2958804A4();
        }

        else
        {
          sub_295880530();
        }

LABEL_152:
        v257 = 0;
        goto LABEL_153;
      }

      sub_29588037C();
LABEL_116:
      v257 = 0;
      contextCopy = v284;
    }

    else
    {
      sub_295880684();
      v257 = 0;
    }

    configCopy = v283;
    mappingOptionsCopy = v285;
    goto LABEL_153;
  }

  v148 = [WarpStage alloc];
  inited = objc_msgSend_initWarpStage_(v148, v149, v15->_metal, v150);
  warpStage = v15->_warpStage;
  v15->_warpStage = inited;

  if (v15->_warpStage)
  {
    v153 = [FusionRemixStage alloc];
    isPrewarm = objc_msgSend_initBandFusion_nrfConfig_isPrewarm_(v153, v154, v15->_metal, v15->_nrfConfig, 0);
    fusionRemixStage = v15->_fusionRemixStage;
    v15->_fusionRemixStage = isPrewarm;

    if (v15->_fusionRemixStage)
    {
      v157 = [MotionDetection alloc];
      v160 = objc_msgSend_initWithMetalContext_(v157, v158, v15->_metal, v159);
      motionDetection = v15->_motionDetection;
      v15->_motionDetection = v160;

      if (v15->_motionDetection)
      {
        v162 = [GrayGhostDetection alloc];
        v165 = objc_msgSend_initWithMetalContext_(v162, v163, v15->_metal, v164);
        grayGhostDetection = v15->_grayGhostDetection;
        v15->_grayGhostDetection = v165;

        if (v15->_grayGhostDetection)
        {
          v167 = [BlinkDetectionStage alloc];
          v170 = objc_msgSend_init_(v167, v168, v15->_metal, v169);
          blinkDetectionStage = v15->_blinkDetectionStage;
          v15->_blinkDetectionStage = v170;

          if (v15->_blinkDetectionStage)
          {
            if ((v120 || v15->_nrfConfig->_enableBilateralGridForHybridRegistration) && (v172 = [BilateralGrid alloc], v175 = objc_msgSend_initWithContext_(v172, v173, v15->_metal, v174), bilateralGrid = v15->_bilateralGrid, v15->_bilateralGrid = v175, bilateralGrid, !v15->_bilateralGrid))
            {
              sub_295880034();
            }

            else
            {
              v177 = [RegDense alloc];
              v180 = objc_msgSend_initWithMetalContext_(v177, v178, v15->_metal, v179);
              regDense = v15->_regDense;
              v15->_regDense = v180;

              if (v15->_regDense)
              {
                if (!v15->_nrfConfig->_enableDeepFusion)
                {
                  goto LABEL_76;
                }

                v182 = [SyntheticReferenceStage alloc];
                v185 = objc_msgSend_initWithMetalContext_(v182, v183, v15->_metal, v184);
                syntheticReferenceStage = v15->_syntheticReferenceStage;
                v15->_syntheticReferenceStage = v185;

                if (v15->_syntheticReferenceStage)
                {
                  v187 = [SyntheticLongStage alloc];
                  v190 = objc_msgSend_initWithMetalContext_(v187, v188, v15->_metal, v189);
                  syntheticLongStage = v15->_syntheticLongStage;
                  v15->_syntheticLongStage = v190;

                  if (v15->_syntheticLongStage)
                  {
                    goto LABEL_76;
                  }

                  sub_29587FE90();
                }

                else
                {
                  sub_29587FF1C();
                }
              }

              else
              {
                sub_29587FFA8();
              }
            }
          }

          else
          {
            sub_2958800C0();
          }
        }

        else
        {
          sub_29588014C();
        }
      }

      else
      {
        sub_2958801D8();
      }
    }

    else
    {
      sub_295880264();
    }
  }

  else
  {
    sub_2958802F0();
  }

LABEL_157:
  v257 = 0;
  configCopy = v283;
LABEL_153:

  return v257;
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = DenoiseFusePipeline;
  [(DenoiseFusePipeline *)&v5 dealloc];
}

- (void)reset
{
  objc_msgSend_releaseInputBindings(self, a2, v2, v3);
  objc_msgSend_reset(self->_toneMappingStage, v5, v6, v7);
  objc_msgSend_releasePyramidsBottom(self->_ambnrBuffers, v8, v9, v10);
  if (!self->_nrfConfig->_isOnlySingleImage)
  {
    objc_msgSend_reset(self->_regDense, v11, v12, v13);
  }

  self->_isStaticScene = 0;
  self->_currentFrame = 0;
}

- (void)releaseResources
{
  objc_msgSend_waitForIdle(self->_metal, a2, v2, v3);
  objc_msgSend_releaseAllBindings(self, v5, v6, v7);
  objc_msgSend_releaseTextures(self->_bilateralGrid, v8, v9, v10);
  toneMappingCurvesUBFusion = self->_toneMappingCurvesUBFusion;
  self->_toneMappingCurvesUBFusion = 0;

  toneMappingCurvesSkinMapInput = self->_toneMappingCurvesSkinMapInput;
  self->_toneMappingCurvesSkinMapInput = 0;

  accWeightPyramid = self->_accWeightPyramid;
  self->_accWeightPyramid = 0;
}

- (void)releaseAllBindings
{
  objc_msgSend_reset(self, a2, v2, v3);
  objc_msgSend_reset(self->_greenGhostLowLightStage, v5, v6, v7);
  objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v8, self->_fusedBand, self->_metal);
  objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v9, self->_accWeightPyramid, self->_metal);
  if (self->_fusionBuffers)
  {
    FigMetalDecRef();
    FigMetalDecRef();
    FigMetalDecRef();
    FigMetalDecRef();
    if (self->_fusionBuffers)
    {
      FigMetalDecRef();
    }
  }

  if (self->_greenGhostBuffers)
  {
    FigMetalDecRef();
    FigMetalDecRef();
    FigMetalDecRef();
  }

  objc_msgSend_releaseBuffers(self->_ambnrBuffers, v10, v11, v12);
  objc_msgSend_releaseResources(self->_motionDetection, v13, v14, v15);
  for (i = 0; i != 5; ++i)
  {
    inputBands = self->_inputBands;
    if (inputBands)
    {
      objc_msgSend_makePyramidAliasable_metal_releaseBand0_(PyramidStorage_NRF, v16, inputBands->bands[i], self->_metal, 1);
      objc_msgSend_releaseBuffers(self->_inputBands->bands[i], v19, v20, v21);
    }

    v22 = self + i * 8;
    v23 = self->_inputLuma[i];
    self->_inputLuma[i] = 0;

    v24 = self->_inputChroma[i];
    *(v22 + 8) = 0;

    v25 = self->_inputYCbCr[i];
    *(v22 + 13) = 0;
  }
}

- (void)releaseInputBindings
{
  for (i = 0; i != 5; ++i)
  {
    inputBands = self->_inputBands;
    if (inputBands)
    {
      objc_msgSend_clearLevel_(inputBands->bands[i], a2, 0, v2);
    }

    v6 = self + i * 8;
    v7 = self->_inputLuma[i];
    self->_inputLuma[i] = 0;

    v8 = self->_inputChroma[i];
    *(v6 + 8) = 0;

    v9 = self->_inputYCbCr[i];
    *(v6 + 13) = 0;
  }
}

+ (unint64_t)calculateBackingBufferSizeForDesc:(id)desc nrfConfig:(id)config metal:(id)metal
{
  configCopy = config;
  v7 = *(configCopy + 61);
  v8 = configCopy[5];
  v9 = configCopy[7];
  v10 = configCopy[24];
  descCopy = desc;
  v15 = objc_msgSend_width(descCopy, v12, v13, v14);
  v19 = objc_msgSend_height(descCopy, v16, v17, v18);

  if (configCopy[5] == 1 && (configCopy[7] & 0x80000000) == 0)
  {
    sub_2958809E4();
    goto LABEL_20;
  }

  if (v7)
  {
    v20 = 100.0;
    if ((v15 / v19) > 1.5)
    {
      v20 = 85.0;
    }

    v21 = v20;
    if (!v20)
    {
      sub_29588094C();
LABEL_20:
      v21 = 0;
    }
  }

  else
  {
    v22 = 173;
    if (v8 == 2)
    {
      v22 = 183;
    }

    if (configCopy[19])
    {
      v21 = v22 + ((4 * v10) & 8);
    }

    else
    {
      v21 = 250;
      if (*(configCopy + 77))
      {
        v21 = 320;
      }
    }
  }

  v23 = 0.78;
  if (v9 <= 0)
  {
    v23 = 1.0;
  }

  if (!v9)
  {
    v23 = 1.03;
  }

  v24 = vcvts_n_u32_f32(v23 * v21, 0x14uLL);

  return v24;
}

- (int)allocateCoallesedFusionInputPyramidsForWidth:(unint64_t)width height:(unint64_t)height levels:(int)levels frames:(int)frames
{
  heightCopy = height;
  widthCopy = width;
  if (frames >= 1)
  {
    for (i = 0; i != frames; ++i)
    {
      self->_inputBands->bands[i]->levels = levels;
    }
  }

  v11 = objc_msgSend_allocator(self->_metal, a2, width, height);
  v15 = objc_msgSend_newTextureDescriptor(v11, v12, v13, v14);

  if (v15)
  {
    v19 = objc_msgSend_desc(v15, v16, v17, v18);
    objc_msgSend_setUsage_(v19, v20, 7, v21);

    if (levels >= 2)
    {
      v24 = 8 * frames;
      v25 = 1;
      levelsCopy = levels;
      while (1)
      {
        if ((widthCopy & 2) != 0)
        {
          sub_295880A7C();
          goto LABEL_20;
        }

        if ((heightCopy & 2) != 0)
        {
          sub_295880B14();
          goto LABEL_20;
        }

        v88 = heightCopy >> 1;
        v89 = widthCopy >> 1;
        if (frames >= 1)
        {
          break;
        }

LABEL_16:
        ++v25;
        heightCopy = v88;
        widthCopy = v89;
        if (v25 == levelsCopy)
        {
          goto LABEL_20;
        }
      }

      v87 = heightCopy;
      v26 = 0;
      do
      {
        objc_msgSend_setLabel_(v15, v22, 0, v23);
        v30 = objc_msgSend_desc(v15, v27, v28, v29);
        objc_msgSend_setWidth_(v30, v31, (widthCopy >> 1) & 0xFFFFFFFE, v32);

        v36 = objc_msgSend_desc(v15, v33, v34, v35);
        objc_msgSend_setHeight_(v36, v37, v88 & 0xFFFFFFFE, v38);

        v42 = objc_msgSend_desc(v15, v39, v40, v41);
        objc_msgSend_setPixelFormat_(v42, v43, 25, v44);

        v48 = objc_msgSend_allocator(self->_metal, v45, v46, v47);
        v51 = objc_msgSend_newTextureWithDescriptor_(v48, v49, v15, v50);
        textureY = self->_inputBands->bands[v26 / 8]->textureY;
        v53 = textureY[v25];
        textureY[v25] = v51;

        if (!self->_inputBands->bands[v26 / 8]->textureY[v25])
        {
          sub_295880C44();
          goto LABEL_20;
        }

        v26 += 8;
      }

      while (v24 != v26);
      v54 = 0;
      v55 = (widthCopy >> 2) & 0x7FFFFFFF;
      while (1)
      {
        objc_msgSend_setLabel_(v15, v22, 0, v23);
        v59 = objc_msgSend_desc(v15, v56, v57, v58);
        objc_msgSend_setWidth_(v59, v60, v55, v61);

        v65 = objc_msgSend_desc(v15, v62, v63, v64);
        objc_msgSend_setHeight_(v65, v66, (v87 >> 2) & 0x7FFFFFFF, v67);

        v71 = objc_msgSend_desc(v15, v68, v69, v70);
        objc_msgSend_setPixelFormat_(v71, v72, 65, v73);

        v77 = objc_msgSend_allocator(self->_metal, v74, v75, v76);
        v80 = objc_msgSend_newTextureWithDescriptor_(v77, v78, v15, v79);
        textureUV = self->_inputBands->bands[v54 / 8]->textureUV;
        v82 = textureUV[v25];
        textureUV[v25] = v80;

        v83 = self->_inputBands->bands[v54 / 8];
        if (!v83->textureUV[v25])
        {
          break;
        }

        v83->isFP16[v25] = 1;
        v54 += 8;
        if (v24 == v54)
        {
          goto LABEL_16;
        }
      }

      sub_295880BAC();
    }
  }

  else
  {
    sub_295880CDC();
  }

LABEL_20:

  return 0;
}

- (int)allocateResourcesIfNeededForDesc:(id)desc didAllocate:(BOOL *)allocate
{
  descCopy = desc;
  v10 = objc_msgSend_width(descCopy, v7, v8, v9);
  v14 = objc_msgSend_height(descCopy, v11, v12, v13);
  v18 = MEMORY[0x29EDB9270];
  if (((v10 | v14) & 0xF) != 0)
  {
    sub_295881068(&v59);
    v36 = v59;
    goto LABEL_31;
  }

  v19 = v10;
  v20 = v14;
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  if (self->_lastWidth == v10 && self->_lastHeight == v20)
  {
    lastPixelFormat = self->_lastPixelFormat;
    if (lastPixelFormat == objc_msgSend_pixelFormat(descCopy, v15, v16, v17))
    {
      v22 = 0;
      goto LABEL_19;
    }
  }

  v23 = objc_opt_new();
  v26 = v23;
  if (!v23)
  {
    sub_295880FCC(&v59);
LABEL_29:
    v36 = v59;
    goto LABEL_30;
  }

  objc_msgSend_setUsage_(v23, v24, 7, v25);
  objc_msgSend_releaseResources(self, v27, v28, v29);
  ResourcesForWidth_height_srlVersion = objc_msgSend_allocateResourcesForWidth_height_srlVersion_(self->_toneMappingStage, v30, v19, v20, self->_srlVersion);
  if (ResourcesForWidth_height_srlVersion)
  {
    v36 = ResourcesForWidth_height_srlVersion;
    sub_295880D74();
    goto LABEL_30;
  }

  nrfConfig = self->_nrfConfig;
  if (nrfConfig->_isOnlySingleImage)
  {
    goto LABEL_16;
  }

  bilateralGrid = self->_bilateralGrid;
  if (!bilateralGrid)
  {
    goto LABEL_16;
  }

  if (!nrfConfig->_enableBilateralGridForHybridRegistration)
  {
    v60 = 0;
    v59 = xmmword_2958D5BD8;
    v37 = objc_msgSend_setupWithConfig_width_height_(bilateralGrid, v32, &v59, v19, v20);
    if (v37)
    {
      v36 = v37;
      sub_295880DD4(v37, &v59);
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  v60 = 0;
  v59 = xmmword_2958D5BC0;
  v35 = objc_msgSend_setupWithConfig_width_height_(bilateralGrid, v32, &v59, v19 >> 3, v20 >> 3);
  if (!v35)
  {
LABEL_16:
    v38 = [ToneMappingCurves alloc];
    v41 = objc_msgSend_initWithWithContext_(v38, v39, self->_metal, v40);
    toneMappingCurvesUBFusion = self->_toneMappingCurvesUBFusion;
    self->_toneMappingCurvesUBFusion = v41;

    if (self->_toneMappingCurvesUBFusion)
    {
      v43 = [ToneMappingCurves alloc];
      v46 = objc_msgSend_initWithWithContext_(v43, v44, self->_metal, v45);
      toneMappingCurvesSkinMapInput = self->_toneMappingCurvesSkinMapInput;
      self->_toneMappingCurvesSkinMapInput = v46;

      if (self->_toneMappingCurvesSkinMapInput)
      {
        objc_msgSend_setEnableSTF_(self->_toneMappingCurvesUBFusion, v48, self->_nrfConfig->_enableSTF, v49);
        objc_msgSend_setEnableSTF_(self->_toneMappingCurvesSkinMapInput, v50, self->_nrfConfig->_enableSTF, v51);
        self->_lastWidth = v19;
        self->_lastHeight = v20;
        self->_lastPixelFormat = objc_msgSend_pixelFormat(descCopy, v52, v53, v54);

        v22 = 1;
LABEL_19:
        v36 = 0;
        if (allocate)
        {
          *allocate = v22;
        }

        goto LABEL_21;
      }

      sub_295880E94(&v59);
    }

    else
    {
      sub_295880F30(&v59);
    }

    goto LABEL_29;
  }

  v36 = v35;
  sub_295880E34(v35, &v59);
LABEL_30:

LABEL_31:
  if (v36)
  {
    objc_msgSend_releaseResources(self, v56, v57, v58);
  }

LABEL_21:
  if (*v18 == 1)
  {
    kdebug_trace();
  }

  return v36;
}

- (void)setSidecarWriter:(id)writer
{
  obj = writer;
  if (!self->_nrfConfig->_isOnlySingleImage)
  {
    objc_msgSend_setSidecarWriter_(self->_fusionRemixStage, v4, obj, v5);
    objc_msgSend_setSidecarWriter_(self->_toneMappingStage, v6, obj, v7);
    objc_msgSend_setSidecarWriter_(self->_syntheticReferenceStage, v8, obj, v9);
    objc_msgSend_setSidecarWriter_(self->_syntheticLongStage, v10, obj, v11);
  }

  objc_msgSend_setSidecarWriter_(self->_greenGhostLowLightStage, v4, obj, v5);
  objc_storeWeak(&self->_sidecarWriter, obj);
}

- (int)denoiseFrameWithOutput:(id)output input:(id)input localGainMap:(id)map skinMask:(id)mask skyMask:(id)skyMask maskExtent:(CGRect)extent exposure:(const exposureParameters *)exposure staticScene:(BOOL)self0 nrfPlist:(id)self1 defringeEnabled:(BOOL)self2 isLowLight:(BOOL)self3 greenGhostEnabled:(BOOL)self4 faceLandMarks:(id)self5 ev0FrameMetadata:(const frameMetadata *)self6 evmFrameMetadata:(const frameMetadata *)self7 gainMap:(id)self8
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  outputCopy = output;
  inputCopy = input;
  mapCopy = map;
  maskCopy = mask;
  skyMaskCopy = skyMask;
  plistCopy = plist;
  marksCopy = marks;
  gainMapCopy = gainMap;
  v32 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270])
  {
    v33 = objc_msgSend_commandQueue(self->_metal, v29, v30, v31);
    v37 = objc_msgSend_commandBuffer(v33, v34, v35, v36);

    objc_msgSend_setLabel_(v37, v38, @"KTRACE_START_MTL", v39);
    objc_msgSend_addCompletedHandler_(v37, v40, &unk_2A1CA91E0, v41);
    objc_msgSend_commit(v37, v42, v43, v44);
  }

  v45 = inputCopy[2];
  v171 = inputCopy[3];
  v49 = objc_msgSend_allocator(self->_metal, v46, v47, v48);
  v53 = objc_msgSend_newTextureDescriptor(v49, v50, v51, v52);

  if (!v53)
  {
    sub_2958815A0(v179);
LABEL_33:
    v148 = v179[0];
    goto LABEL_28;
  }

  v57 = objc_msgSend_desc(v53, v54, v55, v56);
  objc_msgSend_setUsage_(v57, v58, 7, v59);

  v178 = 0;
  v173 = mapCopy != 0;
  fusionAlgo = self->_fusionAlgo;
  if (fusionAlgo)
  {
    learnedNREnabled = 1;
  }

  else
  {
    learnedNREnabled = self->_nrfConfig->_learnedNREnabled;
  }

  v174 = learnedNREnabled;
  v64 = plistCopy[2];
  v175 = v64[18];
  v176 = v64[40];
  v177 = v64[19];
  LOBYTE(v178) = fusionAlgo != 0;
  BYTE1(v178) = v64[20];
  v65 = objc_msgSend_getAMBNRStage_(self, v60, &v173, v61);
  if (!v65)
  {
    sub_295881504(v179);
    goto LABEL_33;
  }

  v66 = v65;
  v164 = mapCopy;
  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);
  objc_msgSend_setSidecarWriter_(v66, v68, WeakRetained, v69);

  self->_ambnrBuffers->pyramid->levels = 4;
  metal = self->_metal;
  v74 = objc_msgSend_width(v45, v71, v72, v73);
  v78 = objc_msgSend_height(v45, v75, v76, v77);
  isFP16_pyramid = objc_msgSend_allocatePyramidWithMetalContext_label_width_height_isFP16_pyramid_(PyramidStorage_NRF, v79, metal, @"_ambnrBuffers->pyramid", v74, v78, 1, self->_ambnrBuffers->pyramid);
  if (isFP16_pyramid)
  {
    v148 = isFP16_pyramid;
    sub_295881104(isFP16_pyramid, v66);
    mapCopy = v164;
  }

  else
  {
    mapCopy = v164;
    if (objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_ambnrBuffers->pyramid, v81, v45, v171, 0, self->_metal))
    {
      sub_295881174();
    }

    else
    {
      if (v178 != 1 || !objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_ambnrBuffers->noiseMapPyramid, v82, self->_fusionBuffers->noiseMapLumaTex, self->_fusionBuffers->noiseMapChromaTex, 0, self->_metal))
      {
        if ((v177 & 1) != 0 || BYTE2(v178) == 1)
        {
          self->_ambnrBuffers->sharpeningPyramid->levels = 4;
          v85 = self->_metal;
          v86 = objc_msgSend_width(v45, v82, v83, v84);
          v90 = objc_msgSend_height(v45, v87, v88, v89);
          Chroma_pyramid = objc_msgSend_allocatePyramidWithMetalContext_label_width_height_isFP16_createLuma_createChroma_pyramid_(PyramidStorage_NRF, v91, v85, @"_ambnrBuffers->sharpeningPyramid", v86, v90, 1, 0, 1, self->_ambnrBuffers->sharpeningPyramid);
          if (Chroma_pyramid)
          {
            v148 = Chroma_pyramid;
            sub_2958812B4(Chroma_pyramid, v66);
            mapCopy = v164;
            goto LABEL_27;
          }

          v96 = objc_msgSend_width(v171, v93, v94, v95);
          v100 = objc_msgSend_desc(v53, v97, v98, v99);
          objc_msgSend_setWidth_(v100, v101, v96, v102);

          v106 = objc_msgSend_height(v171, v103, v104, v105);
          v110 = objc_msgSend_desc(v53, v107, v108, v109);
          objc_msgSend_setHeight_(v110, v111, v106, v112);

          v116 = objc_msgSend_desc(v53, v113, v114, v115);
          objc_msgSend_setPixelFormat_(v116, v117, 65, v118);

          objc_msgSend_setLabel_(v53, v119, 0, v120);
          v124 = objc_msgSend_allocator(self->_metal, v121, v122, v123);
          v127 = objc_msgSend_newTextureWithDescriptor_(v124, v125, v53, v126);
          sharpeningPyramid = self->_ambnrBuffers->sharpeningPyramid;
          v129 = sharpeningPyramid->textureUV[0];
          sharpeningPyramid->textureUV[0] = v127;

          mapCopy = v164;
          if (!self->_ambnrBuffers->sharpeningPyramid->textureUV[0])
          {
            sub_295881464();
            v148 = v179[0];
            goto LABEL_27;
          }

          v133 = objc_msgSend_desc(v53, v130, v131, v132);
          self->_ambnrBuffers->sharpeningPyramid->isFP16[0] = objc_msgSend_pixelFormat(v133, v134, v135, v136) == 65;
        }

        ambnrBuffers = self->_ambnrBuffers;
        pyramid = ambnrBuffers->pyramid;
        if (v178 == 1)
        {
          noiseMapPyramid = ambnrBuffers->noiseMapPyramid;
        }

        else
        {
          noiseMapPyramid = 0;
        }

        if ((v177 & 1) != 0 || BYTE2(v178) == 1)
        {
          v140 = objc_msgSend_setResourcesWithOutput_inputPyramid_noiseMapPyramid_sharpeningPyramid_localGainMapTex_(v66, v82, outputCopy, pyramid, noiseMapPyramid, ambnrBuffers->sharpeningPyramid, mapCopy);
        }

        else
        {
          v140 = objc_msgSend_setResourcesWithOutput_inputPyramid_noiseMapPyramid_sharpeningPyramid_localGainMapTex_(v66, v82, outputCopy, pyramid, noiseMapPyramid, 0, mapCopy);
        }

        if (v140)
        {
          sub_295881324();
        }

        else
        {
          LOBYTE(v162) = ghostEnabled;
          if (!objc_msgSend_runWithExposure_staticScene_dasPlist_nmPlist_defringingTuning_greenGhostBrightLightTuning_greenGhostEnabled_skinMask_skyMask_maskExtent_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_defringeEnabled_isLowLight_gainMap_(v66, v141, exposure, scene, plistCopy[2], plistCopy[4], plistCopy[12], plistCopy[14], x, y, width, height, v162, maskCopy, skyMaskCopy, marksCopy, metadata, frameMetadata, __PAIR16__(light, enabled), gainMapCopy))
          {
            FigMetalDecRef();
            FigMetalDecRef();
            objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v142, self->_ambnrBuffers->noiseMapPyramid, self->_metal);
            FigMetalDecRef();
            objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v143, self->_ambnrBuffers->sharpeningPyramid, self->_metal);
            objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v144, self->_ambnrBuffers->pyramid, self->_metal);

            v148 = 0;
LABEL_27:
            v32 = MEMORY[0x29EDB9270];
            goto LABEL_28;
          }

          sub_2958813C4();
        }

        v148 = v179[0];
        goto LABEL_27;
      }

      sub_295881214();
    }

    v148 = v179[0];
  }

LABEL_28:
  if (*v32)
  {
    v149 = objc_msgSend_commandQueue(self->_metal, v145, v146, v147);
    v153 = objc_msgSend_commandBuffer(v149, v150, v151, v152);

    objc_msgSend_setLabel_(v153, v154, @"KTRACE_END_MTL", v155);
    v172[0] = MEMORY[0x29EDCA5F8];
    v172[1] = 3221225472;
    v172[2] = sub_2958016DC;
    v172[3] = &unk_29EDDBE78;
    memset(&v172[4], 0, 24);
    objc_msgSend_addCompletedHandler_(v153, v156, v172, v157);
    objc_msgSend_commit(v153, v158, v159, v160);
  }

  return v148;
}

- (int)applyGlobalDistortionCorrectionInplaceWithPixelBuffer:(__CVBuffer *)buffer amount:(float)amount gdcPlist:(id)plist cscParams:(const ColorSpaceConversionParameters *)params
{
  if (plist)
  {
    v11 = *(plist + 20) / 1000.0;
    plistCopy = plist;
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
    *v20 = amount;
    *&v20[1] = v11 * v11;
    *&v15 = vcvts_n_f32_u64(WidthOfPlane, 1uLL) + *(plistCopy + 18);
    *(&v15 + 1) = vcvts_n_f32_u64(HeightOfPlane, 1uLL) + *(plistCopy + 19);
    v21 = v15;
    v16 = *(plistCopy + 40);
    v23 = *(plistCopy + 56);
    v22 = v16;
    v18 = objc_msgSend_applyInplace_gdcParams_cscParams_(self->_globalDistortionCorrectionStage, v17, buffer, v20, params);
  }

  else
  {
    sub_29588163C(0, &v24);
    v18 = v24;
  }

  return v18;
}

- (int)baseLayer:(__CVBuffer *)layer
{
  MetalLumaFormat = objc_msgSend_getMetalLumaFormat_(LumaChromaImage, a2, layer, v3);
  v9 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(self->_metal, v7, layer, MetalLumaFormat, 1, 0, 16);
  if (v9)
  {
    if (objc_msgSend_filter_output_(self->_bilateralGrid, v8, v9, 0))
    {
      sub_2958816E8(&v12);
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_295881784(&v13);
    v10 = v13;
  }

  return v10;
}

- (int)createPyramidForFrame:(id)frame cfp:(const frameProperties_t *)cfp
{
  if (objc_msgSend_setResourcesWithPyramid_(self->_pyramidStage, a2, frame, cfp))
  {
    sub_295881820(&v11);
    return v11;
  }

  objc_msgSend_setColorSpace_withParams_(self->_pyramidStage, v6, LODWORD(cfp[1].meta.ROI.origin.y), &cfp[1].meta.ROI.size.height);
  v10 = 1084227584;
  v9[0] = xmmword_2958D5BF0;
  v9[1] = unk_2958D5C00;
  if (self->_fusionAlgo == 2)
  {
    return 0;
  }

  result = objc_msgSend_runGPUWithFilters_doShift_(self->_pyramidStage, v7, v9, 1);
  if (result)
  {
    sub_2958818BC(&v11);
    return v11;
  }

  return result;
}

- (int)selectNRFFusionReferenceFrame:(int)frame ev0FrameIndex:(int)index evmProperties:(const frameProperties_t *)properties ev0Properties:(frameProperties_t *)ev0Properties nrfPlist:(id)plist
{
  plistCopy = plist;
  v13 = self->_inputBands->bands[frame];
  v15 = self->_inputBands->bands[index];
  if (!self->_fusionReferenceFrame)
  {
    v16 = MEMORY[0x29EDB9270];
    if (*MEMORY[0x29EDB9270] == 1)
    {
      kdebug_trace();
    }

    v17 = objc_msgSend_selectNRFFusionReferenceFrame_ev0Bands_evmProperties_ev0Properties_nrfPlist_outputFusionMode_staticScene_motionDetection_grayGhostDetection_(self->_fusionRemixStage, v14, v13, v15, properties, ev0Properties, plistCopy, &self->_fusionReferenceFrame, &self->_isStaticScene, self->_motionDetection, self->_grayGhostDetection);
    if (v17)
    {
      v19 = v17;
      sub_295881958();
      goto LABEL_10;
    }

    if (*v16 == 1)
    {
      kdebug_trace();
    }
  }

  if (dword_2A18C2398)
  {
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v19 = 0;
LABEL_10:

  return v19;
}

- (int)nrfFusionDenseRegister:(int)register ev0FrameIndex:(int)index evmProperties:(const frameProperties_t *)properties ev0Properties:(frameProperties_t *)ev0Properties
{
  v11 = objc_msgSend_allocator(self->_metal, a2, *&register, *&index);
  v15 = objc_msgSend_newTextureDescriptor(v11, v12, v13, v14);

  if (!v15)
  {
    sub_295881F58(&v95);
    v89 = v95;
    goto LABEL_21;
  }

  v19 = objc_msgSend_desc(v15, v16, v17, v18);
  objc_msgSend_setUsage_(v19, v20, 7, v21);

  if (self->_fusionReferenceFrame == 2)
  {
    v22 = self->_inputBands->bands[register];
    v23 = self->_inputBands->bands[index];
    v24 = objc_opt_new();
    if (!v24)
    {
      sub_295881EBC(&v95);
      v89 = v95;
      goto LABEL_20;
    }

    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    v99 = __invert_f3(*&properties[1].meta.exposureParams.conversion_gain);
    DWORD2(v95) = v99.columns[0].i32[2];
    DWORD2(v96) = v99.columns[1].i32[2];
    *&v95 = v99.columns[0].i64[0];
    *&v96 = v99.columns[1].i64[0];
    DWORD2(v97) = v99.columns[2].i32[2];
    *&v97 = v99.columns[2].i64[0];
    v25 = sub_295820728(&properties->meta.exposureParams, &ev0Properties->meta.exposureParams, ev0Properties);
    v26 = objc_opt_new();
    v27 = v26;
    if (!v26)
    {
      sub_295881E20(&v98);
      v89 = v98;
      goto LABEL_19;
    }

    ev0PropertiesCopy = ev0Properties;
    objc_storeStrong((v26 + 16), v22->textureY[0]);
    objc_storeStrong(v27 + 3, v22->textureUV[0]);
    v28 = objc_opt_new();
    v29 = v28;
    if (!v28)
    {
      sub_295881D84(&v98);
      v89 = v98;
      goto LABEL_18;
    }

    objc_storeStrong((v28 + 16), v23->textureY[0]);
    v94 = v23;
    v30 = v29;
    objc_storeStrong(v29 + 3, v23->textureUV[0]);
    regDense = self->_regDense;
    v35 = objc_msgSend_width(v27[2], v32, v33, v34);
    v39 = objc_msgSend_height(v27[2], v36, v37, v38);
    v41 = objc_msgSend_prepareWithImageWidth_imageHeight_(regDense, v40, v35, v39);
    if (v41)
    {
      v89 = v41;
      sub_2958819B8();
      v23 = v94;
      v29 = v30;
      goto LABEL_18;
    }

    v45 = objc_msgSend_width(v27[3], v42, v43, v44);
    v49 = objc_msgSend_desc(v15, v46, v47, v48);
    objc_msgSend_setWidth_(v49, v50, v45, v51);

    v55 = objc_msgSend_height(v27[3], v52, v53, v54);
    v59 = objc_msgSend_desc(v15, v56, v57, v58);
    objc_msgSend_setHeight_(v59, v60, v55, v61);

    v65 = objc_msgSend_desc(v15, v62, v63, v64);
    objc_msgSend_setPixelFormat_(v65, v66, 65, v67);

    objc_msgSend_setLabel_(v15, v68, 0, v69);
    v73 = objc_msgSend_allocator(self->_metal, v70, v71, v72);
    v76 = objc_msgSend_newTextureWithDescriptor_(v73, v74, v15, v75);
    v77 = v24[3];
    v24[3] = v76;

    if (!v24[3])
    {
      sub_295881CE8(&v98);
      v89 = v98;
      v23 = v94;
      v29 = v30;
      goto LABEL_18;
    }

    v29 = v30;
    *&v79 = v25;
    v80 = objc_msgSend_runWithReferenceImage_nonReferenceImage_warpedImage_relativeBrightness_homography_(self->_regDense, v78, v27, v30, v24, &v95, v79);
    v23 = v94;
    if (v80)
    {
      v89 = v80;
      sub_295881A18();
      goto LABEL_18;
    }

    v83 = ev0PropertiesCopy;
    objc_msgSend_resetIncludingConfidence_(self->_regDense, v81, 0, v82);
    ev0PropertiesCopy[1].meta.ltmCurves.ltmLut.bytes[244] = 1;
    if (ev0PropertiesCopy[1].meta.ltmCurves.ltmLut.bytes[179] == 1 && self->_nrfConfig->_allowModifyingInputBuffers)
    {
      v85 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v84, v24[2], v94[42]);
      if (v85)
      {
        sub_295881B14(v85, &v98);
        goto LABEL_33;
      }

      v87 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v86, v24[3], v94[62]);
      if (v87)
      {
        sub_295881BB0(v87, &v98);
        goto LABEL_33;
      }

      FigMetalDecRef();
      FigMetalDecRef();
    }

    else
    {
      v90 = objc_msgSend_setLumaTexture_chromaTexture_level_metal_(v94, v84, v24[2], v24[3], 0, self->_metal, ev0PropertiesCopy);
      if (v90)
      {
        sub_295881A78(v90, &v98);
        goto LABEL_33;
      }
    }

    PyramidForFrame_cfp = objc_msgSend_createPyramidForFrame_cfp_(self, v88, v94, v83, ev0PropertiesCopy);
    if (!PyramidForFrame_cfp)
    {
      v89 = 0;
LABEL_18:

LABEL_19:
LABEL_20:

      goto LABEL_21;
    }

    sub_295881C4C(PyramidForFrame_cfp, &v98);
LABEL_33:
    v89 = v98;
    goto LABEL_18;
  }

  v89 = 0;
LABEL_21:

  return v89;
}

- (int)lowLightHybridRegister:(int)register refFrameIdx:(int)idx nonRefFrameProps:(frameProperties_t *)props refFrameProps:(const frameProperties_t *)frameProps canCopyBack:(BOOL)back nrfPlist:(id)plist
{
  backCopy = back;
  plistCopy = plist;
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  v155 = self->_inputBands->bands[idx];
  v14 = self->_inputBands->bands[register];
  v18 = objc_msgSend_allocator(self->_metal, v15, v16, v17);
  v22 = objc_msgSend_newTextureDescriptor(v18, v19, v20, v21);

  if (!v22)
  {
    sub_295882144(v158);
LABEL_31:
    v105 = v158[0];
    goto LABEL_24;
  }

  v26 = objc_msgSend_desc(v22, v23, v24, v25);
  objc_msgSend_setUsage_(v26, v27, 7, v28);

  v151 = objc_opt_new();
  if (!v151)
  {
    sub_2958820A8(v158);
    goto LABEL_31;
  }

  registerCopy = register;
  if (backCopy || (v32 = objc_msgSend_width(v155->textureUV[0], v29, v30, v31), objc_msgSend_desc(v22, v33, v34, v35), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setWidth_(v36, v37, v32, v38), v36, v42 = objc_msgSend_height(v155->textureUV[0], v39, v40, v41), objc_msgSend_desc(v22, v43, v44, v45), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setHeight_(v46, v47, v42, v48), v46, objc_msgSend_desc(v22, v49, v50, v51), v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setPixelFormat_(v52, v53, 65, v54), v52, objc_msgSend_setLabel_(v22, v55, 0, v56), objc_msgSend_allocator(self->_metal, v57, v58, v59), v60 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend_newTextureWithDescriptor_(v60, v61, v22, v62), v64 = v151[3], v151[3] = v63, v64, v60, v151[3]))
  {
    v144 = v22;
    v154 = v14;
    v65 = sub_295820728(&frameProps->meta.exposureParams, &props->meta.exposureParams, props);
    v66 = sub_29584472C(*(*(plistCopy + 3) + 104), frameProps->meta.exposureParams.AETargetGain);
    v67 = sub_29584472C(*(*(plistCopy + 3) + 112), frameProps->meta.exposureParams.AETargetGain);
    v68 = *(plistCopy + 3);
    v69 = *(v68 + 88);
    if (v69)
    {
      *(*(plistCopy + 3) + 80) = sub_29584472C(v69, frameProps->meta.exposureParams.AETargetGain);
      v68 = *(plistCopy + 3);
    }

    v70 = *(v68 + 80);
    memset(v166, 0, 24);
    sub_2958133B0(v166, *(plistCopy + 4), &frameProps->meta.exposureParams, 3);
    v71 = objc_opt_new();
    objc_storeStrong((v71 + 16), v155->textureY[0]);
    v147 = v71;
    objc_storeStrong((v71 + 24), v155->textureUV[0]);
    v72 = objc_opt_new();
    objc_storeStrong(v72 + 2, v14->textureY[0]);
    v152 = v72;
    objc_storeStrong(v72 + 3, v14->textureUV[0]);
    v162 = 0;
    v163 = 0;
    v145 = plistCopy;
    v160 = *(*(plistCopy + 3) + 96);
    v159 = v166;
    *v158 = v66;
    *&v158[1] = v67;
    v158[2] = v70;
    objc_storeStrong(&v162, self->_bilateralGrid);
    v161 = registerCopy;
    v74 = objc_msgSend_setToneCurvesWithLTC_GTC_colorCorrectionMatrix_dump_(self->_toneMappingCurvesUBFusion, v73, &frameProps->meta.ltmCurves, &frameProps->meta.ltmCurves, 0, *&frameProps[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid, *&frameProps[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GR.shadows, *&frameProps[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GB.highlights);
    if (v74)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v74, v8, v8, v144, plistCopy, v147, self, registerCopy);
      v105 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v135, v138, v141);

      plistCopy = v146;
      goto LABEL_23;
    }

    v75 = v147;
    v76 = objc_alloc_init(ToneMappingBuffers);
    objc_storeStrong(&v76->curves, self->_toneMappingCurvesUBFusion);
    v150 = v76;
    objc_storeStrong(&v163, v76);
    v77 = sub_29583737C(&frameProps->meta.ltmCurves.ltmLut.version);
    v78 = sub_2958373B8(&frameProps->meta.ltmCurves.ltmLut.version);
    v79 = sub_29583725C(&frameProps->meta.ltmCurves.ltmLut.version);
    v80 = sub_2958372C4(&frameProps->meta.ltmCurves.ltmLut.version);
    LODWORD(v76) = objc_msgSend_width(*(v147 + 24), v81, v82, v83);
    v87 = objc_msgSend_height(*(v147 + 24), v84, v85, v86);
    v91 = v77 / 2 * v79;
    v92 = v78 / 2 * v80;
    LODWORD(v93) = ((2 * v76 - v91) / 2 + v77 / 4) / 2;
    DWORD1(v93) = ((2 * v87 - v92) / 2 + v78 / 4) / 2;
    DWORD2(v93) = (v91 - v77 / 2) / 2;
    HIDWORD(v93) = (v92 - v78 / 2) / 2;
    v164 = v93;
    if (self->_nrfConfig->_compressionLevel <= 0)
    {
      v94 = 0;
    }

    else
    {
      v94 = 255;
    }

    regDense = self->_regDense;
    v14 = v154;
    v96 = objc_msgSend_width(*(v147 + 16), v88, v89, v90);
    v100 = objc_msgSend_height(*(v147 + 16), v97, v98, v99);
    v102 = objc_msgSend_prepareWithRegDenseParams_subAllocatorID_imageWidth_imageHeight_(regDense, v101, v158, v94, v96, v100);
    v105 = v102;
    if (v102)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v102, v8, v8, v144, plistCopy, v147, self, v150);
      goto LABEL_22;
    }

    v165 = BYTE1(props[1].meta.exposureParams.normalized_snr);
    *&v104 = v65;
    PyramidForFrame_cfp = objc_msgSend_runLowLightWithReferenceImage_nonReferenceImage_warpedImage_refWeightsLuma_nonRefWeightsLuma_relativeBrightness_homography_regDenseParams_(self->_regDense, v103, v147, v152, v151, v155->textureY[3], v154->textureY[3], &props[1].meta.exposureParams.conversion_gain, v104, v158);
    if (!PyramidForFrame_cfp)
    {
      objc_msgSend_resetIncludingConfidence_(self->_regDense, v107, v160 == 2, v108);
      props[1].meta.ltmCurves.ltmLut.bytes[244] = 1;
      if (backCopy)
      {
        v110 = v154->textureY[0];
        v111 = v154->textureUV[0];
        v113 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v112, v151[2], v110);
        v105 = v113;
        if (v113 || (v113 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v114, v151[3], v111), (v105 = v113) != 0))
        {
          LODWORD(v134) = v113;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v134, v8, v8, v144, plistCopy, v147, self, v150);
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v137, v140, v143);

          v14 = v154;
          goto LABEL_22;
        }

        FigMetalDecRef();
        FigMetalDecRef();

        v14 = v154;
      }

      else
      {
        PyramidForFrame_cfp = objc_msgSend_setLumaTexture_chromaTexture_level_metal_(v154, v109, v151[2], v151[3], 0, self->_metal);
        if (PyramidForFrame_cfp)
        {
          goto LABEL_38;
        }
      }

      v116 = MEMORY[0x29EDCA928];
      v117 = *(MEMORY[0x29EDCA928] + 16);
      *&props[1].meta.exposureParams.conversion_gain = *MEMORY[0x29EDCA928];
      *&props[1].meta.exposureParams.luxLevel = v117;
      *&props[1].meta.exposureParams.CCT = *(v116 + 32);
      PyramidForFrame_cfp = objc_msgSend_createPyramidForFrame_cfp_(self, v115, v14, props);
      if (!PyramidForFrame_cfp)
      {
        v105 = 0;
LABEL_22:

        plistCopy = v145;
LABEL_23:
        v22 = v144;
        goto LABEL_24;
      }
    }

LABEL_38:
    LODWORD(v134) = PyramidForFrame_cfp;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v134, v8, v8, v144, plistCopy, v147, self, v150);
    v105 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v136, v139, v142);
    goto LABEL_22;
  }

  sub_295881FF4(v151, v158);
  v105 = v158[0];
LABEL_24:
  if (*MEMORY[0x29EDB9270])
  {
    v121 = objc_msgSend_commandQueue(self->_metal, v118, v119, v120);
    v125 = objc_msgSend_commandBuffer(v121, v122, v123, v124);

    objc_msgSend_setLabel_(v125, v126, @"KTRACE_END_MTL", v127);
    v157[0] = MEMORY[0x29EDCA5F8];
    v157[1] = 3221225472;
    v157[2] = sub_295802EE4;
    v157[3] = &unk_29EDDBE78;
    memset(&v157[4], 0, 24);
    objc_msgSend_addCompletedHandler_(v125, v128, v157, v129);
    objc_msgSend_commit(v125, v130, v131, v132);
  }

  if (v105)
  {
    LOWORD(props[1].meta.exposureParams.normalized_snr) = 1;
  }

  return v105;
}

- (int)toneMapBand1Frame:(id)frame properties:(const frameProperties_t *)properties sourceFrameType:(int)type sourceFrameIndex:(int)index ltcFrameIndex:(int)frameIndex gtcFrameIndex:(int)gtcFrameIndex nrfPlist:(id)plist
{
  frameCopy = frame;
  plistCopy = plist;
  v17 = objc_alloc_init(ToneMappingBuffers);
  if (index >= 5)
  {
    sub_2958823B4(&v42);
LABEL_22:
    v39 = v42;
    goto LABEL_17;
  }

  if (frameIndex >= 5)
  {
    sub_295882318(&v42);
    goto LABEL_22;
  }

  if (gtcFrameIndex >= 5)
  {
    sub_29588227C(&v42);
    goto LABEL_22;
  }

  v18 = properties + 224224 * frameIndex;
  v19 = (&properties->meta.sensorID + 56056 * index);
  v20 = sub_295820728((v18 + 16), (v19 + 2), properties);
  if (type == 2)
  {
    p_fusedBand = &self->_fusedBand;
    objc_storeStrong(&v17->inLumaTex, self->_fusedBand->textureY[1]);
  }

  else
  {
    objc_storeStrong(&v17->inLumaTex, self->_inputBands->bands[index]->textureY[1]);
    p_fusedBand = &self->_inputBands->bands[index];
  }

  objc_storeStrong(&v17->inChromaTex, (*p_fusedBand)->textureUV[1]);
  localGainMapTex = v17->localGainMapTex;
  v17->localGainMapTex = 0;

  objc_storeStrong(&v17->outLumaTex, frameCopy[2]);
  objc_storeStrong(&v17->outChromaTex, frameCopy[3]);
  objc_storeStrong(&v17->curves, self->_toneMappingCurvesSkinMapInput);
  skinMask = v17->skinMask;
  v17->skinMask = 0;

  personMask = v17->personMask;
  v17->personMask = 0;

  skyMask = v17->skyMask;
  v17->skyMask = 0;

  faceLandmarks = v17->faceLandmarks;
  v17->faceLandmarks = 0;

  for (i = 0; i != 4; ++i)
  {
    v28 = v17->instanceMasks[i];
    v17->instanceMasks[i] = 0;
  }

  skinToneClassification = v17->skinToneClassification;
  v17->skinToneClassification = 0;

  maskConfidences = v17->maskConfidences;
  v17->maskConfidences = 0;

  v31 = properties + 224224 * gtcFrameIndex;
  objc_msgSend_setToneCurvesWithLTC_GTC_colorCorrectionMatrix_dump_(self->_toneMappingCurvesSkinMapInput, v32, (v18 + 168), (v31 + 168), 0, v19[28006], v19[28008], v19[28010]);
  if (*(v19 + 224146))
  {
    v35 = MEMORY[0x29EDCA928];
  }

  else
  {
    v35 = v19 + 28006;
  }

  v36 = (MEMORY[0x29EDCA928] + 32);
  if (!*(v19 + 224146))
  {
    v36 = v19 + 28010;
  }

  v37 = (MEMORY[0x29EDCA928] + 16);
  if (!*(v19 + 224146))
  {
    v37 = v19 + 28008;
  }

  BYTE4(v41) = v18[224144];
  LODWORD(v41) = 3;
  *&v34 = v20;
  IsLinear = objc_msgSend_runToneMapping_bilateralGrid_bilateralGridHomography_tmPlist_darkestFrameMetadata_ev0FrameMetadata_scaleInput_colorCorrection_hasChromaBias_quality_inputIsLinear_(self->_toneMappingStage, v33, v17, 0, plistCopy[5], v18, v31, 0, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32), v34, *v35, *v37, *v36, v41);
  v39 = 0;
  if (IsLinear)
  {
    sub_2958821E0(IsLinear, &v42);
    goto LABEL_22;
  }

LABEL_17:

  return v39;
}

- (int)downsampleBand0Frame:(id)frame sourceFrameIndex:(int)index
{
  frameCopy = frame;
  if (index >= 5)
  {
    sub_2958825E0(v44);
LABEL_9:
    v40 = v44[0];
    goto LABEL_5;
  }

  v7 = self->_inputBands->bands[index]->textureY[0];
  v8 = self->_inputBands->bands[index]->textureUV[0];
  v12 = objc_msgSend_commandBuffer(self->_metal, v9, v10, v11);
  if (!v12)
  {
    sub_295882524(v8, v7, v44);
    goto LABEL_9;
  }

  v16 = v12;
  v17 = objc_msgSend_computeCommandEncoder(v12, v13, v14, v15);
  if (!v17)
  {
    sub_295882450(v8, v7, v16, v44);
    goto LABEL_9;
  }

  v20 = v17;
  objc_msgSend_setComputePipelineState_(v17, v18, self->_shaders->_downsampleInference, v19);
  objc_msgSend_setTexture_atIndex_(v20, v21, v7, 21);
  objc_msgSend_setTexture_atIndex_(v20, v22, v8, 22);
  objc_msgSend_setTexture_atIndex_(v20, v23, frameCopy[2], 29);
  objc_msgSend_setTexture_atIndex_(v20, v24, frameCopy[3], 30);
  v28 = objc_msgSend_width(frameCopy[3], v25, v26, v27);
  v32 = objc_msgSend_height(frameCopy[3], v29, v30, v31);
  v44[0] = v28;
  v44[1] = v32;
  v44[2] = 1;
  v42 = vdupq_n_s64(0x10uLL);
  v43 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v20, v33, v44, &v42);
  objc_msgSend_endEncoding(v20, v34, v35, v36);
  objc_msgSend_commit(self->_metal, v37, v38, v39);

  v40 = 0;
LABEL_5:

  return v40;
}

- (int)fuseFramesWithConfig:(const FusionConfiguration *)config properties:(frameProperties_t *)properties nrfPlist:(id)plist batchN:(int)n isLastBatch:(BOOL)batch usePatchBasedFusion:(BOOL)fusion isLowLight:(BOOL)light
{
  batchCopy = batch;
  plistCopy = plist;
  v16 = objc_msgSend_allocator(self->_metal, v13, v14, v15);
  v20 = objc_msgSend_newTextureDescriptor(v16, v17, v18, v19);

  if (!v20)
  {
    sub_295882BEC(&v293);
    v271 = v293;
    goto LABEL_55;
  }

  fusionCopy = fusion;
  v24 = objc_msgSend_desc(v20, v21, v22, v23);
  objc_msgSend_setUsage_(v24, v25, 7, v26);

  v288 = objc_msgSend_width(self->_inputBands->bands[0]->textureY[0], v27, v28, v29);
  v289 = objc_msgSend_height(self->_inputBands->bands[0]->textureY[0], v30, v31, v32);
  v36 = plistCopy[3];
  v277 = v20;
  if (*(v36 + 24) == 1 && *(v36 + 96) != 2)
  {
    v292 = 0;
    v37 = objc_msgSend_desc(v20, v33, v34, v35);
    objc_msgSend_setWidth_(v37, v38, v288, v39);

    v43 = objc_msgSend_desc(v20, v40, v41, v42);
    objc_msgSend_setHeight_(v43, v44, v289, v45);

    v49 = objc_msgSend_desc(v20, v46, v47, v48);
    objc_msgSend_setPixelFormat_(v49, v50, 25, v51);

    objc_msgSend_setLabel_(v20, v52, 0, v53);
    v57 = objc_msgSend_allocator(self->_metal, v54, v55, v56);
    v293 = objc_msgSend_newTextureWithDescriptor_(v57, v58, v20, v59);

    if (v293)
    {
      v274 = batchCopy;
      v63 = objc_msgSend_allocator(self->_metal, v60, v61, v62);
      v66 = objc_msgSend_newTextureDescriptor_(v63, v64, 0, v65);

      v70 = objc_msgSend_width(self->_inputBands->bands[0]->textureUV[0], v67, v68, v69);
      v74 = objc_msgSend_desc(v66, v71, v72, v73);
      objc_msgSend_setWidth_(v74, v75, v70, v76);

      v80 = objc_msgSend_height(self->_inputBands->bands[0]->textureUV[0], v77, v78, v79);
      v84 = objc_msgSend_desc(v66, v81, v82, v83);
      objc_msgSend_setHeight_(v84, v85, v80, v86);

      v90 = objc_msgSend_desc(v66, v87, v88, v89);
      objc_msgSend_setPixelFormat_(v90, v91, 65, v92);

      objc_msgSend_setLabel_(v66, v93, 0, v94);
      v98 = objc_msgSend_allocator(self->_metal, v95, v96, v97);
      v292 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v98, v99, v66, 0);

      if (v292)
      {

        finalScaleFwd = config[4].colorSpaceConversionParameters[1].finalScaleFwd;
        if (SLODWORD(finalScaleFwd) >= 1)
        {
          v101 = 0;
          v282 = *(MEMORY[0x29EDCA928] + 16);
          v283 = *MEMORY[0x29EDCA928];
          p_nonLinearScale = &config->colorSpaceConversionParameters[0].transferFunctionInv.nonLinearScale;
          v280 = vdupq_n_s32(0x358637BDu);
          v281 = *(MEMORY[0x29EDCA928] + 32);
          propertiesCopy = properties;
          do
          {
            v104 = vandq_s8(vandq_s8(vcgeq_f32(v280, vabdq_f32(p_nonLinearScale[-1], v282)), vcgeq_f32(v280, vabdq_f32(p_nonLinearScale[-2], v283))), vcgeq_f32(v280, vabdq_f32(*p_nonLinearScale, v281)));
            v104.i32[3] = v104.i32[2];
            if ((vminvq_u32(v104) & 0x80000000) == 0)
            {
              v105 = self->_inputBands->bands[v101];
              v106 = v105->textureY[0];
              v107 = v105->textureUV[0];
              warpStage = self->_warpStage;
              v284 = p_nonLinearScale[-2];
              v285 = *p_nonLinearScale[-1].i64;
              v286 = *p_nonLinearScale->i64;
              v109 = v105->textureYCbCrBand0;
              v110 = v107;
              v111 = v106;
              objc_msgSend_runWarpUsingTransform_inputLumaTex_inputChromaTex_outputLumaTex_outputChromaTex_(warpStage, v112, v111, v110, v293, v292, *v284.i64, v285, v286);
              objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_inputBands->bands[v101], v113, v293, v292, 0, self->_metal);
              objc_msgSend_createPyramidForFrame_cfp_(self, v114, self->_inputBands->bands[v101], propertiesCopy);
              objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_inputBands->bands[v101], v115, v111, v110, 0, self->_metal);
              objc_msgSend_setYCbCrBand0Texture_(self->_inputBands->bands[v101], v116, v109, v117);

              finalScaleFwd = config[4].colorSpaceConversionParameters[1].finalScaleFwd;
            }

            ++v101;
            propertiesCopy = (propertiesCopy + 224224);
            p_nonLinearScale += 3;
          }

          while (v101 < SLODWORD(finalScaleFwd));
        }

        FigMetalDecRef();
        FigMetalDecRef();

        v20 = v277;
        batchCopy = v274;
        goto LABEL_12;
      }

      sub_29588267C(v66, v294);
      v271 = v294[0];
    }

    else
    {
      sub_295882730(v294);
      v271 = v294[0];
    }

    goto LABEL_55;
  }

LABEL_12:
  finalScaleFwd_low = LODWORD(config[4].colorSpaceConversionParameters[1].finalScaleFwd);
  if (finalScaleFwd_low < 1)
  {
    v120 = 0;
LABEL_23:
    self->_fusedBand->levels = 4;
    fusedBand = self->_fusedBand;
    if (!n)
    {
      if (!FigMetalIsValid())
      {
        v158 = objc_msgSend_desc(v277, v155, v156, v157);
        objc_msgSend_setWidth_(v158, v159, (v288 >> 3), v160);

        v164 = objc_msgSend_desc(v277, v161, v162, v163);
        objc_msgSend_setHeight_(v164, v165, (v289 >> 3), v166);

        v170 = objc_msgSend_desc(v277, v167, v168, v169);
        objc_msgSend_setPixelFormat_(v170, v171, 25, v172);

        objc_msgSend_setLabel_(v277, v173, 0, v174);
        v178 = objc_msgSend_allocator(self->_metal, v175, v176, v177);
        v181 = objc_msgSend_newTextureWithDescriptor_(v178, v179, v277, v180);
        v182 = self->_fusedBand->textureY[3];
        self->_fusedBand->textureY[3] = v181;

        if (!self->_fusedBand->textureY[3])
        {
          sub_29588282C();
          goto LABEL_67;
        }
      }

      if (FigMetalIsValid())
      {
        fusedBand = self->_fusedBand;
      }

      else
      {
        v185 = objc_msgSend_desc(v277, v33, v183, v184);
        objc_msgSend_setWidth_(v185, v186, (v288 >> 4) & 0x7FFFFFFF, v187);

        v191 = objc_msgSend_desc(v277, v188, v189, v190);
        objc_msgSend_setHeight_(v191, v192, (v289 >> 4) & 0x7FFFFFFF, v193);

        v197 = objc_msgSend_desc(v277, v194, v195, v196);
        objc_msgSend_setPixelFormat_(v197, v198, 65, v199);

        objc_msgSend_setLabel_(v277, v200, 0, v201);
        v205 = objc_msgSend_allocator(self->_metal, v202, v203, v204);
        v208 = objc_msgSend_newTextureWithDescriptor_(v205, v206, v277, v207);
        v209 = self->_fusedBand->textureUV[3];
        self->_fusedBand->textureUV[3] = v208;

        fusedBand = self->_fusedBand;
        if (!fusedBand->textureUV[3])
        {
          sub_2958828CC();
          goto LABEL_67;
        }
      }
    }

    if (objc_msgSend_prepareForFusion_config_fusedPyramid_properties_nrfPlist_staticScene_isLowLight_(self->_fusionRemixStage, v33, self->_inputBands, config, fusedBand, properties, plistCopy, self->_isStaticScene, light))
    {
      sub_29588296C();
    }

    else if (self->_doGreenGhostMitigation && batchCopy && light && objc_msgSend_mixFusedTexturesWithRefLuma_refChroma_refProperties_tuningParams_(self->_greenGhostLowLightStage, v210, self->_inputBands->bands[0]->textureY[0], self->_inputBands->bands[0]->textureUV[0], properties, plistCopy[15]))
    {
      sub_295882A0C();
    }

    else
    {
      v213 = MEMORY[0x29EDB9270];
      if (*MEMORY[0x29EDB9270])
      {
        v214 = objc_msgSend_commandQueue(self->_metal, v210, v211, v212);
        v218 = objc_msgSend_commandBuffer(v214, v215, v216, v217);

        objc_msgSend_setLabel_(v218, v219, @"KTRACE_START_MTL", v220);
        objc_msgSend_addCompletedHandler_(v218, v221, &unk_2A1CA9220, v222);
        objc_msgSend_commit(v218, v223, v224, v225);
      }

      v226 = 0.0;
      if (LOBYTE(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.nonLinearBias))
      {
        *&v226 = 0.5;
      }

      BYTE6(v273) = fusionCopy;
      BYTE5(v273) = light;
      BYTE4(v273) = batchCopy;
      LODWORD(v273) = n;
      if (objc_msgSend_runImageFusion_config_fusedPyramid_accWeightPyramid_buffers_properties_nrfPlist_confidence_batchN_isLastBatch_isLowLight_usePatchBasedFusion_outputChromaBias_(self->_fusionRemixStage, v210, self->_inputBands, config, self->_fusedBand, self->_accWeightPyramid, self->_fusionBuffers, properties, v226, plistCopy, v120, v273))
      {
        sub_295882AAC();
      }

      else
      {
        if (*v213)
        {
          v230 = objc_msgSend_commandQueue(self->_metal, v227, v228, v229);
          v234 = objc_msgSend_commandBuffer(v230, v231, v232, v233);

          objc_msgSend_setLabel_(v234, v235, @"KTRACE_END_MTL", v236);
          v291[0] = MEMORY[0x29EDCA5F8];
          v291[1] = 3221225472;
          v291[2] = sub_2958042A4;
          v291[3] = &unk_29EDDBE78;
          memset(&v291[4], 0, 24);
          objc_msgSend_addCompletedHandler_(v234, v237, v291, v238);
          objc_msgSend_commit(v234, v239, v240, v241);
        }

        if (!self->_doGreenGhostMitigation || !light || !batchCopy)
        {
          goto LABEL_49;
        }

        if (*v213)
        {
          v242 = objc_msgSend_commandQueue(self->_metal, v227, v228, v229);
          v246 = objc_msgSend_commandBuffer(v242, v243, v244, v245);

          objc_msgSend_setLabel_(v246, v247, @"KTRACE_START_MTL", v248);
          objc_msgSend_addCompletedHandler_(v246, v249, &unk_2A1CA9240, v250);
          objc_msgSend_commit(v246, v251, v252, v253);
        }

        if (!objc_msgSend_inpaintLuma_andChroma_tuningParams_(self->_greenGhostLowLightStage, v227, self->_fusionBuffers->fusedLumaTex, self->_fusionBuffers->fusedChromaTex, plistCopy[15]))
        {
          if (*v213)
          {
            v257 = objc_msgSend_commandQueue(self->_metal, v254, v255, v256);
            v261 = objc_msgSend_commandBuffer(v257, v258, v259, v260);

            objc_msgSend_setLabel_(v261, v262, @"KTRACE_END_MTL", v263);
            v290[0] = MEMORY[0x29EDCA5F8];
            v290[1] = 3221225472;
            v290[2] = sub_295804400;
            v290[3] = &unk_29EDDBE78;
            memset(&v290[4], 0, 24);
            objc_msgSend_addCompletedHandler_(v261, v264, v290, v265);
            objc_msgSend_commit(v261, v266, v267, v268);
          }

LABEL_49:
          for (i = 0; i != 5; ++i)
          {
            if (self->_inputBands->bands[i])
            {
              FigMetalDecRef();
              FigMetalDecRef();
              objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v270, self->_inputBands->bands[i], self->_metal);
            }
          }

          v271 = 0;
          goto LABEL_54;
        }

        sub_295882B4C();
      }
    }

LABEL_67:
    v271 = v293;
LABEL_54:
    v20 = v277;
    goto LABEL_55;
  }

  v119 = &properties[1].meta.ltmCurves.ltmLut.bytes[244];
  while (*v119 != 1 || !self->_regDense->_pyrConfidence->textureY[0])
  {
    v119 += 224224;
    if (!--finalScaleFwd_low)
    {
      v120 = 0;
      goto LABEL_23;
    }
  }

  v275 = batchCopy;
  FigMetalIncRef();
  objc_storeStrong(&self->_regDense->_pyrConfidence->textureY[1], self->_regDense->_pyrConfidence->textureY[0]);
  v124 = 0;
  while (1)
  {
    v125 = objc_msgSend_desc(v20, v121, v122, v123);
    objc_msgSend_setWidth_(v125, v126, (v288 >> (v124 + 2)), v127);

    v131 = objc_msgSend_desc(v20, v128, v129, v130);
    objc_msgSend_setHeight_(v131, v132, (v289 >> (v124 + 2)), v133);

    v137 = objc_msgSend_desc(v20, v134, v135, v136);
    objc_msgSend_setPixelFormat_(v137, v138, 25, v139);

    objc_msgSend_setLabel_(v20, v140, 0, v141);
    v145 = objc_msgSend_allocator(self->_metal, v142, v143, v144);
    v148 = objc_msgSend_newTextureWithDescriptor_(v145, v146, v20, v147);
    v149 = &self->_regDense->_pyrConfidence->textureY[v124];
    v150 = v149[2];
    v149[2] = v148;

    regDense = self->_regDense;
    v152 = &regDense->_pyrConfidence->textureY[v124];
    if (objc_msgSend_pyramidConfidence_input_(regDense, v153, *(v152 + 16), *(v152 + 8)))
    {
      break;
    }

    if (++v124 == 2)
    {
      v120 = self->_regDense->_pyrConfidence;
      batchCopy = v275;
      goto LABEL_23;
    }
  }

  sub_2958827CC();
  v271 = 0;
LABEL_55:

  return v271;
}

- (int)computeMotionScore:(int)score ev0FrameIndex:(int)index evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties motionScore:(float *)motionScore nrfPlist:(id)plist
{
  *motionScore = 0.0;
  v8 = objc_msgSend_runMotionDetection_evm_ev0_evmProperties_ev0Properties_nrfPlist_(self->_motionDetection, a2, motionScore, self->_inputBands->bands[score]->textureY[1], self->_inputBands->bands[index]->textureY[1], properties, ev0Properties, plist);
  v9 = v8;
  if (v8)
  {
    sub_295882C88(v8);
  }

  else if (dword_2A18C2398)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v9;
}

- (int)startSyntheticReferenceDetectors:(const FusionConfiguration *)detectors properties:(const frameProperties_t *)properties nrfPlist:(id)plist
{
  plistCopy = plist;
  if (!self->_nrfConfig->_enableDeepFusion)
  {
    sub_295882CE8(&v15);
LABEL_11:
    v13 = v15;
    goto LABEL_6;
  }

  linearScale_low = LODWORD(detectors[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale);
  if ((linearScale_low & 0x80000000) != 0)
  {
    sub_295882EBC(&v15);
    goto LABEL_11;
  }

  v11 = *&detectors[4].colorSpaceConversionParameters[1].outputToLinearYCbCr;
  if ((v11 & 0x80000000) != 0)
  {
    sub_295882E20(&v15);
    goto LABEL_11;
  }

  started = objc_msgSend_startDetectorsWithGrayGhost_motionDetection_evm_ev0_evmProperties_ev0Properties_nrfPlist_(self->_syntheticReferenceStage, v8, self->_grayGhostDetection, self->_motionDetection, self->_inputBands->bands[v11], self->_inputBands->bands[linearScale_low], properties + 224224 * v11, properties + 224224 * linearScale_low, plistCopy);
  if (started)
  {
    sub_295882D84(started, &v15);
    goto LABEL_11;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (int)collectSyntheticReferenceDetectorsResultsSync:(float *)sync srMode:(int *)mode nrfPlist:(id)plist
{
  if (self->_nrfConfig->_enableDeepFusion)
  {
    v8 = objc_msgSend_collectDetectorsResultsWithGrayGhost_motionDetection_nrfPlist_(self->_syntheticReferenceStage, a2, self->_grayGhostDetection, self->_motionDetection, plist);
    if (v8)
    {
      sub_295882FF4(v8, &v16);
      return v16;
    }

    else
    {
      if (sync)
      {
        objc_msgSend_getMotionDetectionResultSync(self->_motionDetection, v9, v10, v11);
        *sync = v12;
      }

      if (mode)
      {
        SyntheticReferenceMode = objc_msgSend_getSyntheticReferenceMode(self->_syntheticReferenceStage, v9, v10, v11);
        result = 0;
        *mode = SyntheticReferenceMode;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    sub_295882F58(&v15);
    return v15;
  }

  return result;
}

- (uint64_t)doSyntheticReference:(double)reference noiseDivisorOutputTex:(uint64_t)tex lscGainsTex:(void *)gainsTex config:(void *)config evmProperties:(void *)properties evmGreenTintAdjustment:(uint64_t)adjustment ev0Properties:(uint64_t)ev0Properties nrfPlist:(uint64_t)self0 intermediateMetadata:(id)self1
{
  gainsTexCopy = gainsTex;
  configCopy = config;
  propertiesCopy = properties;
  metadataCopy = metadata;
  v181 = a12;
  v21 = gainsTexCopy;
  v25 = v21;
  if (!v21)
  {
    sub_2958837E0(&v183);
    v44 = 0;
    v30 = 0;
    v172 = v183;
    goto LABEL_40;
  }

  if (!v21[1])
  {
    sub_295883744(&v183);
LABEL_35:
    v30 = 0;
LABEL_39:
    v172 = v183;
    v44 = v25;
    goto LABEL_40;
  }

  if (!v21[2])
  {
    sub_2958836A8(&v183);
    goto LABEL_35;
  }

  if (!v21[3])
  {
    sub_29588360C(&v183);
    goto LABEL_35;
  }

  plistCopy = plist;
  v26 = objc_msgSend_allocator(*(self + 144), v22, v23, v24);
  v30 = objc_msgSend_newTextureDescriptor(v26, v27, v28, v29);

  if (!v30)
  {
    sub_295883570(&v183);
    goto LABEL_39;
  }

  if ((*(*(self + 152) + 63) & 1) == 0)
  {
    sub_295883090(&v183);
    goto LABEL_39;
  }

  v34 = *(adjustment + 1308);
  if ((v34 & 0x80000000) != 0)
  {
    sub_2958834D4(&v183);
    goto LABEL_39;
  }

  v177 = propertiesCopy;
  v35 = *(adjustment + 1304);
  v39 = objc_msgSend_pixelFormat(v25[2], v31, v32, v33) == 588 && objc_msgSend_pixelFormat(v25[3], v36, v37, v38) == 589;
  ev0PropertiesCopy = ev0Properties;
  if (objc_msgSend_isCompressed(v25[2], v36, v37, v38))
  {
    v43 = objc_msgSend_isCompressed(v25[3], v40, v41, v42) ^ 1;
  }

  else
  {
    v43 = 1;
  }

  v44 = v25;
  v175 = v39 & v43;
  if ((v39 & v43) == 1)
  {
    v44 = objc_opt_new();

    if (v44)
    {
      v174 = configCopy;
      v48 = objc_msgSend_width(v25[2], v45, v46, v47);
      v52 = objc_msgSend_desc(v30, v49, v50, v51);
      objc_msgSend_setWidth_(v52, v53, v48, v54);

      v58 = objc_msgSend_height(v25[2], v55, v56, v57);
      v62 = objc_msgSend_desc(v30, v59, v60, v61);
      objc_msgSend_setHeight_(v62, v63, v58, v64);

      v68 = objc_msgSend_desc(v30, v65, v66, v67);
      objc_msgSend_setUsage_(v68, v69, 3, v70);

      v74 = objc_msgSend_desc(v30, v71, v72, v73);
      objc_msgSend_setPixelFormat_(v74, v75, 25, v76);

      v80 = objc_msgSend_desc(v30, v77, v78, v79);
      objc_msgSend_setCompressionMode_(v80, v81, 2, v82);

      v86 = objc_msgSend_desc(v30, v83, v84, v85);
      objc_msgSend_setCompressionFootprint_(v86, v87, 0, v88);

      objc_msgSend_setLabel_(v30, v89, 0, v90);
      v94 = objc_msgSend_allocator(*(self + 144), v91, v92, v93);
      v97 = objc_msgSend_newTextureWithDescriptor_(v94, v95, v30, v96);
      v98 = v44[2];
      v44[2] = v97;

      if (objc_msgSend_isCompressed(v44[2], v99, v100, v101))
      {
        sub_29588339C(&v183);
      }

      else
      {
        v105 = objc_msgSend_width(v25[3], v102, v103, v104);
        v109 = objc_msgSend_desc(v30, v106, v107, v108);
        objc_msgSend_setWidth_(v109, v110, v105, v111);

        v115 = objc_msgSend_height(v25[3], v112, v113, v114);
        v119 = objc_msgSend_desc(v30, v116, v117, v118);
        objc_msgSend_setHeight_(v119, v120, v115, v121);

        v125 = objc_msgSend_desc(v30, v122, v123, v124);
        objc_msgSend_setUsage_(v125, v126, 3, v127);

        v131 = objc_msgSend_desc(v30, v128, v129, v130);
        objc_msgSend_setPixelFormat_(v131, v132, 65, v133);

        v137 = objc_msgSend_desc(v30, v134, v135, v136);
        objc_msgSend_setCompressionMode_(v137, v138, 2, v139);

        v143 = objc_msgSend_desc(v30, v140, v141, v142);
        objc_msgSend_setCompressionFootprint_(v143, v144, 0, v145);

        objc_msgSend_setLabel_(v30, v146, 0, v147);
        v151 = objc_msgSend_allocator(*(self + 144), v148, v149, v150);
        v154 = objc_msgSend_newTextureWithDescriptor_(v151, v152, v30, v153);
        v155 = v44[3];
        v44[3] = v154;

        if (!objc_msgSend_isCompressed(v44[3], v156, v157, v158))
        {
          configCopy = v174;
          goto LABEL_19;
        }

        sub_295883300(&v183);
      }

      v172 = v183;
      configCopy = v174;
    }

    else
    {
      sub_295883438(&v183);
      v172 = v183;
    }

    propertiesCopy = v177;
LABEL_40:
    v165 = metadataCopy;
    v164 = v181;
    goto LABEL_30;
  }

LABEL_19:
  v159 = *(self + 448) + 8;
  propertiesCopy = v177;
  if ((v35 & 0x80000000) != 0)
  {
    v160 = 0;
    v161 = MEMORY[0x29EDCA928];
  }

  else
  {
    v160 = *(v159 + 8 * v35);
    v161 = (adjustment + 48 * *(adjustment + 1304));
  }

  v162 = *(v159 + 8 * v34);
  v163 = (adjustment + 48 * *(adjustment + 1308));
  v164 = v181;
  v165 = metadataCopy;
  v166 = objc_msgSend_doSyntheticReference_noiseDivisorOutputTex_lscGainsTex_evm_ev0_evmHomography_ev0Homography_evmProperties_evmGreenTintAdjustment_ev0Properties_nrfPlist_intermediateMetadata_(*(self + 496), v40, v44, configCopy, v177, v160, v162, ev0PropertiesCopy, *v161, v161[2], v161[4], *v163, v163[2], v163[4], a2, reference, plistCopy, metadataCopy, v181);
  if (v166)
  {
    sub_29588312C(v166, &v183);
    goto LABEL_49;
  }

  if (v175)
  {
    v169 = objc_msgSend_copyTexture_outTex_(*(self + 184), v167, v44[2], v25[2]);
    if (v169)
    {
      sub_2958831C8(v169, &v183);
    }

    else
    {
      FigMetalDecRef();
      v171 = objc_msgSend_copyTexture_outTex_(*(self + 184), v170, v44[3], v25[3]);
      if (!v171)
      {
        FigMetalDecRef();
        goto LABEL_27;
      }

      sub_295883264(v171, &v183);
    }

LABEL_49:
    v172 = v183;
    goto LABEL_30;
  }

LABEL_27:
  if ((v35 & 0x80000000) == 0)
  {
    objc_msgSend__freeInputBandPyramidForFrame_(self, v167, v35, v168);
  }

  v172 = 0;
LABEL_30:

  return v172;
}

- (unint64_t)deepFusionBuildNoiseMap:(double)map lscGainsTex:(uint64_t)tex config:(void *)config evmProperties:(void *)properties evmGreenTintAdjustment:(uint64_t)adjustment ev0Properties:(uint64_t)ev0Properties nrfPlist:(uint64_t)plist
{
  configCopy = config;
  propertiesCopy = properties;
  v16 = *(adjustment + 1308);
  v17 = *(adjustment + 1304);
  v21 = objc_msgSend_allocator(*(self + 144), v18, v19, v20);
  v25 = objc_msgSend_newTextureDescriptor(v21, v22, v23, v24);

  if (!v25)
  {
    sub_295883C48(&v125);
LABEL_16:
    v30 = 0;
LABEL_18:
    v117 = v125;
    goto LABEL_12;
  }

  v26 = *(self + 448);
  if (!v26)
  {
    sub_295883BAC(&v125);
    goto LABEL_16;
  }

  if ((v16 & 0x80000000) != 0)
  {
    sub_295883B10(&v125);
    goto LABEL_16;
  }

  v30 = *(v26 + 8 + 8 * v16);
  v31 = v30[42];
  if (!v31)
  {
    sub_295883A74(&v125);
    goto LABEL_18;
  }

  ev0PropertiesCopy = ev0Properties;
  v124 = configCopy;
  v32 = objc_msgSend_width(v31, v27, v28, v29);
  v36 = objc_msgSend_height(v30[42], v33, v34, v35);
  v40 = objc_msgSend_desc(v25, v37, v38, v39);
  objc_msgSend_setUsage_(v40, v41, 3, v42);

  v46 = objc_msgSend_desc(v25, v43, v44, v45);
  objc_msgSend_setWidth_(v46, v47, v32, v48);

  v52 = objc_msgSend_desc(v25, v49, v50, v51);
  objc_msgSend_setHeight_(v52, v53, v36, v54);

  v58 = objc_msgSend_desc(v25, v55, v56, v57);
  objc_msgSend_setPixelFormat_(v58, v59, 25, v60);

  objc_msgSend_setLabel_(v25, v61, 0, v62);
  v66 = objc_msgSend_allocator(*(self + 144), v63, v64, v65);
  v69 = objc_msgSend_newTextureWithDescriptor_(v66, v67, v25, v68);
  v70 = *(self + 640);
  v71 = *(v70 + 16);
  *(v70 + 16) = v69;

  if (!*(*(self + 640) + 16))
  {
    sub_2958839D8(&v125);
LABEL_21:
    v117 = v125;
    configCopy = v124;
    goto LABEL_12;
  }

  v75 = objc_msgSend_desc(v25, v72, v73, v74);
  v79 = objc_msgSend_width(v75, v76, v77, v78);
  objc_msgSend_setWidth_(v75, v80, v79 >> 1, v81);

  v85 = objc_msgSend_desc(v25, v82, v83, v84);
  v89 = objc_msgSend_height(v85, v86, v87, v88);
  objc_msgSend_setHeight_(v85, v90, v89 >> 1, v91);

  v95 = objc_msgSend_desc(v25, v92, v93, v94);
  objc_msgSend_setPixelFormat_(v95, v96, 65, v97);

  objc_msgSend_setLabel_(v25, v98, 0, v99);
  v103 = objc_msgSend_allocator(*(self + 144), v100, v101, v102);
  v106 = objc_msgSend_newTextureWithDescriptor_(v103, v104, v25, v105);
  v107 = *(self + 640);
  v108 = *(v107 + 24);
  *(v107 + 24) = v106;

  v110 = *(self + 640);
  v111 = *(v110 + 24);
  if (!v111)
  {
    sub_29588393C(&v125);
    goto LABEL_21;
  }

  v112 = *(self + 496);
  v113 = *(v110 + 16);
  if ((v17 & 0x80000000) != 0)
  {
    v118 = (adjustment + 48 * *(adjustment + 1308));
    NoiseMap_outputNoiseMapChroma_lscGainsTex_ev0_ev0Homography_ev0Properties = objc_msgSend_generateNoiseMap_outputNoiseMapChroma_lscGainsTex_ev0_ev0Homography_ev0Properties_(v112, v109, v113, v111, propertiesCopy, v30, plist, *v118, v118[2], v118[4]);
    v117 = NoiseMap_outputNoiseMapChroma_lscGainsTex_ev0_ev0Homography_ev0Properties;
    configCopy = v124;
    if (NoiseMap_outputNoiseMapChroma_lscGainsTex_ev0_ev0Homography_ev0Properties)
    {
      sub_29588387C(NoiseMap_outputNoiseMapChroma_lscGainsTex_ev0_ev0Homography_ev0Properties);
    }
  }

  else
  {
    v114 = (adjustment + 48 * *(adjustment + 1304));
    v115 = (adjustment + 48 * *(adjustment + 1308));
    configCopy = v124;
    NoiseMap_outputNoiseMapChroma_noiseDivisorTex_lscGainsTex_evm_ev0_evmHomography_ev0Homography_evmProperties_evmGreenTintAdjustmentParams_ev0Properties = objc_msgSend_generateNoiseMap_outputNoiseMapChroma_noiseDivisorTex_lscGainsTex_evm_ev0_evmHomography_ev0Homography_evmProperties_evmGreenTintAdjustmentParams_ev0Properties_(v112, v109, v113, v111, v124, propertiesCopy, *(*(self + 448) + 8 + 8 * v17), v30, *v114, v114[2], v114[4], *v115, v115[2], v115[4], a2, map, ev0PropertiesCopy, plist);
    v117 = NoiseMap_outputNoiseMapChroma_noiseDivisorTex_lscGainsTex_evm_ev0_evmHomography_ev0Homography_evmProperties_evmGreenTintAdjustmentParams_ev0Properties;
    if (NoiseMap_outputNoiseMapChroma_noiseDivisorTex_lscGainsTex_evm_ev0_evmHomography_ev0Homography_evmProperties_evmGreenTintAdjustmentParams_ev0Properties)
    {
      sub_2958838DC(NoiseMap_outputNoiseMapChroma_noiseDivisorTex_lscGainsTex_evm_ev0_evmHomography_ev0Homography_evmProperties_evmGreenTintAdjustmentParams_ev0Properties);
    }
  }

LABEL_12:

  return v117;
}

- (int)sanityCheckRansacColorModel:(RansacModel *)model
{
  if (fabsf(model->var0) > 0.0078 || fabsf(model->var0 + (model->var1 + -1.0)) > 0.0235)
  {
    *model = 0x3F80000000000000;
  }

  return 0;
}

- (unsigned)filterOutlierPairsInPlace:(float *)place and:(float *)and withMinX:(float)x maxX:(float)maxX inputSize:(int)size
{
  result = 0;
  if (size)
  {
    andCopy = and;
    placeCopy = place;
    sizeCopy = size;
    do
    {
      v11 = *placeCopy;
      if (*placeCopy >= x && v11 <= maxX)
      {
        place[result] = v11;
        and[result++] = *andCopy;
      }

      ++placeCopy;
      ++andCopy;
      --sizeCopy;
    }

    while (sizeCopy);
  }

  return result;
}

- (int)computeRansacColorMatchingCoefficients:(const FusionConfiguration *)coefficients scaleEv0brightness:(float)ev0brightness applyToPyramid:(BOOL)pyramid andStoreTransform:(id *)transform
{
  pyramidCopy = pyramid;
  v11 = objc_msgSend_device(self->_metal, a2, coefficients, pyramid);
  v13 = objc_msgSend_newBufferWithLength_options_(v11, v12, 4096, 0);

  if (!v13)
  {
    sub_2958843B8(&v245);
LABEL_29:
    v232 = 0;
    v233 = 0;
    v230 = 0;
    v231 = 0;
    v25 = 0;
LABEL_31:
    v37 = 0;
    v222 = 0;
    v31 = 0;
    v235 = 0;
LABEL_40:
    v66 = 0;
    v192 = 0;
    v221 = v245;
    goto LABEL_25;
  }

  v17 = objc_msgSend_device(self->_metal, v14, v15, v16);
  v19 = objc_msgSend_newBufferWithLength_options_(v17, v18, 4096, 0);

  if (!v19)
  {
    sub_29588431C(&v245);
    goto LABEL_29;
  }

  v23 = objc_msgSend_device(self->_metal, v20, v21, v22);
  v25 = objc_msgSend_newBufferWithLength_options_(v23, v24, 4096, 0);

  v231 = v19;
  if (!v25)
  {
    sub_295884280(&v245);
    v232 = 0;
    v233 = 0;
    v230 = 0;
    goto LABEL_31;
  }

  v29 = objc_msgSend_device(self->_metal, v26, v27, v28);
  v31 = objc_msgSend_newBufferWithLength_options_(v29, v30, 4096, 0);

  v235 = v25;
  if (!v31)
  {
    sub_2958841E4(&v245);
    v232 = 0;
    v230 = 0;
    v25 = 0;
    v37 = 0;
LABEL_34:
    v222 = 0;
    v233 = 0;
    goto LABEL_40;
  }

  v35 = objc_msgSend_device(self->_metal, v32, v33, v34);
  v37 = objc_msgSend_newBufferWithLength_options_(v35, v36, 4096, 0);

  v233 = v37;
  if (!v37)
  {
    sub_295884148(&v245);
    v232 = 0;
    v230 = 0;
    v25 = 0;
    goto LABEL_34;
  }

  v41 = objc_msgSend_device(self->_metal, v38, v39, v40);
  v37 = objc_msgSend_newBufferWithLength_options_(v41, v42, 4096, 0);

  v232 = v37;
  if (!v37)
  {
    sub_2958840AC(&v245);
    v232 = 0;
LABEL_37:
    v230 = 0;
    v25 = 0;
LABEL_39:
    v222 = 0;
    goto LABEL_40;
  }

  v46 = objc_msgSend_device(self->_metal, v43, v44, v45);
  v37 = objc_msgSend_newBufferWithLength_options_(v46, v47, 4, 0);

  if (!v37)
  {
    sub_295884010(&v245);
    goto LABEL_37;
  }

  v48 = v37;
  v230 = v37;
  *objc_msgSend_contents(v48, v49, v50, v51) = ev0brightness;
  v55 = objc_msgSend_commandQueue(self->_metal, v52, v53, v54);
  v59 = objc_msgSend_commandBuffer(v55, v56, v57, v58);

  if (!v59)
  {
    sub_295883F74(&v245);
    v25 = 0;
    v37 = 0;
    goto LABEL_39;
  }

  transformCopy = transform;
  v63 = objc_msgSend_computeCommandEncoder(v59, v60, v61, v62);
  v66 = v63;
  if (!v63)
  {
    sub_295883ED8(&v245);
    v25 = 0;
    v37 = 0;
    v222 = 0;
    v221 = v245;
    v192 = v59;
    goto LABEL_25;
  }

  v225 = pyramidCopy;
  v234 = v13;
  levels = self->_inputBands->bands[*&coefficients[4].colorSpaceConversionParameters[1].outputToLinearYCbCr]->levels;
  objc_msgSend_setComputePipelineState_(v63, v64, self->_shaders->_pickRandomSamples, v65);
  v224 = levels;
  v237 = 8 * levels;
  v68 = 8 * levels - 8;
  v69 = *(self->_inputBands->bands[*&coefficients[4].colorSpaceConversionParameters[1].outputToLinearYCbCr]->textureY + v68);
  v70 = *(self->_inputBands->bands[*&coefficients[4].colorSpaceConversionParameters[1].outputToLinearYCbCr]->textureUV + v68);
  objc_msgSend_setTexture_atIndex_(v66, v71, *(self->_inputBands->bands[SLODWORD(coefficients[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale)]->textureY + v68), 0);
  objc_msgSend_setTexture_atIndex_(v66, v72, *(self->_inputBands->bands[SLODWORD(coefficients[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale)]->textureUV + v68), 1);
  v227 = v69;
  objc_msgSend_setTexture_atIndex_(v66, v73, v69, 2);
  v226 = v70;
  objc_msgSend_setTexture_atIndex_(v66, v74, v70, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v66, v75, v13, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v66, v76, v231, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v66, v77, v25, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v66, v78, v31, 0, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v66, v79, v233, 0, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v66, v80, v232, 0, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v66, v81, v230, 0, 6);
  v245 = xmmword_2958D5BA0;
  v246 = 1;
  v243 = xmmword_2958D5BB0;
  v244 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v66, v82, &v245, &v243);
  objc_msgSend_endEncoding(v66, v83, v84, v85);
  objc_msgSend_commit(v59, v86, v87, v88);
  objc_msgSend_waitForIdle(self->_metal, v89, v90, v91);
  v92 = v31;
  v96 = objc_msgSend_contents(v92, v93, v94, v95);
  v97 = v13;
  v101 = objc_msgSend_contents(v97, v98, v99, v100);
  v102 = ev0brightness * 0.99;
  LODWORD(v103) = -1.0;
  *&v104 = v102;
  LODWORD(v96) = objc_msgSend_filterOutlierPairsInPlace_and_withMinX_maxX_inputSize_(self, v105, v96, v101, 1024, v103, v104);
  v106 = v31;
  v228 = v31;
  v110 = objc_msgSend_contents(v106, v107, v108, v109);
  v111 = v13;
  v115 = objc_msgSend_contents(v111, v112, v113, v114);
  v242.i32[0] = sub_2958142F0(v110, v115, v96, 1);
  v242.i32[1] = v116;
  objc_msgSend_sanityCheckRansacColorModel_(self, v117, &v242, v118);
  v119 = v233;
  v123 = objc_msgSend_contents(v119, v120, v121, v122);
  v124 = v231;
  v128 = objc_msgSend_contents(v124, v125, v126, v127);
  LODWORD(v129) = -1.0;
  *&v130 = v102;
  LODWORD(v123) = objc_msgSend_filterOutlierPairsInPlace_and_withMinX_maxX_inputSize_(self, v131, v123, v128, 1024, v129, v130);
  v132 = v233;
  v136 = objc_msgSend_contents(v132, v133, v134, v135);
  v137 = v231;
  v141 = objc_msgSend_contents(v137, v138, v139, v140);
  v240 = sub_2958142F0(v136, v141, v123, 1);
  v241 = v142;
  objc_msgSend_sanityCheckRansacColorModel_(self, v143, &v240, v144);
  v145 = v232;
  v149 = objc_msgSend_contents(v145, v146, v147, v148);
  v150 = v25;
  v154 = objc_msgSend_contents(v150, v151, v152, v153);
  LODWORD(v155) = -1.0;
  *&v156 = v102;
  LODWORD(v149) = objc_msgSend_filterOutlierPairsInPlace_and_withMinX_maxX_inputSize_(self, v157, v149, v154, 1024, v155, v156);
  v158 = v232;
  v162 = objc_msgSend_contents(v158, v159, v160, v161);
  v163 = v150;
  v167 = objc_msgSend_contents(v163, v164, v165, v166);
  v238 = sub_2958142F0(v162, v167, v149, 1);
  v239 = v168;
  objc_msgSend_sanityCheckRansacColorModel_(self, v169, &v238, v170);
  v174 = objc_msgSend_device(self->_metal, v171, v172, v173);
  v25 = objc_msgSend_newBufferWithLength_options_(v174, v175, 32, 0);

  if (v25)
  {
    v176 = v25;
    v180 = objc_msgSend_contents(v176, v177, v178, v179);
    *&v184 = v242;
    v185 = v184;
    *(&v185 + 1) = v240;
    *(&v185 + 2) = v238;
    v186 = vdupq_lane_s32(v242, 1);
    v186.i32[1] = v241;
    v186.i32[2] = v239;
    *v180 = v185;
    v180[1] = v186;
    v187 = v180[1];
    *transformCopy = *v180;
    *(transformCopy + 1) = v187;
    if (v225)
    {
      v188 = objc_msgSend_commandQueue(self->_metal, v181, v182, v183);
      v192 = objc_msgSend_commandBuffer(v188, v189, v190, v191);

      if (v192)
      {
        if (v224 < 2)
        {
          v202 = v66;
LABEL_21:
          objc_msgSend_commit(v192, v193, v194, v195);
          v221 = 0;
          v66 = v202;
        }

        else
        {
          v196 = 8;
          v236 = vdupq_n_s64(0x10uLL);
          while (1)
          {
            v197 = self->_inputBands->bands[*&coefficients[4].colorSpaceConversionParameters[1].outputToLinearYCbCr]->textureY[v196 / 8];
            v198 = self->_inputBands->bands[*&coefficients[4].colorSpaceConversionParameters[1].outputToLinearYCbCr]->textureUV[v196 / 8];
            v202 = objc_msgSend_computeCommandEncoder(v192, v199, v200, v201);

            if (!v202)
            {
              break;
            }

            objc_msgSend_setComputePipelineState_(v202, v203, self->_shaders->_adjustEvmPyramidColor, v204);
            objc_msgSend_setImageblockWidth_height_(v202, v205, 32, 32);
            objc_msgSend_setTexture_atIndex_(v202, v206, v197, 0);
            objc_msgSend_setTexture_atIndex_(v202, v207, v198, 1);
            objc_msgSend_setBuffer_offset_atIndex_(v202, v208, v25, 0, 0);
            v212 = objc_msgSend_width(v198, v209, v210, v211);
            v216 = objc_msgSend_height(v198, v213, v214, v215);
            *&v245 = v212;
            *(&v245 + 1) = v216;
            v246 = 1;
            v243 = v236;
            v244 = 1;
            objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v202, v217, &v245, &v243);
            objc_msgSend_endEncoding(v202, v218, v219, v220);

            v196 += 8;
            v66 = v202;
            if (v237 == v196)
            {
              goto LABEL_21;
            }
          }

          sub_295883CE4(v198, v197, &v245);
          v66 = 0;
          v221 = v245;
        }

        v13 = v234;
      }

      else
      {
        sub_295883DA0(&v245);
        v221 = v245;
      }

      v31 = v228;
      goto LABEL_24;
    }

    v221 = 0;
  }

  else
  {
    sub_295883E3C(&v245);
    v221 = v245;
  }

  v192 = v59;
  v31 = v228;
LABEL_24:
  v222 = v226;
  v37 = v227;
LABEL_25:

  return v221;
}

- (int)doSyntheticLong:(id)long noiseDivisorTex:(id)tex realLongNoiseDivisorTex:(id)divisorTex lscGainsTex:(id)gainsTex config:(const FusionConfiguration *)config properties:(const frameProperties_t *)properties motionScore:(float)score nrfPlist:(id)self0 intermediateMetadata:(id)self1
{
  longCopy = long;
  texCopy = tex;
  divisorTexCopy = divisorTex;
  gainsTexCopy = gainsTex;
  plistCopy = plist;
  metadataCopy = metadata;
  obj = longCopy[2];
  v226 = obj;
  v220 = longCopy[3];
  v225 = v220;
  v224 = objc_opt_new();
  if (config[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearThreshold < 0.0)
  {
    objc_msgSend_objectForKeyedSubscript_(plistCopy[6], v20, @"4EV0", v21);
  }

  else
  {
    objc_msgSend_objectForKeyedSubscript_(plistCopy[6], v20, @"3EV0_LONG", v21);
  }
  v22 = ;
  v25 = objc_msgSend_objectForKeyedSubscript_(v22, v23, @"StaticSceneMotionThreshold", v24);
  objc_msgSend_floatValue(v25, v26, v27, v28);
  v30 = v29;

  v31 = @"StaticParameters";
  if (v30 < score)
  {
    v31 = @"DefaultParameters";
  }

  v32 = v31;
  v35 = objc_msgSend_objectForKeyedSubscript_(plistCopy[6], v33, @"4EV0", v34);
  v38 = objc_msgSend_objectForKeyedSubscript_(v35, v36, v32, v37);

  v214 = plistCopy;
  v41 = objc_msgSend_objectForKeyedSubscript_(plistCopy[6], v39, @"3EV0_LONG", v40);
  v213 = v32;
  v44 = objc_msgSend_objectForKeyedSubscript_(v41, v42, v32, v43);

  v217 = v38;
  if (!v38)
  {
    sub_295884A30(v227);
LABEL_49:
    v198 = 0;
    goto LABEL_50;
  }

  if (!v44)
  {
    sub_295884994(v227);
    v198 = 0;
    v38 = 0;
LABEL_50:
    v207 = v227[0];
LABEL_58:
    v199 = divisorTexCopy;
    goto LABEL_44;
  }

  v51 = objc_msgSend_pixelFormat(longCopy[2], v45, v46, v47) == 588 && objc_msgSend_pixelFormat(longCopy[3], v48, v49, v50) == 589;
  if (objc_msgSend_isCompressed(longCopy[2], v48, v49, v50))
  {
    v55 = objc_msgSend_isCompressed(longCopy[3], v52, v53, v54) ^ 1;
  }

  else
  {
    v55 = 1;
  }

  v209 = v51 & v55;
  if ((v51 & v55) == 1)
  {
    v56 = objc_msgSend_allocator(self->_metal, v52, v53, v54);
    v60 = objc_msgSend_newTextureDescriptor(v56, v57, v58, v59);

    if (v60)
    {
      v64 = v44;
      v65 = objc_msgSend_width(longCopy[2], v61, v62, v63);
      v69 = objc_msgSend_desc(v60, v66, v67, v68);
      objc_msgSend_setWidth_(v69, v70, v65, v71);

      v75 = objc_msgSend_height(longCopy[2], v72, v73, v74);
      v79 = objc_msgSend_desc(v60, v76, v77, v78);
      objc_msgSend_setHeight_(v79, v80, v75, v81);

      v85 = objc_msgSend_desc(v60, v82, v83, v84);
      objc_msgSend_setUsage_(v85, v86, 3, v87);

      v91 = objc_msgSend_desc(v60, v88, v89, v90);
      objc_msgSend_setPixelFormat_(v91, v92, 25, v93);

      v97 = objc_msgSend_desc(v60, v94, v95, v96);
      objc_msgSend_setCompressionMode_(v97, v98, 2, v99);

      v103 = objc_msgSend_desc(v60, v100, v101, v102);
      objc_msgSend_setCompressionFootprint_(v103, v104, 0, v105);

      objc_msgSend_setLabel_(v60, v106, 0, v107);
      v111 = objc_msgSend_allocator(self->_metal, v108, v109, v110);
      v114 = objc_msgSend_newTextureWithDescriptor_(v111, v112, v60, v113);
      v226 = v114;

      if (objc_msgSend_isCompressed(v114, v115, v116, v117))
      {
        sub_29588485C(v227);
      }

      else
      {
        v121 = objc_msgSend_width(longCopy[3], v118, v119, v120);
        v125 = objc_msgSend_desc(v60, v122, v123, v124);
        objc_msgSend_setWidth_(v125, v126, v121, v127);

        v131 = objc_msgSend_height(longCopy[3], v128, v129, v130);
        v135 = objc_msgSend_desc(v60, v132, v133, v134);
        objc_msgSend_setHeight_(v135, v136, v131, v137);

        v141 = objc_msgSend_desc(v60, v138, v139, v140);
        objc_msgSend_setUsage_(v141, v142, 3, v143);

        v147 = objc_msgSend_desc(v60, v144, v145, v146);
        objc_msgSend_setPixelFormat_(v147, v148, 65, v149);

        v153 = objc_msgSend_desc(v60, v150, v151, v152);
        objc_msgSend_setCompressionMode_(v153, v154, 2, v155);

        v159 = objc_msgSend_desc(v60, v156, v157, v158);
        objc_msgSend_setCompressionFootprint_(v159, v160, 0, v161);

        objc_msgSend_setLabel_(v60, v162, 0, v163);
        v167 = objc_msgSend_allocator(self->_metal, v164, v165, v166);
        v170 = objc_msgSend_newTextureWithDescriptor_(v167, v168, v60, v169);
        v225 = v170;

        if (!objc_msgSend_isCompressed(v170, v171, v172, v173))
        {

          v220 = v170;
          obj = v114;
          v44 = v64;
          goto LABEL_19;
        }

        sub_2958847C0(v227);
      }

      v207 = v227[0];
      v44 = v64;
    }

    else
    {
      sub_2958848F8(v227);
      v207 = v227[0];
    }

    v198 = 0;
    v38 = 0;
    goto LABEL_58;
  }

LABEL_19:
  v174 = objc_opt_new();
  v38 = v174;
  if (!v174)
  {
    sub_295884724(v227);
    goto LABEL_49;
  }

  objc_storeStrong((v174 + 16), obj);
  objc_storeStrong(v38 + 3, v220);
  v175 = malloc_type_calloc(1uLL, 0xDAE10uLL, 0x1020040BB5A49F1uLL);
  if (!v175)
  {
    sub_2958846C4();
    v198 = 0;
    v207 = -12786;
    goto LABEL_58;
  }

  v216 = v38;
  v210 = v44;
  v211 = texCopy;
  v212 = longCopy;
  *v175 = 0xFFFFFFFF00000000;
  v175[2] = -1;
  finalScaleFwd = config[4].colorSpaceConversionParameters[1].finalScaleFwd;
  v223 = v175;
  if (SLODWORD(finalScaleFwd) >= 1)
  {
    v179 = 0;
    v180 = 0;
    v181 = (v175 + 4);
    p_finalScale = &config->colorSpaceConversionParameters[4].finalScale;
    p_exposureParams = &properties->meta.exposureParams;
    configCopy = config;
    while (1)
    {
      if (v179 != *&config[4].colorSpaceConversionParameters[1].outputToLinearYCbCr)
      {
        objc_msgSend_addObject_(v224, v176, self->_inputBands->bands[v179], v177);
        v185 = sub_295820670(&properties->meta.exposureParams + 224224 * SLODWORD(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale), p_exposureParams, 2);
        if (v180 > 3)
        {
          sub_295884454(v227);
          v207 = v227[0];
          texCopy = v211;
          longCopy = v212;
          v199 = divisorTexCopy;
          v44 = v210;
          goto LABEL_43;
        }

        v186 = &v181[224128 * v180];
        *v186 = *p_finalScale;
        v187 = *(p_finalScale + 1);
        v188 = *(p_finalScale + 2);
        v189 = *(p_finalScale + 4);
        *(v186 + 3) = *(p_finalScale + 3);
        *(v186 + 4) = v189;
        *(v186 + 1) = v187;
        *(v186 + 2) = v188;
        v190 = *(p_finalScale + 5);
        v191 = *(p_finalScale + 6);
        v192 = *(p_finalScale + 8);
        *(v186 + 7) = *(p_finalScale + 7);
        *(v186 + 8) = v192;
        *(v186 + 5) = v190;
        *(v186 + 6) = v191;
        v193 = *(p_finalScale + 9);
        v194 = *(p_finalScale + 10);
        v195 = *(p_finalScale + 12);
        *(v186 + 11) = *(p_finalScale + 11);
        *(v186 + 12) = v195;
        *(v186 + 9) = v193;
        *(v186 + 10) = v194;
        *(v186 + 52) = v185;
        v196 = *&configCopy->preWarpEnabled;
        v197 = *&configCopy->colorSpaceConversionParameters[0].transferFunctionInv.nonLinearScale;
        *(v186 + 15) = *&configCopy->colorSpaceConversionParameters[0].transferFunctionFwd.nonLinearBias;
        *(v186 + 16) = v197;
        *(v186 + 14) = v196;
        memcpy(v186 + 272, &p_exposureParams[-1].ltm_locked, 0x36A70uLL);
        if (v179 == LODWORD(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale))
        {
          v223[1] = v180;
        }

        if (v179 == LODWORD(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearThreshold))
        {
          v223[2] = v180;
        }

        ++v180;
        finalScaleFwd = config[4].colorSpaceConversionParameters[1].finalScaleFwd;
      }

      ++v179;
      p_exposureParams = (p_exposureParams + 224224);
      p_finalScale += 52;
      configCopy = (configCopy + 48);
      if (v179 >= SLODWORD(finalScaleFwd))
      {
        goto LABEL_33;
      }
    }
  }

  v180 = 0;
LABEL_33:
  v198 = v223;
  *v223 = v180;
  v199 = divisorTexCopy;
  v38 = v216;
  v44 = v210;
  texCopy = v211;
  v200 = objc_msgSend_doSyntheticLongWithBands_slFuseEv0Plist_slFuseLongPlist_slParameters_slOutput_noiseDivisorTex_realLongNoiseDivisorTex_lscGainsTex_intermediateMetadata_(self->_syntheticLongStage, v176, v224, v217, v210, v223, v216, v211, divisorTexCopy, gainsTexCopy, metadataCopy);
  if (v200)
  {
    sub_2958844F0(v200, v227);
    v207 = v227[0];
    longCopy = v212;
    goto LABEL_44;
  }

  longCopy = v212;
  if (v209)
  {
    v202 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v201, obj, v212[2]);
    if (v202)
    {
      sub_29588458C(v202, v227);
    }

    else
    {
      FigMetalDecRef();
      v204 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v203, v220, v212[3]);
      if (!v204)
      {
        FigMetalDecRef();
        goto LABEL_38;
      }

      sub_295884628(v204, v227);
    }

    v207 = v227[0];
    goto LABEL_44;
  }

LABEL_38:
  for (i = 0; i != 5; ++i)
  {
    if (self->_inputBands->bands[i])
    {
      FigMetalDecRef();
      FigMetalDecRef();
      objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v206, self->_inputBands->bands[i], self->_metal);
    }
  }

  v207 = 0;
LABEL_43:
  v38 = v216;
  v198 = v223;
LABEL_44:
  free(v198);

  return v207;
}

- (int)runMotionDetectionLL:(BOOL)l imgIndex:(int)index imgProperties:(frameProperties_t *)properties refProperties:(frameProperties_t *)refProperties
{
  v6 = objc_msgSend_runMotionDetectionLL_image_imgProperties_refProperties_(self->_motionDetection, a2, l, self->_inputBands->bands[index]->textureY[3], properties, refProperties);
  v7 = v6;
  if (v6)
  {
    sub_295884ACC(v6);
  }

  return v7;
}

- (int)doDeepFusionProxyAsset:(id)asset syntheticReference:(id)reference evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties inferenceResults:(id)results style:(id)style nrfPlist:(id)plist
{
  assetCopy = asset;
  referenceCopy = reference;
  resultsCopy = results;
  styleCopy = style;
  plistCopy = plist;
  v21 = objc_alloc_init(ToneMappingBuffers);
  v22 = MEMORY[0x29EDB9270];
  v23 = *MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v23 = *v22;
  }

  if (v23)
  {
    v24 = objc_msgSend_commandQueue(self->_metal, v18, v19, v20);
    v28 = objc_msgSend_commandBuffer(v24, v25, v26, v27);

    objc_msgSend_setLabel_(v28, v29, @"KTRACE_START_MTL", v30);
    objc_msgSend_addCompletedHandler_(v28, v31, &unk_2A1CA9280, v32);
    objc_msgSend_commit(v28, v33, v34, v35);
  }

  v306 = resultsCopy;
  if (!v21)
  {
    sub_295885108(v317);
LABEL_41:
    v282 = 0;
    v315 = 0;
    v311 = 0;
    v127 = 0;
    v313 = 0;
    obj = 0;
    LODWORD(isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap) = v317[0];
    goto LABEL_34;
  }

  v36 = objc_msgSend_allocator(self->_metal, v18, v19, v20);
  v40 = objc_msgSend_newTextureDescriptor(v36, v37, v38, v39);

  if (!v40)
  {
    sub_29588506C(v317);
    goto LABEL_41;
  }

  v44 = objc_msgSend_desc(v40, v41, v42, v43);
  objc_msgSend_setUsage_(v44, v45, 3, v46);

  v47 = objc_opt_new();
  if (!v47)
  {
    sub_295884FD0(v317);
    v282 = 0;
    v315 = 0;
    v311 = 0;
    v313 = 0;
    obj = 0;
    LODWORD(isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap) = v317[0];
    v127 = v40;
    goto LABEL_34;
  }

  v309 = plistCopy;
  v311 = v47;
  if (resultsCopy)
  {
    v51 = [BoundInferenceResults alloc];
    v315 = objc_msgSend_initWithResult_andMetal_(v51, v52, resultsCopy, self->_metal);
  }

  else
  {
    v315 = 0;
  }

  v53 = objc_msgSend_width(referenceCopy[2], v48, v49, v50);
  v57 = objc_msgSend_desc(v40, v54, v55, v56);
  objc_msgSend_setWidth_(v57, v58, v53, v59);

  v63 = objc_msgSend_height(referenceCopy[2], v60, v61, v62);
  v67 = objc_msgSend_desc(v40, v64, v65, v66);
  objc_msgSend_setHeight_(v67, v68, v63, v69);

  v73 = objc_msgSend_desc(v40, v70, v71, v72);
  objc_msgSend_setPixelFormat_(v73, v74, 25, v75);

  objc_msgSend_setLabel_(v40, v76, 0, v77);
  v81 = objc_msgSend_allocator(self->_metal, v78, v79, v80);
  v84 = objc_msgSend_newTextureWithDescriptor_(v81, v82, v40, v83);

  obj = v84;
  if (!v84)
  {
    sub_295884F34(v317);
    v282 = 0;
    v313 = 0;
    obj = 0;
LABEL_45:
    LODWORD(isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap) = v317[0];
    v127 = v40;
    goto LABEL_34;
  }

  v88 = objc_msgSend_desc(v40, v85, v86, v87);
  v92 = objc_msgSend_width(v88, v89, v90, v91);
  objc_msgSend_setWidth_(v88, v93, v92 >> 1, v94);

  v98 = objc_msgSend_desc(v40, v95, v96, v97);
  v102 = objc_msgSend_height(v98, v99, v100, v101);
  objc_msgSend_setHeight_(v98, v103, v102 >> 1, v104);

  v108 = objc_msgSend_desc(v40, v105, v106, v107);
  objc_msgSend_setPixelFormat_(v108, v109, 65, v110);

  objc_msgSend_setLabel_(v40, v111, 0, v112);
  v116 = objc_msgSend_allocator(self->_metal, v113, v114, v115);
  v119 = objc_msgSend_newTextureWithDescriptor_(v116, v117, v40, v118);

  v313 = v119;
  if (!v119)
  {
    sub_295884E98(v317);
    v282 = 0;
    v313 = 0;
    goto LABEL_45;
  }

  propertiesCopy = properties;
  v123 = objc_msgSend_allocator(self->_metal, v120, v121, v122);
  v127 = objc_msgSend_newTextureDescriptor(v123, v124, v125, v126);

  if (!v127)
  {
    sub_295884DFC(v317);
    v282 = 0;
    LODWORD(isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap) = v317[0];
    goto LABEL_34;
  }

  v131 = objc_msgSend_width(referenceCopy[2], v128, v129, v130) >> 1;
  v135 = objc_msgSend_desc(v127, v132, v133, v134);
  objc_msgSend_setWidth_(v135, v136, v131, v137);

  v141 = objc_msgSend_height(referenceCopy[2], v138, v139, v140) >> 1;
  v145 = objc_msgSend_desc(v127, v142, v143, v144);
  objc_msgSend_setHeight_(v145, v146, v141, v147);

  v151 = objc_msgSend_desc(v127, v148, v149, v150);
  objc_msgSend_setUsage_(v151, v152, 7, v153);

  v157 = objc_msgSend_desc(v127, v154, v155, v156);
  objc_msgSend_setPixelFormat_(v157, v158, 25, v159);

  objc_msgSend_setLabel_(v127, v160, 0, v161);
  v165 = objc_msgSend_allocator(self->_metal, v162, v163, v164);
  v168 = objc_msgSend_newTextureWithDescriptor_(v165, v166, v127, v167);
  localGainMapTex = v21->localGainMapTex;
  v21->localGainMapTex = v168;

  if (!v21->localGainMapTex)
  {
    sub_295884D60(v317);
    v282 = 0;
    LODWORD(isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap) = v317[0];
LABEL_49:
    v22 = MEMORY[0x29EDB9270];
    goto LABEL_34;
  }

  objc_storeStrong(&v21->inLumaTex, referenceCopy[2]);
  v305 = referenceCopy;
  objc_storeStrong(&v21->inChromaTex, referenceCopy[3]);
  objc_storeStrong(&v21->outLumaTex, obj);
  objc_storeStrong(&v21->outChromaTex, v119);
  objc_storeStrong(&v21->curves, self->_toneMappingCurvesSkinMapInput);
  v173 = objc_msgSend_skinMask(v315, v170, v171, v172);
  skinMask = v21->skinMask;
  v21->skinMask = v173;

  v178 = objc_msgSend_personMask(v315, v175, v176, v177);
  personMask = v21->personMask;
  v21->personMask = v178;

  v183 = objc_msgSend_skyMask(v315, v180, v181, v182);
  skyMask = v21->skyMask;
  v21->skyMask = v183;

  v188 = objc_msgSend_faceLandmarks(v315, v185, v186, v187);
  faceLandmarks = v21->faceLandmarks;
  v21->faceLandmarks = v188;

  for (i = 0; i != 4; ++i)
  {
    v191 = v21->instanceMasks[i];
    v21->instanceMasks[i] = 0;
  }

  skinToneClassification = v21->skinToneClassification;
  v21->skinToneClassification = 0;

  maskConfidences = v21->maskConfidences;
  v21->maskConfidences = 0;

  v195 = propertiesCopy;
  if (propertiesCopy)
  {
    p_sensorID = &propertiesCopy->meta.sensorID;
  }

  else
  {
    p_sensorID = &ev0Properties->meta.sensorID;
  }

  objc_msgSend_setToneCurvesWithLTC_GTC_colorCorrectionMatrix_dump_(self->_toneMappingCurvesSkinMapInput, v194, (p_sensorID + 21), &ev0Properties->meta.ltmCurves, 0, p_sensorID[27870], p_sensorID[27872], p_sensorID[27874]);
  objc_msgSend_getLumaPedestalWithProperties_plistSource_(DeepFusionCommon, v197, &ev0Properties->meta.exposureParams, *(*(plistCopy + 7) + 56));
  v21->inputLumaPedestal = v198;
  BYTE4(v298) = 0;
  LODWORD(v298) = 2;
  LODWORD(v199) = 1.0;
  IsLinear = objc_msgSend_runToneMapping_bilateralGrid_bilateralGridHomography_tmPlist_darkestFrameMetadata_ev0FrameMetadata_scaleInput_colorCorrection_hasChromaBias_quality_inputIsLinear_(self->_toneMappingStage, v200, v21, 0, *(plistCopy + 5), p_sensorID, ev0Properties, 1, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32), v199, *&ev0Properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid, *&ev0Properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GR.shadows, *&ev0Properties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GB.highlights, v298);
  if (IsLinear)
  {
    sub_295884B2C(IsLinear, v317);
    v282 = 0;
    LODWORD(isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap) = v317[0];
    referenceCopy = v305;
    goto LABEL_49;
  }

  if (!styleCopy || !self->_styleStage || !*(plistCopy + 13) || !v315)
  {
    goto LABEL_28;
  }

  v205 = objc_msgSend_width(v21->localGainMapTex, v202, v203, v204);
  v209 = objc_msgSend_desc(v127, v206, v207, v208);
  objc_msgSend_setWidth_(v209, v210, v205, v211);

  v215 = objc_msgSend_height(v21->localGainMapTex, v212, v213, v214);
  v219 = objc_msgSend_desc(v127, v216, v217, v218);
  objc_msgSend_setHeight_(v219, v220, v215, v221);

  v225 = objc_msgSend_desc(v127, v222, v223, v224);
  objc_msgSend_setUsage_(v225, v226, 7, v227);

  v231 = objc_msgSend_pixelFormat(v21->localGainMapTex, v228, v229, v230);
  v235 = objc_msgSend_desc(v127, v232, v233, v234);
  objc_msgSend_setPixelFormat_(v235, v236, v231, v237);

  objc_msgSend_setLabel_(v127, v238, 0, v239);
  v243 = objc_msgSend_allocator(self->_metal, v240, v241, v242);
  v246 = objc_msgSend_newTextureWithDescriptor_(v243, v244, v127, v245);

  if (!v246)
  {
    sub_295884CC4(v317);
    LODWORD(isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap) = v317[0];
    v22 = MEMORY[0x29EDB9270];
LABEL_54:

    v282 = 0;
    referenceCopy = v305;
    goto LABEL_34;
  }

  v303 = *(plistCopy + 13);
  styleStage = self->_styleStage;
  v302 = objc_msgSend_sceneType(v315, v247, v248, v249);
  v250 = v21->localGainMapTex;
  v254 = objc_msgSend_personMask(v315, v251, v252, v253);
  v258 = objc_msgSend_skinMask(v315, v255, v256, v257);
  v262 = objc_msgSend_skyMask(v315, v259, v260, v261);
  isLowLight = objc_msgSend_runWithStyle_tuningParams_refFrameMetadata_sceneType_lumaTex_chromaTex_gainMapTex_outputGainMapTex_personMaskTex_skinMaskTex_skyMaskTex_isLowLight_(styleStage, v263, styleCopy, v303, p_sensorID, v302, obj, v313, v250, v246, v254, v258, v262, 0);

  if (isLowLight)
  {
    LODWORD(isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap) = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v299, v300, v301);
    plistCopy = v309;
    v22 = MEMORY[0x29EDB9270];
    goto LABEL_54;
  }

  FigMetalDecRef();
  v265 = v21->localGainMapTex;
  v21->localGainMapTex = v246;

  v195 = propertiesCopy;
  plistCopy = v309;
LABEL_28:
  v266 = *(plistCopy + 2);
  v308 = v266;
  v267 = &OBJC_IVAR___NRFPlist_proxyAssetEVMRefDenoising;
  if (!v195)
  {
    v267 = &OBJC_IVAR___NRFPlist_proxyAssetEV0RefDenoising;
  }

  objc_storeStrong(plistCopy + 2, *&plistCopy[*v267]);
  objc_storeStrong(v311 + 2, obj);
  objc_storeStrong(v311 + 3, v313);
  v271 = v21->localGainMapTex;
  if (v271)
  {
    v272 = objc_msgSend_skinMask(v315, v268, v269, v270);
    v276 = objc_msgSend_skyMask(v315, v273, v274, v275);
    BYTE2(v301) = 0;
    LOWORD(v301) = 0;
    LOBYTE(v299) = 0;
    isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap = objc_msgSend_denoiseFrameWithOutput_input_localGainMap_skinMask_skyMask_maskExtent_exposure_staticScene_nrfPlist_defringeEnabled_isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap_(self, v277, assetCopy, v311, v271, v272, v276, &ev0Properties->meta.exposureParams, ev0Properties->meta.ROI.origin.x, ev0Properties->meta.ROI.origin.y, ev0Properties->meta.ROI.size.width, ev0Properties->meta.ROI.size.height, v299, plistCopy, v301, 0, 0, 0, 0);

    if (isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap)
    {
      sub_295884BC8(isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap);
    }

    else
    {
      objc_storeStrong(plistCopy + 2, v266);
      FigMetalDecRef();
      FigMetalDecRef();
      FigMetalDecRef();
      FigMetalDecRef();
      FigMetalDecRef();
    }
  }

  else
  {
    sub_295884C28(v317);
    LODWORD(isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap) = v317[0];
  }

  referenceCopy = v305;
  v22 = MEMORY[0x29EDB9270];
  v282 = v308;
LABEL_34:
  v283 = *v22;
  if (*v22 == 1)
  {
    kdebug_trace();
    v283 = *v22;
  }

  if (v283)
  {
    v284 = objc_msgSend_commandQueue(self->_metal, v279, v280, v281);
    objc_msgSend_commandBuffer(v284, v285, v286, v287);
    v289 = v288 = referenceCopy;

    objc_msgSend_setLabel_(v289, v290, @"KTRACE_END_MTL", v291);
    v316[0] = MEMORY[0x29EDCA5F8];
    v316[1] = 3221225472;
    v316[2] = sub_295807264;
    v316[3] = &unk_29EDDBE78;
    memset(&v316[4], 0, 24);
    objc_msgSend_addCompletedHandler_(v289, v292, v316, v293);
    objc_msgSend_commit(v289, v294, v295, v296);

    referenceCopy = v288;
  }

  return isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap;
}

- (id)_runInferenceProvider:(id)provider
{
  providerCopy = provider;
  v5 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  v6 = providerCopy[2](providerCopy);
  v10 = v6;
  if (!v6)
  {
    sub_295885264();
LABEL_13:
    v13 = 0;
    goto LABEL_8;
  }

  if (objc_msgSend_status(v6, v7, v8, v9))
  {
    sub_2958851A4();
    goto LABEL_13;
  }

  v11 = [BoundInferenceResults alloc];
  v13 = objc_msgSend_initWithResult_andMetal_(v11, v12, v10, self->_metal);
  if (v13)
  {
    if (*v5 == 1)
    {
      kdebug_trace();
    }
  }

  else
  {
    sub_295885204();
  }

LABEL_8:

  return v13;
}

- (int)_ensureInputBandPyramidIsAllocatedForFrame:(int)frame
{
  v3 = *&frame;
  v5 = self->_inputBands->bands[frame];
  v6 = v5;
  levels = v5->levels;
  if (levels >= 2)
  {
    p_levels = &v5->levels;
    v9 = levels - 1;
    while (FigMetalIsValid() && (FigMetalIsValid() & 1) != 0)
    {
      p_levels += 2;
      if (!--v9)
      {
        LODWORD(isFP16_pyramid) = 0;
        goto LABEL_10;
      }
    }
  }

  v11 = (&self->super.isa + v3);
  v12 = v11[3];
  v13 = v11[8];
  v6->levels = 4;
  metal = self->_metal;
  v15 = MEMORY[0x29EDBA0F8];
  v16 = v13;
  v19 = objc_msgSend_stringWithFormat_(v15, v17, @"inputBands->bands[%d]", v18, v3);
  v23 = objc_msgSend_width(v12, v20, v21, v22);
  v27 = objc_msgSend_height(v12, v24, v25, v26);
  isFP16_pyramid = objc_msgSend_allocatePyramidWithMetalContext_label_width_height_isFP16_pyramid_(PyramidStorage_NRF, v28, metal, v19, v23, v27, 1, v6);

  if (isFP16_pyramid)
  {
    sub_2958852C4(isFP16_pyramid);
  }

  else
  {
    objc_msgSend_setLumaTexture_chromaTexture_level_metal_(v6, v29, v12, v16, 0, self->_metal);
  }

LABEL_10:
  return isFP16_pyramid;
}

- (int)_freeInputBandPyramidForFrame:(int)frame
{
  v4 = self->_inputBands->bands[frame];
  if (v4->levels >= 1)
  {
    objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, a2, v4, self->_metal);
    self->_inputBands->bands[frame]->levels = 0;
  }

  return 0;
}

- (int)doDeepFusionPyramidGeneration:(const FusionConfiguration *)generation properties:(const frameProperties_t *)properties syntheticReferenceFramesOnly:(BOOL)only pyramidHasBeenBuiltArray:(BOOL *)array
{
  onlyCopy = only;
  v170 = 0;
  v171 = 0;
  v7 = MEMORY[0x29EDB9270];
  if (!generation)
  {
    sub_295885AE4(v172);
LABEL_66:
    v28 = 0;
LABEL_68:
    v153 = v172[0];
    goto LABEL_43;
  }

  if (!properties)
  {
    sub_295885A48(v172);
    goto LABEL_66;
  }

  generationCopy = generation;
  v11 = *MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v11 = *v7;
  }

  if (v11)
  {
    v12 = objc_msgSend_commandQueue(self->_metal, a2, generation, properties);
    v16 = objc_msgSend_commandBuffer(v12, v13, v14, v15);

    objc_msgSend_setLabel_(v16, v17, @"KTRACE_START_MTL", v18);
    objc_msgSend_addCompletedHandler_(v16, v19, &unk_2A1CA92A0, v20);
    objc_msgSend_commit(v16, v21, v22, v23);
  }

  v24 = objc_msgSend_allocator(self->_metal, a2, generation, properties);
  v28 = objc_msgSend_newTextureDescriptor(v24, v25, v26, v27);

  if (!v28)
  {
    sub_2958859AC(v172);
    goto LABEL_68;
  }

  v32 = objc_msgSend_desc(v28, v29, v30, v31);
  objc_msgSend_setUsage_(v32, v33, 7, v34);

  finalScaleFwd_low = LODWORD(generationCopy[4].colorSpaceConversionParameters[1].finalScaleFwd);
  if (finalScaleFwd_low < 1)
  {
    v153 = 0;
    goto LABEL_43;
  }

  v155 = v28;
  v39 = 0;
  v162 = *(MEMORY[0x29EDCA928] + 16);
  v163 = *MEMORY[0x29EDCA928];
  propertiesCopy = properties;
  p_height = &properties[1].meta.ROI.size.height;
  v160 = vdupq_n_s32(0x358637BDu);
  v161 = *(MEMORY[0x29EDCA928] + 32);
  p_nonLinearBias = &generationCopy->colorSpaceConversionParameters[0].transferFunctionFwd.nonLinearBias;
  v154 = &properties[1].meta.ROI.size.height;
  v157 = generationCopy;
  arrayCopy = array;
  while (1)
  {
    if (array && array[v39] || v39 != LODWORD(generationCopy[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale) && onlyCopy && v39 != *&generationCopy[4].colorSpaceConversionParameters[1].outputToLinearYCbCr)
    {
      goto LABEL_39;
    }

    IsAllocatedForFrame = objc_msgSend__ensureInputBandPyramidIsAllocatedForFrame_(self, v35, v39, v37, v154);
    if (IsAllocatedForFrame)
    {
      v153 = IsAllocatedForFrame;
      sub_295885324();
      goto LABEL_41;
    }

    v165 = p_nonLinearBias[-1];
    v166 = *p_nonLinearBias;
    v167 = p_nonLinearBias[1];
    v43 = vandq_s8(vandq_s8(vcgeq_f32(v160, vabdq_f32(*p_nonLinearBias, v162)), vcgeq_f32(v160, vabdq_f32(v165, v163))), vcgeq_f32(v160, vabdq_f32(v167, v161)));
    v43.i32[3] = v43.i32[2];
    v44 = vminvq_u32(v43);
    v45 = (&self->super.isa + v39);
    v46 = v45[3];
    v47 = v45[8];
    v51 = v45[13];
    v168 = v47;
    if ((v44 & 0x80000000) == 0)
    {
      v164 = v44;
      v52 = objc_msgSend_width(v46, v48, v49, v50);
      v56 = objc_msgSend_desc(v155, v53, v54, v55);
      objc_msgSend_setWidth_(v56, v57, v52, v58);

      v62 = objc_msgSend_height(v46, v59, v60, v61);
      v66 = objc_msgSend_desc(v155, v63, v64, v65);
      objc_msgSend_setHeight_(v66, v67, v62, v68);

      v72 = objc_msgSend_desc(v155, v69, v70, v71);
      objc_msgSend_setPixelFormat_(v72, v73, 25, v74);

      objc_msgSend_setLabel_(v155, v75, 0, v76);
      v80 = objc_msgSend_allocator(self->_metal, v77, v78, v79);
      v83 = objc_msgSend_newTextureWithDescriptor_(v80, v81, v155, v82);
      v84 = v171;
      v171 = v83;

      if (v171)
      {
        v88 = objc_msgSend_desc(v155, v85, v86, v87);
        v92 = objc_msgSend_width(v88, v89, v90, v91);
        objc_msgSend_setWidth_(v88, v93, v92 >> 1, v94);

        v98 = objc_msgSend_desc(v155, v95, v96, v97);
        v102 = objc_msgSend_height(v98, v99, v100, v101);
        objc_msgSend_setHeight_(v98, v103, v102 >> 1, v104);

        v108 = objc_msgSend_desc(v155, v105, v106, v107);
        objc_msgSend_setPixelFormat_(v108, v109, 65, v110);

        objc_msgSend_setLabel_(v155, v111, 0, v112);
        v116 = objc_msgSend_allocator(self->_metal, v113, v114, v115);
        v119 = objc_msgSend_newTextureWithDescriptor_(v116, v117, v155, v118);
        v120 = v170;
        v170 = v119;

        if (v170)
        {
          v122 = propertiesCopy[1].meta.ltmCurves.ltmLut.bytes[179];
          if (v122 != 1)
          {
            v131 = objc_msgSend_runWarpUsingTransform_inputLumaTex_inputChromaTex_outputLumaTex_outputChromaTex_(self->_warpStage, v121, v46, v168, v171, *v165.i64, *v166.i64, *v167.i64);
            if (v131)
            {
              v153 = v131;
              sub_295885384(v131, v51);
              goto LABEL_59;
            }

LABEL_30:
            v132 = objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_inputBands->bands[v39], v124, v171, v170, 0, self->_metal);
            if (v132)
            {
              v153 = v132;
              sub_295885464(v132, v51);
              goto LABEL_59;
            }

            v125 = v164;
            IsLinearYCbCr = objc_msgSend_pyramidDownscale_cscParams_band0IsLinearYCbCr_(self->_syntheticLongStage, v133, self->_inputBands->bands[v39], p_height, v122);
            goto LABEL_32;
          }

          if (v51)
          {
            v123 = objc_msgSend_runWarpUsingTransform_inputYCbCrTex_inputCscParams_outputLinearLumaTex_outputLinearChromaTex_(self->_warpStage, v121, v51, v154, v171, *v165.i64, *v166.i64, *v167.i64);
            if (v123)
            {
              v153 = v123;
              sub_2958853F4();
LABEL_59:
              v47 = v168;
              goto LABEL_60;
            }

            goto LABEL_30;
          }

          sub_2958854D4(v172);
        }

        else
        {
          sub_295885570();
        }
      }

      else
      {
        sub_295885610();
      }

      v153 = v172[0];
      goto LABEL_59;
    }

    v125 = v44;
    v126 = objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_inputBands->bands[v39], v48, v46, v47, 0, self->_metal);
    if (v126)
    {
      v153 = v126;
      sub_2958856B0(v126, v51);
      goto LABEL_60;
    }

    if (propertiesCopy[1].meta.ltmCurves.ltmLut.bytes[179] == 1)
    {
      break;
    }

LABEL_28:
    IsLinearYCbCr = objc_msgSend_pyramidDownscale_cscParams_band0IsLinearYCbCr_(self->_syntheticLongStage, v127, self->_inputBands->bands[v39], p_height, 0);
LABEL_32:
    if (IsLinearYCbCr)
    {
      sub_295885790();
      v153 = v172[0];
LABEL_55:
      v47 = v168;
      goto LABEL_60;
    }

    array = arrayCopy;
    if ((v125 & 0x80000000) == 0)
    {
      FigMetalDecRef();
      FigMetalDecRef();
      v135 = objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_inputBands->bands[v39], v134, v46, v168, 0, self->_metal);
      if (v135)
      {
        v153 = v135;
        sub_295885830(v135, v51);
        goto LABEL_55;
      }

      v138 = objc_msgSend_setYCbCrBand0Texture_(self->_inputBands->bands[v39], v136, v51, v137);
      if (v138)
      {
        v153 = v138;
        sub_2958858A0(v138, v51);
        goto LABEL_55;
      }
    }

    if (arrayCopy)
    {
      arrayCopy[v39] = 1;
    }

    generationCopy = v157;
    finalScaleFwd_low = LODWORD(v157[4].colorSpaceConversionParameters[1].finalScaleFwd);
LABEL_39:
    ++v39;
    p_height += 224224;
    p_nonLinearBias += 3;
    if (v39 >= finalScaleFwd_low)
    {
      v153 = 0;
      goto LABEL_41;
    }
  }

  if (v51)
  {
    v129 = objc_msgSend_setYCbCrBand0Texture_(self->_inputBands->bands[v39], v127, v51, v128);
    if (v129)
    {
      v153 = v129;
      sub_295885720(v129, v51);
      goto LABEL_60;
    }

    goto LABEL_28;
  }

  sub_295885910(v172);
  v153 = v172[0];
LABEL_60:

LABEL_41:
  v7 = MEMORY[0x29EDB9270];
  v28 = v155;
LABEL_43:
  v139 = *v7;
  if (*v7 == 1)
  {
    kdebug_trace();
    v139 = *v7;
  }

  if (v139)
  {
    v140 = objc_msgSend_commandQueue(self->_metal, v35, v36, v37);
    v144 = objc_msgSend_commandBuffer(v140, v141, v142, v143);

    objc_msgSend_setLabel_(v144, v145, @"KTRACE_END_MTL", v146);
    v169[0] = MEMORY[0x29EDCA5F8];
    v169[1] = 3221225472;
    v169[2] = sub_295807E50;
    v169[3] = &unk_29EDDBE78;
    v169[5] = 0;
    v169[6] = 0;
    v169[4] = -1;
    objc_msgSend_addCompletedHandler_(v144, v147, v169, v148);
    objc_msgSend_commit(v144, v149, v150, v151);
  }

  return v153;
}

- (int)doGainMap:(const FusionConfiguration *)map properties:(const frameProperties_t *)properties output:(id)output outputHeadroom:(float *)headroom nrfPlist:(id)plist useFusedFrame:(BOOL)frame
{
  frameCopy = frame;
  outputCopy = output;
  plistCopy = plist;
  v19 = plistCopy;
  if (!plistCopy)
  {
    sub_295885EA0();
    goto LABEL_51;
  }

  v20 = *(plistCopy + 11);
  if (!v20)
  {
    sub_295885E3C();
    goto LABEL_51;
  }

  if (!map)
  {
    sub_295885DD8();
    goto LABEL_51;
  }

  if (!properties)
  {
    sub_295885D74();
    goto LABEL_51;
  }

  if (!outputCopy)
  {
    sub_295885D10();
    goto LABEL_51;
  }

  v21 = *(v20 + 8);
  v22 = *(v20 + 12);
  v23 = fabsf(v22);
  if (fabsf(v21) > 1.0 || v22 <= v21 || v23 > 1.0)
  {
    sub_295885CAC();
    goto LABEL_51;
  }

  v62 = objc_msgSend_width(outputCopy, v16, v17, v18);
  v29 = objc_msgSend_height(outputCopy, v26, v27, v28);
  v33 = v29;
  if (frameCopy)
  {
    v34 = self->_fusedBand->textureY[1];
    linearScale = map[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale;
LABEL_31:
    v44 = 1.0;
    if (*&map[4].colorSpaceConversionParameters[1].outputToLinearYCbCr == -1)
    {
      v44 = *(&properties->meta.exposureParams.ltm_soft_gain + 56056 * SLODWORD(linearScale)) * 0.25;
    }

    goto LABEL_33;
  }

  linearScale = *&map[4].colorSpaceConversionParameters[1].outputToLinearYCbCr;
  if (linearScale != NAN)
  {
    v36 = 0;
    if ((LODWORD(linearScale) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

  linearScale = map[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale;
  v36 = LODWORD(linearScale) != -1;
  if ((LODWORD(linearScale) & 0x80000000) != 0)
  {
LABEL_43:
    sub_295885B80();
LABEL_51:
    v34 = 0;
    goto LABEL_52;
  }

LABEL_17:
  mapCopy = map;
  v61 = v29;
  v37 = self->_inputBands->bands[LODWORD(linearScale)];
  levels = v37->levels;
  if (levels >= 2)
  {
    v55 = __PAIR64__(frameCopy, v36);
    propertiesCopy = properties;
    headroomCopy = headroom;
    v58 = v19;
    v59 = outputCopy;
    v34 = 0;
    while (1)
    {
      v39 = v34;
      v34 = v37->textureY[levels - 1];

      if (v62 <= objc_msgSend_width(v34, v40, v41, v42))
      {
        if (v61 <= objc_msgSend_height(v34, v30, v31, v32) || levels <= 2)
        {
LABEL_28:
          headroom = headroomCopy;
          v36 = v55;
          goto LABEL_30;
        }
      }

      else if (levels < 3)
      {
        goto LABEL_28;
      }

      v37 = self->_inputBands->bands[LODWORD(linearScale)];
      --levels;
    }
  }

  v34 = 0;
LABEL_30:
  v44 = 1.0;
  map = mapCopy;
  v33 = v61;
  if (v36)
  {
    goto LABEL_31;
  }

LABEL_33:
  if (!v34)
  {
    sub_295885C48();
    goto LABEL_52;
  }

  if (objc_msgSend_width(v34, v30, v31, v32) < v62 || objc_msgSend_height(v34, v45, v46, v47) < v33)
  {
    sub_295885BE4();
LABEL_52:
    IsLinear_inputScaling = -12780;
    goto LABEL_41;
  }

  if (frameCopy)
  {
    v52 = *&map[4].colorSpaceConversionParameters[1].outputToLinearYCbCr == -1;
  }

  else
  {
    v52 = properties[1].meta.ltmCurves.ltmLut.bytes[224224 * SLODWORD(linearScale) + 176];
  }

  *&v49 = v21;
  *&v50 = v22;
  *&v51 = v44;
  IsLinear_inputScaling = objc_msgSend_runWithInput_output_minThreshold_maxThreshold_inputIsLinear_inputScaling_(self->_gainMapStage, v48, v34, outputCopy, v52, v49, v50, v51, v55, propertiesCopy, headroomCopy, v58, v59);
  if (headroom)
  {
    *headroom = v44 * 4.0;
  }

LABEL_41:

  return IsLinear_inputScaling;
}

- (void)resetFusion:(unsigned int)fusion
{
  if (fusion != 1)
  {
    if (fusion != 2)
    {
      return;
    }

    objc_msgSend_releaseResources(self->_motionDetection, a2, *&fusion, v3);
  }

  objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, a2, self->_fusedBand, self->_metal);
  objc_msgSend_makePyramidAliasable_metal_releaseBand0_(PyramidStorage_NRF, v5, self->_accWeightPyramid, self->_metal, 1);
  accWeightPyramid = self->_accWeightPyramid;
  self->_accWeightPyramid = 0;
}

- (int)greenGhostMitigationWithRefIndex:(int)index bracketIndex:(int)bracketIndex refProperties:(frameProperties_t *)properties otherProperties:(frameProperties_t *)otherProperties tuningParams:(id)params
{
  paramsCopy = params;
  if (*MEMORY[0x29EDB9270])
  {
    v14 = objc_msgSend_commandQueue(self->_metal, v10, v11, v12);
    v18 = objc_msgSend_commandBuffer(v14, v15, v16, v17);

    objc_msgSend_setLabel_(v18, v19, @"KTRACE_START_MTL", v20);
    v64[0] = MEMORY[0x29EDCA5F8];
    v64[1] = 3221225472;
    v64[2] = sub_295808758;
    v64[3] = &unk_29EDDBE98;
    indexCopy = index;
    bracketIndexCopy = bracketIndex;
    objc_msgSend_addCompletedHandler_(v18, v21, v64, v22);
    objc_msgSend_commit(v18, v23, v24, v25);
  }

  indexCopy2 = index;
  v27 = self->_inputBands->bands[index];
  fusionRemixStage = self->_fusionRemixStage;
  fusionBuffers = self->_fusionBuffers;
  v33 = objc_msgSend_width(v27->textureY[0], v30, v31, v32);
  v37 = objc_msgSend_height(v27->textureY[0], v34, v35, v36);
  objc_msgSend_allocateFusionBuffersIfNeeded_width_height_(fusionRemixStage, v38, fusionBuffers, v33, v37);
  objc_storeStrong(&self->_greenGhostBuffers->_fusedLuma, self->_fusionBuffers->fusedLumaTex);
  objc_storeStrong(&self->_greenGhostBuffers->_fusedChroma, self->_fusionBuffers->fusedChromaTex);
  if (dword_2A18C2398)
  {
    v63 = 0;
    v62 = 0;
    v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  isRefProcessing_refProperties_otherProperties_greenGhostBuffers_tuningParams = objc_msgSend_mitigationWithRefPyramid_otherPyramid_isRefProcessing_refProperties_otherProperties_greenGhostBuffers_tuningParams_(self->_greenGhostLowLightStage, v39, self->_inputBands->bands[index], self->_inputBands->bands[bracketIndex], index == bracketIndex, properties, otherProperties, self->_greenGhostBuffers, paramsCopy);
  objc_storeStrong(&self->_fusionBuffers->ggMaxFusionWeights, self->_greenGhostBuffers->_ggMaxFusionWeights);
  if (*MEMORY[0x29EDB9270])
  {
    bracketIndexCopy2 = bracketIndex;
    v46 = objc_msgSend_commandQueue(self->_metal, v42, v43, v44);
    v50 = objc_msgSend_commandBuffer(v46, v47, v48, v49);

    objc_msgSend_setLabel_(v50, v51, @"KTRACE_END_MTL", v52);
    v61[0] = MEMORY[0x29EDCA5F8];
    v61[1] = 3221225472;
    v61[2] = sub_2958087F8;
    v61[3] = &unk_29EDDBE78;
    v61[4] = indexCopy2;
    v61[5] = bracketIndexCopy2;
    v61[6] = 0;
    objc_msgSend_addCompletedHandler_(v50, v53, v61, v54);
    objc_msgSend_commit(v50, v55, v56, v57);
  }

  return isRefProcessing_refProperties_otherProperties_greenGhostBuffers_tuningParams;
}

- (int)freeInputBandPyramids
{
  if (self->_currentFrame < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = objc_msgSend__freeInputBandPyramidForFrame_(self, a2, v4, v2);
    if (v5)
    {
      break;
    }

    v4 = (v4 + 1);
    if (v4 >= self->_currentFrame)
    {
      return 0;
    }
  }

  v6 = v5;
  sub_295885F04();
  return v6;
}

- (SidecarWriter)sidecarWriter
{
  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);

  return WeakRetained;
}

- (int)denoiseSingleImage:(__CVBuffer *)image linearOutput:(__CVBuffer *)output input:(__CVBuffer *)input cfp:(frameProperties_t *)cfp nrfPlist:(id)plist style:(id)MetalYCbCrFormat inferenceProvider:(id)provider defringeEnabled:(BOOL)self0 colorCubeFixType:(int)self1
{
  MetalLumaFormat = provider;
  plistCopy = plist;
  v367 = MetalYCbCrFormat;
  providerCopy = provider;
  v375[0] = 0;
  v362 = objc_opt_new();
  if (!v362 || (v368 = objc_opt_new()) == 0)
  {
    sub_2957F888C();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v339, v344, v347, v349, v351, v353, v355);
    sub_2957F8880();
    FigSignalErrorAtGM(v322);
    sub_295808C84();
    v357 = 0;
    v44 = 0;
    inputCopy = 0;
    v59 = 0;
    v365 = 0;
    v320 = 0;
    v273 = v362;
    goto LABEL_70;
  }

  v366 = providerCopy;
  MetalLumaFormat = objc_msgSend_getMetalLumaFormat_(LumaChromaImage, v18, input, v19);
  objc_msgSend_getMetalChromaFormat_(LumaChromaImage, v20, input, v21);
  MetalYCbCrFormat = objc_msgSend_getMetalYCbCrFormat_(LumaChromaImage, v22, input, v23);
  objc_msgSend_getMetalLumaFormat_(LumaChromaImage, v24, image, v25);
  objc_msgSend_getMetalChromaFormat_(LumaChromaImage, v26, image, v27);
  objc_msgSend_reset(self, v28, v29, v30);
  objc_msgSend_setFusionMode_(self, v31, 0, v32);
  sub_295808D9C();
  v37 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v33, v34, v35, v36);
  if (!v37)
  {
    sub_295808BB8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v339, v344, v347, v349, v351, v353, v11);
    sub_2957F8880();
    FigSignalErrorAtGM(v323);
    sub_295808C84();
    v357 = 0;
    v44 = 0;
    inputCopy = 0;
LABEL_76:
    v59 = 0;
    v365 = 0;
LABEL_103:
    v273 = v362;
    v320 = v368;
    goto LABEL_70;
  }

  v38 = v37;
  sub_295808D90();
  v44 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v39, v40, v41, v42);
  if (!v44)
  {
    inputCopy = v38;
    sub_295808BB8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v339, v344, v347, v349, v351, v353, v11);
    sub_2957F8880();
    FigSignalErrorAtGM(v324);
    sub_295808C84();
    v357 = 0;
    goto LABEL_76;
  }

  if (MetalYCbCrFormat)
  {
    metal = self->_metal;
    v374 = 0;
    LODWORD(MetalYCbCrFormat) = objc_msgSend_bindYCbCrMetalTextureWithMetalContext_pixelBuffer_pixelFormat_textureToBind_alignmentFactor_(LumaChromaImage, v43, metal, input, MetalYCbCrFormat, &v374, 16);
    v357 = v374;
    if (MetalYCbCrFormat)
    {
      inputCopy = v38;
LABEL_75:
      v369 = 0;
      MetalLumaFormat = 0;
      input = 0;
      goto LABEL_76;
    }
  }

  else
  {
    v357 = 0;
  }

  sub_295808D9C();
  v50 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v46, v47, v48, v49);
  cfpCopy2 = cfp;
  if (!v50)
  {
    inputCopy = v38;
    sub_295808BB8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v339, v344, v347, v349, v351, v353, v11);
    sub_2957F8880();
    LODWORD(MetalYCbCrFormat) = FigSignalErrorAtGM(v325);
    goto LABEL_75;
  }

  MetalYCbCrFormat = v50;
  sub_295808D90();
  v59 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v52, v53, v54, v55);
  v365 = MetalYCbCrFormat;
  if (!v59)
  {
    inputCopy = v38;
    sub_295808BB8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v339, v344, v347, v349, v351, v353, v11);
    sub_2957F8880();
    v330 = 1223;
LABEL_82:
    FigSignalErrorAtGM(v326, v327, v328, v329, v330, v38);
    goto LABEL_83;
  }

  if ((objc_msgSend_width(v38, v56, v57, v58) & 0xF) != 0)
  {
    inputCopy = v38;
    sub_295808BB8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v339, v344, v347, v349, v351, v353, v11);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&self[1]._ambnrStageCache.entries[1].options.lgaAlgorithm, 0xFFFFFFFFLL, "(Fig)", 1225, v38);
LABEL_83:
    sub_295808C84();
    goto LABEL_103;
  }

  if ((objc_msgSend_height(v38, v60, v61, v62) & 0xF) != 0)
  {
    inputCopy = v38;
    sub_295808BB8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v339, v344, v347, v349, v351, v353, v11);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&self[1]._ambnrStageCache.entries[1].options.lgaAlgorithm, 0xFFFFFFFFLL, "(Fig)", 1226, v38);
    goto LABEL_83;
  }

  if ((objc_msgSend_width(MetalYCbCrFormat, v63, v64, v65) & 0xF) != 0)
  {
    inputCopy = v38;
    sub_295808BB8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v339, v344, v347, v349, v351, v353, v11);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&self[1]._ambnrStageCache.entries[1].options.lgaAlgorithm, 0xFFFFFFFFLL, "(Fig)", 1227, v38);
    goto LABEL_83;
  }

  if ((objc_msgSend_height(MetalYCbCrFormat, v66, v67, v68) & 0xF) != 0)
  {
    inputCopy = v38;
    sub_295808BB8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v339, v344, v347, v349, v351, v353, v11);
    v327 = *&self[1]._ambnrStageCache.entries[1].options.lgaAlgorithm;
    v326 = "%s signalled err=%d at <>:%d";
    v329 = "(Fig)";
    v328 = 0xFFFFFFFFLL;
    v330 = 1228;
    goto LABEL_82;
  }

  input = v38;
  v44 = v44;
  inputCopy = input;
  if (providerCopy)
  {
    v369 = objc_msgSend__runInferenceProvider_(self, v69, providerCopy, v71);
    if (!v369)
    {
      sub_295808BF4();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v339, v344, v347, v349, v351, v353, v11);
      LODWORD(MetalYCbCrFormat) = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v336, v340, v345);
      v369 = 0;
LABEL_85:
      MetalLumaFormat = v44;
      goto LABEL_103;
    }
  }

  else
  {
    v369 = 0;
  }

  y_low = LODWORD(cfp[1].meta.ROI.origin.y);
  if (output && y_low != 2)
  {
    sub_295808C44();
    LODWORD(MetalYCbCrFormat) = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v335, v339, v344);
    goto LABEL_85;
  }

  v363 = v59;
  v364 = v44;
  if (y_low == 2)
  {
    v76 = objc_opt_new();
    if (v76)
    {
      v77 = objc_msgSend_allocator(self->_metal, v73, v74, v75);
      v81 = objc_msgSend_newTextureDescriptor(v77, v78, v79, v80);

      if (v81)
      {
        v85 = objc_msgSend_desc(v81, v82, v83, v84);
        objc_msgSend_setUsage_(v85, v86, 7, v87);

        if (self->_nrfConfig->_learnedNREnabled)
        {
          objc_msgSend_width(v364, v88, v89, v90);
          v91 = sub_295808D84();
          objc_msgSend_desc(v91, v92, v93, v94);
          objc_claimAutoreleasedReturnValue();
          sub_295808DB4();
          objc_msgSend_setWidth_(v95, v96, v97, v98);

          objc_msgSend_height(v364, v99, v100, v101);
          v102 = sub_295808D84();
          objc_msgSend_desc(v102, v103, v104, v105);
          objc_claimAutoreleasedReturnValue();
          sub_295808DB4();
          objc_msgSend_setHeight_(v106, v107, v108, v109);

          v113 = objc_msgSend_desc(v81, v110, v111, v112);
          objc_msgSend_setPixelFormat_(v113, v114, 25, v115);

          sub_295808D34(v116, v117, v118, v119);
          v123 = objc_msgSend_allocator(self->_metal, v120, v121, v122);
          MetalYCbCrFormat = sub_295808D4C(v123, v124, v125, v126);
          v375[0] = MetalYCbCrFormat;

          v127 = inputCopy;
          obj = MetalYCbCrFormat;
          if (!MetalYCbCrFormat)
          {
LABEL_27:
            sub_295808BB8();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v339, v344, v347, v349, v351, v353, v11);
            sub_2957F8880();
            v127 = inputCopy;
            LODWORD(MetalYCbCrFormat) = FigSignalErrorAtGM(v128);
LABEL_102:

            v44 = v364;
            MetalLumaFormat = v364;
            input = v127;
            goto LABEL_103;
          }
        }

        else
        {
          obj = 0;
          v127 = inputCopy;
        }

        objc_msgSend_width(v127, v88, v89, v90);
        v129 = sub_295808D84();
        objc_msgSend_desc(v129, v130, v131, v132);
        objc_claimAutoreleasedReturnValue();
        sub_295808DB4();
        objc_msgSend_setWidth_(v133, v134, v135, v136);

        objc_msgSend_height(v127, v137, v138, v139);
        v140 = sub_295808D84();
        objc_msgSend_desc(v140, v141, v142, v143);
        objc_claimAutoreleasedReturnValue();
        sub_295808DB4();
        objc_msgSend_setHeight_(v144, v145, v146, v147);

        v151 = objc_msgSend_desc(v81, v148, v149, v150);
        objc_msgSend_setPixelFormat_(v151, v152, 25, v153);

        sub_295808D34(v154, v155, v156, v157);
        v161 = objc_msgSend_allocator(self->_metal, v158, v159, v160);
        v165 = sub_295808D4C(v161, v162, v163, v164);
        sub_295808D04(v165, 8);

        if (!*(v76 + 8))
        {
          goto LABEL_27;
        }

        sub_295808D34(v166, v167, v168, v169);
        v173 = objc_msgSend_allocator(self->_metal, v170, v171, v172);
        v177 = sub_295808D4C(v173, v174, v175, v176);
        sub_295808D04(v177, 32);

        if (!*(v76 + 32))
        {
          goto LABEL_27;
        }

        v181 = objc_msgSend_desc(v81, v178, v179, v180);
        v185 = objc_msgSend_width(v181, v182, v183, v184);
        objc_msgSend_setWidth_(v181, v186, v185 >> 1, v187);

        v191 = objc_msgSend_desc(v81, v188, v189, v190);
        v195 = objc_msgSend_height(v191, v192, v193, v194);
        objc_msgSend_setHeight_(v191, v196, v195 >> 1, v197);

        v201 = objc_msgSend_desc(v81, v198, v199, v200);
        objc_msgSend_setPixelFormat_(v201, v202, 65, v203);

        sub_295808D34(v204, v205, v206, v207);
        v211 = objc_msgSend_allocator(self->_metal, v208, v209, v210);
        v215 = sub_295808D4C(v211, v212, v213, v214);
        sub_295808D04(v215, 16);

        if (*(v76 + 16) && (sub_295808D34(v216, v217, v218, v219), objc_msgSend_allocator(self->_metal, v220, v221, v222), v223 = objc_claimAutoreleasedReturnValue(), v227 = sub_295808D4C(v223, v224, v225, v226), sub_295808D04(v227, 40), v201, *(v76 + 40)))
        {
          if (dword_2A18C2398)
          {
            v373 = 0;
            v372 = 0;
            v229 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();

            cfpCopy2 = cfp;
          }

          if (!self->_toneMappingStage || !self->_toneMappingCurvesUBFusion || !cfpCopy2->meta.metadataHasLtmCurves || !plistCopy[5])
          {
            sub_295808C44();
            v231 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_101:
            LODWORD(MetalYCbCrFormat) = v231;
            goto LABEL_102;
          }

          if (cfp[1].meta.ltmCurves.ltmLut.bytes[179] != 1)
          {
            objc_msgSend_convertColor_inputLuma_inputChroma_outputLuma_outputChroma_(self->_colorConvertStage, v228, &cfpCopy2[1].meta.ROI.size.height, v127, v364, *(v76 + 8), *(v76 + 16));
LABEL_43:
            if (output)
            {
              v231 = objc_msgSend_extractLinearBufferWithLumaInput_chromaInput_inputIsLinear_removeChromaBias_lumaPedestal_exposureParams_ccm_output_(self->_colorConvertStage, v230, *(v76 + 8), *(v76 + 16), 1, 0, &cfpCopy2->meta.exposureParams, 0.0, cfp->meta.faces[0].rect.origin.x, cfp->meta.faces[0].rect.size.width, *&cfp->meta.faces[0].confidence);
              if (v231)
              {
                goto LABEL_101;
              }
            }

            if (!objc_msgSend_setToneCurvesWithLTC_GTC_colorCorrectionMatrix_dump_(self->_toneMappingCurvesUBFusion, v230, &cfpCopy2->meta.ltmCurves, &cfpCopy2->meta.ltmCurves, 0, *&cfp[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid, *&cfp[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GR.shadows, *&cfp[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GB.highlights))
            {
              objc_storeStrong((v76 + 24), obj);
              objc_storeStrong((v76 + 128), self->_toneMappingCurvesUBFusion);
              v235 = objc_msgSend_skinMask(v369, v232, v233, v234);
              sub_295808D04(v235, 48);
              v239 = objc_msgSend_personMask(v369, v236, v237, v238);
              sub_295808D04(v239, 56);
              v243 = objc_msgSend_skyMask(v369, v240, v241, v242);
              sub_295808D04(v243, 64);
              v247 = objc_msgSend_faceLandmarks(v369, v244, v245, v246);
              sub_295808D04(v247, 120);
              for (i = 0; i != 32; i += 8)
              {
                v249 = *(v76 + 72 + i);
                *(v76 + 72 + i) = 0;
              }

              v250 = *(v76 + 104);
              *(v76 + 104) = 0;

              v251 = *(v76 + 112);
              *(v76 + 112) = 0;

              BYTE4(v335) = 1;
              LODWORD(v335) = 0;
              LODWORD(v252) = 1.0;
              if (!objc_msgSend_runToneMapping_bilateralGrid_bilateralGridHomography_tmPlist_darkestFrameMetadata_ev0FrameMetadata_scaleInput_colorCorrection_hasChromaBias_quality_inputIsLinear_(self->_toneMappingStage, v253, v76, 0, plistCopy[5], cfpCopy2, cfpCopy2, 0, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32), v252, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32), v335))
              {
                FigMetalDecRef();
                FigMetalDecRef();
                input = *(v76 + 32);

                MetalLumaFormat = *(v76 + 40);
                goto LABEL_50;
              }
            }

            sub_295808BD8();
            LODWORD(v335) = v334;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v341, v344, v347, v349, v351, v353, v11);
            v333 = "%s signalled err=%d at <>:%d";
            goto LABEL_100;
          }

          if (v357)
          {
            objc_msgSend_convertColor_inputYCbCr_outputLuma_outputChroma_(self->_colorConvertStage, v228, &cfpCopy2[1].meta.ROI.size.height, v357, *(v76 + 8), *(v76 + 16));
            goto LABEL_43;
          }

          sub_295808BB8();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v339, v344, v347, v349, v351, v353, v11);
          sub_2957F8880();
        }

        else
        {
          sub_295808BB8();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v339, v344, v347, v349, v351, v353, v11);
          sub_2957F8880();
        }

LABEL_100:
        v127 = inputCopy;
        v231 = FigSignalErrorAtGM(v333, v338);
        goto LABEL_101;
      }

      sub_295808BB8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v339, v344, v347, v349, v351, v353, v11);
      sub_2957F8880();
      LODWORD(MetalYCbCrFormat) = FigSignalErrorAtGM(v332);
    }

    else
    {
      sub_295808BB8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v339, v344, v347, v349, v351, v353, v11);
      sub_2957F8880();
      LODWORD(MetalYCbCrFormat) = FigSignalErrorAtGM(v331);
      v81 = 0;
    }

    v127 = inputCopy;
    goto LABEL_102;
  }

  obj = 0;
  MetalLumaFormat = v44;
LABEL_50:
  if (v367)
  {
    styleStage = self->_styleStage;
    if (styleStage)
    {
      v255 = plistCopy[13];
      if (v255)
      {
        v256 = objc_msgSend_sceneType(v369, v69, v70, v71);
        v260 = objc_msgSend_personMask(v369, v257, v258, v259);
        objc_msgSend_skinMask(v369, v261, v262, v263);
        v264 = cfpCopy2;
        v266 = v265 = MetalLumaFormat;
        v270 = objc_msgSend_skyMask(v369, v267, v268, v269);
        isLowLight = objc_msgSend_runWithStyle_tuningParams_refFrameMetadata_sceneType_lumaTex_chromaTex_gainMapTex_outputGainMapTex_personMaskTex_skinMaskTex_skyMaskTex_isLowLight_(styleStage, v271, v367, v255, v264, v256, input, v265, 0, 0, v260, v266, v270, 0);

        MetalLumaFormat = v265;
        cfpCopy2 = v264;

        v59 = v363;
        if (isLowLight)
        {
          sub_295808C44();
          LODWORD(MetalYCbCrFormat) = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v335, v342, v344);
          providerCopy = v366;
          v273 = v362;
          v320 = v368;
          v44 = v364;
          goto LABEL_70;
        }
      }
    }
  }

  v273 = v362;
  objc_storeStrong((v362 + 16), input);
  v356 = MetalLumaFormat;
  objc_storeStrong((v362 + 24), MetalLumaFormat);
  objc_storeStrong((v368 + 16), v365);
  if (type == -1)
  {
    v274 = v59;
  }

  else
  {
    v274 = 0;
  }

  objc_storeStrong((v368 + 24), v274);
  v278 = objc_msgSend_skinMask(v369, v275, v276, v277);
  v282 = objc_msgSend_skyMask(v369, v279, v280, v281);
  v286 = objc_msgSend_faceLandmarks(v369, v283, v284, v285);
  *(&v344 + 1) = 0;
  LOBYTE(v344) = enabled;
  LOBYTE(v335) = 0;
  LODWORD(MetalYCbCrFormat) = objc_msgSend_denoiseFrameWithOutput_input_localGainMap_skinMask_skyMask_maskExtent_exposure_staticScene_nrfPlist_defringeEnabled_isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap_(self, v287, v368, v362, obj, v278, v282, &cfpCopy2->meta.exposureParams, cfpCopy2->meta.ROI.origin.x, cfpCopy2->meta.ROI.origin.y, cfpCopy2->meta.ROI.size.width, cfpCopy2->meta.ROI.size.height, v335, plistCopy, v344, v286, 0, 0, 0);

  if (MetalYCbCrFormat)
  {
    LODWORD(v337) = MetalYCbCrFormat;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v337, v11, v346, v348, v350, v352, v354, v11);
    providerCopy = v366;
    v320 = v368;
    v59 = v363;
    v44 = v364;
  }

  else
  {
    FigMetalDecRef();
    FigMetalDecRef();
    if (self->_nrfConfig->_learnedNREnabled)
    {
      FigMetalDecRef();
    }

    v59 = v363;
    v44 = v364;
    if (type == -1)
    {
      LODWORD(MetalYCbCrFormat) = 0;
    }

    else
    {
      v291 = MEMORY[0x29EDB9270];
      if (*MEMORY[0x29EDB9270])
      {
        v292 = objc_msgSend_commandQueue(self->_metal, v288, v289, v290);
        v296 = objc_msgSend_commandBuffer(v292, v293, v294, v295);

        v273 = v362;
        objc_msgSend_setLabel_(v296, v297, @"KTRACE_START_MTL", v298);
        objc_msgSend_addCompletedHandler_(v296, v299, &unk_2A1CA9200, v300);
        objc_msgSend_commit(v296, v301, v302, v303);
      }

      fixed = objc_msgSend_runOnLuma_andChroma_outChroma_colorCubeFixType_(self->_ColorCubeCorrectionStage, v288, *(v368 + 16), *(v368 + 24), v363, type);
      if (!fixed)
      {
        if (*v291)
        {
          v308 = objc_msgSend_commandQueue(self->_metal, v305, v306, v307);
          v312 = objc_msgSend_commandBuffer(v308, v309, v310, v311);

          v273 = v362;
          objc_msgSend_setLabel_(v312, v313, @"KTRACE_END_MTL", v314);
          v371[0] = MEMORY[0x29EDCA5F8];
          v371[1] = 3221225472;
          v371[2] = sub_295801968;
          v371[3] = &unk_29EDDBE78;
          memset(&v371[4], 0, 24);
          objc_msgSend_addCompletedHandler_(v312, v315, v371, v316);
          objc_msgSend_commit(v312, v317, v318, v319);
        }

        v320 = v368;
        FigMetalDecRef();
        LODWORD(MetalYCbCrFormat) = 0;
        providerCopy = v366;
        goto LABEL_69;
      }

      LODWORD(MetalYCbCrFormat) = fixed;
      sub_295808C24();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v337, v343, v346, v348, v350, v352, v354, v11);
    }

    providerCopy = v366;
    v320 = v368;
  }

LABEL_69:
  MetalLumaFormat = v356;
LABEL_70:

  return MetalYCbCrFormat;
}

- (int)addFrame:(__CVBuffer *)frame cfp:(const frameProperties_t *)cfp processingType:(unsigned int)type batchCount:(int)count
{
  frameCopy = frame;
  if (!frame)
  {
    sub_2957F888C();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v78, v80, v82, v84, v85, v87, v88, v89);
    v32 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v81, v83);
LABEL_36:
    v30 = 0;
    v21 = 0;
    goto LABEL_31;
  }

  if (self->_currentFrame >= 5)
  {
    sub_2957F888C();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v78, v80, v82, v84, v85, v87, v88, v89);
    v71 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_2A18C2390, 0xFFFFFFFFLL, "(Fig)", 1521);
LABEL_35:
    v32 = v71;
    frameCopy = 0;
    goto LABEL_36;
  }

  v9 = *&type;
  v11 = &cfp->meta.ltmCurves.ccmLut.ccmV1.lutsData[2044];
  if (cfp[1].meta.ltmCurves.ltmLut.bytes[179] == 1)
  {
    MetalYCbCrFormat = objc_msgSend_getMetalYCbCrFormat_(LumaChromaImage, a2, frame, cfp);
  }

  else
  {
    MetalYCbCrFormat = 0;
  }

  MetalLumaFormat = objc_msgSend_getMetalLumaFormat_(LumaChromaImage, a2, frameCopy, cfp);
  objc_msgSend_getMetalChromaFormat_(LumaChromaImage, v14, frameCopy, v15);
  sub_295808D9C();
  v20 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v16, v17, v18, v19);
  if (!v20)
  {
    sub_295808BF4();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v78, v80, v82, v6, v85, v87, v88, v89);
    sub_2957F8880();
    v71 = FigSignalErrorAtGM(v72, v73, v74, v75, 1542, MetalLumaFormat);
    goto LABEL_35;
  }

  v21 = v20;
  sub_295808D90();
  v26 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v22, v23, v24, v25);
  if (!v26)
  {
    sub_2957F885C();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v78, v80, v82, v6, v85, v87, v88, v89);
    sub_2957F8880();
    v32 = FigSignalErrorAtGM(v76);
    frameCopy = 0;
    v30 = 0;
    goto LABEL_31;
  }

  v30 = v26;
  if (HIBYTE(v11[54].BG.highlights) == 1)
  {
    metal = self->_metal;
    v87 = 0;
    v32 = objc_msgSend_bindYCbCrMetalTextureWithMetalContext_pixelBuffer_pixelFormat_textureToBind_alignmentFactor_(LumaChromaImage, v27, metal, frameCopy, MetalYCbCrFormat, &v87, 16);
    frameCopy = v87;
    if (v32)
    {
      goto LABEL_31;
    }
  }

  else
  {
    frameCopy = 0;
  }

  fusionAlgo = self->_fusionAlgo;
  if (fusionAlgo == 1)
  {
    if (!self->_currentFrame)
    {
      if (v9 == 2 && !count)
      {
        objc_msgSend_width(v21, v27, v28, v29);
        v40 = sub_295808DA8();
        v44 = objc_msgSend_height(v40, v41, v42, v43);
        v45 = objc_opt_new();
        accWeightPyramid = self->_accWeightPyramid;
        self->_accWeightPyramid = v45;

        v48 = self->_accWeightPyramid;
        if (!v48)
        {
          goto LABEL_38;
        }

        v48->levels = 4;
        BYTE2(v78) = 0;
        LOWORD(v78) = 1;
        objc_msgSend_allocatePyramidWithMetalContext_label_width_height_isFP16_createLuma_createChroma_startingLevel_testSize_pyramid_(PyramidStorage_NRF, v47, self->_metal, @"_accWeightPyramid", (v9 >> 2), (v44 >> 2), 1, 1, v78, self->_accWeightPyramid);
      }

      objc_msgSend_width(v21, v27, v28, v29);
      v49 = sub_295808DA8();
      v53 = objc_msgSend_height(v49, v50, v51, v52);
      if (objc_msgSend_allocateCoallesedFusionInputPyramidsForWidth_height_(self, v54, v9, v53))
      {
LABEL_39:
        sub_295808C24();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        v32 = 0;
        goto LABEL_31;
      }

LABEL_25:
      sub_295808CB0();
      objc_msgSend_setLumaTexture_chromaTexture_level_metal_(*(v55 + 8 * v56), v57, v21, v30, 0, self->_metal);
      if (frameCopy)
      {
        sub_295808CB0();
        objc_msgSend_setYCbCrBand0Texture_(*(v58 + 8 * v59), v60, frameCopy, v61);
      }

      sub_295808CB0();
      if (!objc_msgSend_createPyramidForFrame_cfp_(self, v64, *(v62 + 8 * v63), cfp))
      {
        if (*&v11[50].BB.highlights != 1)
        {
          goto LABEL_30;
        }

        sub_295808CB0();
        if (!objc_msgSend_correctGTC_(v67, v68, *(v65 + 8 * v66), v69))
        {
          goto LABEL_30;
        }
      }

LABEL_38:
      sub_295808C54();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v78, v80, v82, v6, v85, v87, v88, v89);
      sub_2957F8880();
      v32 = FigSignalErrorAtGM(v77);
      goto LABEL_31;
    }

LABEL_16:
    if (v9 == 7 || !v9)
    {
      objc_msgSend_width(v21, v27, v28, v29);
      v34 = sub_295808DA8();
      v38 = objc_msgSend_height(v34, v35, v36, v37);
      if (objc_msgSend_allocateCoallesedFusionInputPyramidsForWidth_height_levels_frames_(self, v39, v9, v38, 2, 1))
      {
        goto LABEL_39;
      }
    }

    goto LABEL_25;
  }

  if (fusionAlgo != 2)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&self->_inputLuma[self->_currentFrame], v21);
  objc_storeStrong(&self->_inputChroma[self->_currentFrame], v30);
  objc_storeStrong(&self->_inputYCbCr[self->_currentFrame], frameCopy);
LABEL_30:
  v32 = 0;
  ++self->_currentFrame;
LABEL_31:

  return v32;
}

- (int)toneMapAndDenoiseFusedFramesWithConfig:(const FusionConfiguration *)config properties:(const frameProperties_t *)properties nrfPlist:(id)plist style:(id)style output:(__CVBuffer *)output inferenceProvider:(id)provider colorCubeFixType:(int)type isLowLight:(BOOL)self0 gainMap:(id)self1
{
  v13 = v12;
  plistCopy = plist;
  styleCopy = style;
  providerCopy = provider;
  mapCopy = map;
  v477 = objc_alloc_init(ToneMappingBuffers);
  v481 = objc_opt_new();
  if (!v481 || (v19 = objc_opt_new()) == 0)
  {
    sub_295808C08();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v437, v442, v447, v452, v454, v456, v459, v461);
    sub_295808C98();
    sub_2957F8880();
    LODWORD(v23) = FigSignalErrorAtGM(v427);
    v28 = 0;
    sub_295808CC0();
    style = 0;
    goto LABEL_79;
  }

  v23 = v19;
  v24 = objc_msgSend_allocator(self->_metal, v20, v21, v22);
  v28 = objc_msgSend_newTextureDescriptor(v24, v25, v26, v27);

  if (!v28)
  {
    sub_295808C08();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v437, v442, v447, v452, v454, v456, v459, v461);
    sub_295808C98();
    sub_2957F8880();
    FigSignalErrorAtGM(v428);
    sub_295808CD0();
    sub_295808CC0();
    goto LABEL_79;
  }

  v32 = objc_msgSend_desc(v28, v29, v30, v31);
  objc_msgSend_setUsage_(v32, v33, 7, v34);

  if (!output)
  {
    sub_295808C08();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v437, v442, v447, v452, v454, v456, v459, v461);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v11 + 912), 0xFFFFFFFFLL, "(Fig)", 2343, v32);
LABEL_87:
    sub_295808CD0();
    sub_295808CC0();
    goto LABEL_89;
  }

  v38 = objc_msgSend_allocator(self->_metal, v35, v36, v37);
  style = objc_msgSend_usedSize_(v38, v39, 0, v40);

  if (style)
  {
    sub_295808CC0();
    style = v23;
    LODWORD(v23) = 0;
LABEL_89:
    v11 = v477;
    goto LABEL_79;
  }

  sub_295808D9C();
  obj = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v41, v42, v43, v44);
  if (!obj)
  {
    sub_295808C08();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v437, v442, v447, v452, v454, v456, v459, v461);
    sub_2957F8880();
    FigSignalErrorAtGM(v429, v430, v431, v432, 2353, v38);
    goto LABEL_87;
  }

  sub_295808D90();
  v479 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v45, v46, v47, v48);
  if (!v479)
  {
    sub_295808C08();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v437, v442, v447, v452, v454, v456, v459, v461);
    sub_2957F8880();
    FigSignalErrorAtGM(v433);
    sub_295808CD0();
    v13 = 0;
    v479 = 0;
    goto LABEL_89;
  }

  if (providerCopy)
  {
    v51 = objc_msgSend__runInferenceProvider_(self, v49, providerCopy, v50);
    v11 = v477;
    if (!v51)
    {
      sub_295808C08();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v437, v442, v447, v452, v454, v456, v459, v461);
      sub_295808C98();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v438, v443, v448);
      sub_295808CD0();
      v13 = 0;
      goto LABEL_79;
    }
  }

  else
  {
    v51 = 0;
    v11 = v477;
  }

  v484 = v51;
  v475 = v28;
  sub_295808D1C();
  if (*(v55 + 41) == 1)
  {
    v56 = sub_295808CF4();
    objc_msgSend_width(v56, v57, v58, v59);
    objc_msgSend_desc(v28, v60, v61, v62);
    objc_claimAutoreleasedReturnValue();
    sub_295808CA4();
    objc_msgSend_setWidth_(v63, v64, v65, v66);

    sub_295808D78();
    objc_msgSend_height(*(v67 + v68), v69, v70, v71);
    objc_msgSend_desc(v28, v72, v73, v74);
    objc_claimAutoreleasedReturnValue();
    sub_295808CA4();
    objc_msgSend_setHeight_(v75, v76, v77, v78);

    v82 = objc_msgSend_desc(v28, v79, v80, v81);
    objc_msgSend_setPixelFormat_(v82, v83, 25, v84);

    objc_msgSend_setLabel_(v28, v85, 0, v86);
    style = objc_msgSend_allocator(self->_metal, v87, v88, v89);
    v92 = objc_msgSend_newTextureWithDescriptor_(style, v90, v28, v91);

    if (!v92)
    {
      sub_295808BB8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v437, v442, v447, v452, v454, v456, v459, v12);
      sub_295808C98();
      sub_2957F8880();
      FigSignalErrorAtGM(v434);
      sub_295808CD0();
      goto LABEL_80;
    }

    sub_295808D78();
    LODWORD(v95) = *(*(plistCopy + 2) + 44);
    objc_msgSend_runWithInput_output_gamma_(self->_outliersRemovalStage, v96, *(v93 + v94), v92, v95);
    sub_295808D78();
    FigMetalDecRef();
    sub_295808D78();
    v99 = *(v97 + v98);
    *(v97 + v98) = v92;
  }

  v469 = providerCopy;
  configCopy3 = config;
  nonLinearBias_low = LOBYTE(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.nonLinearBias);
  fusionBuffers = self->_fusionBuffers;
  v478 = v23;
  selfCopy = self;
  if (nonLinearBias_low)
  {
    objc_storeStrong((v11 + 32), fusionBuffers->fusedLumaTex);
    objc_storeStrong((v11 + 40), self->_fusionBuffers->fusedChromaTex);
    v13 = v484;
  }

  else
  {
    objc_msgSend_width(fusionBuffers->fusedChromaTex, v52, v53, v54);
    objc_msgSend_desc(v28, v103, v104, v105);
    objc_claimAutoreleasedReturnValue();
    sub_295808CA4();
    objc_msgSend_setWidth_(v106, v107, v108, v109);

    objc_msgSend_height(self->_fusionBuffers->fusedChromaTex, v110, v111, v112);
    v113 = sub_295808D28();
    objc_msgSend_desc(v113, v114, v115, v116);
    objc_claimAutoreleasedReturnValue();
    sub_295808CA4();
    objc_msgSend_setHeight_(v117, v118, v119, v120);

    v124 = objc_msgSend_desc(v28, v121, v122, v123);
    objc_msgSend_setPixelFormat_(v124, v125, 25, v126);

    objc_msgSend_setLabel_(v28, v127, 0, v128);
    v132 = objc_msgSend_allocator(self->_metal, v129, v130, v131);
    v135 = objc_msgSend_newTextureWithDescriptor_(v132, v133, v28, v134);
    sub_295808CDC(v135, 24);

    if (!*(v11 + 24) || (objc_storeStrong((v11 + 8), self->_fusionBuffers->fusedLumaTex), objc_storeStrong((v11 + 16), self->_fusionBuffers->fusedChromaTex), v136 = sub_295808CF4(), objc_msgSend_width(v136, v137, v138, v139), v140 = sub_295808D28(), objc_msgSend_desc(v140, v141, v142, v143), objc_claimAutoreleasedReturnValue(), sub_295808CA4(), objc_msgSend_setWidth_(v144, v145, v146, v147), style, v148 = sub_295808CF4(), objc_msgSend_height(v148, v149, v150, v151), v152 = sub_295808D28(), objc_msgSend_desc(v152, v153, v154, v155), objc_claimAutoreleasedReturnValue(), sub_295808CA4(), objc_msgSend_setHeight_(v156, v157, v158, v159), style, objc_msgSend_desc(v28, v160, v161, v162), v163 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setPixelFormat_(v163, v164, 25, v165), v163, objc_msgSend_setLabel_(v28, v166, 0, v167), objc_msgSend_allocator(self->_metal, v168, v169, v170), v171 = objc_claimAutoreleasedReturnValue(), v174 = objc_msgSend_newTextureWithDescriptor_(v171, v172, v28, v173), sub_295808CDC(v174, 32), v171, !*(v11 + 32)))
    {
      sub_295808BB8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v437, v442, v447, v452, v454, v456, v459, v12);
      sub_295808C98();
      sub_2957F8880();
      FigSignalErrorAtGM(v435);
      sub_295808CD0();
      providerCopy = v469;
      goto LABEL_81;
    }

    objc_msgSend_width(self->_fusionBuffers->fusedChromaTex, v175, v176, v177);
    v178 = sub_295808D28();
    objc_msgSend_desc(v178, v179, v180, v181);
    objc_claimAutoreleasedReturnValue();
    sub_295808CA4();
    objc_msgSend_setWidth_(v182, v183, v184, v185);

    objc_msgSend_height(self->_fusionBuffers->fusedChromaTex, v186, v187, v188);
    v189 = sub_295808D28();
    objc_msgSend_desc(v189, v190, v191, v192);
    objc_claimAutoreleasedReturnValue();
    sub_295808CA4();
    objc_msgSend_setHeight_(v193, v194, v195, v196);

    v200 = objc_msgSend_desc(v28, v197, v198, v199);
    objc_msgSend_setPixelFormat_(v200, v201, 65, v202);

    objc_msgSend_setLabel_(v28, v203, 0, v204);
    v208 = objc_msgSend_allocator(self->_metal, v205, v206, v207);
    v211 = objc_msgSend_newTextureWithDescriptor_(v208, v209, v28, v210);
    sub_295808CDC(v211, 40);

    if (!*(v11 + 40))
    {
LABEL_26:
      sub_295808BB8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v437, v442, v447, v452, v454, v456, v459, v12);
      sub_295808C98();
      sub_2957F8880();
      LODWORD(v23) = FigSignalErrorAtGM(v426);
      providerCopy = v469;
      style = v478;
LABEL_80:
      v28 = v475;
LABEL_81:
      v13 = v484;
      goto LABEL_79;
    }

    objc_storeStrong((v11 + 128), self->_toneMappingCurvesUBFusion);
    v13 = v484;
    v215 = objc_msgSend_skinMask(v484, v212, v213, v214);
    sub_295808CDC(v215, 48);
    v219 = objc_msgSend_personMask(v484, v216, v217, v218);
    sub_295808CDC(v219, 56);
    v223 = objc_msgSend_skyMask(v484, v220, v221, v222);
    sub_295808CDC(v223, 64);
    v227 = objc_msgSend_faceLandmarks(v484, v224, v225, v226);
    sub_295808CDC(v227, 120);
    v231 = objc_msgSend_skinToneClassification(v484, v228, v229, v230);
    sub_295808CDC(v231, 104);
    v235 = objc_msgSend_maskConfidences(v484, v232, v233, v234);
    sub_295808CDC(v235, 112);
    for (i = 0; i != 32; i += 8)
    {
      v237 = *(v11 + 72 + i);
      *(v11 + 72 + i) = 0;
    }

    v241 = objc_msgSend_instanceMasks(v484, v238, v239, v240);
    v245 = objc_msgSend_count(v241, v242, v243, v244);

    if (v245)
    {
      v249 = 0;
      v250 = v11;
      do
      {
        v251 = objc_msgSend_instanceMasks(v13, v246, v247, v248);
        v254 = objc_msgSend_objectAtIndexedSubscript_(v251, v252, v249, v253);

        if (v254)
        {
          v256 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v255, v254, 25, 1, 0);
          v257 = *(v250 + 72);
          *(v250 + 72) = v256;

          if (!*(v250 + 72))
          {
            goto LABEL_26;
          }
        }

        else
        {
          v261 = *(v250 + 72);
          *(v250 + 72) = 0;
        }

        ++v249;
        v13 = v484;
        v262 = objc_msgSend_instanceMasks(v484, v258, v259, v260);
        v266 = objc_msgSend_count(v262, v263, v264, v265);

        v250 += 8;
        v267 = v266 > v249;
        self = selfCopy;
      }

      while (v267);
    }

    style = &OBJC_IVAR___NRFPlist_toneMapping;
    sub_295808D1C();
    configCopy3 = config;
    if (*(v271 + 78) == 1 && objc_msgSend_skyMaskPixelBuffer(v13, v268, v269, v270))
    {
      v274 = objc_msgSend_width(*(v11 + 8), v268, v272, v273);
      v470 = COERCE_DOUBLE(__PAIR64__(objc_msgSend_height(*(v11 + 8), v275, v276, v277), v274));
      sub_295808D1C();
      if (*(*(v281 + 24) + 36))
      {
        objc_msgSend_skinMaskPixelBuffer(v13, v278, v279, v280);
      }

      else
      {
        objc_msgSend_skyMaskPixelBuffer(v13, v278, v279, v280);
      }

      sub_295808D64();
      v286 = objc_msgSend_regularizeLocalToneCurves_mask_tcrParams_imageDims_(v283, v284, v282 + 168, v285, *(*(plistCopy + 5) + 24), v470);
      if (v286)
      {
        goto LABEL_101;
      }
    }

    v287 = (&properties->meta.sensorID + 56056 * SLODWORD(config[4].colorSpaceConversionParameters[1].finalScale));
    v286 = objc_msgSend_setToneCurvesWithLTC_GTC_colorCorrectionMatrix_dump_(self->_toneMappingCurvesUBFusion, v268, (v287 + 21), &properties->meta.ltmCurves + 224224 * SLODWORD(config[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale), 0, v287[27870], v287[27872], v287[27874]);
    if (v286)
    {
LABEL_101:
      LODWORD(v23) = v286;
      sub_295808C24();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      goto LABEL_102;
    }

    v290 = *(plistCopy + 5);
    v291 = *(v290 + 56) == 1 && *&config[4].colorSpaceConversionParameters[1].outputToLinearYCbCr >= 0;
    finalScale = config[4].colorSpaceConversionParameters[1].finalScale;
    v293 = properties[1].meta.ltmCurves.ltmLut.bytes[224224 * SLODWORD(finalScale) + 176];
    linearScale = config[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale;
    v295 = (&properties->meta.sensorID + 56056 * SLODWORD(linearScale));
    if (*(v295 + 102) == 1)
    {
      if (properties[1].meta.ltmCurves.ltmLut.bytes[224224 * SLODWORD(finalScale) + 176])
      {
        v296 = *(v290 + 8);
        if (v295[28] < *(v296 + 192) && *(v296 + 180) == 1)
        {
          *(v296 + 116) = *(v296 + 184);
          *(*(*(plistCopy + 5) + 8) + 120) = *(*(*(plistCopy + 5) + 8) + 188);
        }
      }
    }

    if (v291)
    {
      bilateralGrid = self->_bilateralGrid;
      v298 = (&config->preWarpEnabled + 48 * *&config[4].colorSpaceConversionParameters[1].outputToLinearYCbCr);
    }

    else
    {
      bilateralGrid = 0;
      v298 = MEMORY[0x29EDCA928];
    }

    BYTE4(v437) = v293;
    LODWORD(v437) = !self->_srlEnabled;
    LODWORD(v289) = 1.0;
    if (objc_msgSend_runToneMapping_bilateralGrid_bilateralGridHomography_tmPlist_darkestFrameMetadata_ev0FrameMetadata_scaleInput_colorCorrection_hasChromaBias_quality_inputIsLinear_(self->_toneMappingStage, v288, v11, bilateralGrid, *(plistCopy + 5), properties + 224224 * SLODWORD(finalScale), properties + 224224 * SLODWORD(linearScale), 0, *v298, v298[2], v298[4], v289, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32), v437))
    {
      sub_295808BB8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v437, v442, v447, v452, v454, v456, v459, v12);
      sub_295808C98();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v441, v446, v451);
      sub_295808CD0();
      goto LABEL_72;
    }

    FigMetalDecRef();
    FigMetalDecRef();
  }

  if (styleCopy)
  {
    if (self->_styleStage)
    {
      sub_295808D1C();
      if (v302)
      {
        objc_msgSend_width(*(v11 + 24), v299, v300, v301);
        objc_msgSend_desc(v28, v303, v304, v305);
        objc_claimAutoreleasedReturnValue();
        sub_295808CA4();
        objc_msgSend_setWidth_(v306, v307, v308, v309);

        objc_msgSend_height(*(v11 + 24), v310, v311, v312);
        objc_msgSend_desc(v28, v313, v314, v315);
        objc_claimAutoreleasedReturnValue();
        sub_295808CA4();
        objc_msgSend_setHeight_(v316, v317, v318, v319);

        v323 = objc_msgSend_desc(v28, v320, v321, v322);
        objc_msgSend_setUsage_(v323, v324, 7, v325);

        objc_msgSend_pixelFormat(*(v11 + 24), v326, v327, v328);
        objc_msgSend_desc(v28, v329, v330, v331);
        objc_claimAutoreleasedReturnValue();
        sub_295808CA4();
        objc_msgSend_setPixelFormat_(v332, v333, v334, v335);

        objc_msgSend_setLabel_(v28, v336, 0, v337);
        v341 = objc_msgSend_allocator(self->_metal, v338, v339, v340);
        v344 = objc_msgSend_newTextureWithDescriptor_(v341, v342, v28, v343);

        if (v344)
        {
          styleStage = self->_styleStage;
          sub_295808D1C();
          v465 = v345;
          sub_295808D64();
          v463 = v346;
          v350 = objc_msgSend_sceneType(v13, v347, v348, v349);
          v351 = *(v11 + 32);
          v352 = *(v11 + 40);
          v353 = v13;
          v354 = *(v11 + 24);
          v358 = objc_msgSend_personMask(v353, v355, v356, v357);
          v362 = objc_msgSend_skinMask(v353, v359, v360, v361);
          v366 = objc_msgSend_skyMask(v353, v363, v364, v365);
          LODWORD(v354) = objc_msgSend_runWithStyle_tuningParams_refFrameMetadata_sceneType_lumaTex_chromaTex_gainMapTex_outputGainMapTex_personMaskTex_skinMaskTex_skyMaskTex_isLowLight_(styleStage, v367, styleCopy, v465, v463, v350, v351, v352, v354, v344, v358, v362, v366, light);

          if (!v354)
          {
            FigMetalDecRef();
            v368 = *(v11 + 24);
            *(v11 + 24) = v344;

            v23 = v478;
            self = selfCopy;
            v13 = v484;
            configCopy3 = config;
            goto LABEL_55;
          }

          sub_295808C44();
          LODWORD(v23) = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v437, v442, v447);
          v13 = v484;
        }

        else
        {
          sub_295808BB8();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v437, v442, v447, v452, v454, v456, v459, v12);
          sub_295808C98();
          sub_2957F8880();
          LODWORD(v23) = FigSignalErrorAtGM(v436);
        }

        goto LABEL_102;
      }
    }
  }

LABEL_55:
  objc_storeStrong(v481 + 2, *(v11 + 32));
  objc_storeStrong(v481 + 3, *(v11 + 40));
  objc_storeStrong(v23 + 2, obj);
  if (type == -1)
  {
    v369 = v479;
  }

  else
  {
    v369 = 0;
  }

  objc_storeStrong(v23 + 3, v369);
  v373 = 0;
  if ((nonLinearBias_low & 1) == 0)
  {
    v373 = *(v11 + 24);
    if (!v373)
    {
      sub_2957F884C();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v437, v442, v447, v452, v454, v456, v459, v12);
      LODWORD(v23) = 0;
LABEL_102:
      providerCopy = v469;
      style = v478;
      goto LABEL_73;
    }
  }

  v474 = v373;
  v374 = *&configCopy3[4].colorSpaceConversionParameters[1].outputToLinearYCbCr;
  if (v374 < 0)
  {
    v375 = 0;
  }

  else
  {
    v375 = properties + 224224 * v374;
  }

  v468 = objc_msgSend_skinMask(v13, v370, v371, v372);
  v466 = objc_msgSend_skyMask(v13, v376, v377, v378);
  v379 = (&properties->meta.sensorID + 56056 * SLODWORD(configCopy3[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale));
  isStaticScene = self->_isStaticScene;
  v462 = objc_msgSend_defringingEnabled(*(plistCopy + 12), v380, v381, v382);
  v383 = !light && self->_doGreenGhostMitigation;
  v387 = objc_msgSend_faceLandmarks(v13, v384, v385, v386);
  v457 = v375;
  BYTE2(v447) = v383;
  BYTE1(v447) = light;
  LOBYTE(v447) = v462;
  LOBYTE(v437) = isStaticScene;
  style = v478;
  isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap = objc_msgSend_denoiseFrameWithOutput_input_localGainMap_skinMask_skyMask_maskExtent_exposure_staticScene_nrfPlist_defringeEnabled_isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap_(self, v388, v478, v481, v474, v468, v466, v379 + 2, v379[16], v379[17], v379[18], v379[19], v437, plistCopy, v447, v387, properties + 224224 * SLODWORD(configCopy3[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale), v457, mapCopy);

  if (isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap)
  {
    sub_295808BB8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v439, v444, v449, v453, v455, v458, v460, v12);
    LODWORD(v23) = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v440, v445, v450);
    providerCopy = v469;
    v11 = v477;
    goto LABEL_80;
  }

  FigMetalDecRef();
  FigMetalDecRef();
  v11 = v477;
  if ((nonLinearBias_low & 1) == 0)
  {
    FigMetalDecRef();
  }

  FigMetalDecRef();
  FigMetalDecRef();
  v13 = v484;
  if (type == -1)
  {
    LODWORD(v23) = 0;
LABEL_72:
    providerCopy = v469;
LABEL_73:
    v28 = v475;
    goto LABEL_79;
  }

  v393 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270])
  {
    v394 = objc_msgSend_commandQueue(selfCopy->_metal, v390, v391, v392);
    v398 = objc_msgSend_commandBuffer(v394, v395, v396, v397);

    objc_msgSend_setLabel_(v398, v399, @"KTRACE_START_MTL", v400);
    objc_msgSend_addCompletedHandler_(v398, v401, &unk_2A1CA9260, v402);
    objc_msgSend_commit(v398, v403, v404, v405);
  }

  v406 = v478[2];
  v407 = v478[3];
  if (type == 3)
  {
    objc_msgSend_skyMask(v484, v390, v391, v392);
    objc_claimAutoreleasedReturnValue();
    v408 = sub_295808DA8();
    LODWORD(v23) = objc_msgSend_runOnLuma_andChroma_withMask_outChroma_colorCubeFixType_(v408, v409, v406, v407, v484, v479, 3);

    v13 = v484;
  }

  else
  {
    LODWORD(v23) = objc_msgSend_runOnLuma_andChroma_withMask_outChroma_colorCubeFixType_(selfCopy->_ColorCubeCorrectionStage, v390, v406, v407, 0, v479, type);
  }

  v28 = v475;
  if (v23)
  {
    LODWORD(v439) = v23;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v439, v12, v449, v453, v455, v458, v460, v12);
    providerCopy = v469;
    style = v478;
  }

  else
  {
    if (*v393)
    {
      v413 = objc_msgSend_commandQueue(selfCopy->_metal, v410, v411, v412);
      v417 = objc_msgSend_commandBuffer(v413, v414, v415, v416);

      objc_msgSend_setLabel_(v417, v418, @"KTRACE_END_MTL", v419);
      v485[0] = MEMORY[0x29EDCA5F8];
      v485[1] = 3221225472;
      v485[2] = sub_29580455C;
      v485[3] = &unk_29EDDBE78;
      v485[5] = 0;
      v485[6] = 0;
      v485[4] = 1;
      objc_msgSend_addCompletedHandler_(v417, v420, v485, v421);
      objc_msgSend_commit(v417, v422, v423, v424);

      v11 = v477;
    }

    style = v478;
    FigMetalDecRef();
    LODWORD(v23) = 0;
    providerCopy = v469;
  }

LABEL_79:

  return v23;
}

@end