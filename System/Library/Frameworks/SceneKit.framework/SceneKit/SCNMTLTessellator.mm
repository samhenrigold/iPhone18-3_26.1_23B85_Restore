@interface SCNMTLTessellator
- ($7A7BD8EC73F1DE0C75AE87F164959927)_pipelineStateHashForMeshElement:(id)element patchType:(unsigned __int8)type;
- (SCNMTLTessellator)initWithGeometry:(__C3DGeometry *)geometry resourceManager:(id)manager;
- (id)newPipelineStateConfiguratorForMeshElement:(id)element patchType:(unsigned __int8)type device:(id)device;
- (unsigned)pipelineStateHashForMeshElement:(id)element patchType:(unsigned __int8)type;
- (void)constrainedEdgeLengthTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context;
- (void)dealloc;
- (void)draw:(id *)draw;
- (void)screenSpaceAdaptiveTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context;
- (void)subdivisionSurfaceTessellationDraw:(id *)draw;
- (void)uniformTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context;
- (void)update:(id *)update;
- (void)updateConstrainedEdgeLengthTessellator:(id *)tessellator parameters:(id *)parameters;
- (void)updateScreenSpaceAdaptiveTessellator:(id *)tessellator parameters:(id *)parameters;
- (void)updateSubdivisionSurfaceTessellator:(id *)tessellator parameters:(id *)parameters;
- (void)updateUniformTessellator:(id *)tessellator;
@end

@implementation SCNMTLTessellator

- (SCNMTLTessellator)initWithGeometry:(__C3DGeometry *)geometry resourceManager:(id)manager
{
  v7.receiver = self;
  v7.super_class = SCNMTLTessellator;
  result = [(SCNMTLTessellator *)&v7 init];
  if (result)
  {
    result->_geometry = geometry;
    result->_resourceManager = manager;
    *&result->_cachedTessellator.tessellationPartitionMode = 0;
    result->_cachedTessellator.parameters = 0;
    *&result->_cachedTessellator.type = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLTessellator;
  [(SCNMTLTessellator *)&v3 dealloc];
}

- ($7A7BD8EC73F1DE0C75AE87F164959927)_pipelineStateHashForMeshElement:(id)element patchType:(unsigned __int8)type
{
  type = self->_cachedTessellator.type;
  if ((type - 1) < 3)
  {
    tessellationPartitionMode = self->_cachedTessellator.tessellationPartitionMode;
LABEL_5:
    v9 = (tessellationPartitionMode & 3);
    goto LABEL_6;
  }

  if (type == 4)
  {
    GPUContext = C3DGeometryOpenSubdivGetGPUContext(self->_geometry, 0, 0);
    LOBYTE(tessellationPartitionMode) = C3DSubdivisionOsdGPUGetTessellationPartitionMode(GPUContext);
    type = self->_cachedTessellator.type;
    goto LABEL_5;
  }

  v9 = 1;
LABEL_6:
  if (type == 4)
  {
    C3DGeometryOpenSubdivGetGPUContext(self->_geometry, 0, 0);
    v9 = (*&v9 & 0xFFFFFFF3 | (4 * (C3DSceneSourceGetSceneCount() & 3)));
    type = self->_cachedTessellator.type;
  }

  else if (type == 3)
  {
    v9 = (*&v9 | 4);
    goto LABEL_11;
  }

  if ((type - 1) < 3)
  {
LABEL_11:
    elements = [(SCNMTLMesh *)element elements];
    if (elements == 1)
    {
      v9 = (*&v9 | 0x20);
    }

    else if (elements)
    {
      v12 = scn_default_log(elements, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLTessellator _pipelineStateHashForMeshElement:element patchType:v12];
      }
    }

    else
    {
      v9 = (*&v9 | 0x10);
    }

    goto LABEL_22;
  }

  if (type != 4)
  {
    if (!type)
    {
      return v9;
    }

    goto LABEL_23;
  }

  C3DGeometryOpenSubdivGetGPUContext(self->_geometry, 0, 0);
  v9 = (*&v9 & 0xFFFFFFCF | (16 * (C3DParticleManagerGetUpdateQueue() & 3)));
LABEL_22:
  type = self->_cachedTessellator.type;
LABEL_23:
  if ((type - 1) < 3)
  {
    return (*&v9 | ((self->_cachedTessellator.tessellationFactorScale != 1.0) << 6));
  }

  return v9;
}

- (unsigned)pipelineStateHashForMeshElement:(id)element patchType:(unsigned __int8)type
{
  if ((type - 1) <= 1u && self->_cachedTessellator.type == 4)
  {
    return 0;
  }

  else
  {
    return [(SCNMTLTessellator *)self _pipelineStateHashForMeshElement:element patchType:v4, v5];
  }
}

- (id)newPipelineStateConfiguratorForMeshElement:(id)element patchType:(unsigned __int8)type device:(id)device
{
  if ((type - 1) <= 1u && self->_cachedTessellator.type == 4)
  {
    return 0;
  }

  v13 = v5;
  v14 = v6;
  v9 = [(SCNMTLTessellator *)self _pipelineStateHashForMeshElement:element patchType:?];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__SCNMTLTessellator_newPipelineStateConfiguratorForMeshElement_patchType_device___block_invoke;
  v11[3] = &unk_278302250;
  v12 = v9;
  v11[4] = device;
  return _Block_copy(v11);
}

uint64_t __81__SCNMTLTessellator_newPipelineStateConfiguratorForMeshElement_patchType_device___block_invoke(uint64_t a1, void *a2)
{
  [a2 setTessellationPartitionMode:*(a1 + 40) & 3];
  [a2 setTessellationFactorStepFunction:(*(a1 + 40) >> 2) & 3];
  [a2 setTessellationControlPointIndexType:(*(a1 + 40) >> 4) & 3];
  [a2 setTessellationFactorScaleEnabled:(*(a1 + 40) >> 6) & 1];
  [a2 setTessellationFactorFormat:0];
  [a2 setTessellationOutputWindingOrder:1];
  v4 = [*(a1 + 32) maxTessellationFactor];

  return [a2 setMaxTessellationFactor:v4];
}

- (void)update:(id *)update
{
  v17 = 0uLL;
  v18 = 0;
  C3DGeometryGetTessellator(self->_geometry, a2, &v17);
  v7 = v17.n128_u8[0];
  p_cachedTessellator = &self->_cachedTessellator;
  if (v17.n128_u8[0] != self->_cachedTessellator.type)
  {

    self->_tessellationFactorBuffer = 0;
    v7 = v17.n128_u8[0];
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      v13 = v17;
      *&v14 = v18;
      [(SCNMTLTessellator *)self updateUniformTessellator:&v13];
    }

    else
    {
      v12 = scn_default_log(v5, v6);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLTessellator update:v12];
      }
    }
  }

  else
  {
    switch(v7)
    {
      case 2:
        v16 = v18;
        v10 = *&update->var2;
        v13 = *&update->var0;
        v14 = v10;
        v15 = v17;
        [(SCNMTLTessellator *)self updateScreenSpaceAdaptiveTessellator:&v15 parameters:&v13];
        break;
      case 3:
        v16 = v18;
        v11 = *&update->var2;
        v13 = *&update->var0;
        v14 = v11;
        v15 = v17;
        [(SCNMTLTessellator *)self updateConstrainedEdgeLengthTessellator:&v15 parameters:&v13];
        break;
      case 4:
        v16 = v18;
        v9 = *&update->var2;
        v13 = *&update->var0;
        v14 = v9;
        v15 = v17;
        [(SCNMTLTessellator *)self updateSubdivisionSurfaceTessellator:&v15 parameters:&v13];
        break;
    }
  }

  *p_cachedTessellator = v17;
  p_cachedTessellator[1].n128_u64[0] = v18;
}

- (void)draw:(id *)draw
{
  v12 = 0uLL;
  v13 = 0;
  *&v7 = C3DGeometryGetTessellator(self->_geometry, a2, &v12).n128_u64[0];
  if (v12.n128_u8[0] <= 1u)
  {
    if (v12.n128_u8[0])
    {
      if (v12.n128_u8[0] != 1)
      {
        return;
      }
    }

    else
    {
      v9 = scn_default_log(v5, v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLTessellator update:v9];
      }
    }

    [(SCNMTLTessellator *)self uniformTessellationDrawMeshElement:draw->var3 forMesh:draw->var1 instanceCount:draw->var4 renderContext:draw->var5];
    return;
  }

  switch(v12.n128_u8[0])
  {
    case 2u:
      [(SCNMTLTessellator *)self screenSpaceAdaptiveTessellationDrawMeshElement:draw->var3 forMesh:draw->var1 instanceCount:draw->var4 renderContext:draw->var5, v7];
      break;
    case 3u:
      [(SCNMTLTessellator *)self constrainedEdgeLengthTessellationDrawMeshElement:draw->var3 forMesh:draw->var1 instanceCount:draw->var4 renderContext:draw->var5, v7];
      break;
    case 4u:
      v8 = *&draw->var2;
      v10[0] = *&draw->var0;
      v10[1] = v8;
      v10[2] = *&draw->var4;
      v11 = *&draw->var6;
      [(SCNMTLTessellator *)self subdivisionSurfaceTessellationDraw:v10];
      break;
  }
}

- (void)updateUniformTessellator:(id *)tessellator
{
  var0 = tessellator->var4.var0.var0;
  var1 = tessellator->var4.var0.var1;
  v6 = HIWORD(LODWORD(var0)) & 0x8000;
  v7 = (LODWORD(var0) >> 23);
  v8 = v7 - 112;
  v9 = v6 | 0x7BFF;
  if ((LODWORD(var0) & 0x7FFFFF) != 0)
  {
    LOWORD(v10) = v6 + 1;
  }

  else
  {
    v10 = HIWORD(LODWORD(var0)) & 0x8000;
  }

  v11 = v10 | 0x7C00;
  if (v7 == 255)
  {
    v9 = v11;
  }

  v12 = v7 - 113;
  if (v7 >= 0x71)
  {
    LOWORD(v13) = v9;
  }

  else
  {
    v13 = HIWORD(LODWORD(var0)) & 0x8000;
  }

  v14 = HIWORD(LODWORD(var0)) & 0x8000 | (LODWORD(var0) >> 13) & 0x3FF | (v8 << 10);
  if (v12 > 0x1D)
  {
    LOWORD(v14) = v13;
  }

  WORD2(v25) = v14;
  WORD1(v25) = v14;
  LOWORD(v25) = v14;
  v15 = HIWORD(LODWORD(var1)) & 0x8000;
  v16 = (LODWORD(var1) >> 23);
  v17 = v16 - 112;
  v18 = v16 - 113;
  v19 = v15 | 0x7BFF;
  if ((LODWORD(var1) & 0x7FFFFF) != 0)
  {
    LOWORD(v20) = v15 + 1;
  }

  else
  {
    v20 = HIWORD(LODWORD(var1)) & 0x8000;
  }

  v21 = v20 | 0x7C00;
  if (v16 == 255)
  {
    v19 = v21;
  }

  if (v16 >= 0x71)
  {
    LOWORD(v22) = v19;
  }

  else
  {
    v22 = HIWORD(LODWORD(var1)) & 0x8000;
  }

  v23 = HIWORD(LODWORD(var1)) & 0x8000 | (LODWORD(var1) >> 13) & 0x3FF | (v17 << 10);
  if (v18 > 0x1D)
  {
    LOWORD(v23) = v22;
  }

  HIWORD(v25) = v23;
  tessellationFactorBuffer = self->_tessellationFactorBuffer;
  if (tessellationFactorBuffer)
  {
    if (*&tessellator->var4 != *&self->_cachedTessellator.parameters)
    {
      *[(MTLBuffer *)tessellationFactorBuffer contents]= v25;
    }
  }

  else
  {
    self->_tessellationFactorBuffer = [-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](self->_resourceManager) newBufferWithBytes:&v25 length:8 options:0];
  }
}

- (void)uniformTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context
{
  renderEncoder = [(SCNMTLRenderContext *)context renderEncoder];
  *&v11 = self->_cachedTessellator.tessellationFactorScale;
  [*(renderEncoder + 3392) setTessellationFactorScale:v11];
  [*(renderEncoder + 3392) setTessellationFactorBuffer:self->_tessellationFactorBuffer offset:0 instanceStride:0];

  [(SCNMTLRenderContext *)context _drawPatchForMeshElement:element instanceCount:count];
}

- (void)updateScreenSpaceAdaptiveTessellator:(id *)tessellator parameters:(id *)parameters
{
  v83 = *MEMORY[0x277D85DE8];
  var0 = parameters->var0;
  resourceComputeEncoder = [(SCNMTLRenderContext *)parameters->var1 resourceComputeEncoder];
  bzero(resourceComputeEncoder, 0x678uLL);
  v7 = resourceComputeEncoder[207];
  selfCopy = self;
  if (!self->_tessellationFactorBuffer)
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    elements = [(SCNMTLMesh *)var0 elements];
    v9 = [elements countByEnumeratingWithState:&v76 objects:v82 count:16];
    if (v9)
    {
      v10 = 0;
      v11 = *v77;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v77 != v11)
          {
            objc_enumerationMutation(elements);
          }

          v10 += [(SCNMTLMeshElement *)*(*(&v76 + 1) + 8 * i) primitiveCount];
        }

        v9 = [elements countByEnumeratingWithState:&v76 objects:v82 count:16];
      }

      while (v9);
      v9 = 24 * v10;
    }

    selfCopy->_tessellationFactorBuffer = [-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](selfCopy->_resourceManager) newBufferWithLength:v9 options:32];
  }

  commandQueue = [(SCNMTLResourceManager *)var0 commandQueue];
  v44 = [objc_msgSend(commandQueue "attributes")];
  v43 = [objc_msgSend(commandQueue "layouts")];
  [v7 pushDebugGroup:@"Compute SCNGeometryScreenSpaceAdaptiveTessellator tessellation factors"];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v45 = var0;
  obj = [(SCNMTLMesh *)var0 elements];
  v48 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v48)
  {
    v14 = 0;
    v41 = *v73;
    v42 = v7;
    v40 = vdupq_n_s64(1uLL);
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v73 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v72 + 1) + 8 * j);
        elements2 = [(SCNMTLMesh *)v16 elements];
        if (elements2)
        {
          if (elements2 == 1)
          {
            v19 = @"compute_tessellation_factors_screeenspace_adaptive_uint32";
          }

          else
          {
            v20 = scn_default_log(elements2, v18);
            v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
            v19 = &stru_282DCC058;
            if (v21)
            {
              [SCNMTLTessellator updateScreenSpaceAdaptiveTessellator:v80 parameters:v16];
              v19 = &stru_282DCC058;
            }
          }
        }

        else
        {
          v19 = @"compute_tessellation_factors_screeenspace_adaptive_uint16";
        }

        computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)[(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:v19] computeEvaluator];
        primitiveCount = [(SCNMTLMeshElement *)v16 primitiveCount];
        buffer = [-[SCNMTLMeshElement indexBuffer](v16) buffer];
        offset = [-[SCNMTLMeshElement indexBuffer](v16) offset];
        libraryManager = [(SCNMTLResourceManager *)v16 libraryManager];
        v49 = [-[SCNMTLMesh buffers](v45) objectAtIndexedSubscript:{objc_msgSend(v44, "bufferIndex") - 18}];
        stride = [v43 stride];
        threadExecutionWidth = [computeEvaluator threadExecutionWidth];
        engineContext = [(SCNMTLRenderContext *)parameters->var1 engineContext];
        Viewport = C3DEngineContextGetViewport(engineContext);
        v28 = tessellator->var4.var0.var0;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        Viewport.n128_f32[0] = Viewport.n128_f32[3] / v28;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        LODWORD(v58) = primitiveCount;
        BYTE4(v58) = stride;
        var2 = parameters->var2;
        v30 = *var2;
        v31 = *(var2 + 1);
        v32 = *(var2 + 3);
        v61 = *(var2 + 2);
        v62 = v32;
        v59 = v30;
        v60 = v31;
        v33 = *(var2 + 4);
        v34 = *(var2 + 5);
        v35 = *(var2 + 7);
        v65 = *(var2 + 6);
        v66 = v35;
        v63 = v33;
        v64 = v34;
        v36 = *(var2 + 8);
        v37 = *(var2 + 9);
        v38 = *(var2 + 11);
        v69 = *(var2 + 10);
        v70 = v38;
        v67 = v36;
        v68 = v37;
        LODWORD(v71) = Viewport.n128_u32[0];
        v7 = v42;
        [v42 setComputePipelineState:computeEvaluator];
        [v42 setBuffer:selfCopy->_tessellationFactorBuffer offset:24 * v14 atIndex:0];
        [v42 setBuffer:buffer offset:libraryManager + offset atIndex:1];
        [v42 setBuffer:v49 offset:0 atIndex:2];
        [v42 setBytes:&v58 length:224 atIndex:3];
        v56 = (primitiveCount + threadExecutionWidth - 1) / threadExecutionWidth;
        v57 = v40;
        v54 = threadExecutionWidth;
        v55 = v40;
        [v42 dispatchThreadgroups:&v56 threadsPerThreadgroup:&v54];
        v14 += primitiveCount;
      }

      v48 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v48);
  }

  [v7 popDebugGroup];
}

- (void)screenSpaceAdaptiveTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  elements = [(SCNMTLMesh *)mesh elements];
  v11 = [elements countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v20;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v20 != v14)
      {
        objc_enumerationMutation(elements);
      }

      v16 = *(*(&v19 + 1) + 8 * v15);
      if (v16 == element)
      {
        break;
      }

      v13 += [(SCNMTLMeshElement *)v16 primitiveCount];
      if (v12 == ++v15)
      {
        v12 = [elements countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  renderEncoder = [(SCNMTLRenderContext *)context renderEncoder];
  *&v18 = self->_cachedTessellator.tessellationFactorScale;
  [*(renderEncoder + 3392) setTessellationFactorScale:{v18, v19}];
  [*(renderEncoder + 3392) setTessellationFactorBuffer:self->_tessellationFactorBuffer offset:24 * v13 instanceStride:0];
  [(SCNMTLRenderContext *)context _drawPatchForMeshElement:element instanceCount:count];
}

- (void)updateConstrainedEdgeLengthTessellator:(id *)tessellator parameters:(id *)parameters
{
  v57 = *MEMORY[0x277D85DE8];
  var0 = parameters->var0;
  if (self->_tessellationFactorBuffer)
  {
    if (tessellator->var4.var0.var0 == self->_cachedTessellator.parameters.uniform.edgeTessellationFactor)
    {
      return;
    }
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    elements = [(SCNMTLMesh *)var0 elements];
    v9 = [elements countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v9)
    {
      v10 = 0;
      v11 = *v51;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(elements);
          }

          v10 += [(SCNMTLMeshElement *)*(*(&v50 + 1) + 8 * i) primitiveCount];
        }

        v9 = [elements countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v9);
      v9 = 24 * v10;
    }

    self->_tessellationFactorBuffer = [-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](self->_resourceManager) newBufferWithLength:v9 options:32];
  }

  selfCopy = self;
  tessellatorCopy = tessellator;
  resourceComputeEncoder = [(SCNMTLRenderContext *)parameters->var1 resourceComputeEncoder];
  bzero(resourceComputeEncoder, 0x678uLL);
  v14 = resourceComputeEncoder[207];
  commandQueue = [(SCNMTLResourceManager *)var0 commandQueue];
  v33 = [objc_msgSend(commandQueue "attributes")];
  v32 = [objc_msgSend(commandQueue "layouts")];
  [v14 pushDebugGroup:@"Compute kC3DGeometryTessellatorTypeConstrainedEdgeLength tessellation factors"];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v34 = var0;
  obj = [(SCNMTLMesh *)var0 elements];
  v37 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v37)
  {
    v16 = 0;
    v31 = *v47;
    v30 = vdupq_n_s64(1uLL);
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v46 + 1) + 8 * j);
        elements2 = [(SCNMTLMesh *)v18 elements];
        if (elements2)
        {
          if (elements2 == 1)
          {
            v21 = @"compute_tessellation_factors_constrained_edge_uint32";
          }

          else
          {
            v22 = scn_default_log(elements2, v20);
            v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
            v21 = &stru_282DCC058;
            if (v23)
            {
              [SCNMTLTessellator updateScreenSpaceAdaptiveTessellator:v54 parameters:v18];
              v21 = &stru_282DCC058;
            }
          }
        }

        else
        {
          v21 = @"compute_tessellation_factors_constrained_edge_uint16";
        }

        computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)[(SCNMTLResourceManager *)selfCopy->_resourceManager computePipelineStateForKernel:v21] computeEvaluator];
        primitiveCount = [(SCNMTLMeshElement *)v18 primitiveCount];
        buffer = [-[SCNMTLMeshElement indexBuffer](v18) buffer];
        offset = [-[SCNMTLMeshElement indexBuffer](v18) offset];
        libraryManager = [(SCNMTLResourceManager *)v18 libraryManager];
        v26 = [-[SCNMTLMesh buffers](v34) objectAtIndexedSubscript:{objc_msgSend(v33, "bufferIndex") - 18}];
        stride = [v32 stride];
        threadExecutionWidth = [computeEvaluator threadExecutionWidth];
        v45[0] = primitiveCount;
        v45[1] = stride;
        v45[2] = LODWORD(tessellatorCopy->var4.var0.var0);
        [v14 setComputePipelineState:computeEvaluator];
        [v14 setBuffer:selfCopy->_tessellationFactorBuffer offset:24 * v16 atIndex:0];
        [v14 setBuffer:buffer offset:libraryManager + offset atIndex:1];
        [v14 setBuffer:v26 offset:0 atIndex:2];
        [v14 setBytes:v45 length:12 atIndex:3];
        v43 = (primitiveCount + threadExecutionWidth - 1) / threadExecutionWidth;
        v44 = v30;
        v41 = threadExecutionWidth;
        v42 = v30;
        [v14 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
        v16 += primitiveCount;
      }

      v37 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v37);
  }

  [v14 popDebugGroup];
}

- (void)constrainedEdgeLengthTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  elements = [(SCNMTLMesh *)mesh elements];
  v11 = [elements countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v20;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v20 != v14)
      {
        objc_enumerationMutation(elements);
      }

      v16 = *(*(&v19 + 1) + 8 * v15);
      if (v16 == element)
      {
        break;
      }

      v13 += [(SCNMTLMeshElement *)v16 primitiveCount];
      if (v12 == ++v15)
      {
        v12 = [elements countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  renderEncoder = [(SCNMTLRenderContext *)context renderEncoder];
  *&v18 = self->_cachedTessellator.tessellationFactorScale;
  [*(renderEncoder + 3392) setTessellationFactorScale:{v18, v19}];
  [*(renderEncoder + 3392) setTessellationFactorBuffer:self->_tessellationFactorBuffer offset:24 * v13 instanceStride:0];
  [(SCNMTLRenderContext *)context _drawPatchForMeshElement:element instanceCount:count];
}

- (void)updateSubdivisionSurfaceTessellator:(id *)tessellator parameters:(id *)parameters
{
  GPUContext = C3DGeometryOpenSubdivGetGPUContext(self->_geometry, 0, 0);
  GPUContext[1] = tessellator->var1;
  v8 = [(SCNMTLMesh *)parameters->var0 bufferForAttribute:?];
  lastFramePositionBuffer = self->_lastFramePositionBuffer;
  if (lastFramePositionBuffer)
  {
    v10 = lastFramePositionBuffer == v8;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  self->_lastFramePositionBuffer = v8;
  v12 = parameters->var4 | v11;
  if (v12)
  {
    C3DSubdivisionOsdGPUSynchroniseCoarseMeshForDeformers(GPUContext, v8, parameters->var1, parameters->var3);
LABEL_10:
    C3DSubdivisionOsdGPUComputeTessellationFactors(GPUContext, parameters->var1, parameters->var2, parameters->var3, v13);
    goto LABEL_11;
  }

  if (C3DSubdivisionOsdGPURequiresTessellationFactorsInitialization(GPUContext))
  {
    goto LABEL_10;
  }

LABEL_11:
  engineContext = [(SCNMTLRenderContext *)parameters->var1 engineContext];
  AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(engineContext, 0);
  if (AuthoringEnvironment && (C3DAuthoringEnvironmentGetDisplayMask(AuthoringEnvironment) & 0x4000) != 0)
  {
    geometry = self->_geometry;
    var0 = parameters->var0;
    var1 = parameters->var1;

    C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData(geometry, var0, var1, v12 & 1);
  }
}

- (void)subdivisionSurfaceTessellationDraw:(id *)draw
{
  v5 = [C3DMeshGetMeshElements(draw->var0 0)];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  GPUContext = C3DGeometryOpenSubdivGetGPUContext(self->_geometry, 0, 0);
  var5 = draw->var5;
  var6 = draw->var6;
  var4 = draw->var4;

  C3DSubdivisionOsdGPUDraw(GPUContext, var5, var6, v6, var4);
}

- (void)_pipelineStateHashForMeshElement:(uint64_t)a1 patchType:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = [(SCNMTLMesh *)a1 elements];
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Unknown index type %d", v3, 8u);
}

- (void)updateScreenSpaceAdaptiveTessellator:(uint64_t)a1 parameters:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_16(a1, a2);
  *v3 = 67109120;
  *v2 = v4;
  OUTLINED_FUNCTION_1_15(&dword_21BEF7000, v5, v6, "Unreachable code: Unknown index type %d");
}

@end