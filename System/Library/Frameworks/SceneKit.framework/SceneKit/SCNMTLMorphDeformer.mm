@interface SCNMTLMorphDeformer
+ (uint64_t)supportedOutputsForMorpher:(uint64_t)morpher;
- (uint64_t)setNextFrameRequiresFullMeshReset;
- (unint64_t)morphIncrementallyWithComputeContext:(id)context positions:(id)positions normals:(id)normals;
- (unint64_t)morphSparseWithComputeContext:(id)context positions:(id)positions normals:(id)normals;
- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers;
- (void)createSparseIndicesBufferForMorphTarget:(id *)target withSetupTarget:(id *)setupTarget indicesBuffer:(char *)buffer indicesBufferOffset:(unint64_t)offset indexSize:(unint64_t)size originalToFirstDeindexedTable:(unsigned int *)table computeContext:(id)context;
- (void)createVertexBufferForMorphTarget:(id *)target withSetupTarget:(id *)setupTarget vertexBuffer:(char *)buffer vertexBufferOffset:(unint64_t)offset indicesBuffer:(char *)indicesBuffer indicesBufferOffset:(unint64_t)bufferOffset indexSize:(unint64_t)size originalToFirstDeindexedTable:(unsigned int *)self0 computeContext:(id)self1;
- (void)dealloc;
- (void)initWithMorpher:(char)morpher outputs:(char)outputs dataKind:(uint64_t)kind resourceManager:(uint64_t)manager computeContext:;
- (void)setupMorphTargetsWithComputeContext:(id)context;
@end

@implementation SCNMTLMorphDeformer

+ (uint64_t)supportedOutputsForMorpher:(uint64_t)morpher
{
  objc_opt_self();
  OverrideMaterial = C3DGeometryGetOverrideMaterial(a2);
  if (!C3DMorphGetMorphNormals(OverrideMaterial))
  {
    return 1;
  }

  if (C3DPreferencesGetBool(9))
  {
    return 1;
  }

  return 3;
}

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
  v4.super_class = SCNMTLMorphDeformer;
  [(SCNMTLMorphDeformer *)&v4 dealloc];
}

- (void)setupMorphTargetsWithComputeContext:(id)context
{
  BaseGeometry = C3DMorpherGetBaseGeometry(self->_morpher, a2);
  v7 = C3DGeometryUsesDeformerBasedDynamicMesh(BaseGeometry);
  if (v7)
  {
    PositionSourceForDeformerBasedDynamicMesh = C3DGeometryCreatePositionSourceForDeformerBasedDynamicMesh(BaseGeometry);
    if (PositionSourceForDeformerBasedDynamicMesh)
    {
      SourceWithSemanticAtIndex = PositionSourceForDeformerBasedDynamicMesh;
LABEL_11:
      v13 = 0;
      goto LABEL_12;
    }

    v14 = scn_default_log(0, v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLMorphDeformer *)v14 setupMorphTargetsWithComputeContext:v15, v16, v17, v18, v19, v20, v21];
    }

LABEL_10:
    SourceWithSemanticAtIndex = 0;
    goto LABEL_11;
  }

  Mesh = C3DGeometryGetMesh(BaseGeometry, v6);
  if (!Mesh)
  {
    v22 = scn_default_log(0, v12);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLMorphDeformer *)v22 setupMorphTargetsWithComputeContext:v23, v24, v25, v26, v27, v28, v29];
    }

    goto LABEL_10;
  }

  v13 = Mesh;
  SourceWithSemanticAtIndex = 0;
LABEL_12:
  OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_morpher);
  if (!OverrideMaterial)
  {
    v32 = scn_default_log(0, v30);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLMorphDeformer *)v32 setupMorphTargetsWithComputeContext:v33, v34, v35, v36, v37, v38, v39];
    }
  }

  v40 = C3DMorphGetCalculationMode(OverrideMaterial) == 0;
  IsUsingSparseTargets = C3DMorphIsUsingSparseTargets(OverrideMaterial, v41);
  if (IsUsingSparseTargets)
  {
    finalMeshDataKind = 0;
    v44 = 44;
    v45 = 23;
    v46 = 1;
  }

  else
  {
    v46 = 0;
    finalMeshDataKind = self->_finalMeshDataKind;
    v45 = 9;
    v44 = 9;
  }

  if (!self->_morphNormals)
  {
    v45 = 0;
  }

  self->_morphKind = v46;
  self->_dataKindForComputeKernel = finalMeshDataKind;
  self->_basePositionDataType = 9;
  self->_baseNormalDataType = v45;
  self->_morphTargetPositionDataType = v44;
  self->_morphTargetNormalDataType = v45;
  v193 = OverrideMaterial;
  v195 = C3DGeometryGetOverrideMaterial(OverrideMaterial);
  Count = CFArrayGetCount(v195);
  v49 = Count;
  if (!Count)
  {
    v50 = scn_default_log(Count, v48);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLMorphDeformer *)v50 setupMorphTargetsWithComputeContext:v48, v51, v52, v53, v54, v55, v56];
    }
  }

  v213[0] = 0;
  v57 = self->_finalMeshDataKind;
  selfCopy = self;
  contextCopy = context;
  v194 = SourceWithSemanticAtIndex;
  if (v7)
  {
    if (v57 != self->_dataKindForComputeKernel)
    {
      [SCNMTLMorphDeformer setupMorphTargetsWithComputeContext:];
    }

    PositionOriginalToFirstDeindexedTable = 0;
    PositionDeindexedToOriginalTable = 0;
    v59 = 0;
    v60 = SourceWithSemanticAtIndex;
  }

  else
  {
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(v13, 0, 0, v57);
    PositionDeindexedToOriginalTable = C3DMeshGetPositionDeindexedToOriginalTable(v13, v213);
    PositionOriginalToFirstDeindexedTable = C3DMeshGetPositionOriginalToFirstDeindexedTable(v13);
    v61 = C3DMeshGetSourceWithSemanticAtIndex(v13, 0, 0, self->_dataKindForComputeKernel);
    if (!v61)
    {
      v62 = scn_default_log(0, v48);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLMorphDeformer *)v62 setupMorphTargetsWithComputeContext:v48, v63, v64, v65, v66, v67, v68];
      }
    }

    if (self->_morphNormals)
    {
      v69 = C3DMeshGetSourceWithSemanticAtIndex(v13, 1, 0, self->_dataKindForComputeKernel);
      if (v69)
      {
        v60 = v61;
        v59 = v69;
      }

      else
      {
        v71 = C3DCreateNormalsWithMesh(v13, self->_dataKindForComputeKernel, 0);
        if (!v71)
        {
          v72 = scn_default_log(0, v70);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
          {
            [(SCNMTLDeformerStack *)v72 setupInitialBuffersWithBasePositionSourceProvider:v73 baseNormalSourceProvider:v74 baseTangentSourceProvider:v75 info:v76, v77, v78, v79];
          }
        }

        CFAutorelease(v71);
        v60 = v61;
        v59 = v71;
      }
    }

    else
    {
      v60 = v61;
      v59 = 0;
    }
  }

  selfCopy->_vertexCountForComputeKernel = C3DMeshSourceGetCount(v60, v48);
  selfCopy->_finalMeshVertexCount = C3DMeshSourceGetCount(SourceWithSemanticAtIndex, v80);
  v81 = malloc_type_malloc(40 * v49, 0x10600401818AB88uLL);
  v209[0] = MEMORY[0x277D85DD0];
  v209[1] = 3221225472;
  v209[2] = __59__SCNMTLMorphDeformer_setupMorphTargetsWithComputeContext___block_invoke;
  v209[3] = &unk_2782FD170;
  v211 = IsUsingSparseTargets;
  v209[4] = selfCopy;
  v209[5] = v13;
  v191 = v59;
  v192 = v60;
  v209[6] = v60;
  v209[7] = v59;
  v82 = selfCopy;
  v210 = v213[0];
  v212 = v40;
  v209[8] = PositionDeindexedToOriginalTable;
  v209[9] = v81;
  C3DCFArrayApplyBlock(v195, v209);
  runtimeMorphTargetCount = selfCopy->_runtimeMorphTargetCount;
  if (runtimeMorphTargetCount)
  {
    selfCopy->_runtimeMorphTargets = malloc_type_malloc(32 * runtimeMorphTargetCount, 0x100004017768742uLL);
    v85 = C3DSizeOfBaseType(selfCopy->_morphTargetPositionDataType, v84);
    v87 = C3DSizeOfBaseType(selfCopy->_morphTargetNormalDataType, v86);
    computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)selfCopy->_resourceManager computeEvaluator];
    if (SCNMTLDeviceRequiresOffsetAndStrideForStageInAsMultipleOf4Bytes(computeEvaluator))
    {
      v90 = (v87 + ((v85 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      v90 = v87 + v85;
    }

    v201 = v90;
    v93 = selfCopy->_vertexCountForComputeKernel - 1;
    v94 = 1;
    if (v93 > 0xFF)
    {
      v94 = 2;
    }

    v95 = HIWORD(v93);
    if (HIWORD(v93))
    {
      v94 = 4;
    }

    v196 = v94;
    SCNMTLDataTypeFromC3DBaseType(selfCopy->_morphTargetPositionDataType, v89);
    v190 = v81;
    if (selfCopy->_runtimeMorphTargetCount)
    {
      v96 = 0;
      v97 = 0;
      v98 = 0;
      if (v95)
      {
        v99 = 2;
      }

      else
      {
        v99 = v93 > 0xFF;
      }

      v100 = v81 + 4;
      do
      {
        Alignment = MTLDataTypeGetAlignment();
        v102 = *v100;
        if (*v100 != selfCopy->_vertexCountForComputeKernel)
        {
          v103 = MTLDataTypeGetAlignment();
          v98 = ((v98 + v103 - 1) & -v103) + (*v100 << v99);
        }

        v97 = ((v97 + Alignment - 1) & -Alignment) + v102 * v201;
        ++v96;
        v100 += 5;
      }

      while (v96 < selfCopy->_runtimeMorphTargetCount);
      v198 = malloc_type_malloc(v97, 0x100004077774924uLL);
      if (v98)
      {
        v104 = malloc_type_malloc(v98, 0x100004077774924uLL);
      }

      else
      {
        v104 = 0;
      }

      v95 = HIWORD(v93);
    }

    else
    {
      v198 = malloc_type_malloc(0, 0x100004077774924uLL);
      v97 = 0;
      v98 = 0;
      v104 = 0;
    }

    v199 = v104;
    v189 = v98;
    if (selfCopy->_runtimeMorphTargetCount)
    {
      v105 = 0;
      v106 = 0;
      v107 = 0;
      if (v95)
      {
        v108 = 2;
      }

      else
      {
        v108 = v93 > 0xFF;
      }

      v109 = 4;
      v110 = v190;
      do
      {
        v111 = (&v82->_runtimeMorphTargets->var0 + v109);
        *v111 = *v110;
        v112 = MTLDataTypeGetAlignment();
        v113 = (v106 + v112 - 1) & -v112;
        v114 = MTLDataTypeGetAlignment();
        v115 = (v107 + v114 - 1) & -v114;
        [(SCNMTLMorphDeformer *)v82 createVertexBufferForMorphTarget:v111 - 1 withSetupTarget:v110 vertexBuffer:v198 vertexBufferOffset:v113 indicesBuffer:v199 indicesBufferOffset:v115 indexSize:v196 originalToFirstDeindexedTable:PositionOriginalToFirstDeindexedTable computeContext:contextCopy];
        v116 = *(v110 + 4);
        if (v116 == v82->_vertexCountForComputeKernel)
        {
          v117 = 0;
        }

        else
        {
          v117 = v116 << v108;
        }

        CFRelease(*(v110 + 2));
        v118 = *(v110 + 3);
        if (v118)
        {
          CFRelease(v118);
          *(v110 + 3) = 0;
        }

        v106 = v113 + v116 * v201;
        v107 = v117 + v115;
        ++v105;
        v82 = selfCopy;
        v109 += 32;
        v110 += 40;
      }

      while (v105 < selfCopy->_runtimeMorphTargetCount);
    }

    else
    {
      v107 = 0;
      v106 = 0;
    }

    free(v190);
    contextCopy2 = contextCopy;
    v82->_morphTargetsVertexBuffer = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](v82->_resourceManager, v198, v97, [contextCopy currentBlitEncoder]);
    free(v198);
    if (v199)
    {
      v82->_morphTargetsSparseIndicesBuffer = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](v82->_resourceManager, v199, v189, [contextCopy currentBlitEncoder]);
      free(v199);
    }

    v91 = v194;
    if (v106 != v97)
    {
      v121 = scn_default_log(v119, v120);
      v119 = os_log_type_enabled(v121, OS_LOG_TYPE_FAULT);
      if (v119)
      {
        [(SCNMTLMorphDeformer *)v121 setupMorphTargetsWithComputeContext:v120, v122, v123, v124, v125, v126, v127];
      }
    }

    if (v107 != v189)
    {
      v128 = scn_default_log(v119, v120);
      if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLMorphDeformer *)v128 setupMorphTargetsWithComputeContext:v129, v130, v131, v132, v133, v134, v135];
      }
    }
  }

  else
  {
    free(v81);
    v91 = v194;
    contextCopy2 = context;
  }

  v207 = 0;
  v208 = 0;
  v206 = 0;
  LOBYTE(v188) = 1;
  v82->_baseBufferForComputeKernel = [contextCopy2 newBufferForDataKind:v82->_dataKindForComputeKernel positionSource:v192 normalSource:v191 positionDataType:v82->_basePositionDataType normalDataType:v82->_baseNormalDataType forStageInputOutputDescriptor:1 usePrivateStorageMode:v188 outStride:&v208 outPositionOffset:&v207 outNormalOffset:&v206];
  v137 = v82;
  v138 = C3DSizeOfBaseType(v82->_morphTargetPositionDataType, v136);
  v140 = C3DSizeOfBaseType(v137->_morphTargetNormalDataType, v139);
  computeEvaluator2 = [(SCNMTLOpenSubdivComputeEvaluator *)v137->_resourceManager computeEvaluator];
  if (!SCNMTLDeviceRequiresOffsetAndStrideForStageInAsMultipleOf4Bytes(computeEvaluator2))
  {
    v143 = v140 + v138;
    if (!v91)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v138 = (v138 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v143 = (v140 + v138 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v91)
  {
LABEL_84:
    CFRelease(v91);
  }

LABEL_85:
  ClearCPUDataAfterUpload = C3DMorphGetClearCPUDataAfterUpload(v193, v142);
  if (ClearCPUDataAfterUpload)
  {
    C3DCFArrayApplyBlock(v195, &__block_literal_global_36);
  }

  morphKind = selfCopy->_morphKind;
  if (!morphKind)
  {
    LOBYTE(v205) = selfCopy->_morphNormals;
    v148 = objc_alloc_init(MEMORY[0x277CD6D70]);
    [v148 setConstantValue:&v205 type:53 withName:@"morphNormal"];
    v156 = 45;
    if (selfCopy->_morphNormals)
    {
      v156 = 78;
    }

    v156 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v156];
    v158 = objc_alloc_init(MEMORY[0x277CD6FF0]);
    v159 = 0;
    do
    {
      v160 = v159 + 1;
      v161 = [objc_msgSend(v158 "layouts")];
      [v161 setStepFunction:5];
      [v161 setStride:v143];
      v162 = [objc_msgSend(v158 "attributes")];
      [v162 setFormat:SCNMTLVertexFormatFromC3DBaseType(selfCopy->_morphTargetPositionDataType, v163)];
      [v162 setOffset:0];
      [v162 setBufferIndex:v159 + 1];
      if (v205 == 1)
      {
        v164 = [objc_msgSend(v158 "attributes")];
        [v164 setFormat:SCNMTLVertexFormatFromC3DBaseType(selfCopy->_morphTargetNormalDataType, v165)];
        [v164 setOffset:v138];
        [v164 setBufferIndex:v160];
      }

      v159 = v160;
    }

    while (v160 != 8);
    selfCopy->_incrementalInitPipeline = [(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:@"blend_inc_init_8x_generic" withStageDescriptor:v158 stageDescriptorUpdateBlock:0 constants:v148 constantsHash:v156];
    selfCopy->_incrementalAddPipeline = [(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:@"blend_inc_add_8x_generic" withStageDescriptor:v158 stageDescriptorUpdateBlock:0 constants:v148 constantsHash:v156];

    goto LABEL_141;
  }

  if (morphKind == 1)
  {
    v204 = 0;
    v205 = 0;
    if (!selfCopy->_dataKindForComputeKernel && selfCopy->_finalMeshDataKind == 1 && PositionOriginalToFirstDeindexedTable)
    {
      currentBlitEncoder = [contextCopy2 currentBlitEncoder];
      selfCopy->_originalToFirstDeindexedTableBuffer = [contextCopy2 originalToFirstDeindexedTableBufferWithBlitEncoder:currentBlitEncoder indexSizeOut:&v205];
      selfCopy->_deindexedToFirstDeindexedTableBuffer = [contextCopy2 deindexedToFirstDeindexedTableBufferWithBlitEncoder:currentBlitEncoder indexSizeOut:&v204];
    }

    morphNormals = selfCopy->_morphNormals;
    v148 = objc_alloc_init(MEMORY[0x277CD6D70]);
    [v148 setConstantValue:&morphNormals type:53 withName:@"morphNormal"];
    v149 = 45;
    if (selfCopy->_morphNormals)
    {
      v149 = 78;
    }

    v149 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v149];
    v152 = v149;
    if (selfCopy->_originalToFirstDeindexedTableBuffer)
    {
      switch(v205)
      {
        case 1:
          v153 = 0;
          v154 = @"copy_indexed_u8_generic";
          v155 = @"blend_indexed_u8_generic";
          goto LABEL_114;
        case 4:
          v153 = 0;
          v154 = @"copy_indexed_u32_generic";
          v155 = @"blend_indexed_u32_generic";
          goto LABEL_114;
        case 2:
          v153 = 0;
          v154 = @"copy_indexed_u16_generic";
          v155 = @"blend_indexed_u16_generic";
LABEL_114:
          v168 = objc_alloc_init(MEMORY[0x277CD6FF0]);
          v169 = [objc_msgSend(v168 "layouts")];
          [v169 setStepFunction:5];
          [v169 setStride:v208];
          v170 = [objc_msgSend(v168 "attributes")];
          [v170 setFormat:SCNMTLVertexFormatFromC3DBaseType(selfCopy->_basePositionDataType, v171)];
          [v170 setOffset:v207];
          [v170 setBufferIndex:1];
          if (selfCopy->_morphNormals)
          {
            v172 = [objc_msgSend(v168 "attributes")];
            [v172 setFormat:SCNMTLVertexFormatFromC3DBaseType(selfCopy->_baseNormalDataType, v173)];
            [v172 setOffset:v206];
            [v172 setBufferIndex:1];
          }

          selfCopy->_copyBaseBufferPipeline = [(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:v154 withStageDescriptor:v168 stageDescriptorUpdateBlock:0 constants:v148 constantsHash:v152];
          [v168 reset];
          v174 = [objc_msgSend(v168 "layouts")];
          [v174 setStepFunction:5];
          [v174 setStride:v143];
          v175 = [objc_msgSend(v168 "attributes")];
          [v175 setFormat:SCNMTLVertexFormatFromC3DBaseType(selfCopy->_morphTargetPositionDataType, v176)];
          [v175 setOffset:0];
          [v175 setBufferIndex:1];
          if (morphNormals)
          {
            v177 = [objc_msgSend(v168 "attributes")];
            [v177 setFormat:SCNMTLVertexFormatFromC3DBaseType(selfCopy->_morphTargetNormalDataType, v178)];
            [v177 setOffset:v138];
            [v177 setBufferIndex:1];
          }

          selfCopy->_blendDensePipeline = [(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:@"blend_generic" withStageDescriptor:v168 stageDescriptorUpdateBlock:0 constants:v148 constantsHash:v152];
          if ((v153 & 1) == 0)
          {
            selfCopy->_blendDenseIndexedPipeline = [(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:v155 withStageDescriptor:v168 stageDescriptorUpdateBlock:0 constants:v148 constantsHash:v152];
          }

          v179 = selfCopy->_vertexCountForComputeKernel - 1;
          v180 = 1;
          if (v179 > 0xFF)
          {
            v180 = 2;
          }

          v181 = HIWORD(v179) == 0;
          v182 = 4;
          if (v181)
          {
            v182 = v180;
          }

          if (v182 == 1)
          {
            v183 = @"blend_indexed_u8_generic";
          }

          else if (v182 == 4)
          {
            v183 = @"blend_indexed_u32_generic";
          }

          else
          {
            v183 = @"blend_indexed_u16_generic";
          }

          selfCopy->_blendSparsePipeline = [(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:v183 withStageDescriptor:v168 stageDescriptorUpdateBlock:0 constants:v148 constantsHash:v152];

          if (selfCopy->_deindexedToFirstDeindexedTableBuffer)
          {
            switch(v204)
            {
              case 1:
                v186 = @"splat_indexed_s8_vertices";
                break;
              case 4:
                v186 = @"splat_indexed_s32_vertices";
                break;
              case 2:
                v186 = @"splat_indexed_s16_vertices";
                break;
              default:
                v187 = scn_default_log(v184, v185);
                if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
                {
                  [SCNMTLMorphDeformer setupMorphTargetsWithComputeContext:];
                }

                v186 = 0;
                break;
            }

            selfCopy->_splatPipeline = [(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:v186 constants:v148 constantsHash:v152];
          }

LABEL_141:

          return;
      }

      v167 = scn_default_log(v149, v151);
      if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLMorphDeformer setupMorphTargetsWithComputeContext:];
      }
    }

    v155 = 0;
    v154 = @"copy_generic";
    v153 = 1;
    goto LABEL_114;
  }

  v166 = scn_default_log(ClearCPUDataAfterUpload, v145);
  if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLMorphDeformer setupMorphTargetsWithComputeContext:];
  }
}

void __59__SCNMTLMorphDeformer_setupMorphTargetsWithComputeContext___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (C3DGeometryUsesDeformerBasedDynamicMesh(a3))
  {
    PositionSourceForDeformerBasedDynamicMesh = C3DGeometryCreatePositionSourceForDeformerBasedDynamicMesh(a3);
    CFAutorelease(PositionSourceForDeformerBasedDynamicMesh);
    if (*(a1 + 84))
    {
      __59__SCNMTLMorphDeformer_setupMorphTargetsWithComputeContext___block_invoke_cold_2();
    }

    SourceWithSemanticAtIndex = 0;
  }

  else
  {
    Mesh = C3DGeometryGetMesh(a3, v6);
    PositionSourceForDeformerBasedDynamicMesh = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 0, 0, 0);
    SourceWithSemanticAtIndex = 0;
    if (*(*(a1 + 32) + 32) == 1)
    {
      SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 1, 0, 0);
      if (!SourceWithSemanticAtIndex)
      {
        SourceWithSemanticAtIndex = C3DCreateNormalsForMorphTargetWithBaseMesh(Mesh, *(a1 + 40), 0);
        if (!SourceWithSemanticAtIndex)
        {
          v17 = scn_default_log(0, v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            __59__SCNMTLMorphDeformer_setupMorphTargetsWithComputeContext___block_invoke_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
          }
        }

        CFAutorelease(SourceWithSemanticAtIndex);
      }
    }

    if (*(a1 + 84) != 1 || PositionSourceForDeformerBasedDynamicMesh)
    {
      if (!*(a1 + 84))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (!C3DMeshGetElementsCount(Mesh, v15))
      {
        return;
      }

      if ((*(a1 + 84) & 1) == 0)
      {
        PositionSourceForDeformerBasedDynamicMesh = 0;
        goto LABEL_19;
      }
    }

    if (*(*(a1 + 32) + 40) != 1)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, 0, 0);
      Count = C3DMeshSourceGetCount(*(a1 + 48), v26);
      ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(*(a1 + 40), 0, 0);
      PositionSourceForDeformerBasedDynamicMesh = C3DMeshSourceCreateUnpackedCopy(PositionSourceForDeformerBasedDynamicMesh, ElementAtIndex, Count, ChannelForSourceWithSemanticAtIndex, v29, v30, v31, v32);
      CFAutorelease(PositionSourceForDeformerBasedDynamicMesh);
      if (*(*(a1 + 32) + 32) == 1)
      {
        v34 = C3DMeshSourceGetCount(*(a1 + 56), v33);
        v35 = C3DMeshGetChannelForSourceWithSemanticAtIndex(*(a1 + 40), 1, 0);
        SourceWithSemanticAtIndex = C3DMeshSourceCreateUnpackedCopy(SourceWithSemanticAtIndex, ElementAtIndex, v34, v35, v36, v37, v38, v39);
        CFAutorelease(SourceWithSemanticAtIndex);
      }
    }
  }

LABEL_19:
  if (*(*(a1 + 32) + 17) == 1 && (v40 = *(a1 + 64)) != 0)
  {
    v47 = C3DMeshSourceCreatedDeindexedCopy(PositionSourceForDeformerBasedDynamicMesh, *(a1 + 80), v40, v8, v9, v10, v11, v12);
    if (*(*(a1 + 32) + 32) == 1)
    {
      v48 = C3DMeshSourceCreatedDeindexedCopy(SourceWithSemanticAtIndex, *(a1 + 80), *(a1 + 64), v42, v43, v44, v45, v46);
LABEL_25:
      v49 = v48;
      goto LABEL_27;
    }
  }

  else
  {
    v47 = CFRetain(PositionSourceForDeformerBasedDynamicMesh);
    if (*(*(a1 + 32) + 32) == 1)
    {
      v48 = CFRetain(SourceWithSemanticAtIndex);
      goto LABEL_25;
    }
  }

  v49 = 0;
LABEL_27:
  if (*(a1 + 85) == 1)
  {
    DeltaSource = C3DMeshSourceCreateDeltaSource(*(a1 + 48), v47);
    if (!DeltaSource)
    {
      return;
    }

    v51 = DeltaSource;
    CFRelease(v47);
    if (*(*(a1 + 32) + 32) == 1)
    {
      v52 = C3DMeshSourceCreateDeltaSource(*(a1 + 56), v49);
      if (!v52)
      {
        return;
      }

      v53 = v52;
      CFRelease(v49);
      v49 = v53;
    }
  }

  else
  {
    v51 = v47;
  }

  if (*(*(a1 + 32) + 40) != 1)
  {
    v67 = C3DMeshSourceGetCount(v51, v41);
    v69 = v67;
    if (*(*(a1 + 32) + 64) != v67)
    {
      v70 = scn_default_log(v67, v68);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
      {
        __59__SCNMTLMorphDeformer_setupMorphTargetsWithComputeContext___block_invoke_cold_3(v70, v71, v72, v73, v74, v75, v76, v77);
      }
    }

    v78 = v69;
    goto LABEL_51;
  }

  v89 = 0u;
  v90 = 0u;
  C3DMeshSourceGetContent(v51, v41, &v89);
  v57 = 0uLL;
  v87 = 0u;
  v88 = 0u;
  if (v49)
  {
    C3DMeshSourceGetContent(v49, v54, &v87);
    v61 = v90;
    if (v90)
    {
      v62 = 0;
      v63 = 0;
      do
      {
        *v64.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v90), (v89 + v63 * BYTE6(v90)), v58, v59.f32[0], v60.f32[0]);
        v86 = v64;
        *v58.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v88), (v87 + v63 * BYTE6(v88)), v64, v65, v66);
        v60.i64[0] = 0x3400000034000000;
        v60.i64[1] = 0x3400000034000000;
        v59.i32[0] = vminvq_u32(vcgtq_f32(v60, vabsq_f32(v86)));
        if ((v59.i32[0] & 0x80000000) == 0 || (v59.i64[0] = 0x3400000034000000, v59.i64[1] = 0x3400000034000000, v58 = vcgtq_f32(v59, vabsq_f32(v58)), v58.i32[0] = vminvq_u32(v58), (v58.i32[0] & 0x80000000) == 0))
        {
          ++v62;
        }

        ++v63;
      }

      while (v61 != v63);
LABEL_49:
      if (v62)
      {
        v78 = v62;
LABEL_51:
        v82 = *(a1 + 72);
        v83 = *(a1 + 32);
        v84 = *(v83 + 68);
        *(v83 + 68) = v84 + 1;
        v85 = v82 + 40 * v84;
        *v85 = a2;
        *(v85 + 4) = 0;
        *(v85 + 8) = a3;
        *(v85 + 16) = v51;
        *(v85 + 24) = v49;
        *(v85 + 32) = v78;
        return;
      }
    }
  }

  else
  {
    v79 = v90;
    if (v90)
    {
      v62 = 0;
      v80 = 0;
      do
      {
        *v81.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v90), (v89 + v80 * BYTE6(v90)), v57, v55.f32[0], v56);
        v55.i64[0] = 0x3400000034000000;
        v55.i64[1] = 0x3400000034000000;
        v57 = vcgtq_f32(v55, vabsq_f32(v81));
        v57.i32[0] = vminvq_u32(v57);
        v62 += v57.i32[0] >= 0;
        ++v80;
      }

      while (v79 != v80);
      goto LABEL_49;
    }
  }

  CFRelease(v51);
  if (v49)
  {
    CFRelease(v49);
  }
}

void __59__SCNMTLMorphDeformer_setupMorphTargetsWithComputeContext___block_invoke_16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!C3DGeometryUsesDeformerBasedDynamicMesh(a3))
  {
    Mesh = C3DGeometryGetMesh(a3, v4);

    C3DMeshClearCPURepresentation(Mesh, v6);
  }
}

- (void)createVertexBufferForMorphTarget:(id *)target withSetupTarget:(id *)setupTarget vertexBuffer:(char *)buffer vertexBufferOffset:(unint64_t)offset indicesBuffer:(char *)indicesBuffer indicesBufferOffset:(unint64_t)bufferOffset indexSize:(unint64_t)size originalToFirstDeindexedTable:(unsigned int *)self0 computeContext:(id)self1
{
  v67 = 0u;
  v68 = 0u;
  Content = C3DMeshSourceGetContent(setupTarget->var2, a2, &v67);
  v65 = 0u;
  v66 = 0u;
  if (self->_morphNormals)
  {
    Content = C3DMeshSourceGetContent(setupTarget->var3, v19, &v65);
  }

  v26 = v68;
  target->var2 = setupTarget->var4;
  if (self->_morphKind == 1)
  {
    Content = [(SCNMTLMorphDeformer *)self createSparseIndicesBufferForMorphTarget:target withSetupTarget:setupTarget indicesBuffer:indicesBuffer indicesBufferOffset:bufferOffset indexSize:size originalToFirstDeindexedTable:table computeContext:context];
  }

  else
  {
    target->var4 = 0;
  }

  morphTargetPositionDataType = self->_morphTargetPositionDataType;
  if (morphTargetPositionDataType == 23)
  {
    if (self->_morphKind != 1)
    {
      v28 = scn_default_log(Content, v19);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        [SCNMTLMorphDeformer createVertexBufferForMorphTarget:v28 withSetupTarget:v19 vertexBuffer:v20 vertexBufferOffset:v21 indicesBuffer:v22 indicesBufferOffset:v23 indexSize:v24 originalToFirstDeindexedTable:v25 computeContext:?];
      }
    }

    v29 = vmaxvq_f32(C3DMeshSourceGetAbsoluteMaxValue(setupTarget->var2, v19, v20, v21, v22, v23, v24, v25));
    LOWORD(morphTargetPositionDataType) = self->_morphTargetPositionDataType;
    v64 = 1.0 / v29;
  }

  else
  {
    v64 = 1.0;
    v29 = 1.0;
  }

  target->var0 = v29;
  v30 = C3DSizeOfBaseType(morphTargetPositionDataType, v19);
  v32 = C3DSizeOfBaseType(self->_morphTargetNormalDataType, v31);
  v33 = v32 + v30;
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)self->_resourceManager computeEvaluator];
  v35 = SCNMTLDeviceRequiresOffsetAndStrideForStageInAsMultipleOf4Bytes(computeEvaluator);
  if (v35)
  {
    v33 = (v32 + ((v30 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v40 = (v30 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v40 = v30;
  }

  v41 = v33 * target->var2;
  v42 = &buffer[offset];
  if (self->_morphKind == 1)
  {
    if (self->_morphNormals)
    {
      if (v26)
      {
        v43 = 0;
        v44 = &buffer[offset];
        do
        {
          *v45.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v68), (v67 + v43 * BYTE6(v68)), v37, v38.f32[0], v39.f32[0]);
          v62 = v45;
          *v48.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v66), (v65 + v43 * BYTE6(v66)), v45, v46, v47);
          v39 = v48;
          v38.i64[0] = 0x3400000034000000;
          v38.i64[1] = 0x3400000034000000;
          if ((vminvq_u32(vcgtq_f32(v38, vabsq_f32(v62))) & 0x80000000) == 0 || (v37 = vcgtq_f32(v38, vabsq_f32(v48)), v37.i32[0] = vminvq_u32(v37), (v37.i32[0] & 0x80000000) == 0))
          {
            v49 = vmulq_n_f32(v62, v64);
            v63 = v39;
            C3DConvertFloatingTypeFromFloat4(self->_morphTargetPositionDataType, v44, v49);
            C3DConvertFloatingTypeFromFloat4(self->_morphTargetNormalDataType, &v44[v40], v63);
            v44 += v33;
          }

          ++v43;
        }

        while (v26 != v43);
        goto LABEL_37;
      }

LABEL_36:
      v44 = &buffer[offset];
      goto LABEL_37;
    }

    if (!v26)
    {
      goto LABEL_36;
    }

    v53 = 0;
    v44 = &buffer[offset];
    do
    {
      *v37.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v68), (v67 + v53 * BYTE6(v68)), v37, v38.f32[0], v39.f32[0]);
      v39.i64[0] = 0x3400000034000000;
      v39.i64[1] = 0x3400000034000000;
      v38.i32[0] = vminvq_u32(vcgtq_f32(v39, vabsq_f32(v37)));
      if ((v38.i32[0] & 0x80000000) == 0)
      {
        C3DConvertFloatingTypeFromFloat4(self->_morphTargetPositionDataType, v44, vmulq_n_f32(v37, v64));
        v44 += v33;
      }

      ++v53;
    }

    while (v26 != v53);
  }

  else
  {
    if (!v26)
    {
      goto LABEL_36;
    }

    v50 = 0;
    v44 = &buffer[offset];
    do
    {
      *v51.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v68), (v67 + v50 * BYTE6(v68)), v37, v38.f32[0], v39.f32[0]);
      C3DConvertFloatingTypeFromFloat4(self->_morphTargetPositionDataType, v44, vmulq_n_f32(v51, v64));
      if (self->_morphNormals)
      {
        *v52.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v66), (v65 + v50 * BYTE6(v66)), v37, v38.f32[0], v39.f32[0]);
        C3DConvertFloatingTypeFromFloat4(self->_morphTargetNormalDataType, &v44[v40], v52);
      }

      v44 += v33;
      ++v50;
    }

    while (v26 != v50);
  }

LABEL_37:
  if (v44 != &v42[v41])
  {
    v54 = scn_default_log(v35, v36);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      [SCNMTLMorphDeformer createVertexBufferForMorphTarget:v54 withSetupTarget:v55 vertexBuffer:v56 vertexBufferOffset:v57 indicesBuffer:v58 indicesBufferOffset:v59 indexSize:v60 originalToFirstDeindexedTable:v61 computeContext:?];
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
  C3DMeshSourceGetContent(setupTarget->var2, a2, &v97);
  v95 = 0u;
  v96 = 0u;
  if (var3)
  {
    C3DMeshSourceGetContent(setupTarget->var3, v18, &v95);
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

  Mesh = C3DGeometryGetMesh(setupTarget->var1, v18);
  ElementsCount = C3DMeshGetElementsCount(Mesh, v24);
  if (ElementsCount >= 1)
  {
    v83 = targetCopy;
    ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, 0, 0);
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    Content = C3DMeshElementGetContent(ElementAtIndex, 0, &v91);
    offsetCopy = offset;
    if (var3)
    {
      if (v92)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        while (1)
        {
          v90 = 0;
          v86 = v91;
          v87 = v92;
          v88 = v93;
          v89 = v94;
          C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex(&v86, v33, &v90 + 1, &v90);
          v39 = v90;
          for (i = HIDWORD(v90); i < v39; ++i)
          {
            *v41.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v98), (v97 + v34 * BYTE6(v98)), v36, v37.f32[0], v38.f32[0]);
            v84 = v41;
            *v36.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v96), (v95 + v34 * BYTE6(v96)), v41, v42, v43);
            v38.i64[0] = 0x3400000034000000;
            v38.i64[1] = 0x3400000034000000;
            v37.i32[0] = vminvq_u32(vcgtq_f32(v38, vabsq_f32(v84)));
            if ((v37.i32[0] & 0x80000000) == 0 || (v37.i64[0] = 0x3400000034000000, v37.i64[1] = 0x3400000034000000, v36 = vcgtq_f32(v37, vabsq_f32(v36)), v36.i32[0] = vminvq_u32(v36), (v36.i32[0] & 0x80000000) == 0))
            {
              if (v16)
              {
                v44 = table[i];
                if (v20)
                {
                  goto LABEL_31;
                }

LABEL_33:
                v20 = 0;
                if (v21)
                {
                  *v21 = v44;
                  v21 += 2;
                }

                else
                {
                  *v22++ = v44;
                }
              }

              else
              {
                v44 = i;
                if (!v20)
                {
                  goto LABEL_33;
                }

LABEL_31:
                *v20++ = v44;
              }

              ++v35;
              v39 = v90;
            }

            ++v34;
          }

          if (++v33 >= v92)
          {
            goto LABEL_73;
          }
        }
      }

      v35 = 0;
LABEL_73:
      targetCopy = v83;
      if (v35 == v83->var2)
      {
        goto LABEL_97;
      }

      v62 = scn_default_log(Content, v32);
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_97;
      }

LABEL_96:
      [(SCNMTLMorphDeformer *)v62 createSparseIndicesBufferForMorphTarget:v63 withSetupTarget:v64 indicesBuffer:v65 indicesBufferOffset:v66 indexSize:v67 originalToFirstDeindexedTable:v68 computeContext:v69];
LABEL_97:
      offset = offsetCopy;
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

      v62 = scn_default_log(Content, v32);
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
    C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex(&v86, v52, &v90 + 1, &v90);
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

      *v60.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v98), (v97 + v53 * BYTE6(v98)), v55, v56.f32[0], v57);
      v56.i64[0] = 0x3400000034000000;
      v56.i64[1] = 0x3400000034000000;
      v55 = vcgtq_f32(v56, vabsq_f32(v60));
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

  v45 = v98;
  if (!var3)
  {
    if (!v98)
    {
      v71 = 0;
LABEL_100:
      if (v71 == targetCopy->var2)
      {
        goto LABEL_98;
      }

      v74 = scn_default_log(ElementsCount, v26);
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
      *v72.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v98), (v97 + v70 * BYTE6(v98)), v27, v28.f32[0], v29.f32[0]);
      v28.i64[0] = 0x3400000034000000;
      v28.i64[1] = 0x3400000034000000;
      v27 = vcgtq_f32(v28, vabsq_f32(v72));
      v27.i32[0] = vminvq_u32(v27);
      if ((v27.i32[0] & 0x80000000) == 0)
      {
        break;
      }

LABEL_87:
      if (v45 == ++v70)
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

  if (v98)
  {
    v46 = 0;
    v47 = 0;
    while (1)
    {
      *v48.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v98), (v97 + v46 * BYTE6(v98)), v27, v28.f32[0], v29.f32[0]);
      v85 = v48;
      *v27.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v96), (v95 + v46 * BYTE6(v96)), v48, v49, v50);
      v29.i64[0] = 0x3400000034000000;
      v29.i64[1] = 0x3400000034000000;
      v28.i32[0] = vminvq_u32(vcgtq_f32(v29, vabsq_f32(v85)));
      if (v28.i32[0] < 0)
      {
        v28.i64[0] = 0x3400000034000000;
        v28.i64[1] = 0x3400000034000000;
        v27 = vcgtq_f32(v28, vabsq_f32(v27));
        v27.i32[0] = vminvq_u32(v27);
        if (v27.i32[0] < 0)
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
      if (v45 == ++v46)
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

  v74 = scn_default_log(ElementsCount, v26);
  if (!os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_98;
  }

LABEL_92:
  [(SCNMTLMorphDeformer *)v74 createSparseIndicesBufferForMorphTarget:v75 withSetupTarget:v76 indicesBuffer:v77 indicesBufferOffset:v78 indexSize:v79 originalToFirstDeindexedTable:v80 computeContext:v81];
LABEL_98:
  targetCopy->var4 = offset;
}

- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers
{
  currentFrameHash = [context currentFrameHash];
  if (self->_currentFrameHash == currentFrameHash)
  {
    return 0;
  }

  self->_currentFrameHash = currentFrameHash;
  var1 = buffers->var1;
  var3 = buffers->var3;
  if (self->_morphKind == 1)
  {

    return [(SCNMTLMorphDeformer *)self morphSparseWithComputeContext:context positions:var1 normals:var3];
  }

  else
  {

    return [(SCNMTLMorphDeformer *)self morphIncrementallyWithComputeContext:context positions:var1 normals:var3];
  }
}

- (unint64_t)morphSparseWithComputeContext:(id)context positions:(id)positions normals:(id)normals
{
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0.0;
  v9 = C3DMorpherBeginIncrementalPass(self->_morpher, self->_lastMorpherIncrementalPassState, &v45, &v44, &v46, &v43);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  currentComputeEncoder = [context currentComputeEncoder];
  bzero(currentComputeEncoder, 0x678uLL);
  if (positions)
  {
    currentComputeEncoder->_buffers[0] = positions;
    currentComputeEncoder->_buffersToBind[0] |= 1uLL;
  }

  if (normals)
  {
    if (currentComputeEncoder->_buffers[4] == normals)
    {
      if (!currentComputeEncoder->_offsets[4])
      {
        goto LABEL_10;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[4] = normals;
    }

    currentComputeEncoder->_offsets[4] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 0x10uLL;
  }

LABEL_10:
  if (v10 != 2)
  {
    goto LABEL_23;
  }

  baseBufferForComputeKernel = self->_baseBufferForComputeKernel;
  if (currentComputeEncoder->_buffers[1] == baseBufferForComputeKernel)
  {
    if (!currentComputeEncoder->_offsets[1])
    {
      goto LABEL_15;
    }
  }

  else
  {
    currentComputeEncoder->_buffers[1] = baseBufferForComputeKernel;
  }

  currentComputeEncoder->_offsets[1] = 0;
  currentComputeEncoder->_buffersToBind[0] |= 2uLL;
LABEL_15:
  vertexCountForComputeKernel = self->_vertexCountForComputeKernel;
  v41[0] = 0.0;
  var2 = vertexCountForComputeKernel;
  SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, v41, 0xCuLL, 3uLL);
  v47 = 0;
  v48 = 0;
  encoder = currentComputeEncoder->_encoder;
  v49 = 0;
  v50 = var2;
  v51 = vdupq_n_s64(1uLL);
  [(MTLComputeCommandEncoder *)encoder setStageInRegion:&v47];
  originalToFirstDeindexedTableBuffer = self->_originalToFirstDeindexedTableBuffer;
  if (originalToFirstDeindexedTableBuffer)
  {
    if (currentComputeEncoder->_buffers[2] != originalToFirstDeindexedTableBuffer)
    {
      currentComputeEncoder->_buffers[2] = originalToFirstDeindexedTableBuffer;
LABEL_19:
      currentComputeEncoder->_offsets[2] = 0;
      currentComputeEncoder->_buffersToBind[0] |= 4uLL;
      goto LABEL_20;
    }

    if (currentComputeEncoder->_offsets[2])
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)self->_copyBaseBufferPipeline computeEvaluator];
  v18 = var2;
  if (currentComputeEncoder->_computePipelineState != computeEvaluator)
  {
    currentComputeEncoder->_computePipelineState = computeEvaluator;
    [(MTLComputeCommandEncoder *)currentComputeEncoder->_encoder setComputePipelineState:computeEvaluator];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(currentComputeEncoder, v18);
  bzero(v45, 4 * v46);
LABEL_23:
  if (self->_runtimeMorphTargetCount)
  {
    v19 = 0;
    v20 = 0;
    v40 = vdupq_n_s64(1uLL);
    while (1)
    {
      runtimeMorphTargets = self->_runtimeMorphTargets;
      v22 = &runtimeMorphTargets[v19];
      var1 = runtimeMorphTargets[v19].var1;
      v24 = *&v44[4 * var1];
      v25 = *(v45 + var1);
      if (vabds_f32(v24, v25) > v43)
      {
        break;
      }

LABEL_46:
      ++v20;
      ++v19;
      if (v20 >= self->_runtimeMorphTargetCount)
      {
        goto LABEL_47;
      }
    }

    v41[0] = v24 - v25;
    v41[1] = (v24 - v25) * v22->var0;
    var2 = v22->var2;
    SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, v41, 0xCuLL, 3uLL);
    v26 = v22->var2;
    v27 = self->_vertexCountForComputeKernel;
    morphTargetsVertexBuffer = self->_morphTargetsVertexBuffer;
    var3 = v22->var3;
    if (currentComputeEncoder->_buffers[1] == morphTargetsVertexBuffer)
    {
      if (currentComputeEncoder->_offsets[1] == var3)
      {
        goto LABEL_30;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[1] = morphTargetsVertexBuffer;
    }

    currentComputeEncoder->_offsets[1] = var3;
    currentComputeEncoder->_buffersToBind[0] |= 2uLL;
LABEL_30:
    v47 = 0;
    v48 = 0;
    v30 = currentComputeEncoder->_encoder;
    v49 = 0;
    v50 = var2;
    v51 = v40;
    [(MTLComputeCommandEncoder *)v30 setStageInRegion:&v47, *&v40];
    if (v26 == v27)
    {
      v31 = self->_originalToFirstDeindexedTableBuffer;
      if (v31)
      {
        if (currentComputeEncoder->_buffers[2] == v31)
        {
          if (!currentComputeEncoder->_offsets[2])
          {
LABEL_42:
            blendDenseIndexedPipeline = self->_blendDenseIndexedPipeline;
            goto LABEL_43;
          }
        }

        else
        {
          currentComputeEncoder->_buffers[2] = v31;
        }

        currentComputeEncoder->_offsets[2] = 0;
        currentComputeEncoder->_buffersToBind[0] |= 4uLL;
        goto LABEL_42;
      }

      blendDenseIndexedPipeline = self->_blendDensePipeline;
LABEL_43:
      computeEvaluator2 = [(SCNMTLOpenSubdivComputeEvaluator *)blendDenseIndexedPipeline computeEvaluator];
      v36 = var2;
      if (currentComputeEncoder->_computePipelineState != computeEvaluator2)
      {
        currentComputeEncoder->_computePipelineState = computeEvaluator2;
        [(MTLComputeCommandEncoder *)currentComputeEncoder->_encoder setComputePipelineState:computeEvaluator2];
      }

      SCNMTLComputeCommandEncoder::dispatchOnGrid1D(currentComputeEncoder, v36);
      goto LABEL_46;
    }

    morphTargetsSparseIndicesBuffer = self->_morphTargetsSparseIndicesBuffer;
    var4 = runtimeMorphTargets[v19].var4;
    if (currentComputeEncoder->_buffers[2] == morphTargetsSparseIndicesBuffer)
    {
      if (currentComputeEncoder->_offsets[2] == var4)
      {
LABEL_39:
        blendDenseIndexedPipeline = self->_blendSparsePipeline;
        goto LABEL_43;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[2] = morphTargetsSparseIndicesBuffer;
    }

    currentComputeEncoder->_offsets[2] = var4;
    currentComputeEncoder->_buffersToBind[0] |= 4uLL;
    goto LABEL_39;
  }

LABEL_47:
  deindexedToFirstDeindexedTableBuffer = self->_deindexedToFirstDeindexedTableBuffer;
  if (!deindexedToFirstDeindexedTableBuffer)
  {
    goto LABEL_55;
  }

  var2 = self->_finalMeshVertexCount;
  if (currentComputeEncoder->_buffers[2] != deindexedToFirstDeindexedTableBuffer)
  {
    currentComputeEncoder->_buffers[2] = deindexedToFirstDeindexedTableBuffer;
LABEL_51:
    currentComputeEncoder->_offsets[2] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 4uLL;
    goto LABEL_52;
  }

  if (currentComputeEncoder->_offsets[2])
  {
    goto LABEL_51;
  }

LABEL_52:
  SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, v41, 0xCuLL, 3uLL);
  computeEvaluator3 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_splatPipeline computeEvaluator];
  finalMeshVertexCount = self->_finalMeshVertexCount;
  if (currentComputeEncoder->_computePipelineState != computeEvaluator3)
  {
    currentComputeEncoder->_computePipelineState = computeEvaluator3;
    [(MTLComputeCommandEncoder *)currentComputeEncoder->_encoder setComputePipelineState:computeEvaluator3];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(currentComputeEncoder, finalMeshVertexCount);
LABEL_55:
  self->_lastMorpherIncrementalPassState = C3DMorpherEndIncrementalPass(self->_morpher);
  return 1;
}

- (unint64_t)morphIncrementallyWithComputeContext:(id)context positions:(id)positions normals:(id)normals
{
  positionsCopy = positions;
  v87 = *MEMORY[0x277D85DE8];
  v81 = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0.0;
  v8 = C3DMorpherBeginIncrementalPass(self->_morpher, self->_lastMorpherIncrementalPassState, &v80, &v79, &v81, &v78);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  normalsCopy = normals;
  currentComputeEncoder = [context currentComputeEncoder];
  bzero(currentComputeEncoder, 0x678uLL);
  v65[1] = v65;
  MEMORY[0x28223BE20](v10);
  v12 = (v65 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = (v65 - ((v14 + 15) & 0xFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = (v65 - v19);
  v72 = v9 == 2;
  v21 = 1.0;
  if (v9 == 2)
  {
    v21 = 0.0;
    if (v81)
    {
      bzero(v80, 4 * v81);
    }
  }

  if (vabds_f32(1.0, v21) <= 0.00000011921)
  {
    v22 = 0;
  }

  else
  {
    *v12 = 1.0 - v21;
    *v15 = self->_baseBufferForComputeKernel;
    *v20 = 0;
    v22 = 1;
  }

  LODWORD(v24) = self->_runtimeMorphTargetCount;
  if (v81 != v24)
  {
    v25 = scn_default_log(v17, v18);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLMorphDeformer *)v25 morphIncrementallyWithComputeContext:v26 positions:v27 normals:v28, v29, v30, v31, v32];
    }

    LODWORD(v24) = self->_runtimeMorphTargetCount;
  }

  if (v24)
  {
    v33 = v79;
    v34 = v80;
    v35 = v78;
    v24 = v24;
    p_var3 = &self->_runtimeMorphTargets->var3;
    do
    {
      v37 = *(p_var3 - 3);
      v38 = *&v33[4 * v37];
      v39 = v34[v37];
      if (vabds_f32(v38, v39) > v35)
      {
        v12[v22] = v38 - v39;
        v15[v22] = self->_morphTargetsVertexBuffer;
        v20[v22++] = *p_var3;
      }

      p_var3 += 4;
      --v24;
    }

    while (v24);
  }

  memset(v76, 0, sizeof(v76));
  vertexCountForComputeKernel = self->_vertexCountForComputeKernel;
  memset(v86, 0, sizeof(v86));
  memset(&v85[4], 0, 32);
  v40 = 136;
  if (v9 == 2)
  {
    v40 = 128;
  }

  memset(v85, 0, 32);
  selfCopy = self;
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)*(&self->super.isa + v40) computeEvaluator];
  v69 = v22 + 7;
  if (v22 + 7 >= 8)
  {
    v41 = v15;
    v42 = 0;
    v43 = 0;
    v67 = v69 >> 3;
    p_baseBufferForComputeKernel = &selfCopy->_baseBufferForComputeKernel;
    do
    {
      v73 = v43;
      v45 = 0;
      v46 = v41;
      do
      {
        if (v42 + v45 >= v22)
        {
          v48 = 0;
          v47 = 0.0;
          v49 = p_baseBufferForComputeKernel;
        }

        else
        {
          v47 = v12[v45];
          v48 = v20[v45];
          v49 = v46;
        }

        v50 = *v49;
        *&v76[v45] = v47;
        *(v86 + v45) = v50;
        v85[v45++] = v48;
        ++v46;
      }

      while (v45 != 8);
      v74 = v41;
      v51 = currentComputeEncoder;
      SCNMTLComputeCommandEncoder::setBuffers(currentComputeEncoder, v86, v85, 1, 8);
      v52 = v51;
      if (v51->_buffers[10] == positionsCopy)
      {
        v55 = v51->_offsets[10];
        v53 = normalsCopy;
        v54 = computeEvaluator;
        if (!v55)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v51->_buffers[10] = positionsCopy;
        v53 = normalsCopy;
        v54 = computeEvaluator;
      }

      v52->_offsets[10] = 0;
      v52->_buffersToBind[0] |= 0x400uLL;
LABEL_31:
      if (v53)
      {
        if (v52->_buffers[11] != v53)
        {
          v52->_buffers[11] = v53;
LABEL_35:
          v52->_offsets[11] = 0;
          v52->_buffersToBind[0] |= 0x800uLL;
          goto LABEL_36;
        }

        if (v52->_offsets[11])
        {
          goto LABEL_35;
        }
      }

LABEL_36:
      SCNMTLComputeCommandEncoder::setBytes(v52, v76, 0x24uLL, 0xCuLL);
      memset(v82, 0, sizeof(v82));
      encoder = currentComputeEncoder->_encoder;
      v83 = vertexCountForComputeKernel;
      v84 = vdupq_n_s64(1uLL);
      [(MTLComputeCommandEncoder *)encoder setStageInRegion:v82];
      v57 = currentComputeEncoder;
      v58 = vertexCountForComputeKernel;
      if (currentComputeEncoder->_computePipelineState != v54)
      {
        currentComputeEncoder->_computePipelineState = v54;
        v59 = v54;
        v60 = v58;
        [(MTLComputeCommandEncoder *)v57->_encoder setComputePipelineState:v59];
        v58 = v60;
        v57 = currentComputeEncoder;
      }

      v61 = v69 < 0x10;
      SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v57, v58);
      v62 = v61 | ~v72;
      v63 = v73;
      if ((v62 & 1) == 0)
      {
        computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)selfCopy->_incrementalAddPipeline computeEvaluator];
        v72 = 0;
      }

      v43 = v63 + 1;
      v12 += 8;
      v41 = v74 + 8;
      v20 += 8;
      v42 += 8;
    }

    while (v43 != v67);
  }

  v64 = selfCopy;
  v64->_lastMorpherIncrementalPassState = C3DMorpherEndIncrementalPass(selfCopy->_morpher);
  return 1;
}

- (void)initWithMorpher:(char)morpher outputs:(char)outputs dataKind:(uint64_t)kind resourceManager:(uint64_t)manager computeContext:
{
  if (!self)
  {
    return 0;
  }

  v14.receiver = self;
  v14.super_class = SCNMTLMorphDeformer;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  if (v11)
  {
    if (a2)
    {
      v12 = CFRetain(a2);
    }

    else
    {
      v12 = 0;
    }

    v11[1] = v12;
    *(v11 + 32) = (morpher & 2) != 0;
    *(v11 + 16) = outputs;
    v11[3] = kind;
    *(v11 + 14) = -1;
    [v11 setupMorphTargetsWithComputeContext:manager];
  }

  return v11;
}

- (uint64_t)setNextFrameRequiresFullMeshReset
{
  if (result)
  {
    *(result + 56) = -1;
  }

  return result;
}

- (void)setupMorphTargetsWithComputeContext:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "baseMesh";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setupMorphTargetsWithComputeContext:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "baseGeometryMeshlessPositionSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setupMorphTargetsWithComputeContext:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "morph";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setupMorphTargetsWithComputeContext:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "maxMorphTargetCount > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Internal consistency error", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setupMorphTargetsWithComputeContext:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "basePositionSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setupMorphTargetsWithComputeContext:(uint64_t)a3 .cold.8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "vertexBufferOffset == vertexBufferLength";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Vertex buffer has not been completely written to", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setupMorphTargetsWithComputeContext:(uint64_t)a3 .cold.9(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "sparseIndicesBufferOffset == sparseIndicesBufferLength";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Sparse indices buffer has not been completely written to", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __59__SCNMTLMorphDeformer_setupMorphTargetsWithComputeContext___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "originalNormalSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __59__SCNMTLMorphDeformer_setupMorphTargetsWithComputeContext___block_invoke_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "vertexCount == _vertexCountForComputeKernel";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Internal consistency error - unexpected sparse morph target", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)createVertexBufferForMorphTarget:(uint64_t)a3 withSetupTarget:(uint64_t)a4 vertexBuffer:(uint64_t)a5 vertexBufferOffset:(uint64_t)a6 indicesBuffer:(uint64_t)a7 indicesBufferOffset:(uint64_t)a8 indexSize:originalToFirstDeindexedTable:computeContext:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_morphKind == SCNMTLMorphDeformerKindSparse";
}

- (void)createVertexBufferForMorphTarget:(uint64_t)a3 withSetupTarget:(uint64_t)a4 vertexBuffer:(uint64_t)a5 vertexBufferOffset:(uint64_t)a6 indicesBuffer:(uint64_t)a7 indicesBufferOffset:(uint64_t)a8 indexSize:originalToFirstDeindexedTable:computeContext:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "dstForWriting == dst + length";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Buffer has not been completely written to", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)createSparseIndicesBufferForMorphTarget:(uint64_t)a3 withSetupTarget:(uint64_t)a4 indicesBuffer:(uint64_t)a5 indicesBufferOffset:(uint64_t)a6 indexSize:(uint64_t)a7 originalToFirstDeindexedTable:(uint64_t)a8 computeContext:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "writtenIndexCount == runtimeTarget->vertexCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Buffer has not been completely written to", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)morphIncrementallyWithComputeContext:(uint64_t)a3 positions:(uint64_t)a4 normals:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "weightCount == _runtimeMorphTargetCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Internal consistency error", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end