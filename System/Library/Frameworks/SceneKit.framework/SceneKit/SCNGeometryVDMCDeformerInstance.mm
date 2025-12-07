@interface SCNGeometryVDMCDeformerInstance
- (unint64_t)updateWithContext:(id)context;
- (void)dealloc;
- (void)initWithNode:(uint64_t)node deformer:(uint64_t)deformer outputs:(uint64_t)outputs computeVertexCount:(void *)count context:;
@end

@implementation SCNGeometryVDMCDeformerInstance

- (void)initWithNode:(uint64_t)node deformer:(uint64_t)deformer outputs:(uint64_t)outputs computeVertexCount:(void *)count context:
{
  *(&v141[2] + 4) = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v137.receiver = self;
  v137.super_class = SCNGeometryVDMCDeformerInstance;
  v79 = objc_msgSendSuper2(&v137, sel_init, node, deformer, outputs);
  if (!v79)
  {
    return 0;
  }

  nodeRef = [a2 nodeRef];
  Geometry = C3DNodeGetGeometry(nodeRef, v8);
  Mesh = C3DGeometryGetMesh(Geometry, v10);
  _currentResourceManager = [count _currentResourceManager];
  if (!C3DEntityGetName(Mesh, v12))
  {
    C3DEntityGetName(Geometry, v13);
  }

  ElementsCount = C3DMeshGetElementsCount(Mesh, v13);
  v72 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:ElementsCount];
  v79[2] = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:ElementsCount];
  [SCNMTLResourceManager newBufferWithLength:_currentResourceManager options:?];
  newValue = v14;
  memset(&v136, 0, sizeof(v136));
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v128 = 0;
  v127 = 0;
  v129 = 0;
  TotalTriangleCount = getTotalTriangleCount(Mesh, v15);
  v17 = (logf(3000000.0 / TotalTriangleCount) / 1.38629436);
  v18 = exp2(v17 + v17);
  v71 = v17;
  printf("Original mesh has %d triangles, will reach a maximum of %d after %d levels of subdivision\n", TotalTriangleCount, (v18 * TotalTriangleCount), v17);
  if (ElementsCount >= 1)
  {
    v19 = 0;
    v76 = v17 + 1;
    do
    {
      v78 = v19;
      ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, v19, 1);
      Type = C3DMeshElementGetType(ElementAtIndex, v21);
      v23 = C3DMeshElementTypeMapsToMTLPrimitiveType(Type);
      if (v23)
      {
        v25 = C3DMeshElementGetType(ElementAtIndex, v24);
        if (v25)
        {
          v27 = scn_default_log(v25, v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            [SCNGeometryVDMCDeformerInstance initWithNode:v138 deformer:&v139 outputs:v27 computeVertexCount:? context:?];
          }
        }

        v28 = [SCNMTLResourceManager renderResourceForMeshElement:_currentResourceManager];
        commandQueue = [(SCNMTLResourceManager *)v28 commandQueue];
        C3DMeshElementGetPrimitiveCount(ElementAtIndex);
        std::vector<unsigned int>::reserve(&v136, v136.__end_ - v136.__begin_ + commandQueue);
        if (![(SCNMTLMesh *)v28 elements])
        {
          buffer = [-[SCNMTLMeshElement indexBuffer](v28) buffer];
          [count currentBlitEncoder];
          v31 = newUInt32BufferFromUInt16Buffer(buffer, commandQueue, _currentResourceManager);
          v32 = objc_alloc_init(SCNMTLBuffer);
          [(SCNMTLMeshElement *)v28 setIndexBuffer:v32];
          [-[SCNMTLMeshElement indexBuffer](v28) setBuffer:v31];
        }

        contents = [-[SCNMTLMeshElement indexBuffer](v28) contents];
        if (commandQueue >= 1)
        {
          v34 = contents;
          v35 = commandQueue & 0x7FFFFFFF;
          end = v136.__end_;
          do
          {
            if (end >= v136.__end_cap_.__value_)
            {
              begin = v136.__begin_;
              v38 = end - v136.__begin_;
              v39 = end - v136.__begin_;
              v40 = v39 + 1;
              if ((v39 + 1) >> 62)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v41 = v136.__end_cap_.__value_ - v136.__begin_;
              if ((v136.__end_cap_.__value_ - v136.__begin_) >> 1 > v40)
              {
                v40 = v41 >> 1;
              }

              v42 = v41 >= 0x7FFFFFFFFFFFFFFCLL;
              v43 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v42)
              {
                v43 = v40;
              }

              if (v43)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(&v136, v43);
              }

              v44 = end - v136.__begin_;
              v45 = (4 * v39);
              v46 = (4 * v39 - 4 * v44);
              *v45 = *v34;
              end = v45 + 1;
              memcpy(v46, begin, v38);
              v47 = v136.__begin_;
              v136.__begin_ = v46;
              v136.__end_ = end;
              v136.__end_cap_.__value_ = 0;
              if (v47)
              {
                operator delete(v47);
              }
            }

            else
            {
              *end++ = *v34;
            }

            v136.__end_ = end;
            ++v34;
            --v35;
          }

          while (v35);
        }

        v48 = objc_alloc_init(SCNGeometryVDMCDeformerMeshElementData);
        v95 = 0;
        v96 = 0uLL;
        std::vector<float>::__vallocate[abi:nn200100](&v95, v76);
      }

      v49 = scn_default_log(v23, v24);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        [SCNGeometryVariableTopologySampleDeformerInstance initWithNode:v140 deformer:v141 outputs:v49 computeVertexCount:? context:?];
      }

      v19 = v78 + 1;
    }

    while ((v78 + 1) != ElementsCount);
  }

  v50 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:C3DMeshGetSourcesCount(Mesh)];
  vertexDescriptor = [MEMORY[0x277CD7090] vertexDescriptor];
  v126[0] = 0;
  v126[1] = v126;
  v126[2] = 0x2020000000;
  v126[3] = 0;
  v125[0] = MEMORY[0x277D85DD0];
  v125[1] = 3221225472;
  v125[2] = __92__SCNGeometryVDMCDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke;
  v125[3] = &unk_278300A38;
  v125[4] = v126;
  v125[5] = &v133;
  v125[6] = &v130;
  v125[7] = &v127;
  C3DMeshApplySources(Mesh, 1, v125);
  LODWORD(v95) = 0;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v124 = 0;
  v92 = 0;
  __dst = 0;
  v94 = 0;
  if (v136.__end_ != v136.__begin_)
  {
    std::vector<float>::__vallocate[abi:nn200100](&v92, v136.__end_ - v136.__begin_);
  }

  vmesh::DisplacedSubdivisionMesh::loadBaseMeshFromVectors(&v95, &v133, &v130, &v127, &v92);
  if (v92)
  {
    __dst = v92;
    operator delete(v92);
  }

  vmesh::DisplacedSubdivisionMesh::preprocessForSCN(&v95, v71);
  v89 = 0;
  v90 = 0;
  v91 = 0;
  if (v98 != *(&v97 + 1))
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(&v89, (v98 - *(&v97 + 1)) >> 4);
  }

  v86 = 0;
  v87 = 0;
  v88 = 0;
  if (v101 != *(&v100 + 1))
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(&v86, (v101 - *(&v100 + 1)) >> 4);
  }

  v83 = 0;
  v84 = 0;
  v85 = 0;
  if (*(&v99 + 1) != v99)
  {
    std::vector<double>::__vallocate[abi:nn200100](&v83, (*(&v99 + 1) - v99) >> 3);
  }

  v52 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](_currentResourceManager, v89, v90 - v89, [count currentBlitEncoder]);
  v53 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](_currentResourceManager, v86, v87 - v86, [count currentBlitEncoder]);
  v54 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](_currentResourceManager, v83, v84 - v83, [count currentBlitEncoder]);
  currentBlitEncoder = [count currentBlitEncoder];
  v56 = [(SCNMTLResourceManager *)_currentResourceManager newPrivateBufferWithBytes:v120 length:*(&v120 + 1) - v120 blitEncoder:currentBlitEncoder];
  currentBlitEncoder2 = [count currentBlitEncoder];
  v58 = [(SCNMTLResourceManager *)_currentResourceManager newPrivateBufferWithBytes:v123 length:*(&v123 + 1) - v123 blitEncoder:currentBlitEncoder2];
  v81 = (*(&v120 + 1) - v120) >> 2;
  v82 = (*(&v123 + 1) - v123) >> 3;
  v59 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](_currentResourceManager, v80, 48, [count currentBlitEncoder]);
  [SCNMTLResourceManager _fillVertexDescriptor:vertexDescriptor withSemantic:0 inputSet:0 bufferIndex:0 vertexFormat:30 offset:0 stride:16];
  [v50 addObject:v52];
  [SCNMTLResourceManager _fillVertexDescriptor:vertexDescriptor withSemantic:1 inputSet:0 bufferIndex:1 vertexFormat:30 offset:0 stride:16];
  [v50 addObject:v53];
  [SCNMTLResourceManager _fillVertexDescriptor:vertexDescriptor withSemantic:3 inputSet:0 bufferIndex:2 vertexFormat:29 offset:0 stride:8];
  [v50 addObject:v54];
  if (ElementsCount >= 1)
  {
    for (i = 0; i != ElementsCount; i = (i + 1))
    {
      v61 = [v79[2] objectAtIndexedSubscript:i];
      if (v61)
      {
        objc_setProperty_nonatomic(v61, v62, v52, 24);
      }

      v63 = [v79[2] objectAtIndexedSubscript:i];
      if (v63)
      {
        objc_setProperty_nonatomic(v63, v64, v56, 56);
      }

      v65 = [v79[2] objectAtIndexedSubscript:i];
      if (v65)
      {
        objc_setProperty_nonatomic(v65, v66, v58, 64);
      }

      v67 = [v79[2] objectAtIndexedSubscript:i];
      if (v67)
      {
        objc_setProperty_nonatomic(v67, v68, v59, 80);
      }
    }
  }

  v69 = objc_alloc_init(SCNMTLMesh);
  v79[1] = v69;
  [(SCNMTLMesh *)v69 setVertexDescriptor:vertexDescriptor];
  [(SCNMTLMesh *)v79[1] setBuffers:v50];
  [(SCNMTLMesh *)v79[1] setElements:v72];

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  vmesh::DisplacedSubdivisionMesh::~DisplacedSubdivisionMesh(&v95);
  _Block_object_dispose(v126, 8);
  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  if (v136.__begin_)
  {
    v136.__end_ = v136.__begin_;
    operator delete(v136.__begin_);
  }

  return v79;
}

void __92__SCNGeometryVDMCDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4 <= 0)
  {
    IsVolatile = C3DMeshSourceIsVolatile(a2);
    if (IsVolatile)
    {
      v9 = scn_default_log(IsVolatile, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_cold_1(v9);
      }
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      C3DMeshSourceGetContent(a2, v8, &v32);
      *(*(a1[4] + 8) + 24) = v33;
      if (a3)
      {
        if (a3 == 3)
        {
          if (*(*(a1[4] + 8) + 24))
          {
            LODWORD(v16) = 0;
            do
            {
              *v10.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v33), (v32 + v16 * BYTE6(v33)), v10, v11, v12);
              v17 = a1[6];
              v19 = *(v17 + 8);
              v18 = *(v17 + 16);
              if (v19 >= v18)
              {
                v21 = (v19 - *v17) >> 3;
                if ((v21 + 1) >> 61)
                {
                  std::string::__throw_length_error[abi:nn200100]();
                }

                v22 = v18 - *v17;
                v23 = v22 >> 2;
                if (v22 >> 2 <= (v21 + 1))
                {
                  v23 = v21 + 1;
                }

                if (v22 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v24 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v24 = v23;
                }

                if (v24)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1[6], v24);
                }

                *(8 * v21) = v10.i64[0];
                v20 = 8 * v21 + 8;
                v25 = *(v17 + 8) - *v17;
                v26 = (8 * v21 - v25);
                memcpy(v26, *v17, v25);
                v27 = *v17;
                *v17 = v26;
                *(v17 + 8) = v20;
                *(v17 + 16) = 0;
                if (v27)
                {
                  operator delete(v27);
                }
              }

              else
              {
                *v19 = v10.i64[0];
                v20 = (v19 + 1);
              }

              *(v17 + 8) = v20;
              v16 = (v16 + 1);
            }

            while (*(*(a1[4] + 8) + 24) > v16);
          }
        }

        else if (a3 == 1 && *(*(a1[4] + 8) + 24))
        {
          LODWORD(v13) = 0;
          do
          {
            *&v14 = C3DConvertFloatingTypeToFloat4(BYTE4(v33), (v32 + v13 * BYTE6(v33)), v10, v11, v12);
            v15 = a1[7];
            v31 = v14;
            _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(v15, &v31);
            v13 = (v13 + 1);
          }

          while (*(*(a1[4] + 8) + 24) > v13);
        }
      }

      else if (*(*(a1[4] + 8) + 24))
      {
        LODWORD(v28) = 0;
        do
        {
          *&v29 = C3DConvertFloatingTypeToFloat4(BYTE4(v33), (v32 + v28 * BYTE6(v33)), v10, v11, v12);
          v30 = a1[5];
          v31 = v29;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(v30, &v31);
          v28 = (v28 + 1);
        }

        while (*(*(a1[4] + 8) + 24) > v28);
      }
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNGeometryVDMCDeformerInstance;
  [(SCNGeometryVDMCDeformerInstance *)&v3 dealloc];
}

- (unint64_t)updateWithContext:(id)context
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = -[SCNMTLRenderContext resourceComputeEncoder]([context _currentRenderContext]);
  [(MTLComputeCommandEncoder *)v5->_encoder pushDebugGroup:@"VDMC deformer"];
  bzero(v62, 0xC0uLL);
  if (context)
  {
    objc_msgSend__currentTransforms(context);
    v6 = OUTLINED_FUNCTION_2_15();
    objc_msgSend__currentFrustumInfo(context, v6);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_15();
  }

  v60 = 1090519040;
  v8 = [(NSMutableArray *)self->_meshElementData objectAtIndexedSubscript:0, v7];
  if (v8)
  {
    v12 = v8[3];
  }

  else
  {
    v12 = 0;
  }

  if (v5->_buffers[0] == v12)
  {
    if (!v5->_offsets[0])
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5->_buffers[0] = v12;
  }

  v5->_offsets[0] = 0;
  v5->_buffersToBind[0] |= 1uLL;
LABEL_10:
  if (v8)
  {
    v13 = v8[7];
  }

  else
  {
    v13 = 0;
  }

  if (v5->_buffers[1] == v13)
  {
    if (!v5->_offsets[1])
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5->_buffers[1] = v13;
  }

  v5->_offsets[1] = 0;
  v5->_buffersToBind[0] |= 2uLL;
LABEL_16:
  if (v8)
  {
    v14 = v8[8];
  }

  else
  {
    v14 = 0;
  }

  if (v5->_buffers[2] == v14)
  {
    if (!v5->_offsets[2])
    {
      goto LABEL_22;
    }
  }

  else
  {
    v5->_buffers[2] = v14;
  }

  v5->_offsets[2] = 0;
  v5->_buffersToBind[0] |= 4uLL;
LABEL_22:
  if (v8)
  {
    v15 = v8[10];
  }

  else
  {
    v15 = 0;
  }

  if (v5->_buffers[15] != v15)
  {
    v5->_buffers[15] = v15;
LABEL_27:
    v5->_offsets[15] = 0;
    v5->_buffersToBind[0] |= 0x8000uLL;
    goto LABEL_28;
  }

  if (v5->_offsets[15])
  {
    goto LABEL_27;
  }

LABEL_28:
  meshElementData = self->_meshElementData;
  v17 = OUTLINED_FUNCTION_4_7(v8, v9, v10, v11);
  if (!v17)
  {
    goto LABEL_83;
  }

  v18 = v17;
  v19 = MEMORY[0];
  do
  {
    v20 = 0;
    do
    {
      if (MEMORY[0] != v19)
      {
        objc_enumerationMutation(meshElementData);
      }

      v21 = *(8 * v20);
      if (v21)
      {
        v22 = *(v21 + 72);
      }

      else
      {
        v22 = 0;
      }

      if (v5->_buffers[11] == v22)
      {
        if (!v5->_offsets[11])
        {
          goto LABEL_39;
        }
      }

      else
      {
        v5->_buffers[11] = v22;
      }

      OUTLINED_FUNCTION_3_4();
LABEL_39:
      SCNMTLComputeCommandEncoder::setBytes(v5, &v60, 4uLL, 0xAuLL);
      SCNMTLComputeCommandEncoder::setBytes(v5, v62, 0xC0uLL, 0xDuLL);
      v23 = SCNMTLComputeCommandEncoder::setBytes(v5, v61, 0x70uLL, 0xEuLL);
      *v58 = 0;
      if (v21)
      {
        v31 = *(v21 + 104);
        if (v31)
        {
          v25 = 0;
          do
          {
            v32 = [objc_msgSend(*(v21 + 88) objectAtIndex:{v25), "integerValue"}];
            v33 = [*(v21 + 40) objectAtIndex:*v58];
            if (v5->_buffers[3] == v33)
            {
              if (!v5->_offsets[3])
              {
                goto LABEL_46;
              }
            }

            else
            {
              v5->_buffers[3] = v33;
            }

            v5->_offsets[3] = 0;
            v5->_buffersToBind[0] |= 8uLL;
LABEL_46:
            v34 = [*(v21 + 40) objectAtIndex:(*v58 + 1)];
            if (v5->_buffers[4] == v34)
            {
              if (!v5->_offsets[4])
              {
                goto LABEL_50;
              }
            }

            else
            {
              v5->_buffers[4] = v34;
            }

            v5->_offsets[4] = 0;
            v5->_buffersToBind[0] |= 0x10uLL;
LABEL_50:
            v35 = [*(v21 + 48) objectAtIndex:*v58];
            if (v5->_buffers[6] == v35)
            {
              if (!v5->_offsets[6])
              {
                goto LABEL_54;
              }
            }

            else
            {
              v5->_buffers[6] = v35;
            }

            v5->_offsets[6] = 0;
            v5->_buffersToBind[0] |= 0x40uLL;
LABEL_54:
            v36 = [*(v21 + 48) objectAtIndex:(*v58 + 1)];
            if (v5->_buffers[7] != v36)
            {
              v5->_buffers[7] = v36;
LABEL_57:
              v5->_offsets[7] = 0;
              v5->_buffersToBind[0] |= 0x80uLL;
              goto LABEL_58;
            }

            if (v5->_offsets[7])
            {
              goto LABEL_57;
            }

LABEL_58:
            OUTLINED_FUNCTION_0_13(v36, v37, v38, v39, v40, v41, v42, v43, v56, v57, v58[0]);
            computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)*(v21 + 136) computeEvaluator];
            if (v5->_computePipelineState != computeEvaluator)
            {
              v5->_computePipelineState = computeEvaluator;
              [(MTLComputeCommandEncoder *)v5->_encoder setComputePipelineState:computeEvaluator];
            }

            v23 = SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v5, v32);
            *v58 = *v59 + 1;
            v25 = *v58;
            v31 = *(v21 + 104);
          }

          while (v31 > *v58);
        }

        OUTLINED_FUNCTION_0_13(v23, v24, v25, v26, v27, v28, v29, v30, v56, v57, v31);
        v45 = *(v21 + 72);
      }

      else
      {
        OUTLINED_FUNCTION_0_13(v23, v24, v25, v26, v27, v28, v29, v30, v56, v57, 0);
        v45 = 0;
      }

      if (v5->_buffers[11] == v45)
      {
        if (!v5->_offsets[11])
        {
          goto LABEL_66;
        }
      }

      else
      {
        v5->_buffers[11] = v45;
      }

      OUTLINED_FUNCTION_3_4();
LABEL_66:
      if (v21)
      {
        v47 = *(v21 + 112);
        v46 = *(v21 + 120);
      }

      else
      {
        v47 = 0;
        v46 = 0;
      }

      if (v5->_buffers[9] == v47)
      {
        if (v5->_offsets[9] == v46)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v5->_buffers[9] = v47;
      }

      v5->_offsets[9] = v46;
      v5->_buffersToBind[0] |= 0x200uLL;
LABEL_72:
      if (v21)
      {
        v48 = *(v21 + 144);
      }

      else
      {
        v48 = 0;
      }

      computeEvaluator2 = [(SCNMTLOpenSubdivComputeEvaluator *)v48 computeEvaluator];
      if (v5->_computePipelineState != computeEvaluator2)
      {
        v5->_computePipelineState = computeEvaluator2;
        [(MTLComputeCommandEncoder *)v5->_encoder setComputePipelineState:computeEvaluator2];
      }

      v50 = SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v5, 1uLL);
      ++v20;
    }

    while (v20 != v18);
    v54 = OUTLINED_FUNCTION_4_7(v50, v51, v52, v53);
    v18 = v54;
  }

  while (v54);
LABEL_83:
  [(MTLComputeCommandEncoder *)v5->_encoder popDebugGroup];
  return 1;
}

- (void)initWithNode:(NSObject *)a3 deformer:outputs:computeVertexCount:context:.cold.2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "C3DMeshElementGetType(meshElement) == kC3DMeshElementTypeTrianglesArray";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. VDMC expects triangles", a1);
}

@end