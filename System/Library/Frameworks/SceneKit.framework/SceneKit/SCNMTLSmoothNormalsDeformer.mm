@interface SCNMTLSmoothNormalsDeformer
- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers;
- (void)dealloc;
- (void)initWithMesh:(uint64_t)mesh dataKind:(void *)kind resourceManager:(void *)manager computeContext:;
@end

@implementation SCNMTLSmoothNormalsDeformer

void __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke(_BOOL8 result, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v6 = result;
  *&v20[5] = *MEMORY[0x277D85DE8];
  if (a4 <= 2)
  {
    v7 = scn_default_log(result, a2);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    if (result)
    {
      __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke_cold_1(v7, a2, v8, v9, v10, v11, v12, v13);
      if (!a4)
      {
        return;
      }
    }

    else if (!a4)
    {
      return;
    }
  }

  v14 = a4;
  do
  {
    v15 = *(v6 + 32);
    v16 = a3;
    if (v15)
    {
      v16 = (v15 + 4 * *a3);
    }

    v17 = *v16;
    if (v17 >= *(v6 + 48))
    {
      v18 = scn_default_log(result, a2);
      result = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);
      if (result)
      {
        __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke_cold_2(v19, v20, v18);
      }
    }

    ++*(*(v6 + 40) + 4 * v17);
    ++a3;
    --v14;
  }

  while (v14);
}

void __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke_3(uint64_t result, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  if (a4 <= 2)
  {
    v7 = scn_default_log(result, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke_3_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      if (!a4)
      {
        return;
      }
    }

    else if (!a4)
    {
      return;
    }
  }

  v15 = *(result + 32);
  v16 = *(result + 40);
  v17 = a4;
  v18 = a3;
  do
  {
    v19 = v18;
    if (v15)
    {
      v19 = (v15 + 4 * *v18);
    }

    v20 = *v19;
    v21 = *(v16 + 4 * v20);
    if (!v21)
    {
      break;
    }

    v22 = *(*(result + 48) + 4 * v20);
    v23 = v21 - 1;
    *(v16 + 4 * v20) = v23;
    v24 = v22 + v23;
    if ((v22 + v23) >= *(result + 72))
    {
      break;
    }

    v25 = *a3;
    v26 = 3 * v24;
    if (*(result + 76) == 1)
    {
      v27 = *(result + 56);
      *(v27 + 2 * v26) = v25;
      v28 = a3[2];
      *(v27 + 2 * (v26 + 1)) = a3[1];
      *(v27 + 2 * (v26 + 2)) = v28;
    }

    else
    {
      v29 = *(result + 64);
      *(v29 + 4 * v26) = v25;
      *(v29 + 4 * (v26 + 1)) = a3[1];
      *(v29 + 4 * (v26 + 2)) = a3[2];
    }

    ++v18;
    --v17;
  }

  while (v17);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLSmoothNormalsDeformer;
  [(SCNMTLSmoothNormalsDeformer *)&v3 dealloc];
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
  var1 = buffers->var1;
  if (var1)
  {
    currentComputeEncoder->_buffers[0] = var1;
    currentComputeEncoder->_buffersToBind[0] |= 1uLL;
  }

  var3 = buffers->var3;
  if (var3)
  {
    currentComputeEncoder->_buffers[1] = var3;
    currentComputeEncoder->_offsets[1] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 2uLL;
  }

  perVertexTrianglesOffsets = self->_perVertexTrianglesOffsets;
  if (perVertexTrianglesOffsets)
  {
    currentComputeEncoder->_buffers[2] = perVertexTrianglesOffsets;
    currentComputeEncoder->_offsets[2] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 4uLL;
  }

  perVertexTrianglesIndices = self->_perVertexTrianglesIndices;
  if (perVertexTrianglesIndices)
  {
    currentComputeEncoder->_buffers[3] = perVertexTrianglesIndices;
    currentComputeEncoder->_offsets[3] = 0;
    currentComputeEncoder->_buffersToBind[0] |= 8uLL;
  }

  SCNMTLComputeCommandEncoder::setBytes(currentComputeEncoder, &self->_baseVertexCount, 4uLL, 4uLL);
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)self->_smoothNormalsPipeline computeEvaluator];
  baseVertexCount = self->_baseVertexCount;
  if (currentComputeEncoder->_computePipelineState != computeEvaluator)
  {
    currentComputeEncoder->_computePipelineState = computeEvaluator;
    [(MTLComputeCommandEncoder *)currentComputeEncoder->_encoder setComputePipelineState:computeEvaluator];
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid1D(currentComputeEncoder, baseVertexCount);
  return 1;
}

- (void)initWithMesh:(uint64_t)mesh dataKind:(void *)kind resourceManager:(void *)manager computeContext:
{
  v109 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v105.receiver = self;
  v105.super_class = SCNMTLSmoothNormalsDeformer;
  v8 = objc_msgSendSuper2(&v105, sel_init);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  managerCopy = manager;
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a2, 0, 0, mesh);
  v91 = v9;
  *(v9 + 4) = C3DMeshSourceGetCount(SourceWithSemanticAtIndex, v11);
  ElementsCount = C3DMeshGetElementsCount(a2, v12);
  C3DMeshGetChannelForSourceWithSemanticAtIndex(a2, 0, 0);
  PositionSource = C3DMeshGetPositionSource(a2, 0);
  Count = C3DMeshSourceGetCount(PositionSource, v15);
  v104 = 0;
  PositionDeindexedToOriginalTable = C3DMeshGetPositionDeindexedToOriginalTable(a2, &v104);
  PositionOriginalToFirstDeindexedTable = C3DMeshGetPositionOriginalToFirstDeindexedTable(a2);
  WeldRemappingTable = 0;
  if (!PositionOriginalToFirstDeindexedTable)
  {
    WeldRemappingTable = C3DMeshSourceCreateWeldRemappingTable(SourceWithSemanticAtIndex, v17, v18, v19, v20, v21, v22, v23);
  }

  v95 = Count;
  v96 = Count;
  v97 = malloc_type_calloc(4uLL, Count, 0x100004052888210uLL);
  if (ElementsCount >= 1)
  {
    for (i = 0; i != ElementsCount; ++i)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a2, i, 0);
      v28 = OUTLINED_FUNCTION_1_13(ElementAtIndex);
      if ((v108 & 0xFA) != 0)
      {
        v30 = scn_default_log(v28, v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21BEF7000, v30, OS_LOG_TYPE_DEFAULT, "Warning: SCNMTLSmoothNormalsDeformer can only process triangles and polygons", buf, 2u);
        }
      }

      else
      {
        v31 = OUTLINED_FUNCTION_3_5();
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke;
        v101[3] = &__block_descriptor_52_e19_v32__0I8_I12I20_B24l;
        v102 = v96;
        v101[4] = WeldRemappingTable;
        v101[5] = v97;
        C3DIndicesContentEnumeratePrimitives(buf, v101, v31);
      }
    }
  }

  v32 = v97;
  if (WeldRemappingTable && v96)
  {
    v33 = 0;
    do
    {
      v34 = WeldRemappingTable[v33];
      if (v33 != v34)
      {
        v97[v33] = v97[v34];
      }

      ++v33;
    }

    while (v95 != v33);
  }

  v87 = 4 * v96 + 4;
  v35 = OUTLINED_FUNCTION_4_8(v87 & 0x3FFFFFFFCLL);
  v36 = v35;
  *v35 = 0;
  if (v96)
  {
    v37 = 0;
    v38 = v35 + 1;
    v39 = v95;
    v40 = v97;
    do
    {
      v41 = *v40++;
      v37 += v41;
      *v38++ = v37;
      --v39;
    }

    while (v39);
  }

  if (PositionOriginalToFirstDeindexedTable)
  {
    v42 = v104;
  }

  else
  {
    v42 = v96;
  }

  v94 = v42 < 0x10000;
  v43 = v35[v95];
  if (v42 < 0x10000)
  {
    v44 = 1;
  }

  else
  {
    v44 = 2;
  }

  if (v43)
  {
    v88 = v42;
    v93 = v35[v95];
    v85 = (3 * v43) << v44;
    v86 = v44;
    v45 = malloc_type_calloc(v85, 1uLL, 0xB2C8C36FuLL);
    v47 = v45;
    if (ElementsCount >= 1)
    {
      for (j = 0; j != ElementsCount; ++j)
      {
        v49 = C3DMeshGetElementAtIndex(a2, j, 0);
        v50 = OUTLINED_FUNCTION_1_13(v49);
        if ((v108 & 0xFA) != 0)
        {
          v52 = scn_default_log(v50, v51);
          v45 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
          if (v45)
          {
            *buf = 0;
            _os_log_impl(&dword_21BEF7000, v52, OS_LOG_TYPE_DEFAULT, "Warning: SCNMTLSmoothNormalsDeformer can only process triangles and polygons", buf, 2u);
          }
        }

        else
        {
          v53 = OUTLINED_FUNCTION_3_5();
          v98[0] = MEMORY[0x277D85DD0];
          v98[1] = 3221225472;
          v98[2] = __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke_3;
          v98[3] = &__block_descriptor_77_e19_v32__0I8_I12I20_B24l;
          v98[4] = WeldRemappingTable;
          v98[5] = v97;
          v99 = v93;
          v100 = v94;
          v98[6] = v36;
          v98[7] = v47;
          v98[8] = v47;
          C3DIndicesContentEnumeratePrimitives(buf, v98, v53);
        }
      }
    }

    v32 = v97;
    if (WeldRemappingTable)
    {
      v54 = v95;
      if (v96)
      {
        v55 = 0;
        do
        {
          v56 = WeldRemappingTable[v55];
          if (v55 != v56)
          {
            if (!v32[v55])
            {
              v57 = scn_default_log(v45, v46);
              v45 = os_log_type_enabled(v57, OS_LOG_TYPE_FAULT);
              if (v45)
              {
                *v106 = 136315138;
                v107 = "perVertexTriangleCount[vertexIndex] > 0";
                _os_log_fault_impl(&dword_21BEF7000, v57, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. splitted vertices should not have been decremented yet", v106, 0xCu);
              }
            }

            if (v32[v56])
            {
              v58 = scn_default_log(v45, v46);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
              {
                *v106 = 136315138;
                v107 = "perVertexTriangleCount[weldedVertexIndex] == 0";
                _os_log_fault_impl(&dword_21BEF7000, v58, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. welded vertices should have been entirely decremented", v106, 0xCu);
              }
            }

            v32 = v97;
            v59 = (3 * v36[v56]);
            v60 = (3 * v36[v55]);
            v61 = (3 * v97[v55]);
            if (HIWORD(v88))
            {
              v62 = &v47[4 * v60];
              v63 = 4 * v61;
              v64 = &v47[4 * v59];
            }

            else
            {
              v62 = &v47[2 * v60];
              v63 = 2 * v61;
              v64 = &v47[2 * v59];
            }

            v45 = memcpy(v62, v64, v63);
            v54 = v95;
          }

          ++v55;
        }

        while (v54 != v55);
      }

      free(WeldRemappingTable);
    }

    if (PositionDeindexedToOriginalTable)
    {
      v66 = 4 * (v104 + 1);
      v67 = OUTLINED_FUNCTION_4_8(v66);
      v68 = v67;
      *v67 = 0;
      v42 = v88;
      if (v104)
      {
        v69 = 0;
        for (k = 0; k < v104; v67[++k] = v69)
        {
          v69 += v36[*(PositionDeindexedToOriginalTable + 4 * k) + 1] - v36[*(PositionDeindexedToOriginalTable + 4 * k)];
        }

        v71 = (3 * v67[v104]);
      }

      else
      {
        v71 = 0;
      }

      v72 = v71 << v86;
      v73 = malloc_type_calloc(v71 << v86, 1uLL, 0xDF242D5AuLL);
      v74 = v73;
      if (v104)
      {
        for (m = 0; m < v104; ++m)
        {
          v76 = *(PositionDeindexedToOriginalTable + 4 * m);
          v77 = v36[(v76 + 1)];
          v78 = v36[v76];
          v79 = (v77 - v78);
          v80 = 3 * v78;
          v81 = 3 * v68[m];
          if (v88 >= 0x10000)
          {
            if (v77 != v78)
            {
              do
              {
                *(v73 + v81) = *(PositionOriginalToFirstDeindexedTable + 4 * *&v47[4 * v80]);
                *(v73 + v81 + 1) = *(PositionOriginalToFirstDeindexedTable + 4 * *&v47[4 * v80 + 4]);
                *(v73 + v81 + 2) = *(PositionOriginalToFirstDeindexedTable + 4 * *&v47[4 * v80 + 8]);
                v81 += 3;
                v80 += 3;
                --v79;
              }

              while (v79);
            }
          }

          else if (v77 != v78)
          {
            do
            {
              *(v73 + v81) = *(PositionOriginalToFirstDeindexedTable + 4 * *&v47[2 * v80]);
              *(v73 + v81 + 1) = *(PositionOriginalToFirstDeindexedTable + 4 * *&v47[2 * v80 + 2]);
              *(v73 + v81 + 2) = *(PositionOriginalToFirstDeindexedTable + 4 * *&v47[2 * v80 + 4]);
              v81 += 3;
              v80 += 3;
              --v79;
            }

            while (v79);
          }
        }
      }

      v91[3] = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](kind, v68, v66, [managerCopy currentBlitEncoder]);
      v91[4] = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](kind, v74, v72, [managerCopy currentBlitEncoder]);
      free(v68);
      free(v74);
      v32 = v97;
    }

    else
    {
      v91[3] = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](kind, v36, v87 & 0x3FFFFFFFCLL, [managerCopy currentBlitEncoder]);
      v91[4] = -[SCNMTLResourceManager newPrivateBufferWithBytes:length:blitEncoder:](kind, v47, v85, [managerCopy currentBlitEncoder]);
      v42 = v88;
    }

    free(v47);
  }

  free(v32);
  free(v36);
  if (v42 >= 0x10000)
  {
    v82 = @"unify_u32";
  }

  else
  {
    v82 = @"unify_u16";
  }

  v83 = [kind computePipelineStateForKernel:v82];
  v65 = v91;
  v91[5] = v83;
  return v65;
}

void __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "indicesCount >= 3";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. unexpected vertex count", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "vertexIndex < originalVertexCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. indexed index overflow", a1);
}

void __84__SCNMTLSmoothNormalsDeformer_initWithMesh_dataKind_resourceManager_computeContext___block_invoke_3_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "indicesCount >= 3";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. expecting at least triangles here", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end