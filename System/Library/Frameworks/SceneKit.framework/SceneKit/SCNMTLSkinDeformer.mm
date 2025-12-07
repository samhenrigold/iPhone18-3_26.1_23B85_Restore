@interface SCNMTLSkinDeformer
+ (BOOL)canSkin:(void *)skin reuseRenderResourceForSkin:;
- (id)makeReadOnlyBuffersWithBaseGeometry:(__C3DGeometry *)geometry baseMesh:(__C3DMesh *)mesh blitEncoder:(id)encoder;
- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers;
- (void)dealloc;
- (void)initWithSkinner:(uint64_t)skinner baseGeometry:(char)geometry outputs:(char)outputs dataKind:(uint64_t)kind resourceManager:(uint64_t)manager computeContext:;
- (void)setupWithComputeContext:(id)context;
@end

@implementation SCNMTLSkinDeformer

- (void)dealloc
{
  skinner = self->_skinner;
  if (skinner)
  {
    CFRelease(skinner);
    self->_skinner = 0;
  }

  v4.receiver = self;
  v4.super_class = SCNMTLSkinDeformer;
  [(SCNMTLSkinDeformer *)&v4 dealloc];
}

- (void)setupWithComputeContext:(id)context
{
  Mesh = C3DGeometryGetMesh(self->_baseGeometry, a2);
  if (!Mesh)
  {
    v7 = scn_default_log(0, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLSkinDeformer *)v7 setupWithComputeContext:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 0, 0, self->_dataKind);
  if (!SourceWithSemanticAtIndex)
  {
    v17 = scn_default_log(0, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLSkinDeformer *)v17 setupWithComputeContext:v15, v18, v19, v20, v21, v22, v23];
    }
  }

  self->_baseVertexCount = C3DMeshSourceGetCount(SourceWithSemanticAtIndex, v15);
  resourceManager = self->_resourceManager;
  skinner = self->_skinner;
  dataKind = self->_dataKind;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __46__SCNMTLSkinDeformer_setupWithComputeContext___block_invoke;
  v44[3] = &unk_2782FDC80;
  v44[4] = context;
  v44[5] = self;
  v44[6] = Mesh;
  v27 = [(SCNMTLResourceManager *)resourceManager renderResourceForSkinner:skinner baseMesh:Mesh dataKind:dataKind provider:v44];
  v28 = v27;
  if (v27)
  {
    self->_vertexWeightIndicesBuffer = *(v27 + 24);
    self->_boneIndicesBuffer = *(v28 + 32);
    v29 = *(v28 + 40);
  }

  else
  {
    [SCNMTLSkinDeformer setupWithComputeContext:?];
    v29 = 0;
  }

  self->_boneWeightsBuffer = v29;
  skinNormals = self->_skinNormals;
  v30 = objc_alloc_init(MEMORY[0x277CD6D70]);
  [v30 setConstantValue:&skinNormals type:53 withName:@"needNormal"];
  skinTangents = self->_skinTangents;
  [v30 setConstantValue:&skinTangents type:53 withName:@"needTangent"];
  if (v28)
  {
    v31 = *(v28 + 8);
    v32 = *(v28 + 16);
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v40 = v32;
  v41 = v31;
  [v30 setConstantValue:&v41 type:33 withName:@"weight_index_size"];
  [v30 setConstantValue:&v40 type:33 withName:@"bone_index_size"];
  v33 = 84;
  if (!skinTangents)
  {
    v33 = 45;
  }

  v34 = 78;
  if (!skinNormals)
  {
    v34 = 45;
  }

  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Int%d_Int%d_%c%c", (8 * v41), (8 * v40), v34, v33];
  self->_useFallbackCopyKernel = v28 == 0;
  if (v28)
  {
    v36 = v35;
    v37 = @"skin_var";
  }

  else
  {
    v38 = 84;
    if (!skinTangents)
    {
      v38 = 45;
    }

    v39 = 78;
    if (!skinNormals)
    {
      v39 = 45;
    }

    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c", v39, v38];
    v37 = @"skin_copy_as_fallback";
  }

  self->_computePipeline = -[SCNMTLResourceManager computePipelineStateForKernel:withStageDescriptor:stageDescriptorUpdateBlock:constants:constantsHash:](self->_resourceManager, "computePipelineStateForKernel:withStageDescriptor:stageDescriptorUpdateBlock:constants:constantsHash:", v37, [context stageInputDescriptor], 0, v30, v36);
}

uint64_t __46__SCNMTLSkinDeformer_setupWithComputeContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentBlitEncoder];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = v3[2];

  return [v3 makeReadOnlyBuffersWithBaseGeometry:v5 baseMesh:v4 blitEncoder:v2];
}

- (id)makeReadOnlyBuffersWithBaseGeometry:(__C3DGeometry *)geometry baseMesh:(__C3DMesh *)mesh blitEncoder:(id)encoder
{
  v137 = *MEMORY[0x277D85DE8];
  OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
  if (!OverrideMaterial)
  {
    v10 = scn_default_log(0, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLSkinDeformer *)v10 makeReadOnlyBuffersWithBaseGeometry:v11 baseMesh:v12 blitEncoder:v13, v14, v15, v16, v17];
    }
  }

  v18 = objc_alloc_init(SCNMTLSkinDeformerReadOnlyBuffers);
  v131 = 0;
  v132 = 0;
  v130 = 0;
  C3DSkinGetVertexWeightsPointers(OverrideMaterial, &v132, &v131, &v130);
  v129 = 0;
  PositionDeindexedToOriginalTable = C3DMeshGetPositionDeindexedToOriginalTable(mesh, &v129);
  JointsCount = C3DSkinGetJointsCount(OverrideMaterial);
  v22 = JointsCount;
  v23 = 1;
  if ((JointsCount - 129) < 0xFFFFFF80)
  {
    v23 = 2;
  }

  if (JointsCount >= 1)
  {
    v24 = v23;
  }

  else
  {
    v24 = 8;
  }

  v25 = 4;
  if (v24 < 4)
  {
    v25 = v24;
  }

  v128 = v25;
  if (self->_dataKind != 1 || !PositionDeindexedToOriginalTable)
  {
    MTLVertexFormat = C3DMeshSourceGetMTLVertexFormat(OverrideMaterial);
    WeightsCount = MTLVertexFormat;
    p_baseVertexCount = &self->_baseVertexCount;
    if (MTLVertexFormat != self->_baseVertexCount)
    {
      v51 = scn_default_log(MTLVertexFormat, v42);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLSkinDeformer makeReadOnlyBuffersWithBaseGeometry:baseMesh:blitEncoder:];
      }

      goto LABEL_37;
    }

    if (v130)
    {
      WeightsCount = C3DSkinGetWeightsCount(OverrideMaterial, v42);
    }

    if ((WeightsCount - 1) >> 15)
    {
      v45 = 4 * (*p_baseVertexCount + 1);
      v46 = malloc_type_malloc(v45, 0xC7861EACuLL);
      v47 = v46;
      v48 = v132;
      if (v132)
      {
        v49 = 0;
        v50 = 4;
        do
        {
          *&v46[2 * v49] = *(v48 + 8 * v49);
          ++v49;
        }

        while (v49 <= *p_baseVertexCount);
      }

      else
      {
        v50 = 4;
        do
        {
          *&v46[2 * v48] = v48;
          LODWORD(v48) = v48 + 1;
        }

        while (v48 <= *p_baseVertexCount);
      }
    }

    else
    {
      v45 = *p_baseVertexCount + 1;
      if ((WeightsCount - 1) <= 0x7F)
      {
        v92 = malloc_type_malloc(*p_baseVertexCount + 1, 0xC7861EACuLL);
        v47 = v92;
        v93 = v132;
        if (v132)
        {
          v94 = 0;
          v50 = 1;
          do
          {
            *(v92 + v94) = *(v132 + 8 * v94);
            ++v94;
          }

          while (v94 <= *p_baseVertexCount);
        }

        else
        {
          v50 = 1;
          do
          {
            *(v92 + v93) = v93;
            ++v93;
          }

          while (v93 <= *p_baseVertexCount);
        }
      }

      else
      {
        v45 *= 2;
        v47 = malloc_type_malloc(v45, 0xC7861EACuLL);
        v54 = v132;
        if (*p_baseVertexCount + 1 > 1)
        {
          v55 = *p_baseVertexCount + 1;
        }

        else
        {
          v55 = 1;
        }

        if (v132)
        {
          v56 = 0;
          v50 = 2;
          do
          {
            v47[v56] = *(v54 + 8 * v56);
            ++v56;
          }

          while (v55 != v56);
        }

        else
        {
          [SCNMTLSkinDeformer makeReadOnlyBuffersWithBaseGeometry:v55 baseMesh:v47 blitEncoder:?];
          v50 = 2;
        }
      }
    }

    v97 = WeightsCount * v128;
    v98 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v47 length:v45 blitEncoder:encoder];
    if (v18)
    {
      objc_setProperty_nonatomic(v18, v99, v98, 24);
    }

    free(v47);
    if (v131 && v130)
    {
      if (WeightsCount >= 1)
      {
        v101 = 0;
        v102 = 1;
        while (*(v131 + 2 * v101) < v22)
        {
          v101 = v102;
          v103 = WeightsCount > v102++;
          if (!v103)
          {
            goto LABEL_105;
          }
        }

        v116 = scn_default_log(v100, v131);
        if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
        {
          v117 = *(v131 + 2 * v101);
          *buf = 67109376;
          v134 = v117;
          v135 = 1024;
          v136 = v22;
          _os_log_error_impl(&dword_21BEF7000, v116, OS_LOG_TYPE_ERROR, "Error: Skinning internal consistency error - out of range bone index ('%d < %d' assertion failed)", buf, 0xEu);
        }

        goto LABEL_37;
      }

LABEL_105:
      if (v24 == 2)
      {
        v118 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v131 length:v97 blitEncoder:encoder];
        if (v18)
        {
          objc_setProperty_nonatomic(v18, v119, v118, 32);
        }

LABEL_115:
        if (v130)
        {
          v109 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v130 length:4 * WeightsCount blitEncoder:encoder];
          if (!v18)
          {
            return v18;
          }

          objc_setProperty_nonatomic(v18, v110, v109, 40);
        }

        else
        {
          v111 = malloc_type_malloc(4 * WeightsCount, 0x100004052888210uLL);
          v59 = v111;
          if (WeightsCount >= 1)
          {
            v112 = 1;
            v113 = v111;
            do
            {
              *v113++ = 1065353216;
              v103 = WeightsCount > v112++;
            }

            while (v103);
          }

          v114 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v111 length:4 * WeightsCount blitEncoder:encoder];
          if (!v18)
          {
            goto LABEL_84;
          }

          objc_setProperty_nonatomic(v18, v115, v114, 40);
          free(v59);
        }

        v18->_vertexWeightIndexSize = v50;
        v18->_boneIndexSize = v128;
        return v18;
      }

      if (v24 == 1)
      {
        v104 = malloc_type_malloc(v97, 0x100004077774924uLL);
        v105 = v104;
        if (WeightsCount >= 1)
        {
          v106 = 0;
          do
          {
            *(v104 + v106) = *(v131 + 2 * v106);
            ++v106;
          }

          while (WeightsCount > v106);
        }
      }

      else
      {
        if (v22 > 0)
        {
          goto LABEL_115;
        }

        v120 = malloc_type_malloc(v97, 0x100004052888210uLL);
        v105 = v120;
        if (WeightsCount >= 1)
        {
          v121 = 0;
          v122 = v131;
          do
          {
            *(v120 + v121) = *(v122 + 2 * v121);
            ++v121;
          }

          while (WeightsCount > v121);
        }
      }
    }

    else
    {
      v105 = malloc_type_calloc(v97, 1uLL, 0x2A4C9B24uLL);
    }

    v107 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v105 length:v97 blitEncoder:encoder];
    if (v18)
    {
      objc_setProperty_nonatomic(v18, v108, v107, 32);
    }

    free(v105);
    goto LABEL_115;
  }

  v27 = &self->_baseVertexCount;
  baseVertexCount = self->_baseVertexCount;
  if (baseVertexCount != v129)
  {
    v52 = scn_default_log(JointsCount, v21);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLSkinDeformer makeReadOnlyBuffersWithBaseGeometry:baseMesh:blitEncoder:];
    }

LABEL_37:

    return 0;
  }

  v28 = malloc_type_malloc(4 * (baseVertexCount + 1), 0x100004052888210uLL);
  v29 = v28;
  *v28 = 0;
  encoderCopy = encoder;
  if (*v27)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = v132;
    do
    {
      v34 = *(v33 + 8 * (*(PositionDeindexedToOriginalTable + 4 * v31) + 1)) - *(v33 + 8 * *(PositionDeindexedToOriginalTable + 4 * v31));
      v32 += v34;
      v30 += v34;
      v28[v31 + 1] = v30;
      v35 = *v27;
      ++v31;
    }

    while (v31 < v35);
    v36 = (v35 + 1);
    if (!((v32 - 1) >> 15))
    {
      if ((v32 - 1) <= 0x7F)
      {
        v126 = (v35 + 1);
        v95 = malloc_type_malloc(v36, 0x947460FAuLL);
        v38 = v95;
        v96 = 0;
        v123 = 1;
        do
        {
          *(v95 + v96) = v29[v96];
          ++v96;
        }

        while (v96 <= *v27);
      }

      else
      {
        v126 = 2 * v36;
        v37 = malloc_type_malloc(2 * v36, 0x1CB4052FuLL);
        v38 = v37;
        v39 = 0;
        if (*v27 + 1 > 1)
        {
          v40 = *v27 + 1;
        }

        else
        {
          v40 = 1;
        }

        v123 = 2;
        do
        {
          *(v37 + v39) = v29[v39];
          ++v39;
        }

        while (v40 != v39);
      }

      goto LABEL_48;
    }
  }

  else
  {
    v32 = 0;
    v36 = 1;
  }

  v126 = 4 * v36;
  v123 = 4;
  v38 = v29;
LABEL_48:
  v124 = v32 * v128;
  v57 = malloc_type_malloc(v32 * v128, 0x1854F7FEuLL);
  v125 = 4 * v32;
  v58 = malloc_type_malloc(4 * v32, 0x100004052888210uLL);
  v59 = v58;
  if (v24 == 1)
  {
    v71 = *v27;
    v61 = v126;
    if (v71)
    {
      v72 = 0;
      do
      {
        v73 = v29[v72];
        v74 = v72 + 1;
        v75 = v29[v72 + 1] - v73;
        if (v75)
        {
          v76 = *(v132 + 8 * *(PositionDeindexedToOriginalTable + 4 * v72));
          do
          {
            v57[v73] = *(v131 + 2 * v76);
            *(v58 + v73++) = *(v130 + 4 * v76++);
            --v75;
          }

          while (v75);
          v71 = *v27;
        }

        ++v72;
      }

      while (v74 < v71);
    }
  }

  else if (v24 == 2)
  {
    v60 = *v27;
    v61 = v126;
    if (v60)
    {
      v62 = 0;
      v64 = v131;
      v63 = v132;
      v65 = v130;
      v66 = *v29;
      do
      {
        v67 = v62 + 1;
        v68 = v29[v62 + 1];
        v69 = v68 - v66;
        if (v68 != v66)
        {
          v70 = *(v63 + 8 * *(PositionDeindexedToOriginalTable + 4 * v62));
          do
          {
            *&v57[2 * v66] = *(v64 + 2 * v70);
            *(v58 + v66++) = *(v65 + 4 * v70++);
            --v69;
          }

          while (v69);
        }

        v66 = v68;
        v62 = v67;
      }

      while (v67 != v60);
    }
  }

  else
  {
    v61 = v126;
    if (v22 <= 0)
    {
      v77 = *v27;
      if (v77)
      {
        v78 = 0;
        v80 = v131;
        v79 = v132;
        v81 = v130;
        do
        {
          v82 = v29[v78];
          v83 = v78 + 1;
          v84 = v29[v78 + 1] - v82;
          if (v84)
          {
            v85 = *(v79 + 8 * *(PositionDeindexedToOriginalTable + 4 * v78));
            do
            {
              *&v57[4 * v82] = *(v80 + 2 * v85);
              *(v58 + v82++) = *(v81 + 4 * v85++);
              --v84;
            }

            while (v84);
            v77 = *v27;
          }

          ++v78;
        }

        while (v83 < v77);
      }
    }
  }

  if (v18)
  {
    v18->_vertexWeightIndexSize = v123;
    v18->_boneIndexSize = v128;
  }

  v86 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v38 length:v61 blitEncoder:encoderCopy];
  if (v18)
  {
    objc_setProperty_nonatomic(v18, v87, v86, 24);
  }

  v88 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v57 length:v124 blitEncoder:encoderCopy];
  if (v18)
  {
    objc_setProperty_nonatomic(v18, v89, v88, 32);
  }

  v90 = [(SCNMTLResourceManager *)self->_resourceManager newPrivateBufferWithBytes:v59 length:v125 blitEncoder:encoderCopy];
  if (v18)
  {
    objc_setProperty_nonatomic(v18, v91, v90, 40);
  }

  if (v38 != v29)
  {
    free(v29);
  }

  free(v38);
  free(v57);
LABEL_84:
  free(v59);
  return v18;
}

- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers
{
  currentFrameHash = [context currentFrameHash];
  if (self->_currentFrameHash == currentFrameHash)
  {
    return 0;
  }

  self->_currentFrameHash = currentFrameHash;
  currentComputeEncoder = [context currentComputeEncoder];
  bzero(currentComputeEncoder, 0x678uLL);
  if (!self->_useFallbackCopyKernel)
  {
    vertexWeightIndicesBuffer = self->_vertexWeightIndicesBuffer;
    if (vertexWeightIndicesBuffer)
    {
      currentComputeEncoder->_buffers[1] = vertexWeightIndicesBuffer;
      currentComputeEncoder->_offsets[1] = 0;
      currentComputeEncoder->_buffersToBind[0] |= 2uLL;
      vertexWeightIndicesBuffer = currentComputeEncoder->_buffers[2];
    }

    boneIndicesBuffer = self->_boneIndicesBuffer;
    if (vertexWeightIndicesBuffer == boneIndicesBuffer)
    {
      if (!currentComputeEncoder->_offsets[2])
      {
        goto LABEL_11;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[2] = boneIndicesBuffer;
    }

    currentComputeEncoder->_offsets[2] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 4uLL;
LABEL_11:
    boneWeightsBuffer = self->_boneWeightsBuffer;
    if (currentComputeEncoder->_buffers[3] == boneWeightsBuffer)
    {
      if (!currentComputeEncoder->_offsets[3])
      {
LABEL_15:
        v68[0] = 0;
        JointMatrices = C3DSkinnerGetJointMatrices(self->_skinner, v68);
        SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, JointMatrices, 16 * v68[0], 4uLL);
        v10 = 5;
        goto LABEL_16;
      }
    }

    else
    {
      currentComputeEncoder->_buffers[3] = boneWeightsBuffer;
    }

    currentComputeEncoder->_offsets[3] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 8uLL;
    goto LABEL_15;
  }

  v10 = 1;
LABEL_16:
  var1 = buffers->var1;
  var3 = buffers->var3;
  var5 = buffers->var5;
  v18 = [(MTLBuffer *)var1 length];
  v67 = v18 / 0xC;
  if (self->_baseVertexCount != v67)
  {
    v20 = scn_default_log(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLSkinDeformer *)v20 updateWithComputeContext:v21 buffers:v22, v23, v24, v25, v26, v27];
    }
  }

  SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, &v67, 4uLL, 0);
  if (currentComputeEncoder->_buffers[v10] == var1)
  {
    v30 = &currentComputeEncoder->_buffers[v10];
    v31 = v30[31];
    v29 = v30 + 31;
    if (!v31)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v28 = &currentComputeEncoder->_buffers[v10];
    *v28 = var1;
    v29 = v28 + 31;
  }

  *v29 = 0;
  currentComputeEncoder->_buffersToBind[0] |= (1 << v10);
LABEL_23:
  if (!self->_skinNormals)
  {
    goto LABEL_31;
  }

  v32 = v67;
  v33 = [(MTLBuffer *)var3 length];
  if (v32 != v33 / 0xC)
  {
    v35 = scn_default_log(v33, v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLSkinDeformer *)v35 updateWithComputeContext:v36 buffers:v37, v38, v39, v40, v41, v42];
    }
  }

  v43 = v10 + 1;
  if (currentComputeEncoder->_buffers[v10 + 1] == var3)
  {
    v46 = &currentComputeEncoder->_buffers[v43];
    v47 = v46[31];
    v45 = v46 + 31;
    if (!v47)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v44 = &currentComputeEncoder->_buffers[v43];
    *v44 = var3;
    v45 = v44 + 31;
  }

  *v45 = 0;
  currentComputeEncoder->_buffersToBind[0] |= (1 << v43);
LABEL_31:
  if (self->_skinTangents)
  {
    v48 = v67;
    v49 = [(MTLBuffer *)var5 length];
    if (v48 > v49 >> 4)
    {
      v51 = scn_default_log(v49, v50);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLSkinDeformer *)v51 updateWithComputeContext:v52 buffers:v53, v54, v55, v56, v57, v58];
      }
    }

    v59 = v10 | 2;
    if (currentComputeEncoder->_buffers[v10 | 2] != var5)
    {
      v60 = &currentComputeEncoder->_buffers[v59];
      *v60 = var5;
      v61 = v60 + 31;
LABEL_38:
      *v61 = 0;
      currentComputeEncoder->_buffersToBind[0] |= (1 << v59);
      goto LABEL_39;
    }

    v62 = &currentComputeEncoder->_buffers[v59];
    v63 = v62[31];
    v61 = v62 + 31;
    if (v63)
    {
      goto LABEL_38;
    }
  }

LABEL_39:
  [context setStageInputOutputBuffersToEncoder:currentComputeEncoder];
  memset(v68, 0, 24);
  encoder = currentComputeEncoder->_encoder;
  v68[3] = v67;
  v69 = vdupq_n_s64(1uLL);
  [(MTLComputeCommandEncoder *)encoder setStageInRegion:v68];
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)self->_computePipeline computeEvaluator];
  v66 = v67;
  if (currentComputeEncoder->_computePipelineState != computeEvaluator)
  {
    currentComputeEncoder->_computePipelineState = computeEvaluator;
    [(MTLComputeCommandEncoder *)currentComputeEncoder->_encoder setComputePipelineState:computeEvaluator];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(currentComputeEncoder, v66);
  return 1;
}

+ (BOOL)canSkin:(void *)skin reuseRenderResourceForSkin:
{
  objc_opt_self();
  JointsCount = C3DSkinGetJointsCount(skin);
  if (JointsCount != C3DSkinGetJointsCount(a2))
  {
    return 0;
  }

  MTLVertexFormat = C3DMeshSourceGetMTLVertexFormat(skin);
  if (MTLVertexFormat != C3DMeshSourceGetMTLVertexFormat(a2))
  {
    return 0;
  }

  WeightsCount = C3DSkinGetWeightsCount(skin, v7);
  if (WeightsCount != C3DSkinGetWeightsCount(a2, v9))
  {
    return 0;
  }

  v11 = C3DSkinGetWeightsCount(skin, v10);
  v12 = C3DMeshSourceGetMTLVertexFormat(skin);
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  C3DSkinGetVertexWeightsPointers(skin, &v19, &v17, &v15);
  C3DSkinGetVertexWeightsPointers(a2, &v18, &v16, &v14);
  if (v19 && v18)
  {
    if (memcmp(v19, v18, 8 * v12 + 8))
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (!v19 || !v18)
    {
      return result;
    }
  }

  if (!v17 || !v16)
  {
    result = 0;
    if (!v17 || !v16)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (memcmp(v17, v16, 2 * v11))
  {
    return 0;
  }

LABEL_16:
  if (v15 && v14)
  {
    return !memcmp(v15, v14, 4 * v11);
  }

  result = 0;
  if (v15 && v14)
  {
    return 1;
  }

  return result;
}

- (void)initWithSkinner:(uint64_t)skinner baseGeometry:(char)geometry outputs:(char)outputs dataKind:(uint64_t)kind resourceManager:(uint64_t)manager computeContext:
{
  if (!self)
  {
    return 0;
  }

  v16.receiver = self;
  v16.super_class = SCNMTLSkinDeformer;
  v13 = objc_msgSendSuper2(&v16, sel_init);
  if (v13)
  {
    if (a2)
    {
      v14 = CFRetain(a2);
    }

    else
    {
      v14 = 0;
    }

    v13[1] = v14;
    v13[2] = skinner;
    *(v13 + 40) = (geometry & 2) != 0;
    *(v13 + 41) = (geometry & 4) != 0;
    *(v13 + 24) = outputs;
    v13[4] = kind;
    [v13 setupWithComputeContext:manager];
  }

  return v13;
}

- (void)setupWithComputeContext:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "baseMesh";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setupWithComputeContext:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "basePositionSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (uint64_t)setupWithComputeContext:(uint64_t)a1 .cold.3(uint64_t a1)
{
  *(a1 + 56) = 0;
  result = 0;
  *(a1 + 64) = 0;
  return result;
}

- (void)makeReadOnlyBuffersWithBaseGeometry:(uint64_t)a3 baseMesh:(uint64_t)a4 blitEncoder:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "skin";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)makeReadOnlyBuffersWithBaseGeometry:baseMesh:blitEncoder:.cold.2()
{
  OUTLINED_FUNCTION_1_10();
  HIWORD(v3) = v0;
  OUTLINED_FUNCTION_2_9(&dword_21BEF7000, v0, v1, "Error: Skinning internal consistency error - vertex count mismatch ('%d == %d' assertion failed)", v2, v3);
}

- (uint64_t)makeReadOnlyBuffersWithBaseGeometry:(uint64_t)result baseMesh:(uint64_t)a2 blitEncoder:.cold.3(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = vdupq_n_s64(result - 1);
  v4 = xmmword_21C2A1A00;
  v5 = xmmword_21C2A1A10;
  v6 = xmmword_21C27F630;
  v7 = xmmword_21C27F640;
  v8 = (a2 + 8);
  v9 = vdupq_n_s64(8uLL);
  do
  {
    v10 = vmovn_s64(vcgeq_u64(v3, v7));
    if (vuzp1_s8(vuzp1_s16(v10, *v3.i8), *v3.i8).u8[0])
    {
      *(v8 - 4) = v2;
    }

    if (vuzp1_s8(vuzp1_s16(v10, *&v3), *&v3).i8[1])
    {
      *(v8 - 3) = v2 | 1;
    }

    if (vuzp1_s8(vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v6))), *&v3).i8[2])
    {
      *(v8 - 2) = v2 | 2;
      *(v8 - 1) = v2 | 3;
    }

    v11 = vmovn_s64(vcgeq_u64(v3, v5));
    if (vuzp1_s8(*&v3, vuzp1_s16(v11, *&v3)).i32[1])
    {
      *v8 = v2 | 4;
    }

    if (vuzp1_s8(*&v3, vuzp1_s16(v11, *&v3)).i8[5])
    {
      v8[1] = v2 | 5;
    }

    if (vuzp1_s8(*&v3, vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v4)))).i8[6])
    {
      v8[2] = v2 | 6;
      v8[3] = v2 | 7;
    }

    v2 += 8;
    v5 = vaddq_s64(v5, v9);
    v6 = vaddq_s64(v6, v9);
    v7 = vaddq_s64(v7, v9);
    v4 = vaddq_s64(v4, v9);
    v8 += 8;
  }

  while (((result + 7) & 0x1FFFFFFF8) != v2);
  return result;
}

- (void)makeReadOnlyBuffersWithBaseGeometry:baseMesh:blitEncoder:.cold.4()
{
  OUTLINED_FUNCTION_1_10();
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_2_9(&dword_21BEF7000, v1, v2, "Error: Skinning internal consistency error - vertex count mismatch ('%d == %d' assertion failed)", v3, v4);
}

- (void)updateWithComputeContext:(uint64_t)a3 buffers:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_baseVertexCount == effectiveDstPosCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Wrong vertex count for skinned positions", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)updateWithComputeContext:(uint64_t)a3 buffers:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "effectiveDstPosCount == normalBuffer.length / (3 * sizeof(float))";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Wrong vertex count for skinned normals", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)updateWithComputeContext:(uint64_t)a3 buffers:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "effectiveDstPosCount <= tangentBuffer.length / (4 * sizeof(float))";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Wrong vertex count for skinned tangents", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end