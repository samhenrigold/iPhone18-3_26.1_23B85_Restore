@interface VFXModelWrapDeformerInstance
- (unint64_t)updateWithContext:(id)context;
- (void)dealloc;
@end

@implementation VFXModelWrapDeformerInstance

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXModelWrapDeformerInstance;
  [(VFXModelWrapDeformerInstance *)&v3 dealloc];
}

- (unint64_t)updateWithContext:(id)context
{
  v5 = objc_msgSend__currentFrameHash(context, a2, context);
  if (self->_currentFrameHash == v5)
  {
    return 0;
  }

  self->_currentFrameHash = v5;
  v9 = objc_msgSend__currentRenderContext(context, v6, v7);
  v13 = objc_msgSend_resourceComputeEncoder(v9, v10, v11);
  if (self->_isLegacySingleLayerDeformer)
  {
    v14 = sub_1AF1B9B04(self->_legacyDrivingNode, v12);
    v79 = v14[1];
    v81 = *v14;
    v83 = v14[3];
    v85 = v14[2];
    v95 = *sub_1AF1B9B04(self->_deformedNode, v15);
    v96 = __invert_f4(v95);
    v17 = 0;
    v87 = v81;
    v88 = v79;
    v89 = v85;
    v90 = v83;
    do
    {
      *(&v91 + v17) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v96.columns[0], COERCE_FLOAT(*(&v87 + v17))), v96.columns[1], *(&v87 + v17), 1), v96.columns[2], *(&v87 + v17), 2), v96.columns[3], *(&v87 + v17), 3);
      v17 += 16;
    }

    while (v17 != 64);
    v18 = v92;
    v19 = v93;
    v20 = v94;
    p_vertexCount = &self->_legacyUniforms.vertexCount;
    *&self->_anon_114[12] = v91;
    *&self->_anon_114[28] = v18;
    *&self->_anon_114[44] = v19;
    *&self->_anon_114[60] = v20;
    objc_msgSend_setBytes_length_atIndex_(v13, v16, &self->_legacyUniforms, 80, 0);
    v24 = objc_msgSend_dependency0PositionBuffer(context, v22, v23);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v25, v24, 0, 1);
    v28 = objc_msgSend_dstPositionBuffer(context, v26, v27);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v29, v28, 0, 11);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v30, self->_pointIndicesBuffer, 0, 3);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v31, self->_barycentricCoordsBuffer, 0, 4);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v32, self->_legacyOffsetsOrTransformsBuffer, 0, 6);
    if (self->_bindingMode == 1)
    {
      v35 = objc_msgSend_srcPositionBuffer(context, v33, v34);
      objc_msgSend_setBuffer_offset_atIndex_(v13, v36, v35, 0, 10);
    }
  }

  else
  {
    v37 = sub_1AF1B9B04(self->_innerLayerNode, v12);
    v75 = v37[1];
    v76 = *v37;
    v77 = v37[3];
    v78 = v37[2];
    v39 = sub_1AF1B9B04(self->_outerLayerNode, v38);
    v80 = v39[1];
    v82 = *v39;
    v84 = v39[3];
    v86 = v39[2];
    v97 = *sub_1AF1B9B04(self->_deformedNode, v40);
    v98 = __invert_f4(v97);
    v42 = 0;
    v87 = v76;
    v88 = v75;
    v89 = v78;
    v90 = v77;
    do
    {
      *(&v91 + v42) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98.columns[0], COERCE_FLOAT(*(&v87 + v42))), v98.columns[1], *(&v87 + v42), 1), v98.columns[2], *(&v87 + v42), 2), v98.columns[3], *(&v87 + v42), 3);
      v42 += 16;
    }

    while (v42 != 64);
    v43 = 0;
    v44 = v92;
    v45 = v93;
    v46 = v94;
    *&self->_anon_14[12] = v91;
    *&self->_anon_14[28] = v44;
    *&self->_anon_14[44] = v45;
    *&self->_anon_14[60] = v46;
    v87 = v82;
    v88 = v80;
    v89 = v86;
    v90 = v84;
    do
    {
      *(&v91 + v43) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98.columns[0], COERCE_FLOAT(*(&v87 + v43))), v98.columns[1], *(&v87 + v43), 1), v98.columns[2], *(&v87 + v43), 2), v98.columns[3], *(&v87 + v43), 3);
      v43 += 16;
    }

    while (v43 != 64);
    p_vertexCount = &self->_uniforms.vertexCount;
    v47 = v92;
    v48 = v93;
    v49 = v94;
    *&self->_anon_14[76] = v91;
    *&self->_anon_14[92] = v47;
    *&self->_anon_14[108] = v48;
    *&self->_anon_14[124] = v49;
    objc_msgSend_setBytes_length_atIndex_(v13, v41, &self->_uniforms, 144, 0);
    v52 = objc_msgSend_dependency0PositionBuffer(context, v50, v51);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v53, v52, 0, 1);
    v56 = objc_msgSend_dependency1PositionBuffer(context, v54, v55);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v57, v56, 0, 2);
    v60 = objc_msgSend_dstPositionBuffer(context, v58, v59);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v61, v60, 0, 11);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v62, self->_pointIndicesBuffer, 0, 3);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v63, self->_barycentricCoordsBuffer, 0, 4);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v64, self->_innerLayerInfluencesBuffer, 0, 5);
    if (self->_bindingMode == 1)
    {
      v66 = objc_msgSend_srcPositionBuffer(context, v33, v65);
      objc_msgSend_setBuffer_offset_atIndex_(v13, v67, v66, 0, 10);
      objc_msgSend_setBuffer_offset_atIndex_(v13, v68, self->_innerBindingSpaceVectorsBuffer, 0, 8);
      objc_msgSend_setBuffer_offset_atIndex_(v13, v69, self->_outerBindingSpaceVectorsBuffer, 0, 9);
      objc_msgSend_setBuffer_offset_atIndex_(v13, v70, self->_innerBindingOffsetsBuffer, 0, 6);
      objc_msgSend_setBuffer_offset_atIndex_(v13, v71, self->_outerBindingOffsetsBuffer, 0, 7, v75, v76, v77, v78);
    }
  }

  v72 = *p_vertexCount;
  v91 = 0uLL;
  *&v92 = 0;
  *(&v92 + 1) = v72;
  v93 = vdupq_n_s64(1uLL);
  objc_msgSend_setStageInRegion_(v13, v33, &v91, v75, v76, v77, v78);
  v73 = sub_1AFDE323C(self->_computePipeline);
  objc_msgSend_dispatchOnVertices_vertexCount_(v13, v74, v73, *p_vertexCount);
  return 1;
}

@end