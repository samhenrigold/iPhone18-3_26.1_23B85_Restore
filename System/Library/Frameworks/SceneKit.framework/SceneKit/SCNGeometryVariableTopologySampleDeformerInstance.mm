@interface SCNGeometryVariableTopologySampleDeformerInstance
- (unint64_t)updateWithContext:(id)context;
- (void)dealloc;
- (void)initWithNode:(uint64_t)node deformer:(uint64_t)deformer outputs:(uint64_t)outputs computeVertexCount:(void *)count context:;
@end

@implementation SCNGeometryVariableTopologySampleDeformerInstance

- (void)initWithNode:(uint64_t)node deformer:(uint64_t)deformer outputs:(uint64_t)outputs computeVertexCount:(void *)count context:
{
  v60[0] = count;
  *(&v87[1] + 4) = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v81.receiver = self;
  v81.super_class = SCNGeometryVariableTopologySampleDeformerInstance;
  v7 = objc_msgSendSuper2(&v81, sel_init, node, deformer, outputs);
  v8 = v7;
  if (v7)
  {
    v7[1] = 1;
    nodeRef = [a2 nodeRef];
    Geometry = C3DNodeGetGeometry(nodeRef, v10);
    Mesh = C3DGeometryGetMesh(Geometry, v12);
    _currentResourceManager = [v60[0] _currentResourceManager];
    ElementsCount = C3DMeshGetElementsCount(Mesh, v13);
    v61 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:ElementsCount];
    v8[3] = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:ElementsCount];
    if (ElementsCount < 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      for (i = 0; i != ElementsCount; ++i)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, i, 1);
        Type = C3DMeshElementGetType(ElementAtIndex, v17);
        v19 = C3DMeshElementTypeMapsToMTLPrimitiveType(Type);
        if (v19)
        {
          v21 = C3DMeshElementGetType(ElementAtIndex, v20);
          if (v21)
          {
            v23 = scn_default_log(v21, v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              [SCNGeometryVariableTopologySampleDeformerInstance initWithNode:v84 deformer:&v85 outputs:v23 computeVertexCount:? context:?];
            }
          }

          v14 += C3DMeshElementGetPrimitiveCount(ElementAtIndex);
        }

        else
        {
          v24 = scn_default_log(v19, v20);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            [SCNGeometryVariableTopologySampleDeformerInstance initWithNode:v86 deformer:v87 outputs:v24 computeVertexCount:? context:?];
          }
        }
      }
    }

    v80[0] = 0;
    v80[1] = v80;
    v80[2] = 0x2020000000;
    v80[3] = 0;
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0;
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke;
    v75[3] = &unk_2782FB930;
    v75[4] = v80;
    v75[5] = &v76;
    v75[6] = v14;
    C3DMeshApplySources(Mesh, 1, v75);
    if (v8[1] == 1)
    {
      v26 = 4 * ElementsCount;
      MEMORY[0x28223BE20](v25);
      bzero(v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
      currentBlitEncoder = [v60[0] currentBlitEncoder];
      v8[5] = [(SCNMTLResourceManager *)_currentResourceManager newPrivateBufferWithBytes:v26 length:currentBlitEncoder blitEncoder:?];
      v8[7] = [_currentResourceManager computePipelineStateForKernel:@"deformer_variabletopologysample_any_order_finalize"];
    }

    v60[1] = 32;
    [SCNMTLResourceManager newBufferWithLength:_currentResourceManager options:?];
    v8[6] = v28;
    v63 = objc_alloc_init(MEMORY[0x277CD6D70]);
    if (ElementsCount >= 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v62 = v8;
      do
      {
        v32 = C3DMeshGetElementAtIndex(Mesh, v31, 1);
        v34 = C3DMeshElementGetType(v32, v33);
        v35 = C3DMeshElementTypeMapsToMTLPrimitiveType(v34);
        if (v35)
        {
          PrimitiveCount = C3DMeshElementGetPrimitiveCount(v32);
          v38 = [SCNMTLResourceManager renderResourceForMeshElement:_currentResourceManager];
          v39 = (*(v77 + 6) - 65537) < 0xFFFF0000;
          SCNMTLIndexTypeGetSize(v39);
          [SCNMTLResourceManager newBufferWithLength:_currentResourceManager options:?];
          v41 = v40;
          v42 = objc_alloc_init(SCNMTLBuffer);
          [(SCNMTLBuffer *)v42 setBuffer:v41];
          v43 = objc_alloc_init(SCNMTLMeshElement);
          [(SCNMTLMeshElement *)v43 setIndexType:v39];
          [(SCNMTLMeshElement *)v43 setIndexBuffer:v42];
          [(SCNMTLMeshElement *)v43 setIndexCount:?];
          [(SCNMTLMeshElement *)v43 setInstanceCount:?];
          [(SCNMTLMesh *)v43 setMutabilityTimestamp:?];
          [(SCNMTLMeshElement *)v43 setDrawIndexedPrimitivesIndirectBuffer:?];
          [(SCNMTLMesh *)v43 setVolatileOffset:v30];
          [v61 addObject:v43];

          elements = [(SCNMTLMesh *)v38 elements];
          LODWORD(v71) = SCNMTLIndexTypeGetSize(elements);
          elements2 = [(SCNMTLMesh *)v43 elements];
          LODWORD(v70[0]) = SCNMTLIndexTypeGetSize(elements2);
          [v63 setConstantValue:&v71 type:33 atIndex:0];
          [v63 setConstantValue:v70 type:33 atIndex:1];
          v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"UInt%d-UInt%d", (8 * v71), (8 * LODWORD(v70[0]))];
          v47 = objc_alloc_init(SCNGeometryVariableTopologySampleDeformerMeshElementData);
          v48 = v47;
          if (v47)
          {
            v47->_originalPrimitiveCount = PrimitiveCount;
          }

          indexBuffer = [(SCNMTLMeshElement *)v38 indexBuffer];
          if (v48)
          {
            objc_setProperty_nonatomic(v48, v50, indexBuffer, 16);
            objc_setProperty_nonatomic(v48, v51, v41, 24);
            v48->_drawIndexedPrimitivesIndirectBufferOffset = v30;
            v48->_deformedPrimitiveCountBufferOffset = v29;
          }

          v52 = [_currentResourceManager computePipelineStateForKernel:@"deformer_variabletopologysample_any_order" constants:v63 constantsHash:{v46, v60[0]}];
          if (v48)
          {
            objc_setProperty_nonatomic(v48, v53, v52, 56);
          }

          [v62[3] addObject:v48];

          v8 = v62;
        }

        else
        {
          v54 = scn_default_log(v35, v36);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
          {
            [SCNGeometryVariableTopologySampleDeformerInstance initWithNode:v82 deformer:&v83 outputs:v54 computeVertexCount:? context:?];
          }
        }

        ++v31;
        v30 += 20;
        v29 += 4;
      }

      while (ElementsCount != v31);
    }

    v55 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:C3DMeshGetSourcesCount(Mesh)];
    vertexDescriptor = [MEMORY[0x277CD7090] vertexDescriptor];
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 0;
    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x2020000000;
    v70[3] = 0;
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_55;
    v68[3] = &unk_2782FB980;
    v68[12] = ElementsCount;
    v68[13] = Mesh;
    v69 = 1;
    v68[4] = _currentResourceManager;
    v68[5] = v60[0];
    v68[6] = v8;
    v68[7] = vertexDescriptor;
    v68[8] = v55;
    v68[10] = &v71;
    v68[11] = v70;
    v68[9] = &v76;
    C3DMeshApplySources(Mesh, 1, v68);
    free(v72[3]);
    v57 = v8[3];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_59;
    v67[3] = &unk_2782FB9A8;
    v67[4] = v8;
    v67[5] = v80;
    [v57 enumerateObjectsUsingBlock:v67];
    v58 = objc_alloc_init(SCNMTLMesh);
    v8[2] = v58;
    [(SCNMTLMesh *)v58 setVertexDescriptor:vertexDescriptor];
    [(SCNMTLMesh *)v8[2] setBuffers:v55];
    [(SCNMTLMesh *)v8[2] setElements:v61];

    [SCNGeometryVariableTopologySampleDeformerInstance initWithNode:v70 deformer:&v71 outputs:&v76 computeVertexCount:v80 context:?];
  }

  return v8;
}

void __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    v13 = v4;
    v14 = v5;
    if ((a3 == 3 || a4 <= 0) && (a3 != 3 || a4 <= 7))
    {
      IsVolatile = C3DMeshSourceIsVolatile(a2);
      if (IsVolatile)
      {
        v10 = scn_default_log(IsVolatile, v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_cold_1(v10);
        }
      }

      else
      {
        v11 = 0u;
        v12 = 0u;
        C3DMeshSourceGetContent(a2, v9, &v11);
        *(*(result[4] + 8) + 24) = v12;
        *(*(result[5] + 8) + 24) = result[6] + *(*(result[4] + 8) + 24);
      }
    }
  }
}

void __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a3 != 7 && (a3 == 3 || a4 <= 0) && (a3 != 3 || a4 <= 7))
  {
    IsVolatile = C3DMeshSourceIsVolatile(a2);
    if (IsVolatile)
    {
      v12 = scn_default_log(IsVolatile, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_cold_1(v12);
      }
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
      Content = C3DMeshSourceGetContent(a2, v11, &v71);
      if (a3 > 1)
      {
        if (a3 == 3)
        {
          v48 = 8 * *(*(*(a1 + 72) + 8) + 24);
          *(*(*(a1 + 80) + 8) + 24) = malloc_type_realloc(*(*(*(a1 + 80) + 8) + 24), v48, 0x100004052888210uLL);
          if (v72)
          {
            v24 = 0;
            v25 = 1;
            do
            {
              *v21.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v72), (v71.n128_u64[0] + v24 * BYTE6(v72)), v21, v22, v23);
              *(*(*(*(a1 + 80) + 8) + 24) + 4 * (v25 - 1)) = v21.i32[0];
              *(*(*(*(a1 + 80) + 8) + 24) + 4 * v25) = v21.i32[1];
              ++v24;
              v26 = v72;
              v25 += 2;
            }

            while (v24 < v72);
          }

          else
          {
            v26 = 0;
          }

          v67 = 0;
          v68 = &v67;
          v69 = 0x2020000000;
          v70 = v26;
          if (*(a1 + 96) >= 1)
          {
            v40 = 0;
            do
            {
              ElementAtIndex = C3DMeshGetElementAtIndex(*(a1 + 104), v40, *(a1 + 112));
              if (!C3DMeshElementGetType(ElementAtIndex, v42))
              {
                v65 = 0u;
                v66 = 0u;
                v63 = 0u;
                v64 = 0u;
                C3DMeshElementGetContent(ElementAtIndex, a5, &v63);
                v59 = v63;
                v60 = v64;
                v61 = v65;
                v62 = v66;
                v53[0] = MEMORY[0x277D85DD0];
                v53[1] = 3221225472;
                v53[2] = __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_2;
                v53[3] = &unk_2782FB958;
                v54 = v71;
                v55 = v72;
                v53[4] = *(a1 + 80);
                v53[5] = &v67;
                C3DIndicesContentEnumeratePrimitives(&v59, v53, v71);
              }

              ++v40;
            }

            while (v40 < *(a1 + 96));
          }

          v37 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](*(a1 + 32), *(*(*(a1 + 80) + 8) + 24), v48, [*(a1 + 40) currentBlitEncoder]);
          v38 = 8;
          _Block_object_dispose(&v67, 8);
          v39 = 29;
        }

        else if (a3 == 4 || a3 == 2)
        {
          v49 = 16 * *(*(*(a1 + 72) + 8) + 24);
          *(*(*(a1 + 80) + 8) + 24) = malloc_type_realloc(*(*(*(a1 + 80) + 8) + 24), v49, 0x100004052888210uLL);
          if (v72)
          {
            v30 = 0;
            v31 = 3;
            do
            {
              *v27.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v72), (v71.n128_u64[0] + v30 * BYTE6(v72)), v27, v28, v29);
              *(*(*(*(a1 + 80) + 8) + 24) + 4 * (v31 - 3)) = v27.i32[0];
              *(*(*(*(a1 + 80) + 8) + 24) + 4 * (v31 - 2)) = v27.i32[1];
              *(*(*(*(a1 + 80) + 8) + 24) + 4 * (v31 - 1)) = v27.i32[2];
              *(*(*(*(a1 + 80) + 8) + 24) + 4 * v31) = v27.i32[3];
              ++v30;
              v32 = v72;
              v31 += 4;
            }

            while (v30 < v72);
          }

          else
          {
            v32 = 0;
          }

          v67 = 0;
          v68 = &v67;
          v69 = 0x2020000000;
          v70 = v32;
          if (*(a1 + 96) >= 1)
          {
            v44 = 0;
            do
            {
              v45 = C3DMeshGetElementAtIndex(*(a1 + 104), v44, *(a1 + 112));
              if (!C3DMeshElementGetType(v45, v46))
              {
                v65 = 0u;
                v66 = 0u;
                v63 = 0u;
                v64 = 0u;
                C3DMeshElementGetContent(v45, a5, &v63);
                v59 = v63;
                v60 = v64;
                v61 = v65;
                v62 = v66;
                v50[0] = MEMORY[0x277D85DD0];
                v50[1] = 3221225472;
                v50[2] = __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_3;
                v50[3] = &unk_2782FB958;
                v51 = v71;
                v52 = v72;
                v50[4] = *(a1 + 80);
                v50[5] = &v67;
                C3DIndicesContentEnumeratePrimitives(&v59, v50, v71);
              }

              ++v44;
            }

            while (v44 < *(a1 + 96));
          }

          v37 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](*(a1 + 32), *(*(*(a1 + 80) + 8) + 24), v49, [*(a1 + 40) currentBlitEncoder]);
          _Block_object_dispose(&v67, 8);
          v38 = 16;
          v39 = 31;
        }

        else
        {
          v43 = scn_default_log(Content, v14);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_55_cold_1(a3, v43);
          }

          v39 = 0;
          v37 = 0;
          v38 = 0;
        }
      }

      else
      {
        v47 = 12 * *(*(*(a1 + 72) + 8) + 24);
        *(*(*(a1 + 80) + 8) + 24) = malloc_type_realloc(*(*(*(a1 + 80) + 8) + 24), v47, 0x100004052888210uLL);
        if (v72)
        {
          v18 = 0;
          v19 = 2;
          do
          {
            *v15.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v72), (v71.n128_u64[0] + v18 * BYTE6(v72)), v15, v16, v17);
            *(*(*(*(a1 + 80) + 8) + 24) + 4 * (v19 - 2)) = v15.i32[0];
            *(*(*(*(a1 + 80) + 8) + 24) + 4 * (v19 - 1)) = v15.i32[1];
            *(*(*(*(a1 + 80) + 8) + 24) + 4 * v19) = v15.i32[2];
            ++v18;
            v20 = v72;
            v19 += 3;
          }

          while (v18 < v72);
        }

        else
        {
          v20 = 0;
        }

        v67 = 0;
        v68 = &v67;
        v69 = 0x2020000000;
        v70 = v20;
        if (*(a1 + 96) >= 1)
        {
          v33 = 0;
          do
          {
            v34 = C3DMeshGetElementAtIndex(*(a1 + 104), v33, *(a1 + 112));
            if (!C3DMeshElementGetType(v34, v35))
            {
              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              C3DMeshElementGetContent(v34, a5, &v63);
              v59 = v63;
              v60 = v64;
              v61 = v65;
              v62 = v66;
              v56[0] = MEMORY[0x277D85DD0];
              v56[1] = 3221225472;
              v56[2] = __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_56;
              v56[3] = &unk_2782FB958;
              v57 = v71;
              v58 = v72;
              v56[4] = *(a1 + 80);
              v56[5] = &v67;
              C3DIndicesContentEnumeratePrimitives(&v59, v56, v71);
            }

            ++v33;
          }

          while (v33 < *(a1 + 96));
        }

        v36 = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](*(a1 + 32), *(*(*(a1 + 80) + 8) + 24), v47, [*(a1 + 40) currentBlitEncoder]);
        v37 = v36;
        if (!a3)
        {
          *(*(a1 + 48) + 32) = v36;
        }

        _Block_object_dispose(&v67, 8);
        v38 = 12;
        v39 = 30;
      }

      [SCNMTLResourceManager _fillVertexDescriptor:*(a1 + 56) withSemantic:a3 inputSet:a4 bufferIndex:(*(*(*(a1 + 88) + 8) + 24))++ vertexFormat:v39 offset:0 stride:v38];
      [*(a1 + 64) addObject:v37];
    }
  }
}

float32x4_t __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_56(uint64_t a1, uint64_t a2, _DWORD *a3, float32x4_t a4, float a5, float a6)
{
  *v8.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + *a3 * *(a1 + 70)), a4, a5, a6);
  v22 = v8;
  *v11.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + a3[1] * *(a1 + 70)), v8, v9, v10);
  v21 = v11;
  *v14.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + a3[2] * *(a1 + 70)), v11, v12, v13);
  __asm { FMOV            V1.4S, #3.0 }

  result = vdivq_f32(vaddq_f32(vaddq_f32(v22, v21), v14), _Q1);
  *(*(*(*(a1 + 32) + 8) + 24) + 12 * *(*(*(a1 + 40) + 8) + 24)) = result.i64[0];
  *(*(*(*(a1 + 32) + 8) + 24) + 12 * (*(*(*(a1 + 40) + 8) + 24))++ + 8) = result.i32[2];
  return result;
}

double __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_2(uint64_t a1, uint64_t a2, _DWORD *a3, float32x4_t a4, float a5, float a6)
{
  *v8.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + *a3 * *(a1 + 70)), a4, a5, a6);
  v22 = v8;
  *v11.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + a3[1] * *(a1 + 70)), v8, v9, v10);
  v21 = v11;
  *v14.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + a3[2] * *(a1 + 70)), v11, v12, v13);
  __asm { FMOV            V1.4S, #3.0 }

  *&result = vdivq_f32(vaddq_f32(vaddq_f32(v22, v21), v14), _Q1).u64[0];
  *(*(*(*(a1 + 32) + 8) + 24) + 8 * (*(*(*(a1 + 40) + 8) + 24))++) = result;
  return result;
}

float32x4_t __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_3(uint64_t a1, uint64_t a2, _DWORD *a3, float32x4_t a4, float a5, float a6)
{
  *v8.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + *a3 * *(a1 + 70)), a4, a5, a6);
  v22 = v8;
  *v11.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + a3[1] * *(a1 + 70)), v8, v9, v10);
  v21 = v11;
  *v14.i64 = C3DConvertFloatingTypeToFloat4(*(a1 + 68), (*(a1 + 48) + a3[2] * *(a1 + 70)), v11, v12, v13);
  __asm { FMOV            V1.4S, #3.0 }

  result = vdivq_f32(vaddq_f32(vaddq_f32(vdivq_f32(v22, vdupq_laneq_s32(v22, 3)), vdivq_f32(v21, vdupq_laneq_s32(v21, 3))), vdivq_f32(v14, vdupq_laneq_s32(v14, 3))), _Q1);
  *(*(*(*(a1 + 32) + 8) + 24) + 16 * *(*(*(a1 + 40) + 8) + 24)) = result.i64[0];
  *(*(*(*(a1 + 32) + 8) + 24) + 16 * *(*(*(a1 + 40) + 8) + 24) + 8) = result.i32[2];
  *(*(*(*(a1 + 32) + 8) + 24) + 16 * (*(*(*(a1 + 40) + 8) + 24))++ + 12) = 1065353216;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNGeometryVariableTopologySampleDeformerInstance;
  [(SCNGeometryVariableTopologySampleDeformerInstance *)&v3 dealloc];
}

- (unint64_t)updateWithContext:(id)context
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = -[SCNMTLRenderContext resourceComputeEncoder]([context _currentRenderContext]);
  [(MTLComputeCommandEncoder *)v5->_encoder pushDebugGroup:@"Variable topology sample deformer"];
  v6 = -[SCNMTLRenderContext renderTime]([context _currentRenderContext]);
  v7 = (((cosf(*&v6) * 0.5) + 0.5) * 1.5) + -0.25;
  if (v7 >= 1.0)
  {
    v7 = 1.0;
  }

  if (v7 > 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  mode = self->_mode;
  if (mode != 1)
  {
    if (mode)
    {
      goto LABEL_94;
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    meshElementData = self->_meshElementData;
    v11 = [(NSMutableArray *)meshElementData countByEnumeratingWithState:&v67 objects:v72 count:16];
    if (!v11)
    {
      goto LABEL_94;
    }

    v12 = v11;
    v13 = *v68;
LABEL_10:
    v14 = 0;
    while (1)
    {
      if (*v68 != v13)
      {
        objc_enumerationMutation(meshElementData);
      }

      v15 = *(*(&v67 + 1) + 8 * v14);
      *(v55 + 4) = 0;
      *v55 = v8;
      if (v15)
      {
        v16 = *(v15 + 40);
        HIDWORD(v55[0]) = *(v15 + 8);
        LODWORD(v55[1]) = v16;
        SCNMTLComputeCommandEncoder::setBytes(v5, v55, 0xCuLL, 0);
        buffer = [*(v15 + 16) buffer];
        v18 = *(v15 + 16);
      }

      else
      {
        LODWORD(v55[1]) = 0;
        SCNMTLComputeCommandEncoder::setBytes(v5, v55, 0xCuLL, 0);
        buffer = [0 buffer];
        v18 = 0;
      }

      offset = [v18 offset];
      if (v5->_buffers[1] == buffer)
      {
        if (v5->_offsets[1] == offset)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5->_buffers[1] = buffer;
      }

      v5->_offsets[1] = offset;
      v5->_buffersToBind[0] |= 2uLL;
LABEL_19:
      if (v15)
      {
        v20 = *(v15 + 24);
      }

      else
      {
        v20 = 0;
      }

      if (v5->_buffers[2] == v20)
      {
        if (!v5->_offsets[2])
        {
          goto LABEL_25;
        }
      }

      else
      {
        v5->_buffers[2] = v20;
      }

      v5->_offsets[2] = 0;
      v5->_buffersToBind[0] |= 4uLL;
LABEL_25:
      drawIndexedPrimitivesIndirectBuffer = self->_drawIndexedPrimitivesIndirectBuffer;
      if (v15)
      {
        v22 = *(v15 + 32);
      }

      else
      {
        v22 = 0;
      }

      if (v5->_buffers[3] != drawIndexedPrimitivesIndirectBuffer)
      {
        v5->_buffers[3] = drawIndexedPrimitivesIndirectBuffer;
LABEL_30:
        v5->_offsets[3] = v22;
        v5->_buffersToBind[0] |= 8uLL;
        goto LABEL_31;
      }

      if (v5->_offsets[3] != v22)
      {
        goto LABEL_30;
      }

LABEL_31:
      if (v15)
      {
        v23 = *(v15 + 56);
      }

      else
      {
        v23 = 0;
      }

      computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)v23 computeEvaluator];
      v25 = HIDWORD(v55[0]);
      if (v5->_computePipelineState != computeEvaluator)
      {
        v5->_computePipelineState = computeEvaluator;
        [(MTLComputeCommandEncoder *)v5->_encoder setComputePipelineState:computeEvaluator];
      }

      SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v5, v25);
      if (v12 == ++v14)
      {
        v26 = [(NSMutableArray *)meshElementData countByEnumeratingWithState:&v67 objects:v72 count:16];
        v12 = v26;
        if (!v26)
        {
          goto LABEL_94;
        }

        goto LABEL_10;
      }
    }
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  *v55 = 0u;
  v56 = 0u;
  if (context)
  {
    objc_msgSend__currentTransforms(context);
  }

  positionBuffer = self->_positionBuffer;
  if (v5->_buffers[1] != positionBuffer)
  {
    v5->_buffers[1] = positionBuffer;
LABEL_48:
    v5->_offsets[1] = 0;
    v5->_buffersToBind[0] |= 2uLL;
    goto LABEL_49;
  }

  if (v5->_offsets[1])
  {
    goto LABEL_48;
  }

LABEL_49:
  SCNMTLComputeCommandEncoder::setBytes(v5, v55, 0xC0uLL, 2uLL);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v28 = self->_meshElementData;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v51 objects:v71 count:16];
  if (!v29)
  {
    goto LABEL_83;
  }

  v30 = v29;
  v31 = *v52;
  do
  {
    v32 = 0;
    do
    {
      if (*v52 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v51 + 1) + 8 * v32);
      *&v50[1] = 0;
      *v50 = v8;
      if (v33)
      {
        v34 = *(v33 + 40);
        v50[1] = *(v33 + 8);
        v50[2] = v34;
        SCNMTLComputeCommandEncoder::setBytes(v5, v50, 0xCuLL, 0);
        buffer2 = [*(v33 + 16) buffer];
        v36 = *(v33 + 16);
      }

      else
      {
        v50[2] = 0;
        SCNMTLComputeCommandEncoder::setBytes(v5, v50, 0xCuLL, 0);
        buffer2 = [0 buffer];
        v36 = 0;
      }

      offset2 = [v36 offset];
      if (v5->_buffers[3] == buffer2)
      {
        if (v5->_offsets[3] == offset2)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v5->_buffers[3] = buffer2;
      }

      v5->_offsets[3] = offset2;
      v5->_buffersToBind[0] |= 8uLL;
LABEL_60:
      if (v33)
      {
        v38 = *(v33 + 24);
      }

      else
      {
        v38 = 0;
      }

      if (v5->_buffers[4] == v38)
      {
        if (!v5->_offsets[4])
        {
          goto LABEL_66;
        }
      }

      else
      {
        v5->_buffers[4] = v38;
      }

      v5->_offsets[4] = 0;
      v5->_buffersToBind[0] |= 0x10uLL;
LABEL_66:
      deformedPrimitiveCountBuffer = self->_deformedPrimitiveCountBuffer;
      if (v33)
      {
        v40 = *(v33 + 48);
      }

      else
      {
        v40 = 0;
      }

      if (v5->_buffers[5] == deformedPrimitiveCountBuffer)
      {
        if (v5->_offsets[5] == v40)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v5->_buffers[5] = deformedPrimitiveCountBuffer;
      }

      v5->_offsets[5] = v40;
      v5->_buffersToBind[0] |= 0x20uLL;
LABEL_72:
      if (v33)
      {
        v41 = *(v33 + 56);
      }

      else
      {
        v41 = 0;
      }

      computeEvaluator2 = [(SCNMTLOpenSubdivComputeEvaluator *)v41 computeEvaluator];
      v43 = v50[1];
      if (v5->_computePipelineState != computeEvaluator2)
      {
        v5->_computePipelineState = computeEvaluator2;
        [(MTLComputeCommandEncoder *)v5->_encoder setComputePipelineState:computeEvaluator2];
      }

      SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v5, v43);
      ++v32;
    }

    while (v30 != v32);
    v44 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v51 objects:v71 count:16];
    v30 = v44;
  }

  while (v44);
LABEL_83:
  v50[0] = [(NSMutableArray *)self->_meshElementData count];
  v45 = self->_deformedPrimitiveCountBuffer;
  if (v5->_buffers[0] != v45)
  {
    v5->_buffers[0] = v45;
    goto LABEL_86;
  }

  if (v5->_offsets[0])
  {
LABEL_86:
    v5->_offsets[0] = 0;
    v5->_buffersToBind[0] |= 1uLL;
  }

  v46 = self->_drawIndexedPrimitivesIndirectBuffer;
  if (v5->_buffers[1] != v46)
  {
    v5->_buffers[1] = v46;
    goto LABEL_90;
  }

  if (v5->_offsets[1])
  {
LABEL_90:
    v5->_offsets[1] = 0;
    v5->_buffersToBind[0] |= 2uLL;
  }

  SCNMTLComputeCommandEncoder::setBytes(v5, v50, 4uLL, 2uLL);
  computeEvaluator3 = [(SCNMTLOpenSubdivComputeEvaluator *)self->_finalizeComputePipeline computeEvaluator];
  v48 = v50[0];
  if (v5->_computePipelineState != computeEvaluator3)
  {
    v5->_computePipelineState = computeEvaluator3;
    [(MTLComputeCommandEncoder *)v5->_encoder setComputePipelineState:computeEvaluator3];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v5, v48);
LABEL_94:
  [(MTLComputeCommandEncoder *)v5->_encoder popDebugGroup];
  return 1;
}

void *__110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_59(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    result = [*(result[4] + 24) objectAtIndexedSubscript:a3 - 1];
    if (result)
    {
      v4 = result[1];
      v5 = result[5];
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
      if (!a2)
      {
        return result;
      }
    }

    v6 = v5 + v4;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v6 = *(*(result[5] + 8) + 24);
  }

  *(a2 + 40) = v6;
  return result;
}

- (void)initWithNode:(NSObject *)a3 deformer:outputs:computeVertexCount:context:.cold.1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "dataKind == kC3DMeshDataKindOriginal";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Only original data kind can have non 'GPU' primitive type", a1);
}

- (void)initWithNode:(NSObject *)a3 deformer:outputs:computeVertexCount:context:.cold.2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "C3DMeshElementGetType(meshElement) == kC3DMeshElementTypeTrianglesArray";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Variable topology sample expects triangles", a1);
}

- (void)initWithNode:(const void *)a3 deformer:(const void *)a4 outputs:computeVertexCount:context:.cold.4(const void *a1, const void *a2, const void *a3, const void *a4)
{
  _Block_object_dispose(a1, 8);
  _Block_object_dispose(a2, 8);
  _Block_object_dispose(a3, 8);
  _Block_object_dispose(a4, 8);
}

void __110__SCNGeometryVariableTopologySampleDeformerInstance_initWithNode_deformer_outputs_computeVertexCount_context___block_invoke_55_cold_1(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = C3DMeshSourceSemanticToSemanticString(a1);
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Unsupported semantic %@", &v3, 0xCu);
}

@end