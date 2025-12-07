@interface VFXMTLMorphDeformer
- (unint64_t)morphIncrementallyWithComputeContext:(id)context positions:(id)positions normals:(id)normals;
- (unint64_t)morphSparseWithComputeContext:(id)context positions:(id)positions normals:(id)normals;
- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers;
- (void)createSparseIndicesBufferForMorphTarget:(id *)target withSetupTarget:(id *)setupTarget indicesBuffer:(char *)buffer indicesBufferOffset:(unint64_t)offset indexSize:(unint64_t)size originalToFirstDeindexedTable:(unsigned int *)table computeContext:(id)context;
- (void)createVertexBufferForMorphTarget:(id *)target withSetupTarget:(id *)setupTarget vertexBuffer:(char *)buffer vertexBufferOffset:(unint64_t)offset indicesBuffer:(char *)indicesBuffer indicesBufferOffset:(unint64_t)bufferOffset indexSize:(unint64_t)size originalToFirstDeindexedTable:(unsigned int *)self0 computeContext:(id)self1;
- (void)dealloc;
- (void)setupMorphTargetsWithComputeContext:(id)context;
@end

@implementation VFXMTLMorphDeformer

- (void)dealloc
{
  morpher = self->_morpher;
  if (morpher)
  {
    CFRelease(morpher);
    self->_morpher = 0;
  }

  free(self->_runtimeMorphTargets);
  v4.receiver = self;
  v4.super_class = VFXMTLMorphDeformer;
  [(VFXMTLMorphDeformer *)&v4 dealloc];
}

- (void)setupMorphTargetsWithComputeContext:(id)context
{
  selfCopy = self;
  v5 = sub_1AF1B669C(self->_morpher, a2);
  v6 = sub_1AF170774(v5);
  v7 = v6;
  contextCopy = context;
  if (v6)
  {
    v8 = sub_1AF170784(v5);
    if (v8)
    {
      cf = v8;
LABEL_11:
      v12 = 0;
      goto LABEL_12;
    }

    v13 = sub_1AF0D5194(0, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE32D0(v13, v14, v15, v16, v17, v18, v19, v20);
    }

LABEL_10:
    cf = 0;
    goto LABEL_11;
  }

  v10 = sub_1AF170740(v5);
  if (!v10)
  {
    v21 = sub_1AF0D5194(0, v11);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE3258(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    goto LABEL_10;
  }

  v12 = v10;
  cf = 0;
LABEL_12:
  v30 = sub_1AF15B294(selfCopy->_morpher);
  if (!v30)
  {
    v31 = sub_1AF0D5194(0, v29);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  v286 = sub_1AF1B4CCC(v30) == 0;
  v40 = sub_1AF1B58F8(v30, v39);
  if (v40)
  {
    finalMeshDataKind = 0;
    v42 = 43;
    v43 = 22;
    v44 = 1;
  }

  else
  {
    v44 = 0;
    finalMeshDataKind = selfCopy->_finalMeshDataKind;
    v43 = 8;
    v42 = 8;
  }

  if (!selfCopy->_morphNormals)
  {
    v43 = 0;
  }

  selfCopy->_morphKind = v44;
  selfCopy->_dataKindForComputeKernel = finalMeshDataKind;
  selfCopy->_basePositionDataType = 8;
  selfCopy->_baseNormalDataType = v43;
  selfCopy->_morphTargetPositionDataType = v42;
  v285 = selfCopy;
  selfCopy->_morphTargetNormalDataType = v43;
  v278 = sub_1AF15B294(v30);
  Count = CFArrayGetCount(v278);
  v47 = Count;
  if (!Count)
  {
    v48 = sub_1AF0D5194(Count, v46);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE3348(v48, v46, v49, v50, v51, v52, v53, v54);
    }
  }

  v276 = v30;
  v298[0] = 0;
  if (v7)
  {
    v281 = 0;
    v55 = 0;
    v56 = 0;
    v57 = cf;
    v58 = cf;
  }

  else
  {
    v57 = sub_1AF1A4604(v12, 0, 0, selfCopy->_finalMeshDataKind);
    v55 = sub_1AF1A4F94(v12, v298);
    v281 = sub_1AF1A4FA8(v12);
    v59 = sub_1AF1A4604(v12, 0, 0, selfCopy->_dataKindForComputeKernel);
    if (!v59)
    {
      v60 = sub_1AF0D5194(0, v46);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE33C0(v60, v46, v61, v62, v63, v64, v65, v66);
      }
    }

    if (selfCopy->_morphNormals)
    {
      v67 = sub_1AF1A4604(v12, 1, 0, selfCopy->_dataKindForComputeKernel);
      if (v67)
      {
        v58 = v59;
        v56 = v67;
      }

      else
      {
        v69 = sub_1AF27D340(v12, selfCopy->_dataKindForComputeKernel, 0);
        if (!v69)
        {
          v70 = sub_1AF0D5194(0, v68);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE2928(v70, v71, v72, v73, v74, v75, v76, v77);
          }
        }

        CFAutorelease(v69);
        v58 = v59;
        v56 = v69;
      }
    }

    else
    {
      v58 = v59;
      v56 = 0;
    }
  }

  selfCopy->_vertexCountForComputeKernel = sub_1AF1AE6EC(v58, v46);
  selfCopy->_finalMeshVertexCount = sub_1AF1AE6EC(v57, v78);
  v79 = malloc_type_malloc(40 * v47, 0x10600401818AB88uLL);
  v294[0] = MEMORY[0x1E69E9820];
  v294[1] = 3221225472;
  v294[2] = sub_1AF1E8B4C;
  v294[3] = &unk_1E7A7C338;
  v296 = v40;
  v294[4] = selfCopy;
  v294[5] = v12;
  v294[6] = v58;
  v294[7] = v56;
  v295 = v298[0];
  v297 = v286;
  v294[8] = v55;
  v294[9] = v5;
  v294[10] = v79;
  sub_1AF28A5FC(v278, v294);
  runtimeMorphTargetCount = selfCopy->_runtimeMorphTargetCount;
  if (runtimeMorphTargetCount)
  {
    selfCopy->_runtimeMorphTargets = malloc_type_malloc(32 * runtimeMorphTargetCount, 0x100004017768742uLL);
    v82 = sub_1AF288070(selfCopy->_morphTargetPositionDataType, v81);
    v84 = sub_1AF288070(selfCopy->_morphTargetNormalDataType, v83);
    v85 = sub_1AFDE78C8(&selfCopy->_resourceManager->super.isa);
    v277 = v79;
    if (sub_1AF1F32D4(v85, v86, v87))
    {
      v89 = (v84 + ((v82 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      v89 = v84 + v82;
    }

    v287 = v89;
    v92 = selfCopy->_vertexCountForComputeKernel - 1;
    v93 = 1;
    if (v92 > 0xFF)
    {
      v93 = 2;
    }

    v94 = HIWORD(v92);
    if (HIWORD(v92))
    {
      v93 = 4;
    }

    v280 = v93;
    sub_1AF1F19D4(selfCopy->_morphTargetPositionDataType, v88);
    v274 = v56;
    v275 = v58;
    if (selfCopy->_runtimeMorphTargetCount)
    {
      v95 = 0;
      v96 = 0;
      v97 = 0;
      if (v94)
      {
        v98 = 2;
      }

      else
      {
        v98 = v92 > 0xFF;
      }

      v99 = v277 + 4;
      do
      {
        Alignment = MTLDataTypeGetAlignment();
        v101 = *v99;
        if (*v99 != selfCopy->_vertexCountForComputeKernel)
        {
          v102 = MTLDataTypeGetAlignment();
          v97 = ((v97 + v102 - 1) & -v102) + (*v99 << v98);
        }

        v96 = ((v96 + Alignment - 1) & -Alignment) + v101 * v287;
        ++v95;
        v99 += 5;
      }

      while (v95 < selfCopy->_runtimeMorphTargetCount);
      v282 = malloc_type_malloc(v96, 0x100004077774924uLL);
      if (v97)
      {
        v103 = malloc_type_malloc(v97, 0x100004077774924uLL);
      }

      else
      {
        v103 = 0;
      }

      v94 = HIWORD(v92);
    }

    else
    {
      v282 = malloc_type_malloc(0, 0x100004077774924uLL);
      v96 = 0;
      v97 = 0;
      v103 = 0;
    }

    v283 = v103;
    v273 = v97;
    if (selfCopy->_runtimeMorphTargetCount)
    {
      v104 = 0;
      v105 = 0;
      v106 = 0;
      if (v94)
      {
        v107 = 2;
      }

      else
      {
        v107 = v92 > 0xFF;
      }

      v108 = 4;
      v109 = v277;
      do
      {
        v110 = (&selfCopy->_runtimeMorphTargets->var0 + v108);
        *v110 = *v109;
        v111 = MTLDataTypeGetAlignment();
        v112 = (v105 + v111 - 1) & -v111;
        v113 = MTLDataTypeGetAlignment();
        v114 = (v106 + v113 - 1) & -v113;
        objc_msgSend_createVertexBufferForMorphTarget_withSetupTarget_vertexBuffer_vertexBufferOffset_indicesBuffer_indicesBufferOffset_indexSize_originalToFirstDeindexedTable_computeContext_(selfCopy, v115, (v110 - 1), v109, v282, v112, v283, v114, v280, v281, contextCopy);
        v116 = v109[4];
        if (v116 == selfCopy->_vertexCountForComputeKernel)
        {
          v117 = 0;
        }

        else
        {
          v117 = v116 << v107;
        }

        CFRelease(v109[2]);
        v118 = v109[3];
        if (v118)
        {
          CFRelease(v118);
          v109[3] = 0;
        }

        v105 = v112 + v116 * v287;
        v106 = v117 + v114;
        ++v104;
        selfCopy = v285;
        v108 += 32;
        v109 += 5;
      }

      while (v104 < v285->_runtimeMorphTargetCount);
    }

    else
    {
      v106 = 0;
      v105 = 0;
    }

    free(v277);
    v91 = contextCopy;
    resourceManager = v285->_resourceManager;
    v122 = objc_msgSend_currentBlitEncoder(contextCopy, v120, v121);
    v123 = resourceManager;
    selfCopy = v285;
    v285->_morphTargetsVertexBuffer = sub_1AFDE847C(v123, v282, v96, v122);
    free(v282);
    if (v283)
    {
      v126 = v285->_resourceManager;
      v127 = objc_msgSend_currentBlitEncoder(contextCopy, v90, v125);
      v128 = v126;
      selfCopy = v285;
      v285->_morphTargetsSparseIndicesBuffer = sub_1AFDE847C(v128, v283, v273, v127);
      free(v283);
    }

    v56 = v274;
    if (v105 != v96)
    {
      v129 = sub_1AF0D5194(v124, v90);
      v124 = os_log_type_enabled(v129, OS_LOG_TYPE_FAULT);
      if (v124)
      {
        sub_1AFDE3438(v129, v90, v130, v131, v132, v133, v134, v135);
      }
    }

    v136 = v106 == v273;
    v58 = v275;
    if (!v136)
    {
      v137 = sub_1AF0D5194(v124, v90);
      if (os_log_type_enabled(v137, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE34B0(v137, v90, v138, v139, v140, v141, v142, v143);
      }
    }
  }

  else
  {
    free(v79);
    v91 = contextCopy;
  }

  v292 = 0;
  v293 = 0;
  v291 = 0;
  LOBYTE(v272) = 1;
  selfCopy->_baseBufferForComputeKernel = objc_msgSend_newBufferForDataKind_positionSource_normalSource_positionDataType_normalDataType_forStageInputOutputDescriptor_usePrivateStorageMode_outStride_outPositionOffset_outNormalOffset_(v91, v90, selfCopy->_dataKindForComputeKernel, v58, v56, selfCopy->_basePositionDataType, selfCopy->_baseNormalDataType, 1, v272, &v293, &v292, &v291);
  v145 = sub_1AF288070(selfCopy->_morphTargetPositionDataType, v144);
  v147 = sub_1AF288070(selfCopy->_morphTargetNormalDataType, v146);
  v148 = sub_1AFDE78C8(&selfCopy->_resourceManager->super.isa);
  if (sub_1AF1F32D4(v148, v149, v150))
  {
    v145 = (v145 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v152 = (v147 + v145 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v152 = v147 + v145;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v153 = sub_1AF1B5B9C(v276, v151);
  if (v153)
  {
    sub_1AF28A5FC(v278, &unk_1F24E86C0);
  }

  morphKind = selfCopy->_morphKind;
  if (!morphKind)
  {
    LOBYTE(v290) = selfCopy->_morphNormals;
    v160 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v160, v170, &v290, 53, @"morphNormal");
    v172 = 45;
    if (selfCopy->_morphNormals)
    {
      v172 = 78;
    }

    v173 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v171, @"%c", v172);
    v176 = objc_alloc_init(MEMORY[0x1E6974188]);
    v177 = 0;
    do
    {
      v178 = objc_msgSend_layouts(v176, v174, v175);
      v179 = v177 + 1;
      v181 = objc_msgSend_objectAtIndexedSubscript_(v178, v180, v177 + 1);
      objc_msgSend_setStepFunction_(v181, v182, 5);
      objc_msgSend_setStride_(v181, v183, v152);
      v186 = objc_msgSend_attributes(v176, v184, v185);
      v188 = objc_msgSend_objectAtIndexedSubscript_(v186, v187, v177);
      v190 = sub_1AF1F1A28(selfCopy->_morphTargetPositionDataType, v189);
      objc_msgSend_setFormat_(v188, v191, v190);
      objc_msgSend_setOffset_(v188, v192, 0);
      objc_msgSend_setBufferIndex_(v188, v193, v177 + 1);
      if (v290 == 1)
      {
        v194 = objc_msgSend_attributes(v176, v174, v175);
        v196 = objc_msgSend_objectAtIndexedSubscript_(v194, v195, v177 + 16);
        v198 = sub_1AF1F1A28(selfCopy->_morphTargetNormalDataType, v197);
        objc_msgSend_setFormat_(v196, v199, v198);
        objc_msgSend_setOffset_(v196, v200, v145);
        objc_msgSend_setBufferIndex_(v196, v201, v179);
      }

      v177 = v179;
    }

    while (v179 != 8);
    selfCopy->_incrementalInitPipeline = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v174, @"blend_inc_init_8x_generic", v176, 0, v160, v173);
    selfCopy->_incrementalAddPipeline = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v202, @"blend_inc_add_8x_generic", v176, 0, v160, v173);

    goto LABEL_140;
  }

  if (morphKind == 1)
  {
    v289 = 0;
    v290 = 0;
    if (!selfCopy->_dataKindForComputeKernel && selfCopy->_finalMeshDataKind == 1 && v281)
    {
      v157 = objc_msgSend_currentBlitEncoder(v91, v154, v155);
      selfCopy->_originalToFirstDeindexedTableBuffer = objc_msgSend_originalToFirstDeindexedTableBufferWithBlitEncoder_indexSizeOut_(v91, v158, v157, &v290);
      selfCopy->_deindexedToFirstDeindexedTableBuffer = objc_msgSend_deindexedToFirstDeindexedTableBufferWithBlitEncoder_indexSizeOut_(v91, v159, v157, &v289);
    }

    morphNormals = selfCopy->_morphNormals;
    v160 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v160, v161, &morphNormals, 53, @"morphNormal");
    v163 = 45;
    if (selfCopy->_morphNormals)
    {
      v163 = 78;
    }

    v164 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v162, @"%c", v163);
    v166 = v164;
    if (selfCopy->_originalToFirstDeindexedTableBuffer)
    {
      switch(v290)
      {
        case 1:
          v167 = 0;
          v168 = @"copy_indexed_u8_generic";
          v169 = @"blend_indexed_u8_generic";
          goto LABEL_113;
        case 4:
          v167 = 0;
          v168 = @"copy_indexed_u32_generic";
          v169 = @"blend_indexed_u32_generic";
          goto LABEL_113;
        case 2:
          v167 = 0;
          v168 = @"copy_indexed_u16_generic";
          v169 = @"blend_indexed_u16_generic";
LABEL_113:
          v205 = objc_alloc_init(MEMORY[0x1E6974188]);
          v208 = objc_msgSend_layouts(v205, v206, v207);
          v210 = objc_msgSend_objectAtIndexedSubscript_(v208, v209, 1);
          objc_msgSend_setStepFunction_(v210, v211, 5);
          objc_msgSend_setStride_(v210, v212, v293);
          v215 = objc_msgSend_attributes(v205, v213, v214);
          v217 = objc_msgSend_objectAtIndexedSubscript_(v215, v216, 0);
          v219 = sub_1AF1F1A28(selfCopy->_basePositionDataType, v218);
          objc_msgSend_setFormat_(v217, v220, v219);
          objc_msgSend_setOffset_(v217, v221, v292);
          objc_msgSend_setBufferIndex_(v217, v222, 1);
          if (selfCopy->_morphNormals)
          {
            v225 = objc_msgSend_attributes(v205, v223, v224);
            v227 = objc_msgSend_objectAtIndexedSubscript_(v225, v226, 1);
            v229 = sub_1AF1F1A28(selfCopy->_baseNormalDataType, v228);
            objc_msgSend_setFormat_(v227, v230, v229);
            objc_msgSend_setOffset_(v227, v231, v291);
            objc_msgSend_setBufferIndex_(v227, v232, 1);
          }

          selfCopy->_copyBaseBufferPipeline = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v223, v168, v205, 0, v160, v166);
          objc_msgSend_reset(v205, v233, v234);
          v237 = objc_msgSend_layouts(v205, v235, v236);
          v239 = objc_msgSend_objectAtIndexedSubscript_(v237, v238, 1);
          objc_msgSend_setStepFunction_(v239, v240, 5);
          objc_msgSend_setStride_(v239, v241, v152);
          v244 = objc_msgSend_attributes(v205, v242, v243);
          v246 = objc_msgSend_objectAtIndexedSubscript_(v244, v245, 0);
          v248 = sub_1AF1F1A28(selfCopy->_morphTargetPositionDataType, v247);
          objc_msgSend_setFormat_(v246, v249, v248);
          objc_msgSend_setOffset_(v246, v250, 0);
          objc_msgSend_setBufferIndex_(v246, v251, 1);
          if (morphNormals)
          {
            v254 = objc_msgSend_attributes(v205, v252, v253);
            v256 = objc_msgSend_objectAtIndexedSubscript_(v254, v255, 1);
            v258 = sub_1AF1F1A28(selfCopy->_morphTargetNormalDataType, v257);
            objc_msgSend_setFormat_(v256, v259, v258);
            objc_msgSend_setOffset_(v256, v260, v145);
            objc_msgSend_setBufferIndex_(v256, v261, 1);
          }

          selfCopy->_blendDensePipeline = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v252, @"blend_generic", v205, 0, v160, v166);
          if ((v167 & 1) == 0)
          {
            selfCopy->_blendDenseIndexedPipeline = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v262, v169, v205, 0, v160, v166);
          }

          v263 = selfCopy->_vertexCountForComputeKernel - 1;
          v264 = 1;
          if (v263 > 0xFF)
          {
            v264 = 2;
          }

          v136 = HIWORD(v263) == 0;
          v265 = 4;
          if (v136)
          {
            v265 = v264;
          }

          if (v265 == 1)
          {
            updated = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v262, @"blend_indexed_u8_generic", v205, 0, v160, v166);
          }

          else if (v265 == 4)
          {
            updated = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v262, @"blend_indexed_u32_generic", v205, 0, v160, v166);
          }

          else
          {
            updated = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(selfCopy->_resourceManager, v262, @"blend_indexed_u16_generic", v205, 0, v160, v166);
          }

          selfCopy->_blendSparsePipeline = updated;

          if (selfCopy->_deindexedToFirstDeindexedTableBuffer)
          {
            switch(v289)
            {
              case 1:
                v269 = objc_msgSend_computePipelineStateForKernel_constants_constantsHash_(selfCopy->_resourceManager, v268, @"splat_indexed_s8_vertices", v160, v166);
                break;
              case 4:
                v269 = objc_msgSend_computePipelineStateForKernel_constants_constantsHash_(selfCopy->_resourceManager, v268, @"splat_indexed_s32_vertices", v160, v166);
                break;
              case 2:
                v269 = objc_msgSend_computePipelineStateForKernel_constants_constantsHash_(selfCopy->_resourceManager, v268, @"splat_indexed_s16_vertices", v160, v166);
                break;
              default:
                v270 = sub_1AF0D5194(v267, v268);
                if (os_log_type_enabled(v270, OS_LOG_TYPE_ERROR))
                {
                  sub_1AFDE3528();
                }

                v269 = objc_msgSend_computePipelineStateForKernel_constants_constantsHash_(selfCopy->_resourceManager, v271, 0, v160, v166);
                break;
            }

            selfCopy->_splatPipeline = v269;
          }

LABEL_140:

          return;
      }

      v204 = sub_1AF0D5194(v164, v165);
      if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE3528();
      }
    }

    v169 = 0;
    v168 = @"copy_generic";
    v167 = 1;
    goto LABEL_113;
  }

  v203 = sub_1AF0D5194(v153, v154);
  if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE355C();
  }
}

- (void)createVertexBufferForMorphTarget:(id *)target withSetupTarget:(id *)setupTarget vertexBuffer:(char *)buffer vertexBufferOffset:(unint64_t)offset indicesBuffer:(char *)indicesBuffer indicesBufferOffset:(unint64_t)bufferOffset indexSize:(unint64_t)size originalToFirstDeindexedTable:(unsigned int *)self0 computeContext:(id)self1
{
  v69 = 0u;
  v70 = 0u;
  SparseIndicesBufferForMorphTarget_withSetupTarget_indicesBuffer_indicesBufferOffset_indexSize_originalToFirstDeindexedTable_computeContext = sub_1AF1AE1A8(setupTarget->var2, a2, &v69);
  v67 = 0u;
  v68 = 0u;
  if (self->_morphNormals)
  {
    SparseIndicesBufferForMorphTarget_withSetupTarget_indicesBuffer_indicesBufferOffset_indexSize_originalToFirstDeindexedTable_computeContext = sub_1AF1AE1A8(setupTarget->var3, v19, &v67);
  }

  v20 = v70;
  target->var2 = setupTarget->var4;
  if (self->_morphKind == 1)
  {
    SparseIndicesBufferForMorphTarget_withSetupTarget_indicesBuffer_indicesBufferOffset_indexSize_originalToFirstDeindexedTable_computeContext = objc_msgSend_createSparseIndicesBufferForMorphTarget_withSetupTarget_indicesBuffer_indicesBufferOffset_indexSize_originalToFirstDeindexedTable_computeContext_(self, v19, target, setupTarget, indicesBuffer, bufferOffset, size, table, context);
  }

  else
  {
    target->var4 = 0;
  }

  morphTargetPositionDataType = self->_morphTargetPositionDataType;
  if (morphTargetPositionDataType == 22)
  {
    if (self->_morphKind != 1)
    {
      v22 = sub_1AF0D5194(SparseIndicesBufferForMorphTarget_withSetupTarget_indicesBuffer_indicesBufferOffset_indexSize_originalToFirstDeindexedTable_computeContext, v19);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE3680(v22, v19, v23, v24, v25, v26, v27, v28);
      }
    }

    v29 = vmaxvq_f32(sub_1AF1AEB70(setupTarget->var2, v19));
    LOWORD(morphTargetPositionDataType) = self->_morphTargetPositionDataType;
    v66 = 1.0 / v29;
  }

  else
  {
    v66 = 1.0;
    v29 = 1.0;
  }

  target->var0 = v29;
  v30 = sub_1AF288070(morphTargetPositionDataType, v19);
  v32 = sub_1AF288070(self->_morphTargetNormalDataType, v31);
  v33 = v32 + v30;
  v34 = sub_1AFDE78C8(&self->_resourceManager->super.isa);
  v37 = sub_1AF1F32D4(v34, v35, v36);
  if (v37)
  {
    v33 = (v32 + ((v30 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v42 = (v30 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v42 = v30;
  }

  v43 = v33 * target->var2;
  v44 = &buffer[offset];
  if (self->_morphKind == 1)
  {
    if (self->_morphNormals)
    {
      if (v20)
      {
        v45 = 0;
        v46 = &buffer[offset];
        do
        {
          *v47.i64 = sub_1AF279750(BYTE4(v70), (v69 + v45 * BYTE6(v70)), v39, v40.f32[0], v41.f32[0]);
          v64 = v47;
          *v50.i64 = sub_1AF279750(BYTE4(v68), (v67 + v45 * BYTE6(v68)), v47, v48, v49);
          v41 = v50;
          v40.i64[0] = 0x3400000034000000;
          v40.i64[1] = 0x3400000034000000;
          if ((vminvq_u32(vcgeq_f32(v40, vabsq_f32(v64))) & 0x80000000) == 0 || (v39 = vcgeq_f32(v40, vabsq_f32(v50)), v39.i32[0] = vminvq_u32(v39), (v39.i32[0] & 0x80000000) == 0))
          {
            v51 = vmulq_n_f32(v64, v66);
            v65 = v41;
            sub_1AF279B88(self->_morphTargetPositionDataType, v46, v51);
            sub_1AF279B88(self->_morphTargetNormalDataType, &v46[v42], v65);
            v46 += v33;
          }

          ++v45;
        }

        while (v20 != v45);
        goto LABEL_37;
      }

LABEL_36:
      v46 = &buffer[offset];
      goto LABEL_37;
    }

    if (!v20)
    {
      goto LABEL_36;
    }

    v55 = 0;
    v46 = &buffer[offset];
    do
    {
      *v39.i64 = sub_1AF279750(BYTE4(v70), (v69 + v55 * BYTE6(v70)), v39, v40.f32[0], v41.f32[0]);
      v41.i64[0] = 0x3400000034000000;
      v41.i64[1] = 0x3400000034000000;
      v40.i32[0] = vminvq_u32(vcgeq_f32(v41, vabsq_f32(v39)));
      if ((v40.i32[0] & 0x80000000) == 0)
      {
        sub_1AF279B88(self->_morphTargetPositionDataType, v46, vmulq_n_f32(v39, v66));
        v46 += v33;
      }

      ++v55;
    }

    while (v20 != v55);
  }

  else
  {
    if (!v20)
    {
      goto LABEL_36;
    }

    v52 = 0;
    v46 = &buffer[offset];
    do
    {
      *v53.i64 = sub_1AF279750(BYTE4(v70), (v69 + v52 * BYTE6(v70)), v39, v40.f32[0], v41.f32[0]);
      sub_1AF279B88(self->_morphTargetPositionDataType, v46, vmulq_n_f32(v53, v66));
      if (self->_morphNormals)
      {
        *v54.i64 = sub_1AF279750(BYTE4(v68), (v67 + v52 * BYTE6(v68)), v39, v40.f32[0], v41.f32[0]);
        sub_1AF279B88(self->_morphTargetNormalDataType, &v46[v42], v54);
      }

      v46 += v33;
      ++v52;
    }

    while (v20 != v52);
  }

LABEL_37:
  if (v46 != &v44[v43])
  {
    v56 = sub_1AF0D5194(v37, v38);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE36F8(v56, v57, v58, v59, v60, v61, v62, v63);
    }
  }

  target->var3 = offset;
}

- (void)createSparseIndicesBufferForMorphTarget:(id *)target withSetupTarget:(id *)setupTarget indicesBuffer:(char *)buffer indicesBufferOffset:(unint64_t)offset indexSize:(unint64_t)size originalToFirstDeindexedTable:(unsigned int *)table computeContext:(id)context
{
  targetCopy = target;
  if (target->var2 == self->_vertexCountForComputeKernel)
  {
    target->var3 = 0;
    target->var4 = 0;
    return;
  }

  var3 = setupTarget->var3;
  if (self->_dataKindForComputeKernel)
  {
    v16 = 0;
  }

  else
  {
    if (table)
    {
      v17 = self->_finalMeshDataKind == 1;
    }

    else
    {
      v17 = 0;
    }

    v16 = v17;
  }

  v97 = 0u;
  v98 = 0u;
  sub_1AF1AE1A8(setupTarget->var2, a2, &v97);
  v95 = 0u;
  v96 = 0u;
  if (var3)
  {
    sub_1AF1AE1A8(setupTarget->var3, v18, &v95);
  }

  v19 = &buffer[offset];
  if (size == 1)
  {
    v20 = &buffer[offset];
  }

  else
  {
    v20 = 0;
  }

  if (size == 2)
  {
    v21 = &buffer[offset];
  }

  else
  {
    v21 = 0;
  }

  if (size == 4)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  var1 = setupTarget->var1;
  v24 = sub_1AF1A3CCC(var1, v18);
  if (v24 >= 1)
  {
    v29 = sub_1AF1A3D1C(var1, 0, 0);
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v30 = sub_1AF1A767C(v29, 0, &v91);
    offsetCopy = offset;
    v83 = targetCopy;
    if (var3)
    {
      if (v92)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        while (1)
        {
          v90 = 0;
          v86 = v91;
          v87 = v92;
          v88 = v93;
          v89 = v94;
          sub_1AF1AE9B0(&v86, v32, &v90 + 1, &v90);
          v38 = v90;
          for (i = HIDWORD(v90); i < v38; ++i)
          {
            *v40.i64 = sub_1AF279750(BYTE4(v98), (v97 + v33 * BYTE6(v98)), v35, v36.f32[0], v37.f32[0]);
            v84 = v40;
            *v35.i64 = sub_1AF279750(BYTE4(v96), (v95 + v33 * BYTE6(v96)), v40, v41, v42);
            v37.i64[0] = 0x3400000034000000;
            v37.i64[1] = 0x3400000034000000;
            v36.i32[0] = vminvq_u32(vcgeq_f32(v37, vabsq_f32(v84)));
            if ((v36.i32[0] & 0x80000000) == 0 || (v36.i64[0] = 0x3400000034000000, v36.i64[1] = 0x3400000034000000, v35 = vcgeq_f32(v36, vabsq_f32(v35)), v35.i32[0] = vminvq_u32(v35), (v35.i32[0] & 0x80000000) == 0))
            {
              if (v16)
              {
                v43 = table[i];
                if (v20)
                {
                  goto LABEL_31;
                }

LABEL_33:
                v20 = 0;
                if (v21)
                {
                  *v21 = v43;
                  v21 += 2;
                }

                else
                {
                  *v22++ = v43;
                }
              }

              else
              {
                v43 = i;
                if (!v20)
                {
                  goto LABEL_33;
                }

LABEL_31:
                *v20++ = v43;
              }

              ++v34;
              v38 = v90;
            }

            ++v33;
          }

          if (++v32 >= v92)
          {
            goto LABEL_73;
          }
        }
      }

      v34 = 0;
LABEL_73:
      targetCopy = v83;
      if (v34 == v83->var2)
      {
        goto LABEL_97;
      }

      v62 = sub_1AF0D5194(v30, v31);
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_97;
      }

LABEL_96:
      sub_1AFDE3770(v62, v63, v64, v65, v66, v67, v68, v69);
LABEL_97:
      offsetCopy3 = offsetCopy;
      goto LABEL_98;
    }

    if (!v92)
    {
      v54 = 0;
LABEL_94:
      targetCopy = v83;
      if (v54 == v83->var2)
      {
        goto LABEL_97;
      }

      v62 = sub_1AF0D5194(v30, v31);
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }

    v52 = 0;
    v53 = 0;
    v54 = 0;
LABEL_58:
    v90 = 0;
    v86 = v91;
    v87 = v92;
    v88 = v93;
    v89 = v94;
    sub_1AF1AE9B0(&v86, v52, &v90 + 1, &v90);
    v58 = v90;
    for (j = HIDWORD(v90); ; ++j)
    {
      if (j >= v58)
      {
        if (++v52 >= v92)
        {
          goto LABEL_94;
        }

        goto LABEL_58;
      }

      *v60.i64 = sub_1AF279750(BYTE4(v98), (v97 + v53 * BYTE6(v98)), v55, v56.f32[0], v57);
      v56.i64[0] = 0x3400000034000000;
      v56.i64[1] = 0x3400000034000000;
      v55 = vcgeq_f32(v56, vabsq_f32(v60));
      v55.i32[0] = vminvq_u32(v55);
      if ((v55.i32[0] & 0x80000000) == 0)
      {
        break;
      }

LABEL_69:
      ++v53;
    }

    if (v16)
    {
      v61 = table[j];
      if (v20)
      {
LABEL_63:
        *v20++ = v61;
LABEL_68:
        ++v54;
        v58 = v90;
        goto LABEL_69;
      }
    }

    else
    {
      v61 = j;
      if (v20)
      {
        goto LABEL_63;
      }
    }

    v20 = 0;
    if (v21)
    {
      *v21 = v61;
      v21 += 2;
    }

    else
    {
      *v22++ = v61;
    }

    goto LABEL_68;
  }

  v44 = v98;
  if (!var3)
  {
    offsetCopy3 = offset;
    if (!v98)
    {
      v71 = 0;
LABEL_100:
      if (v71 == targetCopy->var2)
      {
        goto LABEL_98;
      }

      v74 = sub_1AF0D5194(v24, v25);
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_98;
      }

      goto LABEL_92;
    }

    v70 = 0;
    v71 = 0;
    while (1)
    {
      *v72.i64 = sub_1AF279750(BYTE4(v98), (v97 + v70 * BYTE6(v98)), v26, v27.f32[0], v28.f32[0]);
      v27.i64[0] = 0x3400000034000000;
      v27.i64[1] = 0x3400000034000000;
      v26 = vcgeq_f32(v27, vabsq_f32(v72));
      v26.i32[0] = vminvq_u32(v26);
      if ((v26.i32[0] & 0x80000000) == 0)
      {
        break;
      }

LABEL_87:
      if (v44 == ++v70)
      {
        goto LABEL_100;
      }
    }

    if (v16)
    {
      v73 = table[v70];
      if (v20)
      {
LABEL_81:
        *v20++ = v73;
LABEL_86:
        ++v71;
        goto LABEL_87;
      }
    }

    else
    {
      v73 = v70;
      if (v20)
      {
        goto LABEL_81;
      }
    }

    v20 = 0;
    if (v21)
    {
      *v21 = v73;
      v21 += 2;
    }

    else
    {
      *v22++ = v73;
    }

    goto LABEL_86;
  }

  offsetCopy3 = offset;
  if (v98)
  {
    v46 = 0;
    v47 = 0;
    while (1)
    {
      *v48.i64 = sub_1AF279750(BYTE4(v98), (v97 + v46 * BYTE6(v98)), v26, v27.f32[0], v28.f32[0]);
      v85 = v48;
      *v26.i64 = sub_1AF279750(BYTE4(v96), (v95 + v46 * BYTE6(v96)), v48, v49, v50);
      v28.i64[0] = 0x3400000034000000;
      v28.i64[1] = 0x3400000034000000;
      v27.i32[0] = vminvq_u32(vcgeq_f32(v28, vabsq_f32(v85)));
      if (v27.i32[0] < 0)
      {
        v27.i64[0] = 0x3400000034000000;
        v27.i64[1] = 0x3400000034000000;
        v26 = vcgeq_f32(v27, vabsq_f32(v26));
        v26.i32[0] = vminvq_u32(v26);
        if (v26.i32[0] < 0)
        {
          goto LABEL_54;
        }
      }

      if (v16)
      {
        v51 = table[v46];
        if (!v20)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v51 = v46;
        if (!v20)
        {
LABEL_50:
          v20 = 0;
          if (v21)
          {
            *v21 = v51;
            v21 += 2;
          }

          else
          {
            *v22++ = v51;
          }

          goto LABEL_53;
        }
      }

      *v20++ = v51;
LABEL_53:
      ++v47;
LABEL_54:
      if (v44 == ++v46)
      {
        goto LABEL_90;
      }
    }
  }

  v47 = 0;
LABEL_90:
  if (v47 == targetCopy->var2)
  {
    goto LABEL_98;
  }

  v74 = sub_1AF0D5194(v24, v25);
  if (!os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_98;
  }

LABEL_92:
  sub_1AFDE3770(v74, v75, v76, v77, v78, v79, v80, v81);
LABEL_98:
  targetCopy->var4 = offsetCopy3;
}

- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers
{
  v6 = objc_msgSend_currentFrameHash(context, a2, context);
  if (self->_currentFrameHash == v6)
  {
    return 0;
  }

  self->_currentFrameHash = v6;
  if (self->_morphKind == 1)
  {

    return MEMORY[0x1EEE66B58](self, sel_morphSparseWithComputeContext_positions_normals_, context);
  }

  else
  {

    return MEMORY[0x1EEE66B58](self, sel_morphIncrementallyWithComputeContext_positions_normals_, context);
  }
}

- (unint64_t)morphSparseWithComputeContext:(id)context positions:(id)positions normals:(id)normals
{
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0.0;
  v9 = sub_1AF1B6500(self->_morpher, self->_lastMorpherIncrementalPassState, &v56, &v55, &v57, &v54);
  if (!v9)
  {
    return 0;
  }

  v12 = v9;
  v13 = objc_msgSend_currentComputeEncoder(context, v10, v11);
  objc_msgSend_resetCache(v13, v14, v15);
  objc_msgSend_setBuffer_offset_atIndex_(v13, v16, positions, 0, 0);
  if (normals)
  {
    objc_msgSend_setBuffer_offset_atIndex_(v13, v17, normals, 0, 4);
  }

  if (v12 == 2)
  {
    objc_msgSend_setBuffer_offset_atIndex_(v13, v17, self->_baseBufferForComputeKernel, 0, 1);
    vertexCountForComputeKernel = self->_vertexCountForComputeKernel;
    v52[0] = 0.0;
    var2 = vertexCountForComputeKernel;
    objc_msgSend_setBytes_length_atIndex_(v13, v19, v52, 12, 3);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = var2;
    v51 = vdupq_n_s64(1uLL);
    objc_msgSend_setStageInRegion_(v13, v20, &v47);
    originalToFirstDeindexedTableBuffer = self->_originalToFirstDeindexedTableBuffer;
    if (originalToFirstDeindexedTableBuffer)
    {
      objc_msgSend_setBuffer_offset_atIndex_(v13, v21, originalToFirstDeindexedTableBuffer, 0, 2);
    }

    v23 = sub_1AFDE323C(self->_copyBaseBufferPipeline);
    objc_msgSend_dispatchOnVertices_vertexCount_(v13, v24, v23, var2);
    bzero(v56, 4 * v57);
  }

  if (self->_runtimeMorphTargetCount)
  {
    v25 = 0;
    v26 = 0;
    v46 = vdupq_n_s64(1uLL);
    do
    {
      runtimeMorphTargets = self->_runtimeMorphTargets;
      v28 = &runtimeMorphTargets[v25];
      var1 = runtimeMorphTargets[v25].var1;
      v30 = *&v55[4 * var1];
      v31 = *(v56 + var1);
      if (vabds_f32(v30, v31) > v54)
      {
        v52[0] = v30 - v31;
        v52[1] = (v30 - v31) * v28->var0;
        var2 = v28->var2;
        objc_msgSend_setBytes_length_atIndex_(v13, v17, v52, 12, 3);
        v32 = v28->var2;
        v33 = self->_vertexCountForComputeKernel;
        objc_msgSend_setBuffer_offset_atIndex_(v13, v34, self->_morphTargetsVertexBuffer, v28->var3, 1);
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = var2;
        v51 = v46;
        objc_msgSend_setStageInRegion_(v13, v35, &v47);
        if (v32 == v33)
        {
          v37 = self->_originalToFirstDeindexedTableBuffer;
          p_blendDensePipeline = &self->_blendDensePipeline;
          if (v37)
          {
            objc_msgSend_setBuffer_offset_atIndex_(v13, v36, v37, 0, 2);
            p_blendDensePipeline = &self->_blendDenseIndexedPipeline;
          }
        }

        else
        {
          objc_msgSend_setBuffer_offset_atIndex_(v13, v36, self->_morphTargetsSparseIndicesBuffer, runtimeMorphTargets[v25].var4, 2);
          p_blendDensePipeline = &self->_blendSparsePipeline;
        }

        v39 = sub_1AFDE323C(*p_blendDensePipeline);
        objc_msgSend_dispatchOnVertices_vertexCount_(v13, v40, v39, var2);
      }

      ++v26;
      ++v25;
    }

    while (v26 < self->_runtimeMorphTargetCount);
  }

  deindexedToFirstDeindexedTableBuffer = self->_deindexedToFirstDeindexedTableBuffer;
  if (deindexedToFirstDeindexedTableBuffer)
  {
    var2 = self->_finalMeshVertexCount;
    objc_msgSend_setBuffer_offset_atIndex_(v13, v17, deindexedToFirstDeindexedTableBuffer, 0, 2);
    objc_msgSend_setBytes_length_atIndex_(v13, v42, v52, 12, 3);
    v43 = sub_1AFDE323C(self->_splatPipeline);
    objc_msgSend_dispatchOnVertices_vertexCount_(v13, v44, v43, self->_finalMeshVertexCount);
  }

  self->_lastMorpherIncrementalPassState = sub_1AF1B6618(self->_morpher);
  return 1;
}

- (unint64_t)morphIncrementallyWithComputeContext:(id)context positions:(id)positions normals:(id)normals
{
  positionsCopy = positions;
  normalsCopy = normals;
  v86 = *MEMORY[0x1E69E9840];
  v83 = 0;
  v81 = 0;
  v82 = 0;
  v80 = 0.0;
  v7 = sub_1AF1B6500(self->_morpher, self->_lastMorpherIncrementalPassState, &v82, &v81, &v83, &v80);
  if (!v7)
  {
    return 0;
  }

  v10 = v7;
  v11 = objc_msgSend_currentComputeEncoder(context, v8, v9);
  v14 = objc_msgSend_resetCache(v11, v12, v13);
  v63[1] = v63;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v63 - v15);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v23 = (v63 - v22);
  v71 = v10 == 2;
  v24 = 1.0;
  v25 = v21;
  if (v10 == 2)
  {
    v24 = 0.0;
    if (v83)
    {
      bzero(v82, 4 * v83);
      v21 = v25;
    }
  }

  if (vabds_f32(1.0, v24) <= 0.00000011921)
  {
    v26 = 0;
  }

  else
  {
    *v16 = 1.0 - v24;
    *v21 = self->_baseBufferForComputeKernel;
    *v23 = 0;
    v26 = 1;
  }

  LODWORD(v28) = self->_runtimeMorphTargetCount;
  if (v83 != v28)
  {
    v29 = sub_1AF0D5194(v19, v20);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE37E8(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    LODWORD(v28) = self->_runtimeMorphTargetCount;
    v21 = v25;
  }

  if (v28)
  {
    v37 = v81;
    v38 = v82;
    v39 = v80;
    v28 = v28;
    p_var3 = &self->_runtimeMorphTargets->var3;
    do
    {
      v41 = *(p_var3 - 3);
      v42 = *&v37[4 * v41];
      v43 = v38[v41];
      if (vabds_f32(v42, v43) > v39)
      {
        v16[v26] = v42 - v43;
        v21[v26] = self->_morphTargetsVertexBuffer;
        v23[v26++] = *p_var3;
      }

      p_var3 += 4;
      --v28;
    }

    while (v28);
  }

  v66 = v11;
  memset(v78, 0, sizeof(v78));
  vertexCountForComputeKernel = self->_vertexCountForComputeKernel;
  memset(v85, 0, sizeof(v85));
  memset(&v84[4], 0, 32);
  v44 = 136;
  if (v10 == 2)
  {
    v44 = 128;
  }

  memset(v84, 0, 32);
  selfCopy = self;
  v70 = sub_1AFDE323C(*(&self->super.isa + v44));
  v67 = v26 + 7;
  if (v26 + 7 >= 8)
  {
    v46 = v25;
    v47 = 0;
    v48 = 0;
    v65 = v67 >> 3;
    p_baseBufferForComputeKernel = &selfCopy->_baseBufferForComputeKernel;
    do
    {
      v73 = v48;
      v50 = 0;
      v51 = v46;
      do
      {
        if (v47 + v50 >= v26)
        {
          v53 = 0;
          v52 = 0.0;
          v54 = p_baseBufferForComputeKernel;
        }

        else
        {
          v52 = v16[v50];
          v53 = v23[v50];
          v54 = v51;
        }

        v55 = *v54;
        *&v78[v50] = v52;
        *(v85 + v50) = v55;
        v84[v50++] = v53;
        ++v51;
      }

      while (v50 != 8);
      v74 = v46;
      v56 = v66;
      objc_msgSend_setBuffers_offsets_withRange_(v66, v45, v85, v84, 1, 8);
      objc_msgSend_setBuffer_offset_atIndex_(v56, v57, positionsCopy, 0, 10);
      if (normalsCopy)
      {
        objc_msgSend_setBuffer_offset_atIndex_(v56, v58, normalsCopy, 0, 11);
      }

      v72 = v67 < 0x10;
      objc_msgSend_setBytes_length_atIndex_(v56, v58, v78, 36, 12);
      memset(v75, 0, sizeof(v75));
      v76 = vertexCountForComputeKernel;
      v77 = vdupq_n_s64(1uLL);
      objc_msgSend_setStageInRegion_(v56, v59, v75);
      objc_msgSend_dispatchOnVertices_vertexCount_(v56, v60, v70, vertexCountForComputeKernel);
      v61 = v73;
      if (!v72 && v71)
      {
        v70 = sub_1AFDE323C(selfCopy->_incrementalAddPipeline);
        v71 = 0;
      }

      v16 += 8;
      v46 = v74 + 8;
      v23 += 8;
      v47 += 8;
      v48 = v61 + 1;
    }

    while (v61 + 1 != v65);
  }

  v62 = selfCopy;
  v62->_lastMorpherIncrementalPassState = sub_1AF1B6618(selfCopy->_morpher);
  return 1;
}

@end