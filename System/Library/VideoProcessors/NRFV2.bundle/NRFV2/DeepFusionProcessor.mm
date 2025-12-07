@interface DeepFusionProcessor
- (BOOL)isIntermediateVersionCompatible;
- (DeepFusionProcessor)init;
- (DeepFusionProcessor)initWithContext:(id)context;
- (IBPDeepFusionProcessorDelegate)delegate;
- (int)_commonInitWithContext:(id)context;
- (int)addBuffer:(__CVBuffer *)buffer metadata:(id)metadata type:(int)type;
- (int)getTuning:(id)tuning;
- (int)prepareToProcess:(unsigned int)process prepareDescriptor:(id)descriptor;
- (int)prewarmWithTuningParameters:(id)parameters;
- (int)process;
- (int)purgeResources;
- (int)resetState;
- (int)setupWithOptions:(id)options;
@end

@implementation DeepFusionProcessor

- (DeepFusionProcessor)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = DeepFusionProcessor;
  v5 = [(DeepFusionProcessor *)&v11 init];
  v8 = v5;
  if (!v5)
  {
    sub_295888FE4();
LABEL_7:
    v9 = 0;
    goto LABEL_4;
  }

  if (objc_msgSend__commonInitWithContext_(v5, v6, contextCopy, v7))
  {
    sub_295888F84();
    goto LABEL_7;
  }

  v9 = v8;
LABEL_4:

  return v9;
}

- (int)_commonInitWithContext:(id)context
{
  contextCopy = context;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  objc_storeStrong(&self->_metal, context);
  if (!self->_metal)
  {
    sub_295889868(&v94 + 1);
LABEL_34:
    v91 = HIDWORD(v94);
    goto LABEL_18;
  }

  self->_networkVersion = objc_msgSend_networkVersion(DeepFusionCommon, v6, v7, v8);
  v12 = FigCapturePlatformSupportsUniversalLossyCompression() == 0;
  self->_allocatorForceSize = 0;
  self->_allocatorWireMemory = 0;
  *&self->_compressionLevel = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v12), 0x1FuLL)), 0x1FFFFFFFFLL, 0x200000001);
  if (!self->_isShaderHarvesting)
  {
    v13 = objc_msgSend_allocator(self->_metal, v9, v10, v11);

    if (v13)
    {
      sub_295889078(&v94 + 1);
      goto LABEL_34;
    }

    v14 = objc_alloc(MEMORY[0x29EDC0A20]);
    v18 = objc_msgSend_device(self->_metal, v15, v16, v17);
    v20 = objc_msgSend_initWithDevice_allocatorType_(v14, v19, v18, self->_allocatorType);
    objc_msgSend_setAllocator_(self->_metal, v21, v20, v22);

    v26 = objc_msgSend_allocator(self->_metal, v23, v24, v25);

    if (!v26)
    {
      sub_2958890C8(&v94 + 1);
      goto LABEL_34;
    }
  }

  self->_allocatorSetupComplete = 0;
  v27 = [ToneMappingStage alloc];
  v29 = objc_msgSend_initWithContext_mtlSuballocatorID_(v27, v28, self->_metal, 0);
  toneMappingStage = self->_toneMappingStage;
  self->_toneMappingStage = v29;

  if (!self->_toneMappingStage)
  {
    sub_2958897CC(&v94 + 1);
    goto LABEL_34;
  }

  v31 = [SemanticStylesStage alloc];
  v34 = objc_msgSend_initWithMetalContext_(v31, v32, self->_metal, v33);
  semanticStylesStage = self->_semanticStylesStage;
  self->_semanticStylesStage = v34;

  if (!self->_semanticStylesStage)
  {
    sub_295889730(&v94 + 1);
    goto LABEL_34;
  }

  v36 = [TextureUtils alloc];
  v39 = objc_msgSend_initWithMetalContext_(v36, v37, self->_metal, v38);
  textureUtils = self->_textureUtils;
  self->_textureUtils = v39;

  if (!self->_textureUtils)
  {
    sub_295889694(&v94 + 1);
    goto LABEL_34;
  }

  v41 = [RegDense alloc];
  v43 = objc_msgSend_initWithMetalContext_bicubicWarping_(v41, v42, self->_metal, 1);
  regDense = self->_regDense;
  self->_regDense = v43;

  if (!self->_regDense)
  {
    sub_2958895F8(&v94 + 1);
    goto LABEL_34;
  }

  v45 = [DeepFusionPreEspressoStage alloc];
  v47 = objc_msgSend_initWithContext_networkVersion_(v45, v46, contextCopy, self->_networkVersion);
  preEspressoStage = self->_preEspressoStage;
  self->_preEspressoStage = v47;

  if (!self->_preEspressoStage)
  {
    sub_29588955C(&v94 + 1);
    goto LABEL_34;
  }

  v49 = [TiledFusionStage alloc];
  v51 = objc_msgSend_initWithContext_preEspressoStage_networkVersion_(v49, v50, contextCopy, self->_preEspressoStage, self->_networkVersion);
  tiledFusionStage = self->_tiledFusionStage;
  self->_tiledFusionStage = v51;

  v55 = self->_tiledFusionStage;
  if (!v55)
  {
    sub_2958894C0(&v94 + 1);
    goto LABEL_34;
  }

  objc_msgSend_setIsHarvesting_(v55, v53, self->_isShaderHarvesting, v54);
  objc_msgSend_compileShaders(self->_tiledFusionStage, v56, v57, v58);
  LODWORD(v94) = 65792;
  v93 = 0x100000100000001;
  v59 = [AMBNRStage alloc];
  v61 = objc_msgSend_initWithContext_denoisingOptions_(v59, v60, self->_metal, &v93);
  ambnrStage = self->_ambnrStage;
  self->_ambnrStage = v61;

  v65 = self->_ambnrStage;
  if (!v65)
  {
    sub_295889424(&v94 + 1);
    goto LABEL_34;
  }

  objc_msgSend_setInputPyramidGenerationEnabled_(v65, v63, 0, v64, v93, v94);
  objc_msgSend_setUpsampleOffsetEnabled_(self->_ambnrStage, v66, 0, v67);
  v68 = [OutliersRemovalStage alloc];
  v71 = objc_msgSend_initWithMetalContext_(v68, v69, self->_metal, v70);
  outliersRemovalStage = self->_outliersRemovalStage;
  self->_outliersRemovalStage = v71;

  if (!self->_outliersRemovalStage)
  {
    sub_295889388(&v94 + 1);
    goto LABEL_34;
  }

  v73 = [SyntheticLongStage alloc];
  v76 = objc_msgSend_initWithMetalContext_(v73, v74, self->_metal, v75);
  syntheticLongStage = self->_syntheticLongStage;
  self->_syntheticLongStage = v76;

  if (!self->_syntheticLongStage)
  {
    sub_2958892EC(&v94 + 1);
    goto LABEL_34;
  }

  v78 = [ColorCubeCorrectionStage alloc];
  v81 = objc_msgSend_init_(v78, v79, contextCopy, v80);
  ColorCubeCorrectionStage = self->_ColorCubeCorrectionStage;
  self->_ColorCubeCorrectionStage = v81;

  if (!self->_ColorCubeCorrectionStage)
  {
    sub_295889250(&v94 + 1);
    goto LABEL_34;
  }

  *&self->_applyColorCubeFixOverride = 0x200000002;
  v84 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v83, @"copyTexture", 0);
  copyTextureKernel = self->_copyTextureKernel;
  self->_copyTextureKernel = v84;

  if (!self->_copyTextureKernel)
  {
    sub_2958891B4(&v94 + 1);
    goto LABEL_34;
  }

  v86 = [ColorConvertStage alloc];
  v89 = objc_msgSend_initWithMetalContext_(v86, v87, contextCopy, v88);
  colorConvertStage = self->_colorConvertStage;
  self->_colorConvertStage = v89;

  if (!self->_colorConvertStage)
  {
    sub_295889164(&v94 + 1);
    goto LABEL_34;
  }

  v91 = 0;
LABEL_18:

  return v91;
}

- (int)prewarmWithTuningParameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = objc_msgSend_prewarmShaders_(ToneMappingStage, v5, self->_metal, v6);
  if (v7)
  {
    sub_295889904(v7, &v27);
LABEL_17:
    v25 = v27;
    goto LABEL_9;
  }

  v10 = objc_msgSend_prewarmShaders_(SubjectRelightingStage, v8, self->_metal, v9);
  if (v10)
  {
    sub_2958899A0(v10, &v27);
    goto LABEL_17;
  }

  v13 = objc_msgSend_prewarmShaders_(SemanticStylesStage, v11, self->_metal, v12);
  if (v13)
  {
    sub_295889A3C(v13, &v27);
    goto LABEL_17;
  }

  v16 = objc_msgSend_prewarmShaders_(RegDense, v14, self->_metal, v15);
  if (v16)
  {
    sub_295889AD8(v16, &v27);
    goto LABEL_17;
  }

  v19 = objc_msgSend_prewarmShaders_(SyntheticLongStage, v17, self->_metal, v18);
  if (v19)
  {
    sub_295889B74(v19, &v27);
    goto LABEL_17;
  }

  v22 = objc_msgSend_prewarmShaders_(PyramidStage_NRF, v20, self->_metal, v21);
  if (v22)
  {
    sub_295889C10(v22, &v27);
    goto LABEL_17;
  }

  v24 = objc_msgSend_prewarmShaders_tuningParameters_plistEntryName_(DenoiseRemixStage, v23, self->_metal, parametersCopy, @"DeepFusionParameters");
  if (v24)
  {
    sub_295889CAC(v24, &v27);
    goto LABEL_17;
  }

  v25 = 0;
LABEL_9:

  return v25;
}

- (int)setupWithOptions:(id)options
{
  optionsCopy = options;
  v7 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v5, @"TuningParameters", v6);
  Tuning = objc_msgSend_getTuning_(self, v8, v7, v9);

  if (Tuning)
  {
    sub_295889D48(Tuning, v76);
LABEL_24:
    v59 = 0;
    v63 = v76[0];
    goto LABEL_20;
  }

  v14 = objc_msgSend_applyOverrides(self, v11, v12, v13);
  if (v14)
  {
    sub_295889DE4(v14, v76);
    goto LABEL_24;
  }

  p_lscGainsPlist = &self->_lscGainsPlist;
  v16 = [LSCGainsPlist alloc];
  v19 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v17, *MEMORY[0x29EDC0288], v18);
  v21 = objc_msgSend_initWithDictionary_metal_(v16, v20, v19, self->_metal);
  lscGainsPlist = self->_lscGainsPlist;
  self->_lscGainsPlist = v21;

  if (!self->_lscGainsPlist)
  {
    sub_295889EE0(v76);
    goto LABEL_24;
  }

  v26 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v23, v24, v25);
  objc_msgSend_setStfTuningParameters_(self->_toneMappingStage, v27, v26, v28);

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = self->_tuningParams;
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v72, v71, 16);
  if (v68)
  {
    v65 = optionsCopy;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v67 = *v73;
    do
    {
      v35 = 0;
      v36 = v34;
      do
      {
        if (*v73 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v34 = objc_msgSend_objectForKeyedSubscript_(self->_tuningParams, v30, *(*(&v72 + 1) + 8 * v35), v31, v65);

        v37 = v34[1];
        v38 = *(v37 + 79);
        if (*(v37 + 80))
        {
          v69 = @"DeepFusionParameters";
          v70 = *(v34[1] + 80);
          v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v30, &v70, &v69, 1);
          objc_msgSend_stfTuningParameters(p_lscGainsPlist[17], v40, v41, v42);
          v44 = v43 = p_lscGainsPlist;
          v47 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v45, v33, v46);
          objc_msgSend_setObject_forKey_(v44, v48, v39, v47);

          p_lscGainsPlist = v43;
          v33 = (v33 + 1);
        }

        v49 = v38 | v32 & 1;
        v32 = v49 & 1;
        ++v35;
        v36 = v34;
      }

      while (v68 != v35);
      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v72, v71, 16);
    }

    while (v68);
    optionsCopy = v65;
  }

  else
  {
    v49 = 0;
    v34 = 0;
  }

  objc_msgSend_setEnableSTF_(p_lscGainsPlist[17], v50, v49 & 1, v51);
  v55 = objc_msgSend_allValues(self->_tuningParams, v52, v53, v54);
  v59 = objc_msgSend_firstObject(v55, v56, v57, v58);

  if (v59)
  {
    *(p_lscGainsPlist + 38) = *(v59[1] + 72);
    v62 = objc_msgSend_setMaskedSkyCubeVersion_(p_lscGainsPlist[69], v60, *(v59[1] + 124), v61);
  }

  else
  {
    v62 = objc_msgSend_setMaskedSkyCubeVersion_(p_lscGainsPlist[69], v60, 0, v61);
  }

  v63 = v62;
  if (v62)
  {
    sub_295889E80(v62);
  }

LABEL_20:

  return v63;
}

- (int)addBuffer:(__CVBuffer *)buffer metadata:(id)metadata type:(int)type
{
  p_EVM_EV0_motionScore = &self->_EVM_EV0_motionScore;
  metadataCopy = metadata;
  if (CVPixelBufferIsPlanar(buffer))
  {
    v11 = objc_msgSend_fillPaddedAreaInFrame_useSeparateCommandQueue_(*(p_EVM_EV0_motionScore + 27), v10, buffer, 0);
    if (v11)
    {
      v100 = v11;
      sub_295889F7C();
      goto LABEL_71;
    }
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v14 = 0;
  v15 = 588;
  v16 = 589;
  if (PixelFormatType <= 1278226487)
  {
    if (PixelFormatType <= 762865199)
    {
      if (PixelFormatType != 642527288)
      {
        v17 = 645424688;
        goto LABEL_12;
      }

LABEL_18:
      v16 = 0;
      v18 = 0;
      v14 = 1;
      v15 = 10;
      if (!metadataCopy)
      {
        goto LABEL_46;
      }

      goto LABEL_22;
    }

    if (PixelFormatType != 762865200)
    {
      v17 = 796419632;
      goto LABEL_12;
    }

    v18 = 0;
    goto LABEL_21;
  }

  if (PixelFormatType <= 2019963439)
  {
    if (PixelFormatType == 1278226488)
    {
      goto LABEL_18;
    }

    v17 = 1885745712;
LABEL_12:
    v18 = 0;
    if (PixelFormatType != v17)
    {
LABEL_73:
      v16 = 0;
      v15 = 0;
      v14 = 1;
      v18 = 1;
      if (!metadataCopy)
      {
        goto LABEL_46;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v18 = 0;
  if (PixelFormatType == 2088265264)
  {
LABEL_21:
    if (!metadataCopy)
    {
      goto LABEL_46;
    }

    goto LABEL_22;
  }

  if (PixelFormatType != 2019963440)
  {
    goto LABEL_73;
  }

  v14 = 0;
  v18 = 0;
  v15 = 576;
  v16 = 578;
  if (!metadataCopy)
  {
    goto LABEL_46;
  }

LABEL_22:
  v106 = v15;
  v107 = v18;
  v108 = v14;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
  v25 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v21, @"ReferenceMetadata", v22);
  if (v25)
  {
    v26 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v23, @"MotionScores", v24);
    objc_msgSend_floatValue(v26, v27, v28, v29);
    *p_EVM_EV0_motionScore = v30;

    objc_storeStrong(&self->_ev0MetadataDict, v25);
    v31 = sub_29582075C(self->_ev0MetadataDict, &self->_ev0Metadata, WidthOfPlane, HeightOfPlane, 1);
    if (v31)
    {
      v100 = v31;
      sub_295889FDC(v31, v25);
      goto LABEL_71;
    }
  }

  v109 = v25;
  v34 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v23, @"SifrMetadata", v24);
  if (v34)
  {
    objc_storeStrong(&self->_sifrMetadataDict, v34);
    v35 = sub_29582075C(self->_sifrMetadataDict, &self->_sifrMetadata, WidthOfPlane, HeightOfPlane, 1);
    if (v35)
    {
      v100 = v35;
      sub_29588A054(v35, v34, v109);
      goto LABEL_71;
    }
  }

  typeCopy = type;
  v38 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v32, @"LongMetadata", v33);
  if (v38)
  {
    objc_storeStrong(&self->_longMetadataDict, v38);
    v39 = sub_29582075C(self->_longMetadataDict, &self->_longMetadata, WidthOfPlane, HeightOfPlane, 1);
    if (v39)
    {
      v100 = v39;
      sub_29588A0DC(v39, v38, v34, v109);
      goto LABEL_71;
    }
  }

  v42 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v36, @"SyntheticLong", v37);
  if (v42)
  {
    objc_storeStrong(p_EVM_EV0_motionScore + 1, v42);
    v45 = objc_msgSend_objectForKeyedSubscript_(*(p_EVM_EV0_motionScore + 1), v43, @"syntheticLongPedestal", v44);
    objc_msgSend_floatValue(v45, v46, v47, v48);
    *(p_EVM_EV0_motionScore + 158) = v49;

    v50 = p_EVM_EV0_motionScore[158];
    if (v50 < 0.0 || v50 > 1.0)
    {
      p_EVM_EV0_motionScore[158] = 0.0;
    }
  }

  v103 = v38;
  v104 = v16;
  v51 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v40, @"SyntheticReference", v41);
  v54 = v51;
  if (v51)
  {
    v55 = objc_msgSend_objectForKeyedSubscript_(v51, v52, @"Mode", v53);
    *(p_EVM_EV0_motionScore + 1) = objc_msgSend_intValue(v55, v56, v57, v58);

    v61 = objc_msgSend_objectForKeyedSubscript_(v54, v59, @"syntheticReferencePedestal", v60);
    objc_msgSend_floatValue(v61, v62, v63, v64);
    *(p_EVM_EV0_motionScore + 157) = v65;

    v66 = p_EVM_EV0_motionScore[157];
    if (v66 < 0.0 || v66 > 1.0)
    {
      p_EVM_EV0_motionScore[157] = 0.0;
    }
  }

  v67 = v34;
  v70 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v52, *MEMORY[0x29EDC01A8], v53);
  if (v70)
  {
    objc_storeStrong(&self->_nrfStatus, v70);
  }

  v71 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v68, *MEMORY[0x29EDC0190], v69);

  if (v71)
  {
    objc_storeStrong(&self->_nrfInputBracketCount, v71);
  }

  v74 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v72, *MEMORY[0x29EDC0198], v73);

  if (v74)
  {
    objc_storeStrong(&self->_nrfRegisteredBracketCount, v74);
  }

  v15 = v106;
  if (!self->_sensorID)
  {
    ev0MetadataDict = self->_ev0MetadataDict;
    if (ev0MetadataDict)
    {
      v78 = objc_msgSend_objectForKeyedSubscript_(ev0MetadataDict, v75, *MEMORY[0x29EDC06E0], v76);
      sensorID = self->_sensorID;
      self->_sensorID = v78;

      v82 = objc_msgSend_objectForKeyedSubscript_(self->_ev0MetadataDict, v80, *MEMORY[0x29EDC0630], v81);
      portType = self->_portType;
      self->_portType = v82;
    }
  }

  type = typeCopy;
  v18 = v107;
  v14 = v108;
LABEL_46:
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        if (v18)
        {
          sub_29588A478(&v110);
          goto LABEL_89;
        }

        v86 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v13, buffer, v15, 7, 0);
        v87 = *(p_EVM_EV0_motionScore + 19);
        *(p_EVM_EV0_motionScore + 19) = v86;

        if (!*(p_EVM_EV0_motionScore + 19))
        {
          sub_29588A3DC(&v110);
          goto LABEL_89;
        }

        goto LABEL_70;
      }

      goto LABEL_72;
    }

    if (v18)
    {
      sub_29588A958(&v110);
      goto LABEL_89;
    }

    if (v14)
    {
      sub_29588A8BC(&v110);
      goto LABEL_89;
    }

    *(p_EVM_EV0_motionScore + 13) = buffer;
    v95 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v13, buffer, v15, 7, 0);
    v96 = *(p_EVM_EV0_motionScore + 14);
    *(p_EVM_EV0_motionScore + 14) = v95;

    v98 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v97, buffer, v16, 7, 1);
    v99 = *(p_EVM_EV0_motionScore + 15);
    *(p_EVM_EV0_motionScore + 15) = v98;

    if (!*(p_EVM_EV0_motionScore + 14))
    {
      sub_29588A820(&v110);
      goto LABEL_89;
    }

    if (!*(p_EVM_EV0_motionScore + 15))
    {
      sub_29588A784(&v110);
      goto LABEL_89;
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        if (v18)
        {
          sub_29588A6E8(&v110);
          goto LABEL_89;
        }

        if (v14)
        {
          sub_29588A64C(&v110);
          goto LABEL_89;
        }

        *(p_EVM_EV0_motionScore + 16) = buffer;
        v88 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v13, buffer, v15, 7, 0);
        v89 = *(p_EVM_EV0_motionScore + 17);
        *(p_EVM_EV0_motionScore + 17) = v88;

        v91 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v90, buffer, v16, 7, 1);
        v92 = *(p_EVM_EV0_motionScore + 18);
        *(p_EVM_EV0_motionScore + 18) = v91;

        if (!*(p_EVM_EV0_motionScore + 17))
        {
          sub_29588A5B0(&v110);
          goto LABEL_89;
        }

        if (!*(p_EVM_EV0_motionScore + 18))
        {
          sub_29588A514(&v110);
          goto LABEL_89;
        }

        break;
      case 3:
        if (v18)
        {
          sub_29588A340(&v110);
          goto LABEL_89;
        }

        v93 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v13, buffer, v15, 7, 0);
        v94 = *(p_EVM_EV0_motionScore + 20);
        *(p_EVM_EV0_motionScore + 20) = v93;

        if (!*(p_EVM_EV0_motionScore + 20))
        {
          sub_29588A2A4(&v110);
          goto LABEL_89;
        }

        break;
      case 4:
        if (v18)
        {
          sub_29588A208(&v110);
          goto LABEL_89;
        }

        v84 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v13, buffer, v15, 7, 0);
        v85 = *(p_EVM_EV0_motionScore + 21);
        *(p_EVM_EV0_motionScore + 21) = v84;

        if (!*(p_EVM_EV0_motionScore + 21))
        {
          sub_29588A16C(&v110);
LABEL_89:
          v100 = v110;
          goto LABEL_71;
        }

        break;
      default:
LABEL_72:
        v100 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v102, v103, v104);
        goto LABEL_71;
    }
  }

LABEL_70:
  v100 = 0;
LABEL_71:

  return v100;
}

- (int)prepareToProcess:(unsigned int)process prepareDescriptor:(id)descriptor
{
  p_applyColorCubeFixOverride = &self->_applyColorCubeFixOverride;
  descriptorCopy = descriptor;
  *(p_applyColorCubeFixOverride + 1) = objc_msgSend_width(descriptorCopy, v7, v8, v9);
  v13 = objc_msgSend_height(descriptorCopy, v10, v11, v12);

  v17 = (*(p_applyColorCubeFixOverride + 1) + 15) & 0xFFFFFFFFFFFFFFF0;
  *(p_applyColorCubeFixOverride + 2) = v13;
  *(p_applyColorCubeFixOverride + 3) = v17;
  *(p_applyColorCubeFixOverride + 4) = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (!self->_allocatorSetupComplete)
  {
    compressionLevel = self->_compressionLevel;
    allocatorType = self->_allocatorType;
    if (allocatorType == 1 && (compressionLevel & 0x80000000) == 0)
    {
      sub_29588AB34(v81);
      goto LABEL_36;
    }

    allocatorForceSize = self->_allocatorForceSize;
    v21 = objc_opt_new();
    v24 = v21;
    if (!v21)
    {
      sub_29588AA98(v81);
      goto LABEL_31;
    }

    v25 = 90177536;
    if (allocatorType == 2)
    {
      v25 = 93323264;
    }

    if (compressionLevel > 0)
    {
      v25 = 76546048;
    }

    if (!compressionLevel)
    {
      v25 = 96122961;
    }

    if (allocatorForceSize)
    {
      objc_msgSend_setMemSize_(v21, v22, allocatorForceSize, v23);
    }

    else
    {
      objc_msgSend_setMemSize_(v21, v22, v25, v23);
    }

    objc_msgSend_setWireMemory_(v24, v26, self->_allocatorWireMemory, v27);
    objc_msgSend_setCompressionLevel_(v24, v28, self->_compressionLevel, v29);
    objc_msgSend_setLabel_(v24, v30, @"FigMetalAllocator_DeepFusion", v31);
    v35 = objc_msgSend_allocator(self->_metal, v32, v33, v34);
    v38 = objc_msgSend_setupWithDescriptor_(v35, v36, v24, v37);

    if (v38)
    {
      sub_29588A9F4(v38);
      goto LABEL_33;
    }

    self->_allocatorSetupComplete = 1;
  }

  if (!objc_msgSend_buffer(*(p_applyColorCubeFixOverride + 77), v14, v15, v16))
  {
    goto LABEL_20;
  }

  v42 = objc_msgSend_device(self->_metal, v39, v40, v41);
  v46 = objc_msgSend_buffer(*(p_applyColorCubeFixOverride + 77), v43, v44, v45);
  IOSurface = CVPixelBufferGetIOSurface(v46);
  v24 = objc_msgSend_newBufferWithIOSurface_(v42, v48, IOSurface, v49);

  if (!v24)
  {
    sub_29588ABFC(v81);
LABEL_31:
    LODWORD(v38) = v81[0];
    goto LABEL_33;
  }

  v53 = objc_msgSend_allocator(self->_metal, v50, v51, v52);
  v38 = objc_msgSend_addExternalMetalBuffer_atSubAllocatorID_(v53, v54, v24, 0);

  if (v38)
  {
    sub_29588ABD0(v38, v55, v56, v57, v58, v59, v60, v61, v79, v80, v81[0], v81[1]);
LABEL_33:

    return v38;
  }

LABEL_20:
  if (*(p_applyColorCubeFixOverride + 15))
  {
    goto LABEL_23;
  }

  v62 = [ToneMappingCurves alloc];
  v65 = objc_msgSend_initWithWithContext_(v62, v63, self->_metal, v64);
  v66 = *(p_applyColorCubeFixOverride + 15);
  *(p_applyColorCubeFixOverride + 15) = v65;

  if (!*(p_applyColorCubeFixOverride + 15))
  {
    sub_29588AD58(v81);
LABEL_36:
    LODWORD(v38) = v81[0];
    return v38;
  }

  v70 = objc_msgSend_enableSTF(*(p_applyColorCubeFixOverride + 16), v67, v68, v69);
  objc_msgSend_setEnableSTF_(*(p_applyColorCubeFixOverride + 15), v71, v70, v72);
LABEL_23:
  ResourcesForWidth_height_srlVersion = objc_msgSend_allocateResourcesForWidth_height_srlVersion_(*(p_applyColorCubeFixOverride + 16), v39, *(p_applyColorCubeFixOverride + 3), *(p_applyColorCubeFixOverride + 4), p_applyColorCubeFixOverride[36]);
  if (ResourcesForWidth_height_srlVersion)
  {
    LODWORD(v38) = ResourcesForWidth_height_srlVersion;
    sub_29588AC98();
  }

  else
  {
    v77 = objc_msgSend_initializePyramids(*(p_applyColorCubeFixOverride + 21), v74, v75, v76);
    LODWORD(v38) = v77;
    if (v77)
    {
      sub_29588ACF8(v77);
    }
  }

  return v38;
}

- (BOOL)isIntermediateVersionCompatible
{
  v3 = objc_msgSend_objectForKeyedSubscript_(self->_nrfSyntheticLongIntermediateMetadataDict, a2, @"IntermediateVersion", v2);
  v7 = objc_msgSend_intValue(v3, v4, v5, v6);

  return v7 == objc_msgSend_intermediateVersion(DeepFusionCommon, v8, v9, v10);
}

- (int)process
{
  v967 = 0;
  v968[0] = 0;
  v965 = 0;
  v966 = 0;
  v964 = 0;
  memset(v963, 0, sizeof(v963));
  v959 = 0;
  v960 = 0;
  v3 = objc_msgSend_objectForKeyedSubscript_(self->_tuningParams, a2, self->_sensorID, v2);
  v945 = v3;
  if (!v3 || !*(v3 + 48))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v924, v890, v916, v918, v920, v921, v922);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v842, v869, v895);
    v942 = 0;
    v933 = 0;
    v939 = 0;
    v935 = 0;
LABEL_181:
    v936 = 0;
LABEL_183:
    v243 = 0;
    v244 = 0;
    v937 = 0;
LABEL_186:
    v946 = 0;
    goto LABEL_165;
  }

  p_EVM_EV0_motionScore = &self->_EVM_EV0_motionScore;
  v936 = objc_msgSend_getTextureForPortType_(self->_lscGainsPlist, v4, self->_portType, v5);
  v935 = objc_msgSend_getTextureMaxValueForPortType_(self->_lscGainsPlist, v7, self->_portType, v8);
  if (!v936)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v924, v890, v916, v918, v920, v921, v922);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v843, v870, v896);
    v942 = 0;
    v933 = 0;
    v939 = 0;
    goto LABEL_181;
  }

  v937 = objc_opt_new();
  if (!v937)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v924, v890, v916, v918, v920, v921, v922);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v844, v871, v897);
    v942 = 0;
    v933 = 0;
    v939 = 0;
    goto LABEL_183;
  }

  if (!self->_referenceLumaTex)
  {
    goto LABEL_184;
  }

  if (!self->_referenceChromaTex)
  {
    goto LABEL_184;
  }

  if (!self->_ev0MetadataDict)
  {
    goto LABEL_184;
  }

  if (!self->_longLumaTex)
  {
    goto LABEL_184;
  }

  if (!self->_longChromaTex)
  {
    goto LABEL_184;
  }

  if (!self->_referenceFusionMapTex)
  {
    goto LABEL_184;
  }

  if (!self->_longFusionMapTex)
  {
    goto LABEL_184;
  }

  nrfSyntheticLongIntermediateMetadataDict = self->_nrfSyntheticLongIntermediateMetadataDict;
  if (!nrfSyntheticLongIntermediateMetadataDict)
  {
    goto LABEL_184;
  }

  sifrMetadataDict = self->_sifrMetadataDict;
  p_sifrMetadata = &self->_sifrMetadata;
  p_ev0Metadata = &self->_ev0Metadata;
  if (!sifrMetadataDict)
  {
    p_sifrMetadata = &self->_ev0Metadata;
  }

  v943 = p_sifrMetadata;
  v929 = sifrMetadataDict && self->_sifrMetadata.isEVMFrame;
  v14 = objc_msgSend_objectForKeyedSubscript_(nrfSyntheticLongIntermediateMetadataDict, v9, @"SyntheticLongUsedRealLong", v10);
  v938 = objc_msgSend_BOOLValue(v14, v15, v16, v17);

  v20 = objc_msgSend_objectForKeyedSubscript_(self->_nrfSyntheticLongIntermediateMetadataDict, v18, @"ev0count", v19);
  v934 = objc_msgSend_intValue(v20, v21, v22, v23);

  if (v934 <= 0 || (objc_msgSend_isIntermediateVersionCompatible(self, v24, v25, v26) & 1) == 0)
  {
    goto LABEL_184;
  }

  if (objc_msgSend_skinMask(self->_inferenceResults, v27, v28, v29))
  {
    metal = self->_metal;
    v34 = objc_msgSend_skinMask(self->_inferenceResults, v30, v31, v32);
    v939 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metal, v35, v34, 10, 7, 0);
    if (!v939)
    {
LABEL_184:
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v924, v890, v916, v918, v920, v921, v922);
      isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v845, v872, v898);
      v942 = 0;
      v933 = 0;
      v939 = 0;
      goto LABEL_185;
    }
  }

  else
  {
    v939 = 0;
  }

  if (objc_msgSend_personMask(self->_inferenceResults, v30, v31, v32))
  {
    v39 = self->_metal;
    v40 = objc_msgSend_personMask(self->_inferenceResults, v36, v37, v38);
    v933 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v39, v41, v40, 25, 7, 0);
    if (!v933)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v924, v890, v916, v918, v920, v921, v922);
      isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v837, v863, v891);
      v942 = 0;
      v933 = 0;
LABEL_185:
      v243 = 0;
      v244 = 0;
      goto LABEL_186;
    }
  }

  else
  {
    v933 = 0;
  }

  if (objc_msgSend_skyMask(self->_inferenceResults, v36, v37, v38))
  {
    v49 = self->_metal;
    v50 = objc_msgSend_skyMask(self->_inferenceResults, v46, v47, v48);
    v942 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v49, v51, v50, 10, 7, 0);
    if (!v942)
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v924, v890, v916, v918, v920, v921, v922);
      isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v838, v864, v892);
      v942 = 0;
      goto LABEL_185;
    }
  }

  else
  {
    v942 = 0;
  }

  for (i = 0; i != 32; i += 8)
  {
    v53 = *(v963 + i);
    *(v963 + i) = 0;
  }

  for (j = 0; ; ++j)
  {
    v58 = objc_msgSend_lowResPersonInstanceMasks(self->_inferenceResults, v54, v55, v56);
    v62 = objc_msgSend_count(v58, v59, v60, v61);

    if (v62 <= j)
    {
      break;
    }

    v66 = objc_msgSend_lowResPersonInstanceMasks(self->_inferenceResults, v63, v64, v65);
    v69 = objc_msgSend_objectAtIndexedSubscript_(v66, v67, j, v68);

    if (v69)
    {
      v71 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v70, v69, 25, 1, 0);
      v72 = *(v963 + j);
      *(v963 + j) = v71;

      if (!v71)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v73 = *(v963 + j);
      *(v963 + j) = 0;
    }
  }

  v74 = objc_msgSend_allocator(self->_metal, v63, v64, v65);
  v946 = objc_msgSend_newTextureDescriptor(v74, v75, v76, v77);

  if (!v946)
  {
LABEL_38:
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v924, v890, v916, v918, v920, v921, v922);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v841, v868, v894);
    goto LABEL_185;
  }

  v81 = v945;
  if (*(*(v945 + 8) + 78) == 1)
  {
    v81 = v945;
    if (objc_msgSend_skyMask(self->_inferenceResults, v78, v79, v80))
    {
      v82 = objc_msgSend_buffer(self->_output, v78, v79, v80);
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(v82, 0);
      v87 = objc_msgSend_buffer(self->_output, v84, v85, v86);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(v87, 0);
      inferenceResults = self->_inferenceResults;
      v93 = *(*(*(v945 + 8) + 24) + 36) ? objc_msgSend_skinMask(inferenceResults, v88, v89, v90) : objc_msgSend_skyMask(inferenceResults, v88, v89, v90);
      v95 = objc_msgSend_regularizeLocalToneCurves_mask_tcrParams_imageDims_(self->_toneMappingCurves, v94, &v943->ltmCurves, v93, *(*(v945 + 8) + 24), COERCE_DOUBLE(__PAIR64__(HeightOfPlane, WidthOfPlane)));
      isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = v95;
      v81 = v945;
      if (v95)
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v95, v924, v890, v916, v918, v920, v921, v922);
        goto LABEL_95;
      }
    }
  }

  if (sifrMetadataDict)
  {
    if (self->_SyntheticReferenceMode != 1)
    {
      v96 = *(v81 + 48);
      if (*p_EVM_EV0_motionScore > *(v96 + 12))
      {
        if (self->_networkVersion != 2 || (exposure_time = self->_ev0Metadata.exposureParams.exposure_time, v97 = *p_EVM_EV0_motionScore, (exposure_time * v97) < sub_29584472C(*(v96 + 16), 0.0)))
        {
          *obj = 0;
          v956 = 0;
          width = self->_width;
          v100 = objc_msgSend_desc(v946, v78, v79, v80);
          objc_msgSend_setWidth_(v100, v101, width, v102);

          height = self->_height;
          v107 = objc_msgSend_desc(v946, v104, v105, v106);
          objc_msgSend_setHeight_(v107, v108, height, v109);

          v113 = objc_msgSend_desc(v946, v110, v111, v112);
          objc_msgSend_setPixelFormat_(v113, v114, 25, v115);

          v119 = objc_msgSend_desc(v946, v116, v117, v118);
          objc_msgSend_setUsage_(v119, v120, 7, v121);

          objc_msgSend_setLabel_(v946, v122, 0, v123);
          v127 = objc_msgSend_allocator(self->_metal, v124, v125, v126);
          *obj = objc_msgSend_newTextureWithDescriptor_(v127, v128, v946, v129);

          if (!*obj || (v133 = self->_width, objc_msgSend_desc(v946, v130, v131, v132), v134 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setWidth_(v134, v135, v133 >> 1, v136), v134, v137 = self->_height, objc_msgSend_desc(v946, v138, v139, v140), v141 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setHeight_(v141, v142, v137 >> 1, v143), v141, objc_msgSend_desc(v946, v144, v145, v146), v147 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setPixelFormat_(v147, v148, 65, v149), v147, objc_msgSend_desc(v946, v150, v151, v152), v153 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setUsage_(v153, v154, 7, v155), v153, objc_msgSend_setLabel_(v946, v156, 0, v157), objc_msgSend_allocator(self->_metal, v158, v159, v160), v161 = objc_claimAutoreleasedReturnValue(), v164 = objc_msgSend_newTextureWithDescriptor_(v161, v162, v946, v163), v165 = v956, v956 = v164, v165, v161, !v164) || (v169 = objc_msgSend_width(self->_referenceFusionMapTex, v166, v167, v168), objc_msgSend_desc(v946, v170, v171, v172), v173 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setWidth_(v173, v174, v169, v175), v173, v179 = objc_msgSend_height(self->_referenceFusionMapTex, v176, v177, v178), objc_msgSend_desc(v946, v180, v181, v182), v183 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setHeight_(v183, v184, v179, v185), v183, v189 = objc_msgSend_pixelFormat(self->_referenceFusionMapTex, v186, v187, v188), objc_msgSend_desc(v946, v190, v191, v192), v193 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setPixelFormat_(v193, v194, v189, v195), v193, objc_msgSend_desc(v946, v196, v197, v198), v199 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setUsage_(v199, v200, 7, v201), v199, objc_msgSend_setLabel_(v946, v202, 0, v203), objc_msgSend_allocator(self->_metal, v204, v205, v206), v207 = objc_claimAutoreleasedReturnValue(), v210 = objc_msgSend_newTextureWithDescriptor_(v207, v208, v946, v209), v211 = v964, v964 = v210, v211, v207, !v210))
          {
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v924, v890, v916, v918, v920, v921, v922);
            isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v860, v887, v913);
            goto LABEL_224;
          }

          v928 = v210;
          v212 = sub_295820670(&self->_sifrMetadata.exposureParams, &self->_ev0Metadata.exposureParams, 1);
          v213 = *(MEMORY[0x29EDCA928] + 16);
          v952 = *MEMORY[0x29EDCA928];
          v953 = v213;
          v954 = *(MEMORY[0x29EDCA928] + 32);
          v214 = objc_opt_new();
          objc_storeStrong(v214 + 2, self->_referenceLumaTex);
          objc_storeStrong(v214 + 3, self->_referenceChromaTex);
          v215 = objc_opt_new();
          objc_storeStrong((v215 + 16), self->_longLumaTex);
          v940 = v215;
          objc_storeStrong((v215 + 24), self->_longChromaTex);
          v216 = objc_opt_new();
          objc_storeStrong(v216 + 2, *obj);
          objc_storeStrong(v216 + 3, v956);
          regDense = self->_regDense;
          v221 = objc_msgSend_width(v214[2], v218, v219, v220);
          v225 = objc_msgSend_height(v214[2], v222, v223, v224);
          v227 = objc_msgSend_prepareWithImageWidth_imageHeight_(regDense, v226, v221, v225);
          isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = v227;
          if (v227)
          {
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v227, v924, v890, v916, v918, v920, v921, v922);
            v241 = 4;
            v236 = v928;
            goto LABEL_64;
          }

          *&v229 = v212;
          v230 = objc_msgSend_runWithReferenceImage_nonReferenceImage_warpedImage_relativeBrightness_homography_regDenseParams_alwaysDense_refWeightsLevel_nonRefWeightsLevel_(self->_regDense, v228, v214, v940, v216, &v952, 0, 1, v229, 0, 0);
          if (v230 || (objc_storeStrong((v940 + 16), self->_longLumaTex), v231 = *(v940 + 24), *(v940 + 24) = 0, v231, objc_storeStrong(v216 + 2, *obj), v232 = v216[3], v216[3] = 0, v232, (v230 = objc_msgSend_warpAdditionalImage_warpedImage_homography_hybridReg_alwaysDense_(self->_regDense, v233, self->_longFusionMapTex, v928, &v952, 0, 1)) != 0))
          {
            LODWORD(v836) = v230;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v836, v924, v890, v916, v918, v920, v921, v922);
            isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v861, v888, v914);
            v241 = 4;
            v236 = v928;
            goto LABEL_64;
          }

          longFusionMapTex = self->_longFusionMapTex;
          v235 = longFusionMapTex;
          objc_storeStrong(&self->_longFusionMapTex, v210);
          v236 = v235;

          longRealLongFusionMapTex = self->_longRealLongFusionMapTex;
          if (longRealLongFusionMapTex)
          {
            v240 = objc_msgSend_warpAdditionalImage_warpedImage_homography_hybridReg_alwaysDense_(self->_regDense, v237, longRealLongFusionMapTex, v236, &v952, 0, 1);
            if (v240)
            {
              LODWORD(v836) = v240;
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v836, v924, v890, v916, v918, v920, v921, v922);
              isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v862, v889, v915);
              v241 = 4;
              goto LABEL_63;
            }

            objc_storeStrong(&self->_longRealLongFusionMapTex, longFusionMapTex);
          }

          objc_msgSend_reset(self->_regDense, v237, longRealLongFusionMapTex, v238);
          v241 = 0;
          isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = 0;
LABEL_63:

LABEL_64:
          if (v241)
          {

            v243 = 0;
            v244 = 0;
            goto LABEL_165;
          }

          v245 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v242, *obj, self->_longLumaTex);
          v81 = v945;
          isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = v245;
          if (!v245)
          {
            v245 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v246, v956, self->_longChromaTex);
            isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = v245;
            if (!v245)
            {
              FigMetalDecRef();
              FigMetalDecRef();

              goto LABEL_69;
            }
          }

          LODWORD(v836) = v245;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v836, v924, v890, v916, v918, v920, v921, v922);

LABEL_224:
          goto LABEL_95;
        }
      }
    }
  }

LABEL_69:
  self->_preEspressoMetaData.combo = v938 ^ 1u;
  v247 = *&v943->exposureParams.gain;
  v248 = *&v943->exposureParams.ispGainRangeExpansionFactor;
  *&self->_preEspressoMetaData.refExposure.blue_combo_gain = *&v943->exposureParams.blue_combo_gain;
  *&self->_preEspressoMetaData.refExposure.ispGainRangeExpansionFactor = v248;
  *&self->_preEspressoMetaData.refExposure.gain = v247;
  v249 = *&v943->exposureParams.exposure_time;
  v250 = *&v943->exposureParams.read_noise_1x;
  v251 = *&v943->exposureParams.lsModulationWeight;
  *&self->_preEspressoMetaData.refExposure.ltm_locked = *&v943->exposureParams.ltm_locked;
  *&self->_preEspressoMetaData.refExposure.read_noise_1x = v250;
  *&self->_preEspressoMetaData.refExposure.lsModulationWeight = v251;
  *&self->_preEspressoMetaData.refExposure.exposure_time = v249;
  v252 = *&self->_ev0Metadata.exposureParams.ispGainRangeExpansionFactor;
  *&self->_preEspressoMetaData.syntheticLongExposure.exposure_time = *&self->_ev0Metadata.exposureParams.exposure_time;
  v253 = *&self->_ev0Metadata.exposureParams.lsModulationWeight;
  *&self->_preEspressoMetaData.syntheticLongExposure.read_noise_1x = *&self->_ev0Metadata.exposureParams.read_noise_1x;
  *&self->_preEspressoMetaData.syntheticLongExposure.lsModulationWeight = v253;
  *&self->_preEspressoMetaData.syntheticLongExposure.ltm_locked = *&self->_ev0Metadata.exposureParams.ltm_locked;
  v254 = *&self->_ev0Metadata.exposureParams.blue_combo_gain;
  *&self->_preEspressoMetaData.syntheticLongExposure.gain = *&self->_ev0Metadata.exposureParams.gain;
  *&self->_preEspressoMetaData.syntheticLongExposure.blue_combo_gain = v254;
  *&self->_preEspressoMetaData.syntheticLongExposure.ispGainRangeExpansionFactor = v252;
  v255 = *&self->_longMetadata.exposureParams.lsModulationWeight;
  *&self->_preEspressoMetaData.longExposure.read_noise_1x = *&self->_longMetadata.exposureParams.read_noise_1x;
  *&self->_preEspressoMetaData.longExposure.lsModulationWeight = v255;
  *&self->_preEspressoMetaData.longExposure.ltm_locked = *&self->_longMetadata.exposureParams.ltm_locked;
  v256 = *&self->_longMetadata.exposureParams.blue_combo_gain;
  *&self->_preEspressoMetaData.longExposure.gain = *&self->_longMetadata.exposureParams.gain;
  *&self->_preEspressoMetaData.longExposure.blue_combo_gain = v256;
  v257 = *&self->_longMetadata.exposureParams.exposure_time;
  *&self->_preEspressoMetaData.longExposure.ispGainRangeExpansionFactor = *&self->_longMetadata.exposureParams.ispGainRangeExpansionFactor;
  *&self->_preEspressoMetaData.longExposure.exposure_time = v257;
  gain = self->_preEspressoMetaData.syntheticLongExposure.gain;
  *&v257 = gain * self->_preEspressoMetaData.syntheticLongExposure.exposure_time;
  v941 = objc_msgSend_modelForEIT_(*(v81 + 48), v78, v79, v80, *&v257);
  v957[0] = sub_295820670(&v943->exposureParams, &self->_ev0Metadata.exposureParams, 2);
  *&v957[1] = gain;
  v261 = objc_msgSend_objectAtIndexedSubscript_(v935, v259, 1, v260);
  objc_msgSend_floatValue(v261, v262, v263, v264);
  v957[2] = v265;

  p_preEspressoMetaData = &self->_preEspressoMetaData;
  v268 = objc_msgSend_noiseTuningForModel_(*(v945 + 48), v266, v941, v267);
  v269 = v268;
  if (!v268)
  {
    goto LABEL_190;
  }

  v270 = &OBJC_IVAR___DeepFusionNoiseTuningPlist_slEV0;
  if (v938)
  {
    v270 = &OBJC_IVAR___DeepFusionNoiseTuningPlist_slEV0Long;
  }

  objc_storeStrong(&v959, *(v268 + *v270));
  if (!v959)
  {
LABEL_190:
    LODWORD(v836) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v836, v924, v890, v916, v918, v920, v921, v922);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v846, v873, v899);

LABEL_95:
    v243 = 0;
    v244 = 0;
    goto LABEL_165;
  }

  v273 = objc_msgSend_objectAtIndexedSubscript_(*(*(v945 + 48) + 56), v271, v941, v272);
  v274 = v960;
  v960 = v273;

  if (self->_preEspressoMetaData.combo == 1)
  {
    v275 = NAN;
  }

  else
  {
    v275 = sub_295820670(&v943->exposureParams, &self->_longMetadata.exposureParams, 2);
  }

  v961 = v275;
  v962[0] = 1065353216;
  v962[1] = sqrtf(v934);

  v276 = sub_295820700(&self->_preEspressoMetaData.syntheticLongExposure, &self->_preEspressoMetaData.refExposure);
  v280 = objc_msgSend_desc(v946, v277, v278, v279);
  objc_msgSend_setUsage_(v280, v281, 7, v282);

  v286 = objc_msgSend_desc(v946, v283, v284, v285);
  objc_msgSend_setPixelFormat_(v286, v287, 25, v288);

  v289 = self->_width;
  v293 = objc_msgSend_desc(v946, v290, v291, v292);
  objc_msgSend_setWidth_(v293, v294, v289, v295);

  v296 = self->_height;
  v300 = objc_msgSend_desc(v946, v297, v298, v299);
  objc_msgSend_setHeight_(v300, v301, v296, v302);

  objc_msgSend_setLabel_(v946, v303, 0, v304);
  v308 = objc_msgSend_allocator(self->_metal, v305, v306, v307);
  v311 = objc_msgSend_newTextureWithDescriptor_(v308, v309, v946, v310);
  v312 = v966;
  v966 = v311;

  if (!v966)
  {
    goto LABEL_204;
  }

  v316 = objc_msgSend_desc(v946, v313, v314, v315);
  objc_msgSend_setPixelFormat_(v316, v317, 65, v318);

  v319 = self->_width;
  v323 = objc_msgSend_desc(v946, v320, v321, v322);
  objc_msgSend_setWidth_(v323, v324, v319 >> 1, v325);

  v326 = self->_height;
  v330 = objc_msgSend_desc(v946, v327, v328, v329);
  objc_msgSend_setHeight_(v330, v331, v326 >> 1, v332);

  objc_msgSend_setLabel_(v946, v333, 0, v334);
  v338 = objc_msgSend_allocator(self->_metal, v335, v336, v337);
  v341 = objc_msgSend_newTextureWithDescriptor_(v338, v339, v946, v340);
  v342 = v965;
  v965 = v341;

  if (!v965)
  {
    goto LABEL_204;
  }

  *&v345 = sub_29584472C(*(*(v945 + 48) + 24), gain);
  v346 = LODWORD(v345);
  if (*&v345 > 0.0)
  {
    v347 = objc_msgSend_filterChroma_outChroma_alpha_(self->_preEspressoStage, v343, self->_referenceChromaTex, v965, v345);
    if (v347 || (v347 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v348, v965, self->_referenceChromaTex)) != 0 || (LODWORD(v350) = v346, (v347 = objc_msgSend_filterChroma_outChroma_alpha_(self->_preEspressoStage, v349, self->_longChromaTex, v965, v350)) != 0) || (v347 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v351, v965, self->_longChromaTex)) != 0)
    {
      LODWORD(v836) = v347;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v836, v924, v890, v916, v918, v920, v921, v922);
      v835 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v856, v883, v909);
      goto LABEL_205;
    }
  }

  tiledFusionStage = self->_tiledFusionStage;
  referenceLumaTex = self->_referenceLumaTex;
  longChromaTex = self->_longChromaTex;
  longLumaTex = self->_longLumaTex;
  referenceChromaTex = self->_referenceChromaTex;
  v355 = self->_longFusionMapTex;
  referenceFusionMapTex = self->_referenceFusionMapTex;
  v356 = self->_longRealLongFusionMapTex;
  v358 = v965;
  v357 = v966;
  v359 = *(v945 + 48);
  v360 = objc_msgSend_objectAtIndexedSubscript_(v935, v343, 1, v344);
  objc_msgSend_floatValue(v360, v361, v362, v363);
  LODWORD(v365) = v364;
  *&v366 = *p_EVM_EV0_motionScore;
  LODWORD(v367) = v957[0];
  BYTE2(v923) = v938;
  BYTE1(v923) = LOBYTE(self->_ev0Metadata.faces[1].rect.origin.y);
  LOBYTE(v923) = v929;
  *&v368 = gain;
  *&v369 = v276;
  isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = objc_msgSend_runWithReferenceLuma_referenceChroma_longLuma_longChroma_preFusionMap_slFusionMap_slQuantBounds_longFusionMap_skinMask_skyMask_lscGains_totalGain_outLuma_outChroma_deferredProcessingPlist_lscGainGreenMax_EVM_EV0_motionScore_eitRatio_aeShutterTimeRatio_hasSIFR_isStationary_isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams_(tiledFusionStage, v370, referenceLumaTex, referenceChromaTex, longLumaTex, longChromaTex, referenceFusionMapTex, v355, v368, v365, v366, v367, v369, v943->faces[0].rect.origin.x, v943->faces[0].rect.size.width, *&v943->faces[0].confidence, v962, v356, v939, v942, v936, v357, v358, v359, v923, v957, v941, self->_sidecar, &self->_intermediateEncodingParameters);

  if (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams)
  {
    LODWORD(v836) = isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v836, v924, v890, v916, v918, v920, v921, v922);
    goto LABEL_95;
  }

  v371 = self->_referenceLumaTex;
  self->_referenceLumaTex = 0;

  v372 = self->_referenceChromaTex;
  self->_referenceChromaTex = 0;

  v373 = self->_longLumaTex;
  self->_longLumaTex = 0;

  v374 = self->_longChromaTex;
  self->_longChromaTex = 0;

  if (!self->_referenceBuffer)
  {
    goto LABEL_204;
  }

  v378 = objc_msgSend_device(self->_metal, v375, v376, v377);
  IOSurface = CVPixelBufferGetIOSurface(self->_referenceBuffer);
  v382 = objc_msgSend_newBufferWithIOSurface_(v378, v380, IOSurface, v381);

  if (!v382)
  {
    goto LABEL_197;
  }

  v386 = objc_msgSend_allocator(self->_metal, v383, v384, v385);
  isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = objc_msgSend_addExternalMetalBuffer_atSubAllocatorID_(v386, v387, v382, 1);

  if (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v836, v865, v890);
LABEL_203:

    goto LABEL_95;
  }

  if (!self->_longBuffer)
  {
LABEL_201:
    LODWORD(v836) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v836, v924, v890, v916, v918, v920, v921, v922);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v848, v875, v901);
    goto LABEL_203;
  }

  v391 = objc_msgSend_device(self->_metal, v388, v389, v390);
  v392 = CVPixelBufferGetIOSurface(self->_longBuffer);
  v395 = objc_msgSend_newBufferWithIOSurface_(v391, v393, v392, v394);

  if (!v395)
  {
LABEL_197:
    LODWORD(v836) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v836, v924, v890, v916, v918, v920, v921, v922);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v847, v874, v900);
    v382 = 0;
    goto LABEL_203;
  }

  v399 = objc_msgSend_allocator(self->_metal, v396, v397, v398);
  isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = objc_msgSend_addExternalMetalBuffer_atSubAllocatorID_(v399, v400, v395, 2);

  if (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v836, v865, v890);
    v382 = v395;
    goto LABEL_203;
  }

  if (objc_msgSend_linearOutputPixelBuffer(self->_output, v401, v402, v403))
  {
    v404 = objc_msgSend_linearOutputMetadata(self->_output, v42, v43, v44);

    if (!v404)
    {
      goto LABEL_204;
    }

    v408 = objc_msgSend_linearOutputMetadata(self->_output, v405, v406, v407);
    objc_msgSend_setObject_forKeyedSubscript_(v408, v409, *MEMORY[0x29EDB9670], *MEMORY[0x29EDB9658]);

    v413 = objc_msgSend_linearOutputMetadata(self->_output, v410, v411, v412);
    objc_msgSend_setObject_forKeyedSubscript_(v413, v414, *MEMORY[0x29EDB9628], *MEMORY[0x29EDB9608]);

    v415 = sub_295820670(&v943->exposureParams, &self->_ev0Metadata.exposureParams, 2);
    ltm_soft_gain = v943->exposureParams.ltm_soft_gain;
    isp_digital_gain = v943->exposureParams.isp_digital_gain;
    if ((*(*(v945 + 8) + 79) & 1) == 0)
    {
      v418 = sub_2958378A4(&v943->ltmCurves.ltmLut.version);
      v422 = objc_msgSend_linearOutputMetadata(self->_output, v419, v420, v421);
      objc_msgSend_setObject_forKeyedSubscript_(v422, v423, v418, *MEMORY[0x29EDC0590]);
    }

    v424 = sub_29583794C(&self->_ev0Metadata.ltmCurves.globalLtmLut.lutEntryCount);
    v428 = objc_msgSend_linearOutputMetadata(self->_output, v425, v426, v427);
    objc_msgSend_setObject_forKeyedSubscript_(v428, v429, v424, *MEMORY[0x29EDC0528]);

    v430 = sub_29583794C(&self->_ev0Metadata.ltmCurves.gtcLut.lutEntryCount);
    v434 = objc_msgSend_linearOutputMetadata(self->_output, v431, v432, v433);
    objc_msgSend_setObject_forKeyedSubscript_(v434, v435, v430, *MEMORY[0x29EDC0538]);

    *&v436 = ltm_soft_gain;
    v440 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v437, v438, v439, v436);
    v444 = objc_msgSend_linearOutputMetadata(self->_output, v441, v442, v443);
    objc_msgSend_setObject_forKeyedSubscript_(v444, v445, v440, *MEMORY[0x29EDC0170]);

    *&v446 = v415;
    v450 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v447, v448, v449, v446);
    v454 = objc_msgSend_linearOutputMetadata(self->_output, v451, v452, v453);
    objc_msgSend_setObject_forKeyedSubscript_(v454, v455, v450, *MEMORY[0x29EDC0168]);

    *&v456 = isp_digital_gain;
    v460 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v457, v458, v459, v456);
    v464 = objc_msgSend_linearOutputMetadata(self->_output, v461, v462, v463);
    objc_msgSend_setObject_forKeyedSubscript_(v464, v465, v460, *MEMORY[0x29EDC0148]);

    colorConvertStage = self->_colorConvertStage;
    v468 = v965;
    v467 = v966;
    v472 = objc_msgSend_linearOutputPixelBuffer(self->_output, v469, v470, v471);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = objc_msgSend_extractLinearBufferWithLumaInput_chromaInput_inputIsLinear_removeChromaBias_lumaPedestal_exposureParams_ccm_output_(colorConvertStage, v473, v467, v468, 0, 0, &v943->exposureParams, v472, 0.0, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32));
    if (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams)
    {
      goto LABEL_95;
    }
  }

  v474 = objc_msgSend_desc(v946, v42, v43, v44);
  objc_msgSend_setUsage_(v474, v475, 7, v476);

  v480 = objc_msgSend_desc(v946, v477, v478, v479);
  objc_msgSend_setPixelFormat_(v480, v481, 25, v482);

  v483 = self->_width;
  v487 = objc_msgSend_desc(v946, v484, v485, v486);
  objc_msgSend_setWidth_(v487, v488, v483, v489);

  v490 = self->_height;
  v494 = objc_msgSend_desc(v946, v491, v492, v493);
  objc_msgSend_setHeight_(v494, v495, v490, v496);

  objc_msgSend_setLabel_(v946, v497, 0, v498);
  v502 = objc_msgSend_allocator(self->_metal, v499, v500, v501);
  v505 = objc_msgSend_newTextureWithDescriptor_(v502, v503, v946, v504);
  v506 = v968[0];
  v968[0] = v505;

  if (!v968[0])
  {
    goto LABEL_204;
  }

  v510 = objc_msgSend_allocator(self->_metal, v507, v508, v509);
  v382 = objc_msgSend_newTextureDescriptor_(v510, v511, 1, v512);

  if (!v382)
  {
    goto LABEL_201;
  }

  v516 = objc_msgSend_desc(v382, v513, v514, v515);
  objc_msgSend_setUsage_(v516, v517, 7, v518);

  v522 = objc_msgSend_desc(v382, v519, v520, v521);
  objc_msgSend_setPixelFormat_(v522, v523, 65, v524);

  v525 = self->_width;
  v529 = objc_msgSend_desc(v382, v526, v527, v528);
  objc_msgSend_setWidth_(v529, v530, v525 >> 1, v531);

  v532 = self->_height;
  v536 = objc_msgSend_desc(v382, v533, v534, v535);
  objc_msgSend_setHeight_(v536, v537, v532 >> 1, v538);

  objc_msgSend_setLabel_(v382, v539, 0, v540);
  v544 = objc_msgSend_allocator(self->_metal, v541, v542, v543);
  v546 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v544, v545, v382, 1);
  v547 = v967;
  v967 = v546;

  if (!v967)
  {
    goto LABEL_201;
  }

  objc_msgSend_setToneCurvesWithLTC_GTC_colorCorrectionMatrix_dump_(self->_toneMappingCurves, v548, &v943->ltmCurves, &self->_ev0Metadata.ltmCurves, 0, v943->faces[0].rect.origin.x, v943->faces[0].rect.size.width, *&v943->faces[0].confidence);
  v549 = objc_alloc_init(ToneMappingBuffers);
  objc_storeStrong(&v549->inLumaTex, v966);
  objc_storeStrong(&v549->inChromaTex, v965);
  localGainMapTex = v549->localGainMapTex;
  v549->localGainMapTex = 0;

  objc_storeStrong(&v549->outLumaTex, v968[0]);
  objc_storeStrong(&v549->outChromaTex, v967);
  objc_storeStrong(&v549->curves, self->_toneMappingCurves);
  objc_storeStrong(&v549->skinMask, v939);
  objc_storeStrong(&v549->personMask, v933);
  objc_storeStrong(&v549->skyMask, v942);
  v554 = objc_msgSend_faceLandmarks(self->_inferenceResults, v551, v552, v553);
  faceLandmarks = v549->faceLandmarks;
  v549->faceLandmarks = v554;

  v559 = objc_msgSend_skinToneClassificationsForFaces(self->_inferenceResults, v556, v557, v558);
  skinToneClassification = v549->skinToneClassification;
  v549->skinToneClassification = v559;

  v564 = objc_msgSend_lowResPersonInstanceConfidences(self->_inferenceResults, v561, v562, v563);
  maskConfidences = v549->maskConfidences;
  v549->maskConfidences = v564;

  for (k = 0; k != 4; ++k)
  {
    objc_storeStrong(&v549->instanceMasks[k], *(v963 + k * 8));
  }

  BYTE4(v836) = 0;
  LODWORD(v836) = 4;
  LODWORD(v568) = 1.0;
  IsLinear = objc_msgSend_runToneMapping_bilateralGrid_bilateralGridHomography_tmPlist_darkestFrameMetadata_ev0FrameMetadata_scaleInput_colorCorrection_hasChromaBias_quality_inputIsLinear_(self->_toneMappingStage, v567, v549, 0, *(v945 + 8), v943, p_ev0Metadata, 0, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32), v568, v943->faces[0].rect.origin.x, v943->faces[0].rect.size.width, *&v943->faces[0].confidence, v836);
  v570 = v945;
  if (IsLinear)
  {
    LODWORD(v836) = IsLinear;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v836, v924, v890, v916, v918, v920, v921, v922);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v849, v876, v902);

    goto LABEL_203;
  }

  v574 = *(v945 + 16);
  if (v574)
  {
    semanticStyleProperties = self->_semanticStyleProperties;
    if (semanticStyleProperties)
    {
      semanticStylesStage = self->_semanticStylesStage;
      v577 = objc_msgSend_smartCameraSceneType(self->_inferenceResults, v571, v572, v573);
      LOBYTE(v920) = 0;
      isLowLight = objc_msgSend_runWithStyle_tuningParams_refFrameMetadata_sceneType_lumaTex_chromaTex_gainMapTex_outputGainMapTex_personMaskTex_skinMaskTex_skyMaskTex_isLowLight_(semanticStylesStage, v578, semanticStyleProperties, v574, v943, v577, v968[0], v967, 0, 0, v933, v939, v942, v920);

      v570 = v945;
      if (isLowLight)
      {
        LODWORD(v836) = isLowLight;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v836, v924, v890, v916, v918, v920, v921, v922);
        v835 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v859, v886, v912);
        goto LABEL_205;
      }
    }
  }

  v580 = *(v570 + 8);
  if (v580 && *(v580 + 120) == 1)
  {
    if (self->_applyColorCubeFixOverride)
    {
      v581 = 2;
    }

    else
    {
      v581 = 0xFFFFFFFFLL;
    }
  }

  else if (self->_applyColorCubeFixOverride == 1)
  {
    v581 = 2;
    if (!v580)
    {
LABEL_117:
      if (self->_applyColorCube2FixOverride == 1)
      {
        goto LABEL_116;
      }

      goto LABEL_118;
    }
  }

  else
  {
    v581 = 0xFFFFFFFFLL;
    if (!v580)
    {
      goto LABEL_117;
    }
  }

  if ((*(v580 + 121) & 1) == 0)
  {
    goto LABEL_117;
  }

  if (self->_applyColorCube2FixOverride)
  {
LABEL_116:
    v581 = 3;
    v930 = 1;
    goto LABEL_119;
  }

LABEL_118:
  v930 = 0;
LABEL_119:
  v582 = self->_metal;
  v583 = objc_msgSend_buffer(self->_output, v571, v572, v573);
  v244 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v582, v584, v583, 10, 7, 0);
  if (!v244)
  {
LABEL_204:
    LODWORD(v836) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v836, v924, v890, v916, v918, v920, v921, v922);
    v835 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v850, v877, v903);
LABEL_205:
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = v835;
    goto LABEL_95;
  }

  v588 = self->_metal;
  v589 = objc_msgSend_buffer(self->_output, v585, v586, v587);
  v243 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v588, v590, v589, 30, 7, 1);
  if (!v243)
  {
    LODWORD(v836) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v836, v924, v890, v916, v918, v920, v921, v922);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v851, v878, v904);
    v243 = 0;
    goto LABEL_165;
  }

  v594 = objc_msgSend_allocator(self->_metal, v591, v592, v593);
  v597 = objc_msgSend_newTextureDescriptor_(v594, v595, 2, v596);

  if (!v597)
  {
    LODWORD(v836) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v836, v924, v890, v916, v918, v920, v921, v922);
    v823 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v852, v879, v905);
    goto LABEL_163;
  }

  v601 = objc_msgSend_desc(v597, v598, v599, v600);
  objc_msgSend_setUsage_(v601, v602, 7, v603);

  v607 = objc_msgSend_desc(v597, v604, v605, v606);
  objc_msgSend_setPixelFormat_(v607, v608, 10, v609);

  v610 = self->_width;
  v614 = objc_msgSend_desc(v597, v611, v612, v613);
  objc_msgSend_setWidth_(v614, v615, v610 >> 1, v616);

  v617 = self->_height;
  v621 = objc_msgSend_desc(v597, v618, v619, v620);
  objc_msgSend_setHeight_(v621, v622, v617 >> 1, v623);

  objc_msgSend_setLabel_(v597, v624, 0, v625);
  v932 = v243;
  v944 = v244;
  v629 = objc_msgSend_allocator(self->_metal, v626, v627, v628);
  *&v952 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v629, v630, v597, 2);

  if (!v952)
  {
    LODWORD(v836) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v836, v924, v890, v916, v918, v920, v921, v922);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v853, v880, v906);
    v631 = 0;
    v632 = 0;
LABEL_213:
    v243 = v932;
    goto LABEL_214;
  }

  v631 = objc_opt_new();
  v632 = objc_opt_new();
  PyramidWithWidth_height_allocLevel0_levels_texUsage_mtlSubAllocatorID_label_lumaFormat_chromaFormat_outPyramid_metal = objc_msgSend_allocatePyramidWithWidth_height_allocLevel0_levels_texUsage_mtlSubAllocatorID_label_lumaFormat_chromaFormat_outPyramid_metal_(PyramidStorage_NRF, v633, LOWORD(self->_width), LOWORD(self->_height), 0, 4, 7, 0, @"sharpeningInPyramid", 25, 65, v631, self->_metal);
  isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = PyramidWithWidth_height_allocLevel0_levels_texUsage_mtlSubAllocatorID_label_lumaFormat_chromaFormat_outPyramid_metal;
  if (PyramidWithWidth_height_allocLevel0_levels_texUsage_mtlSubAllocatorID_label_lumaFormat_chromaFormat_outPyramid_metal || (PyramidWithWidth_height_allocLevel0_levels_texUsage_mtlSubAllocatorID_label_lumaFormat_chromaFormat_outPyramid_metal = objc_msgSend_allocatePyramidWithWidth_height_allocLevel0_levels_texUsage_mtlSubAllocatorID_label_lumaFormat_chromaFormat_outPyramid_metal_(PyramidStorage_NRF, v635, LOWORD(self->_width), LOWORD(self->_height), 0, 4, 7, 2, @"sharpeningLowVarPyramid", 25, 65, v632, self->_metal), (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = PyramidWithWidth_height_allocLevel0_levels_texUsage_mtlSubAllocatorID_label_lumaFormat_chromaFormat_outPyramid_metal) != 0) || (PyramidWithWidth_height_allocLevel0_levels_texUsage_mtlSubAllocatorID_label_lumaFormat_chromaFormat_outPyramid_metal = objc_msgSend_setLumaTexture_chromaTexture_level_metal_(v631, v636, v968[0], v967, 0, self->_metal), (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = PyramidWithWidth_height_allocLevel0_levels_texUsage_mtlSubAllocatorID_label_lumaFormat_chromaFormat_outPyramid_metal) != 0) || (PyramidWithWidth_height_allocLevel0_levels_texUsage_mtlSubAllocatorID_label_lumaFormat_chromaFormat_outPyramid_metal = objc_msgSend_setLumaTexture_chromaTexture_level_metal_(v632, v637, v966, v965, 0, self->_metal), (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = PyramidWithWidth_height_allocLevel0_levels_texUsage_mtlSubAllocatorID_label_lumaFormat_chromaFormat_outPyramid_metal) != 0))
  {
    LODWORD(v839) = PyramidWithWidth_height_allocLevel0_levels_texUsage_mtlSubAllocatorID_label_lumaFormat_chromaFormat_outPyramid_metal;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v839, v924, v893, v917, v919, v920, v921, v922);
LABEL_214:

    v244 = v944;
    goto LABEL_165;
  }

  BYTE4(v866) = v938;
  LODWORD(v866) = v941;
  *&v639 = gain;
  isSyntheticLongWithRealLong_totalGain = objc_msgSend_computeAMBNRDenoiseBoostMap_longFusionMap_ev0FusionMap_ev0Metadata_longMetadata_numEV0_deferredProcessingPlist_espressoModel_isSyntheticLongWithRealLong_totalGain_(self->_tiledFusionStage, v638, v952, self->_longRealLongFusionMapTex, self->_longFusionMapTex, p_ev0Metadata, &self->_longMetadata, v934, v639, *(v945 + 48), v866);
  if (isSyntheticLongWithRealLong_totalGain)
  {
    LODWORD(v840) = isSyntheticLongWithRealLong_totalGain;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v840, v924, v893, v917, v919, v920, v921, v922);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v854, v881, v907);
    goto LABEL_214;
  }

  objc_storeStrong(v937 + 2, v944);
  if (v581 == -1)
  {
    v641 = v243;
  }

  else
  {
    v641 = 0;
  }

  objc_storeStrong(v937 + 3, v641);
  isLowLight_gainMap = objc_msgSend_setResourcesWithOutput_inputPyramid_noiseMapPyramid_sharpeningPyramid_localGainMapTex_(self->_ambnrStage, v642, v937, v631, 0, v632, v952);
  if (isLowLight_gainMap || (isLowLight_gainMap = objc_msgSend_pyramidDownscale_(self->_syntheticLongStage, v644, v631, v645)) != 0 || (v649 = *(v945 + 40), v650 = *(v945 + 32), ambnrStage = self->_ambnrStage, v652 = *(v945 + 56), LOWORD(v921) = objc_msgSend_defringingEnabled(v652, v646, v647, v648), LOBYTE(v840) = 0, (isLowLight_gainMap = objc_msgSend_runWithExposure_staticScene_dasPlist_nmPlist_defringingTuning_greenGhostBrightLightTuning_greenGhostEnabled_skinMask_skyMask_maskExtent_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_defringeEnabled_isLowLight_gainMap_(ambnrStage, v653, &self->_ev0Metadata.exposureParams, 0, v649, v650, v652, 0, self->_ev0Metadata.ROI.origin.x, self->_ev0Metadata.ROI.origin.y, self->_ev0Metadata.ROI.size.width, self->_ev0Metadata.ROI.size.height, v840, v939, v942, 0, 0, 0, v921, 0)) != 0))
  {
    LODWORD(v840) = isLowLight_gainMap;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v840, v924, v893, v917, v919, v920, v921, v922);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v855, v882, v908);
    goto LABEL_213;
  }

  objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v654, v632, self->_metal);
  objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v655, v631, self->_metal);
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  if (v964)
  {
    FigMetalDecRef();
  }

  objc_msgSend_allocator(self->_metal, v656, v657, v658);
  v244 = v944;
  v659 = v243 = v932;
  v662 = objc_msgSend_usedSize_(v659, v660, 0, v661);

  if (v662)
  {
    LODWORD(v840) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v840, v924, v893, v917, v919, v920, v921, v922);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = -1;
    goto LABEL_165;
  }

  v666 = objc_msgSend_allocator(self->_metal, v663, v664, v665);
  objc_msgSend_purgeResources_(v666, v667, 0, v668);

  if (v581 != -1)
  {
    ColorCubeCorrectionStage = self->_ColorCubeCorrectionStage;
    v673 = v937[3];
    if (v930)
    {
      fixed = objc_msgSend_runOnLuma_andChroma_withMask_outChroma_colorCubeFixType_(ColorCubeCorrectionStage, v669, v944, v673, v942, v932, v581);
    }

    else
    {
      fixed = objc_msgSend_runOnLuma_andChroma_withMask_outChroma_colorCubeFixType_(ColorCubeCorrectionStage, v669, v944, v673, 0, v932, v581);
    }

    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = fixed;
    if (fixed)
    {
      goto LABEL_165;
    }

    FigMetalDecRef();
  }

  if (*(*(v945 + 40) + 41) != 1)
  {
    goto LABEL_148;
  }

  v675 = objc_msgSend_desc(v946, v669, v670, v671);
  objc_msgSend_setUsage_(v675, v676, 7, v677);

  v681 = objc_msgSend_desc(v946, v678, v679, v680);
  objc_msgSend_setPixelFormat_(v681, v682, 10, v683);

  v684 = self->_width;
  v688 = objc_msgSend_desc(v946, v685, v686, v687);
  objc_msgSend_setWidth_(v688, v689, v684, v690);

  v691 = self->_height;
  v695 = objc_msgSend_desc(v946, v692, v693, v694);
  objc_msgSend_setHeight_(v695, v696, v691, v697);

  objc_msgSend_setLabel_(v946, v698, 0, v699);
  v703 = objc_msgSend_allocator(self->_metal, v700, v701, v702);
  v956 = objc_msgSend_newTextureWithDescriptor_(v703, v704, v946, v705);

  if (v956 && (LODWORD(v707) = *(*(v945 + 40) + 44), objc_msgSend_runWithInput_output_gamma_(self->_outliersRemovalStage, v706, v944, v956, v707), objc_msgSend_commandQueue(self->_metal, v708, v709, v710), v711 = objc_claimAutoreleasedReturnValue(), objc_msgSend_commandBuffer(v711, v712, v713, v714), v715 = objc_claimAutoreleasedReturnValue(), v711, v715))
  {
    v719 = objc_msgSend_computeCommandEncoder(v715, v716, v717, v718);
    objc_msgSend_setComputePipelineState_(v719, v720, self->_copyTextureKernel, v721);
    objc_msgSend_setTexture_atIndex_(v719, v722, v956, 0);
    objc_msgSend_setTexture_atIndex_(v719, v723, v944, 1);
    v727 = objc_msgSend_width(v944, v724, v725, v726);
    v731 = objc_msgSend_height(v944, v728, v729, v730);
    *&v952 = v727;
    *(&v952 + 1) = v731;
    *&v953 = 1;
    *obj = vdupq_n_s64(0x20uLL);
    *&obj[16] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v719, v732, &v952, obj);
    objc_msgSend_endEncoding(v719, v733, v734, v735);
    objc_msgSend_commit(v715, v736, v737, v738);
    if (v956)
    {
      FigMetalDecRef();

LABEL_148:
      objc_msgSend_waitForSchedule(self->_metal, v669, v670, v671);
      nrfStatus = self->_nrfStatus;
      if (nrfStatus)
      {
        v743 = objc_msgSend_metadata(self->_output, v739, v740, v741);
        objc_msgSend_setObject_forKeyedSubscript_(v743, v744, nrfStatus, *MEMORY[0x29EDC01A8]);
      }

      nrfInputBracketCount = self->_nrfInputBracketCount;
      if (nrfInputBracketCount)
      {
        v746 = objc_msgSend_metadata(self->_output, v739, v740, v741);
        objc_msgSend_setObject_forKeyedSubscript_(v746, v747, nrfInputBracketCount, *MEMORY[0x29EDC0190]);
      }

      nrfRegisteredBracketCount = self->_nrfRegisteredBracketCount;
      if (nrfRegisteredBracketCount)
      {
        v749 = objc_msgSend_metadata(self->_output, v739, v740, v741);
        objc_msgSend_setObject_forKeyedSubscript_(v749, v750, nrfRegisteredBracketCount, *MEMORY[0x29EDC0198]);
      }

      SRLStatus = objc_msgSend_getSRLStatus(self->_toneMappingStage, v739, v740, v741);
      v754 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v752, SRLStatus, v753);
      v758 = objc_msgSend_metadata(self->_output, v755, v756, v757);
      objc_msgSend_setObject_forKeyedSubscript_(v758, v759, v754, *MEMORY[0x29EDC01A0]);

      output = self->_output;
      if (*(*(v945 + 8) + 79) == 1)
      {
        if (objc_msgSend_linearOutputPixelBuffer(output, v760, v761, v762))
        {
          v767 = objc_msgSend_getSTFLTM_asNSData(self->_toneMappingStage, v764, v765, v766);
          v771 = objc_msgSend_linearOutputMetadata(self->_output, v768, v769, v770);
          objc_msgSend_setObject_forKeyedSubscript_(v771, v772, v767, *MEMORY[0x29EDC0590]);
        }

        v773 = objc_msgSend_metadata(self->_output, v764, v765, v766);
        objc_msgSend_setObject_forKeyedSubscript_(v773, v774, MEMORY[0x29EDB8EB0], *MEMORY[0x29EDC0230]);

        v775 = MEMORY[0x29EDBA070];
        v779 = objc_msgSend_stfStillApplied(self->_toneMappingStage, v776, v777, v778);
        v782 = objc_msgSend_numberWithBool_(v775, v780, v779, v781);
        v786 = objc_msgSend_metadata(self->_output, v783, v784, v785);
        objc_msgSend_setObject_forKeyedSubscript_(v786, v787, v782, *MEMORY[0x29EDC0220]);

        if (!objc_msgSend_stfStillApplied(self->_toneMappingStage, v788, v789, v790))
        {
          goto LABEL_161;
        }

        v794 = MEMORY[0x29EDBA070];
        STFStillCorrectionStrength = objc_msgSend_getSTFStillCorrectionStrength_(self->_toneMappingStage, v791, 1, v793);
        v798 = objc_msgSend_numberWithInt_(v794, v796, STFStillCorrectionStrength, v797);
        v802 = objc_msgSend_metadata(self->_output, v799, v800, v801);
        objc_msgSend_setObject_forKeyedSubscript_(v802, v803, v798, *MEMORY[0x29EDC0228]);

        v804 = MEMORY[0x29EDBA070];
        v808 = objc_msgSend_stfStillAnalyticsVersion(self->_toneMappingStage, v805, v806, v807);
        v811 = objc_msgSend_numberWithUnsignedInt_(v804, v809, v808, v810);
        v815 = objc_msgSend_metadata(self->_output, v812, v813, v814);
        objc_msgSend_setObject_forKeyedSubscript_(v815, v816, v811, *MEMORY[0x29EDC0218]);
      }

      else
      {
        v811 = objc_msgSend_metadata(output, v760, v761, v762);
        objc_msgSend_setObject_forKeyedSubscript_(v811, v817, MEMORY[0x29EDB8EA8], *MEMORY[0x29EDC0230]);
      }

LABEL_161:
      v818 = objc_msgSend_allocator(self->_metal, v791, v792, v793);
      v822 = objc_msgSend_usedSizeAll(v818, v819, v820, v821);

      if (!v822)
      {
        isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = 0;
        goto LABEL_165;
      }

      v823 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v840, v867, v893);
LABEL_163:
      isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = v823;
      goto LABEL_165;
    }

    LODWORD(v840) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v840, v924, v893, v917, v919, v920, v921, v922);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v858, v885, v911);
  }

  else
  {
    LODWORD(v840) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v840, v924, v893, v917, v919, v920, v921, v922);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v857, v884, v910);
  }

LABEL_165:
  if (dword_2A18C2398)
  {
    LODWORD(v956) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v824 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v825 = v956;
    v826 = v824;
    if (os_log_type_enabled(v826, type))
    {
      v830 = v825;
    }

    else
    {
      v830 = v825 & 0xFFFFFFFE;
    }

    if (v830)
    {
      v831 = objc_msgSend_description(self, v827, v828, v829);
      v832 = "failed";
      *obj = 136315907;
      *&obj[4] = "[DeepFusionProcessor process]";
      *&obj[12] = 2113;
      *&obj[14] = v831;
      if (!isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams)
      {
        v832 = "succeeded";
      }

      *&obj[22] = 2081;
      v949 = v832;
      v950 = 1026;
      v951 = isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams == 0;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams)
  {
    objc_msgSend_waitForIdle(self->_metal, v42, v43, v44);
  }

  for (m = 24; m != -8; m -= 8)
  {
  }

  return isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams;
}

- (int)purgeResources
{
  p_lscGainsPlist = &self->_lscGainsPlist;
  lscGainsPlist = self->_lscGainsPlist;
  self->_lscGainsPlist = 0;

  v4 = p_lscGainsPlist[16];
  p_lscGainsPlist[16] = 0;

  return 0;
}

- (int)resetState
{
  p_nrfSyntheticLongIntermediateMetadataDict = &self->_nrfSyntheticLongIntermediateMetadataDict;
  sensorID = self->_sensorID;
  self->_sensorID = 0;

  v5 = p_nrfSyntheticLongIntermediateMetadataDict[13];
  p_nrfSyntheticLongIntermediateMetadataDict[13] = 0;

  v6 = p_nrfSyntheticLongIntermediateMetadataDict[14];
  p_nrfSyntheticLongIntermediateMetadataDict[14] = 0;

  v7 = p_nrfSyntheticLongIntermediateMetadataDict[16];
  p_nrfSyntheticLongIntermediateMetadataDict[16] = 0;

  v8 = p_nrfSyntheticLongIntermediateMetadataDict[17];
  p_nrfSyntheticLongIntermediateMetadataDict[17] = 0;

  v9 = p_nrfSyntheticLongIntermediateMetadataDict[18];
  p_nrfSyntheticLongIntermediateMetadataDict[18] = 0;

  v10 = p_nrfSyntheticLongIntermediateMetadataDict[19];
  p_nrfSyntheticLongIntermediateMetadataDict[19] = 0;

  v11 = p_nrfSyntheticLongIntermediateMetadataDict[20];
  p_nrfSyntheticLongIntermediateMetadataDict[20] = 0;

  ev0MetadataDict = self->_ev0MetadataDict;
  self->_ev0MetadataDict = 0;

  bzero(&self->_ev0Metadata, 0x36A70uLL);
  sifrMetadataDict = self->_sifrMetadataDict;
  self->_sifrMetadataDict = 0;

  bzero(&self->_sifrMetadata, 0x36A70uLL);
  longMetadataDict = self->_longMetadataDict;
  self->_longMetadataDict = 0;

  bzero(&self->_longMetadata, 0x36A70uLL);
  v15 = *p_nrfSyntheticLongIntermediateMetadataDict;
  *p_nrfSyntheticLongIntermediateMetadataDict = 0;

  v16 = p_nrfSyntheticLongIntermediateMetadataDict[1];
  p_nrfSyntheticLongIntermediateMetadataDict[1] = 0;

  v17 = p_nrfSyntheticLongIntermediateMetadataDict[2];
  p_nrfSyntheticLongIntermediateMetadataDict[2] = 0;

  v18 = p_nrfSyntheticLongIntermediateMetadataDict[3];
  p_nrfSyntheticLongIntermediateMetadataDict[3] = 0;

  v19 = p_nrfSyntheticLongIntermediateMetadataDict[4];
  p_nrfSyntheticLongIntermediateMetadataDict[4] = 0;

  v20 = p_nrfSyntheticLongIntermediateMetadataDict[21];
  p_nrfSyntheticLongIntermediateMetadataDict[21] = 0;

  objc_msgSend_reset(p_nrfSyntheticLongIntermediateMetadataDict[23], v21, v22, v23);
  v24 = p_nrfSyntheticLongIntermediateMetadataDict[5];
  p_nrfSyntheticLongIntermediateMetadataDict[5] = 0;

  v28 = objc_msgSend_allocator(self->_metal, v25, v26, v27);
  objc_msgSend_reset(v28, v29, v30, v31);

  v35 = objc_msgSend_allocator(self->_metal, v32, v33, v34);
  objc_msgSend_purgeResources_(v35, v36, 0, v37);

  v41 = objc_msgSend_allocator(self->_metal, v38, v39, v40);
  objc_msgSend_purgeResources_(v41, v42, 1, v43);

  v47 = objc_msgSend_allocator(self->_metal, v44, v45, v46);
  objc_msgSend_purgeResources_(v47, v48, 2, v49);

  return 0;
}

- (IBPDeepFusionProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int)getTuning:(id)tuning
{
  tuningCopy = tuning;
  v6 = objc_opt_new();
  tuningParams = self->_tuningParams;
  selfCopy = self;
  self->_tuningParams = v6;

  v10 = objc_msgSend_objectForKeyedSubscript_(tuningCopy, v8, @"DefaultSensorIDs", v9);
  v11 = v10;
  if (!v10)
  {
    sub_2958ACAF4();
LABEL_38:
    v114 = -1;
    goto LABEL_39;
  }

  v126 = v10;
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v12 = v10;
  v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v139, v138, 16);
  if (!v132)
  {
    goto LABEL_26;
  }

  v129 = v12;
  v131 = *v140;
  while (2)
  {
    for (i = 0; i != v132; ++i)
    {
      if (*v140 != v131)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v139 + 1) + 8 * i);
      v18 = objc_msgSend_objectForKeyedSubscript_(v12, v14, v17, v15);
      v21 = objc_msgSend_objectForKeyedSubscript_(tuningCopy, v19, v17, v20);
      v24 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v18, v23);
      v27 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"DeepFusionParameters", v26);

      if (v27)
      {
        v137 = v18;
        v28 = tuningCopy;
        v29 = objc_opt_new();
        v30 = objc_opt_new();
        v33 = objc_msgSend_objectForKeyedSubscript_(v27, v31, @"ToneMapping", v32);
        v36 = objc_msgSend_objectForKeyedSubscript_(v33, v34, @"DefaultParameters", v35);
        Plist = objc_msgSend_readPlist_(v30, v37, v36, v38);

        if (Plist)
        {
          sub_2958AC8F4(Plist, v30, v29);
          v11 = v126;
          tuningCopy = v28;
LABEL_33:
          v96 = v129;
          v18 = v137;
          goto LABEL_37;
        }

        v136 = v30;
        objc_storeStrong(v29 + 1, v30);
        v42 = objc_msgSend_objectForKeyedSubscript_(v27, v40, @"SemanticStyles", v41);
        v45 = objc_msgSend_objectForKeyedSubscript_(v42, v43, @"DefaultParameters", v44);

        if (v45)
        {
          v46 = objc_opt_new();
          v49 = objc_msgSend_objectForKeyedSubscript_(v27, v47, @"SemanticStyles", v48);
          v52 = objc_msgSend_objectForKeyedSubscript_(v49, v50, @"DefaultParameters", v51);
          v55 = objc_msgSend_readPlist_(v46, v53, v52, v54);

          tuningCopy = v28;
          if (v55)
          {
            sub_2958AC98C(v55, v46, v136, v29);
LABEL_32:
            v11 = v126;
            goto LABEL_33;
          }
        }

        else
        {
          v46 = 0;
          tuningCopy = v28;
        }

        v135 = v46;
        objc_storeStrong(v29 + 2, v46);
        v56 = objc_opt_new();
        v59 = objc_msgSend_objectForKeyedSubscript_(v27, v57, @"NoiseModel", v58);
        v62 = objc_msgSend_objectForKeyedSubscript_(v59, v60, @"DefaultParameters", v61);
        v65 = objc_msgSend_readPlist_(v56, v63, v62, v64);

        if (v65)
        {
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v65, v3, v122, v3, v126, 8, selfCopy, v129);
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v116, v119, v123);
        }

        else
        {
          objc_storeStrong(v29 + 4, v56);
          v66 = objc_opt_new();
          v69 = objc_msgSend_objectForKeyedSubscript_(v27, v67, @"DenoiseAndSharpening", v68);
          v70 = v66;
          objc_msgSend_objectForKeyedSubscript_(v69, v71, @"DefaultParameters", v72);
          v74 = v73 = v29;
          v77 = objc_msgSend_readPlist_(v70, v75, v74, v76);

          if (!v77)
          {
            v134 = v70;
            objc_storeStrong((v73 + 40), v70);
            v78 = objc_opt_new();
            v81 = objc_msgSend_objectForKeyedSubscript_(v27, v79, @"DeferredProcessing", v80);
            v84 = objc_msgSend_readPlist_(v78, v82, v81, v83);

            v18 = v137;
            if (v84)
            {
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v84, v3, v122, v3, v126, 8, selfCopy, v129);
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v118, v121, v125);

              v11 = v127;
              v96 = v130;
            }

            else
            {
              v133 = v56;
              objc_storeStrong((v73 + 48), v78);
              v87 = objc_msgSend_objectForKeyedSubscript_(tuningCopy, v85, v17, v86);
              v90 = objc_msgSend_objectForKeyedSubscript_(v87, v88, v137, v89);
              v93 = objc_msgSend_objectForKeyedSubscript_(v90, v91, @"ChromaticDefringing", v92);

              v96 = v129;
              if (!v93)
              {
LABEL_20:
                v105 = tuningCopy;
                v106 = selfCopy->_tuningParams;
                v143[0] = 0;
                v107 = objc_msgSend_scannerWithString_(MEMORY[0x29EDBA0E0], v94, v137, v95);
                v110 = objc_msgSend_scanHexInt_(v107, v108, v143, v109);

                if (v110)
                {
                  v113 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v111, v143[0], v112);
                }

                else
                {
                  v113 = 0;
                }

                objc_msgSend_setObject_forKeyedSubscript_(v106, v111, v73, v113);

                tuningCopy = v105;
                v12 = v129;
                goto LABEL_24;
              }

              v97 = [VideoDefringingTuningParameters alloc];
              v100 = objc_msgSend_initWithTuningParameters_(v97, v98, v93, v99);
              v103 = v100;
              if (v100)
              {
                if (!objc_msgSend_selectParametersForTuningMode_(v100, v101, 0, v102))
                {
                  v104 = *(v73 + 56);
                  *(v73 + 56) = v103;

                  goto LABEL_20;
                }

                sub_2958ACA34();
              }

              else
              {
                sub_2958ACA94();
              }

              v11 = v126;
            }

LABEL_37:

            goto LABEL_38;
          }

          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v77, v3, v122, v3, v126, 8, selfCopy, v129);
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v117, v120, v124);
        }

        goto LABEL_32;
      }

LABEL_24:
    }

    v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v139, v138, 16);
    if (v132)
    {
      continue;
    }

    break;
  }

LABEL_26:

  v114 = 0;
  v11 = v126;
LABEL_39:

  return v114;
}

- (DeepFusionProcessor)init
{
  v17.receiver = self;
  v17.super_class = DeepFusionProcessor;
  v2 = [(DeepFusionProcessor *)&v17 init];
  if (v2)
  {
    v3 = MEMORY[0x29EDB9F48];
    v4 = objc_opt_class();
    v7 = objc_msgSend_bundleForClass_(v3, v5, v4, v6);
    v8 = objc_alloc(MEMORY[0x29EDC0A40]);
    inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v8, v9, v7, 0);
    v2->_isShaderHarvesting = 1;
    if (objc_msgSend__commonInitWithContext_(v2, v11, inited, v12))
    {
      sub_295808C24();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v15, v16, v17.receiver, v17.super_class, v18, v19, v20, v21);
      v13 = 0;
    }

    else
    {
      v13 = v2;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end