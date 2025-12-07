@interface VFXMTLTessellator
- ($7A7BD8EC73F1DE0C75AE87F164959927)_pipelineStateHashForMeshElement:(id)element patchType:(unsigned __int8)type;
- (VFXMTLTessellator)initWithModel:(__CFXModel *)model resourceManager:(id)manager;
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

@implementation VFXMTLTessellator

- (VFXMTLTessellator)initWithModel:(__CFXModel *)model resourceManager:(id)manager
{
  v7.receiver = self;
  v7.super_class = VFXMTLTessellator;
  result = [(VFXMTLTessellator *)&v7 init];
  if (result)
  {
    result->_model = model;
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
  v3.super_class = VFXMTLTessellator;
  [(VFXMTLTessellator *)&v3 dealloc];
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
    v8 = sub_1AF174F44(self->_model, 0, 0);
    LOBYTE(tessellationPartitionMode) = sub_1AF171620(v8);
    type = self->_cachedTessellator.type;
    goto LABEL_5;
  }

  v9 = 1;
LABEL_6:
  if (type == 4)
  {
    sub_1AF174F44(self->_model, 0, 0);
    v9 = (*&v9 & 0xFFFFFFF3 | (4 * (sub_1AF171634() & 3)));
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
    v10 = sub_1AFDEA208(element);
    if (v10 == 1)
    {
      v9 = (*&v9 | 0x20);
    }

    else if (v10)
    {
      v12 = sub_1AF0D5194(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDEAC68(element, v12);
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

  sub_1AF174F44(self->_model, 0, 0);
  v9 = (*&v9 & 0xFFFFFFCF | (16 * (+[VFXRenderer allocatedTextureCount]_0() & 3)));
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
    return objc_msgSend__pipelineStateHashForMeshElement_patchType_(self, a2, element);
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
  v9 = objc_msgSend__pipelineStateHashForMeshElement_patchType_(self, a2, element);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1AF21BD50;
  v11[3] = &unk_1E7A7D188;
  v12 = v9;
  v11[4] = device;
  return _Block_copy(v11);
}

- (void)update:(id *)update
{
  v17 = 0uLL;
  v18 = 0;
  sub_1AF1B40F0(self->_model, a2, &v17);
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
      objc_msgSend_updateUniformTessellator_(self, v6, &v13);
    }

    else
    {
      v12 = sub_1AF0D5194(v5, v6);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDEACF4(v12);
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
        objc_msgSend_updateScreenSpaceAdaptiveTessellator_parameters_(self, v6, &v15, &v13);
        break;
      case 3:
        v16 = v18;
        v11 = *&update->var2;
        v13 = *&update->var0;
        v14 = v11;
        v15 = v17;
        objc_msgSend_updateConstrainedEdgeLengthTessellator_parameters_(self, v6, &v15, &v13);
        break;
      case 4:
        v16 = v18;
        v9 = *&update->var2;
        v13 = *&update->var0;
        v14 = v9;
        v15 = v17;
        objc_msgSend_updateSubdivisionSurfaceTessellator_parameters_(self, v6, &v15, &v13);
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
  *&v7 = sub_1AF1B40F0(self->_model, a2, &v12).n128_u64[0];
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
      v9 = sub_1AF0D5194(v5, v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDEACF4(v9);
      }
    }

    objc_msgSend_uniformTessellationDrawMeshElement_forMesh_instanceCount_renderContext_(self, v6, draw->var3, draw->var1, draw->var4, draw->var5);
    return;
  }

  switch(v12.n128_u8[0])
  {
    case 2u:
      objc_msgSend_screenSpaceAdaptiveTessellationDrawMeshElement_forMesh_instanceCount_renderContext_(self, v6, draw->var3, draw->var1, draw->var4, draw->var5, v7);
      break;
    case 3u:
      objc_msgSend_constrainedEdgeLengthTessellationDrawMeshElement_forMesh_instanceCount_renderContext_(self, v6, draw->var3, draw->var1, draw->var4, draw->var5, v7);
      break;
    case 4u:
      v8 = *&draw->var2;
      v10[0] = *&draw->var0;
      v10[1] = v8;
      v10[2] = *&draw->var4;
      v11 = *&draw->var6;
      objc_msgSend_subdivisionSurfaceTessellationDraw_(self, v6, v10);
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

  WORD2(v26) = v14;
  WORD1(v26) = v14;
  LOWORD(v26) = v14;
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

  HIWORD(v26) = v23;
  tessellationFactorBuffer = self->_tessellationFactorBuffer;
  if (tessellationFactorBuffer)
  {
    if (*&tessellator->var4 != *&self->_cachedTessellator.parameters)
    {
      *objc_msgSend_contents(tessellationFactorBuffer, a2, tessellator) = v26;
    }
  }

  else
  {
    sub_1AFDE8444(self->_resourceManager, &v26, 8uLL, 0);
    self->_tessellationFactorBuffer = v25;
  }
}

- (void)uniformTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context
{
  v10 = objc_msgSend_renderEncoder(context, a2, element, mesh);
  *&v11 = self->_cachedTessellator.tessellationFactorScale;
  objc_msgSend_setTessellationFactorScale_(*(v10 + 16), v12, v13, v11);
  objc_msgSend_setTessellationFactorBuffer_offset_instanceStride_(*(v10 + 16), v14, self->_tessellationFactorBuffer, 0, 0);

  objc_msgSend__drawPatchForMeshElement_instanceCount_(context, v15, element, count);
}

- (void)updateScreenSpaceAdaptiveTessellator:(id *)tessellator parameters:(id *)parameters
{
  v121 = *MEMORY[0x1E69E9840];
  var0 = parameters->var0;
  v6 = objc_msgSend_resourceComputeEncoder(parameters->var1, a2, tessellator);
  v90 = v6;
  selfCopy = self;
  if (!self->_tessellationFactorBuffer)
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v7 = sub_1AFDEA208(var0);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v114, v120, 16);
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v115;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v115 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v11 += sub_1AFDEA534(*(*(&v114 + 1) + 8 * i));
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, &v114, v120, 16);
      }

      while (v10);
      v15 = 24 * v11;
    }

    else
    {
      v15 = 0;
    }

    sub_1AFDE851C(selfCopy->_resourceManager, v15, 32);
    selfCopy->_tessellationFactorBuffer = v16;
    v6 = v90;
  }

  v17 = sub_1AFDEA004(var0);
  v20 = objc_msgSend_attributes(v17, v18, v19);
  v22 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0);
  v25 = objc_msgSend_layouts(v17, v23, v24);
  v86 = v22;
  v28 = objc_msgSend_bufferIndex(v22, v26, v27);
  v85 = objc_msgSend_objectAtIndexedSubscript_(v25, v29, v28);
  objc_msgSend_pushDebugGroup_(v6, v30, @"Compute VFXModelScreenSpaceAdaptiveTessellator tessellation factors");
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v87 = var0;
  obj = sub_1AFDEA208(var0);
  v32 = v6;
  v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v110, v119, 16);
  if (v92)
  {
    v35 = 0;
    v84 = *v111;
    do
    {
      for (j = 0; j != v92; ++j)
      {
        if (*v111 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v110 + 1) + 8 * j);
        v38 = sub_1AFDEA208(v37);
        if (v38)
        {
          if (v38 == 1)
          {
            v40 = @"compute_tessellation_factors_screeenspace_adaptive_uint32";
          }

          else
          {
            v41 = sub_1AF0D5194(v38, v39);
            v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
            v40 = &stru_1F2575650;
            if (v42)
            {
              sub_1AFDEAD38(v118, v37);
              v40 = &stru_1F2575650;
            }
          }
        }

        else
        {
          v40 = @"compute_tessellation_factors_screeenspace_adaptive_uint16";
        }

        v43 = objc_msgSend_computePipelineStateForKernel_(selfCopy->_resourceManager, v39, v40);
        v94 = sub_1AFDE323C(v43);
        v44 = sub_1AFDEA534(v37);
        v45 = sub_1AFDE868C(v37);
        v95 = objc_msgSend_buffer(v45, v46, v47);
        v48 = sub_1AFDE868C(v37);
        v93 = objc_msgSend_offset(v48, v49, v50);
        v51 = sub_1AFDE8614(v37);
        v52 = sub_1AFDEA1E8(v87);
        v55 = objc_msgSend_bufferIndex(v86, v53, v54);
        v57 = objc_msgSend_objectAtIndexedSubscript_(v52, v56, v55 - 18);
        v60 = objc_msgSend_stride(v85, v58, v59);
        v63 = objc_msgSend_engineContext(parameters->var1, v61, v62);
        v64 = sub_1AF130548(v63);
        v65 = tessellator->var4.var0.var0;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v64.n128_f32[0] = v64.n128_f32[3] / v65;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        LODWORD(v96) = v44;
        BYTE4(v96) = v60;
        var2 = parameters->var2;
        v67 = *var2;
        v68 = *(var2 + 1);
        v69 = *(var2 + 3);
        v99 = *(var2 + 2);
        v100 = v69;
        v97 = v67;
        v98 = v68;
        v70 = *(var2 + 4);
        v71 = *(var2 + 5);
        v72 = *(var2 + 7);
        v103 = *(var2 + 6);
        v104 = v72;
        v101 = v70;
        v102 = v71;
        v73 = *(var2 + 8);
        v74 = *(var2 + 9);
        v75 = *(var2 + 11);
        v107 = *(var2 + 10);
        v108 = v75;
        v105 = v73;
        v106 = v74;
        LODWORD(v109) = v64.n128_u32[0];
        v32 = v90;
        objc_msgSend_setComputePipelineState_(v90, v76, v94);
        objc_msgSend_setBuffer_offset_atIndex_(v90, v77, selfCopy->_tessellationFactorBuffer, 24 * v35, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v90, v78, v95, v51 + v93, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v90, v79, v57, 0, 2);
        objc_msgSend_setBytes_length_atIndex_(v90, v80, &v96, 224, 3);
        objc_msgSend_dispatchOnGrid1D_(v90, v81, v44);
        v35 += v44;
      }

      v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v82, &v110, v119, 16);
    }

    while (v92);
  }

  objc_msgSend_popDebugGroup(v32, v33, v34);
}

- (void)screenSpaceAdaptiveTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = sub_1AFDEA208(mesh);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v26, v30, 16);
  if (v12)
  {
    v15 = v12;
    v16 = 0;
    v17 = *v27;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v27 != v17)
      {
        objc_enumerationMutation(v10);
      }

      v19 = *(*(&v26 + 1) + 8 * v18);
      if (v19 == element)
      {
        break;
      }

      v16 += sub_1AFDEA534(v19);
      if (v15 == ++v18)
      {
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v26, v30, 16);
        if (v15)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = objc_msgSend_renderEncoder(context, v13, v14, v26);
  *&v21 = self->_cachedTessellator.tessellationFactorScale;
  objc_msgSend_setTessellationFactorScale_(*(v20 + 16), v22, v23, v21);
  objc_msgSend_setTessellationFactorBuffer_offset_instanceStride_(*(v20 + 16), v24, self->_tessellationFactorBuffer, 24 * v16, 0);
  objc_msgSend__drawPatchForMeshElement_instanceCount_(context, v25, element, count);
}

- (void)updateConstrainedEdgeLengthTessellator:(id *)tessellator parameters:(id *)parameters
{
  v92 = *MEMORY[0x1E69E9840];
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
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v8 = sub_1AFDEA208(var0);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v85, v91, 16);
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v86;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v86 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v12 += sub_1AFDEA534(*(*(&v85 + 1) + 8 * i));
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v85, v91, 16);
      }

      while (v11);
      v16 = 24 * v12;
    }

    else
    {
      v16 = 0;
    }

    sub_1AFDE851C(self->_resourceManager, v16, 32);
    self->_tessellationFactorBuffer = v17;
  }

  selfCopy = self;
  v18 = objc_msgSend_resourceComputeEncoder(parameters->var1, a2, tessellator);
  v19 = sub_1AFDEA004(var0);
  v22 = objc_msgSend_attributes(v19, v20, v21);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, 0);
  v27 = objc_msgSend_layouts(v19, v25, v26);
  v74 = v24;
  v30 = objc_msgSend_bufferIndex(v24, v28, v29);
  v73 = objc_msgSend_objectAtIndexedSubscript_(v27, v31, v30);
  v77 = v18;
  objc_msgSend_pushDebugGroup_(v18, v32, @"Compute kCFXModelTessellatorTypeConstrainedEdgeLength tessellation factors");
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v75 = var0;
  obj = sub_1AFDEA208(var0);
  v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v81, v90, 16);
  if (v78)
  {
    v36 = 0;
    v72 = *v82;
    do
    {
      for (j = 0; j != v78; ++j)
      {
        if (*v82 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v81 + 1) + 8 * j);
        v39 = sub_1AFDEA208(v38);
        if (v39)
        {
          if (v39 == 1)
          {
            v41 = @"compute_tessellation_factors_constrained_edge_uint32";
          }

          else
          {
            v42 = sub_1AF0D5194(v39, v40);
            v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
            v41 = &stru_1F2575650;
            if (v43)
            {
              sub_1AFDEAD38(v89, v38);
              v41 = &stru_1F2575650;
            }
          }
        }

        else
        {
          v41 = @"compute_tessellation_factors_constrained_edge_uint16";
        }

        v44 = objc_msgSend_computePipelineStateForKernel_(selfCopy->_resourceManager, v40, v41);
        v45 = sub_1AFDE323C(v44);
        v46 = sub_1AFDEA534(v38);
        v47 = sub_1AFDE868C(v38);
        v79 = objc_msgSend_buffer(v47, v48, v49);
        v50 = sub_1AFDE868C(v38);
        v53 = objc_msgSend_offset(v50, v51, v52);
        v54 = sub_1AFDE8614(v38);
        v55 = sub_1AFDEA1E8(v75);
        v58 = objc_msgSend_bufferIndex(v74, v56, v57);
        v60 = objc_msgSend_objectAtIndexedSubscript_(v55, v59, v58 - 18);
        v63 = objc_msgSend_stride(v73, v61, v62);
        v80[0] = v46;
        v80[1] = v63;
        v80[2] = LODWORD(tessellator->var4.var0.var0);
        objc_msgSend_setComputePipelineState_(v77, v64, v45);
        objc_msgSend_setBuffer_offset_atIndex_(v77, v65, selfCopy->_tessellationFactorBuffer, 24 * v36, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v77, v66, v79, v54 + v53, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v77, v67, v60, 0, 2);
        objc_msgSend_setBytes_length_atIndex_(v77, v68, v80, 12, 3);
        objc_msgSend_dispatchOnGrid1D_(v77, v69, v46);
        v36 += v46;
      }

      v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v70, &v81, v90, 16);
    }

    while (v78);
  }

  objc_msgSend_popDebugGroup(v77, v34, v35);
}

- (void)constrainedEdgeLengthTessellationDrawMeshElement:(id)element forMesh:(id)mesh instanceCount:(unint64_t)count renderContext:(id)context
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = sub_1AFDEA208(mesh);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v26, v30, 16);
  if (v12)
  {
    v15 = v12;
    v16 = 0;
    v17 = *v27;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v27 != v17)
      {
        objc_enumerationMutation(v10);
      }

      v19 = *(*(&v26 + 1) + 8 * v18);
      if (v19 == element)
      {
        break;
      }

      v16 += sub_1AFDEA534(v19);
      if (v15 == ++v18)
      {
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v26, v30, 16);
        if (v15)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = objc_msgSend_renderEncoder(context, v13, v14, v26);
  *&v21 = self->_cachedTessellator.tessellationFactorScale;
  objc_msgSend_setTessellationFactorScale_(*(v20 + 16), v22, v23, v21);
  objc_msgSend_setTessellationFactorBuffer_offset_instanceStride_(*(v20 + 16), v24, self->_tessellationFactorBuffer, 24 * v16, 0);
  objc_msgSend__drawPatchForMeshElement_instanceCount_(context, v25, element, count);
}

- (void)updateSubdivisionSurfaceTessellator:(id *)tessellator parameters:(id *)parameters
{
  v7 = sub_1AF174F44(self->_model, 0, 0);
  v7[1] = tessellator->var1;
  v9 = sub_1AFDEA180(parameters->var0, 0, v8);
  lastFramePositionBuffer = self->_lastFramePositionBuffer;
  if (lastFramePositionBuffer)
  {
    v11 = lastFramePositionBuffer == v9;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  self->_lastFramePositionBuffer = v9;
  v13 = parameters->var4 | v12;
  if (v13)
  {
    sub_1AF1762AC(v7, v9, parameters->var1, parameters->var3);
LABEL_10:
    sub_1AF176448(v7, parameters->var1, parameters->var2, parameters->var3, v14);
    goto LABEL_11;
  }

  if (sub_1AF17641C(v7))
  {
    goto LABEL_10;
  }

LABEL_11:
  v17 = objc_msgSend_engineContext(parameters->var1, v15, v16);
  if (sub_1AF12EE9C(v17, 0) && (sub_1AF12EE68(v17) & 0x100) != 0)
  {
    model = self->_model;
    var0 = parameters->var0;
    var1 = parameters->var1;

    sub_1AF176F00(model, var0, var1, v13 & 1);
  }
}

- (void)subdivisionSurfaceTessellationDraw:(id *)draw
{
  v5 = sub_1AF1A516C(draw->var0, 0);
  v7 = objc_msgSend_indexOfObject_(v5, v6, draw->var2);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = sub_1AF174F44(self->_model, 0, 0);
  var5 = draw->var5;
  var6 = draw->var6;
  var4 = draw->var4;

  sub_1AF176848(v9, var5, var6, v8, var4);
}

@end