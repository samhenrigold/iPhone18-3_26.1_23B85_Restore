@interface VFXMTLBezierCurveDeformer
- (VFXMTLBezierCurveDeformer)initWithMeshlessGeometry:(__CFXGeometry *)geometry outputs:(unint64_t)outputs deformDataKind:(unsigned __int8)kind finalDataKind:(unsigned __int8)dataKind resourceManager:(id)manager computeContext:(id)context;
- (id)bufferForCommonProfileArgumentNamed:(id)named;
- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers;
- (void)dealloc;
@end

@implementation VFXMTLBezierCurveDeformer

- (VFXMTLBezierCurveDeformer)initWithMeshlessGeometry:(__CFXGeometry *)geometry outputs:(unint64_t)outputs deformDataKind:(unsigned __int8)kind finalDataKind:(unsigned __int8)dataKind resourceManager:(id)manager computeContext:(id)context
{
  v92 = *MEMORY[0x1E69E9840];
  v89.receiver = self;
  v89.super_class = VFXMTLBezierCurveDeformer;
  v10 = [(VFXMTLBezierCurveDeformer *)&v89 init:geometry];
  if (v10)
  {
    *v10->_anon_10 = sub_1AF15B34C(geometry);
    *&v10->_anon_10[16] = v11;
    *&v10->_anon_10[32] = v12;
    *&v10->_anon_10[48] = v13;
    v14 = sub_1AF15B364(geometry);
    v15 = sub_1AF21D644(v14);
    v16 = v15;
    v18 = v17;
    v19 = HIDWORD(v15);
    v88 = 0;
    v20 = sub_1AF21D658(v14, &v88);
    v10->_curveControlPointCount = v16;
    v10->_curveInfo.segmentCountLinear = v19;
    v10->_curveInfo.segmentCountQuadratic = v18;
    v21 = HIDWORD(v18);
    v10->_curveInfo.segmentCountCubic = WORD2(v18);
    v22 = v19 + 20;
    if (!v19)
    {
      v22 = 20;
    }

    v10->_curveInfo.segmentInfoOffsetLinear = 20;
    v23 = v22 + v18;
    v10->_curveInfo.segmentInfoOffsetQuadratic = v22;
    v24 = v21 == 0;
    if (v21)
    {
      LOWORD(v25) = (v23 + 15) & 0xFFF0;
    }

    else
    {
      v25 = (v22 + v18);
    }

    if (v24)
    {
      v26 = v22 + v18;
    }

    else
    {
      v26 = ((v23 + 15) & 0x7FFFFFFF0) + ((HIDWORD(v18) & 0x1FFFFFFF) << 10);
    }

    v10->_curveInfo.segmentInfoOffsetCubic = v25;
    v27 = v88;
    v28 = 2 * v88;
    v29 = (v26 + 1) & 0x1FFFFFFFFFELL;
    v10->_curveInfo.controlPointIndicesOffset = v29;
    v30 = v29 + 2 * v27;
    v31 = malloc_type_malloc(v30, 0x100004077774924uLL);
    v32 = *&v10->_curveInfo.monotonicSubsegmentCountCubic;
    v31[4] = *&v10->_curveInfo.controlPointIndicesOffset;
    *v31 = v32;
    memcpy(v31 + v10->_curveInfo.controlPointIndicesOffset, v20, v28);
    sub_1AFDE8444(manager, v31, v30, 0);
    v10->_bezierCurveInfoBuffer = v33;
    free(v31);
    v36 = objc_msgSend_vertexDescriptor(MEMORY[0x1E69741E0], v34, v35);
    LODWORD(v28) = sub_1AF1F1A7C(30);
    LODWORD(v30) = sub_1AF1F1A7C(29);
    v39 = objc_msgSend_attributes(v36, v37, v38);
    v41 = objc_msgSend_objectAtIndexedSubscript_(v39, v40, 0);
    objc_msgSend_setFormat_(v41, v42, 30);
    objc_msgSend_setOffset_(v41, v43, 0);
    objc_msgSend_setBufferIndex_(v41, v44, 18);
    v47 = objc_msgSend_layouts(v36, v45, v46);
    v50 = objc_msgSend_bufferIndex(v41, v48, v49);
    v52 = objc_msgSend_objectAtIndexedSubscript_(v47, v51, v50);
    objc_msgSend_setStride_(v52, v53, v28);
    objc_msgSend_setStepFunction_(v52, v54, 1);
    v57 = objc_msgSend_attributes(v36, v55, v56);
    v59 = objc_msgSend_objectAtIndexedSubscript_(v57, v58, 6);
    objc_msgSend_setFormat_(v59, v60, 29);
    objc_msgSend_setOffset_(v59, v61, 0);
    objc_msgSend_setBufferIndex_(v59, v62, 19);
    v65 = objc_msgSend_layouts(v36, v63, v64);
    v68 = objc_msgSend_bufferIndex(v59, v66, v67);
    v70 = objc_msgSend_objectAtIndexedSubscript_(v65, v69, v68);
    objc_msgSend_setStride_(v70, v71, v30);
    objc_msgSend_setStepFunction_(v70, v72, 1);
    sub_1AFDE851C(manager, 4 * v30, 32);
    v10->_quadTexcoordsBuffer = v73;
    sub_1AFDE851C(manager, 4 * v28, 32);
    v10->_quadPositionsBuffer = v74;
    v75 = objc_alloc_init(VFXMTLMeshElement);
    sub_1AFDEA2A8(v75, 4);
    sub_1AFDEA4AC(v75, 0, 2);
    v76 = objc_alloc_init(VFXMTLMesh);
    v10->_quadMesh = v76;
    sub_1AFDEA024(v76, v36);
    v91 = *&v10->_quadPositionsBuffer;
    v78 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v77, &v91, 2);
    sub_1AFDEA1F4(v10->_quadMesh, v78);
    v90 = v75;
    v80 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v79, &v90, 1);
    sub_1AFDEA214(v10->_quadMesh, v80);

    v10->_buildQuadGeometryPipeline = objc_msgSend_computePipelineStateForKernel_(manager, v81, @"deformer_bezier_build_quad_geometry");
    v10->_initBezierCurveInfoPipeline = objc_msgSend_computePipelineStateForKernel_(manager, v82, @"deformer_bezier_init_info");
    if (v10->_curveInfo.segmentCountLinear)
    {
      v84 = objc_msgSend_computePipelineStateForKernel_(manager, v83, @"deformer_bezier_build_info_linear");
    }

    else
    {
      v84 = 0;
    }

    v10->_buildBezierCurveInfoPipelineLinear = v84;
    if (v10->_curveInfo.segmentCountQuadratic)
    {
      v85 = objc_msgSend_computePipelineStateForKernel_(manager, v83, @"deformer_bezier_build_info_quadratic");
    }

    else
    {
      v85 = 0;
    }

    v10->_buildBezierCurveInfoPipelineQuadratic = v85;
    if (v10->_curveInfo.segmentCountCubic)
    {
      v86 = objc_msgSend_computePipelineStateForKernel_(manager, v83, @"deformer_bezier_build_info_cubic");
    }

    else
    {
      v86 = 0;
    }

    v10->_buildBezierCurveInfoPipelineCubic = v86;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLBezierCurveDeformer;
  [(VFXMTLBezierCurveDeformer *)&v3 dealloc];
}

- (id)bufferForCommonProfileArgumentNamed:(id)named
{
  if (objc_msgSend_isEqualToString_(named, a2, @"vfx_bezier_curve_data"))
  {
    v6 = 128;
    return *(&self->super.isa + v6);
  }

  if (objc_msgSend_isEqualToString_(named, v5, @"vfx_bezier_curve_controlPoints"))
  {
    v6 = 136;
    return *(&self->super.isa + v6);
  }

  return 0;
}

- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers
{
  v7 = objc_msgSend_currentFrameHash(context, a2, context);
  if (self->_currentFrameHash == v7)
  {
    return 0;
  }

  self->_currentFrameHash = v7;
  var0 = buffers->var0;
  var1 = buffers->var1;
  self->_lastDeformedCurveControlPointsBuffer = var1;
  v13 = objc_msgSend_currentComputeEncoder(context, v8, v9);
  objc_msgSend_resetCache(v13, v14, v15);
  segmentCountLinear = self->_curveInfo.segmentCountLinear;
  segmentCountQuadratic = self->_curveInfo.segmentCountQuadratic;
  v46 = segmentCountQuadratic;
  v47 = segmentCountLinear;
  segmentCountCubic = self->_curveInfo.segmentCountCubic;
  v45 = segmentCountCubic;
  objc_msgSend_setBuffer_offset_atIndex_(v13, v19, self->_bezierCurveInfoBuffer, 0, 0);
  v20 = sub_1AFDE323C(self->_initBezierCurveInfoPipeline);
  objc_msgSend_dispatchOne_(v13, v21, v20);
  objc_msgSend_setBuffer_offset_atIndex_(v13, v22, var0, 0, 1);
  if (segmentCountLinear)
  {
    objc_msgSend_setBytes_length_atIndex_(v13, v23, &v47, 4, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v24, self->_bezierCurveInfoBuffer, self->_curveInfo.controlPointIndicesOffset, 2);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v25, self->_bezierCurveInfoBuffer, self->_curveInfo.segmentInfoOffsetLinear, 3);
    v26 = sub_1AFDE323C(self->_buildBezierCurveInfoPipelineLinear);
    objc_msgSend_dispatchOnVertices_vertexCount_(v13, v27, v26, v47);
  }

  if (segmentCountQuadratic)
  {
    objc_msgSend_setBytes_length_atIndex_(v13, v23, &v46, 4, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v28, self->_bezierCurveInfoBuffer, self->_curveInfo.controlPointIndicesOffset + 4 * v47, 2);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v29, self->_bezierCurveInfoBuffer, self->_curveInfo.segmentInfoOffsetQuadratic, 3);
    v30 = sub_1AFDE323C(self->_buildBezierCurveInfoPipelineQuadratic);
    objc_msgSend_dispatchOnVertices_vertexCount_(v13, v31, v30, v46);
  }

  if (segmentCountCubic)
  {
    objc_msgSend_setBytes_length_atIndex_(v13, v23, &v45, 4, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v32, self->_bezierCurveInfoBuffer, self->_curveInfo.controlPointIndicesOffset + 2 * (3 * v46 + 2 * v47), 2);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v33, self->_bezierCurveInfoBuffer, 0, 3);
    objc_msgSend_setBuffer_offset_atIndex_(v13, v34, self->_bezierCurveInfoBuffer, self->_curveInfo.segmentInfoOffsetCubic, 4);
    v35 = sub_1AFDE323C(self->_buildBezierCurveInfoPipelineCubic);
    objc_msgSend_dispatchOnVertices_vertexCount_(v13, v36, v35, v45);
  }

  curveControlPointCount = self->_curveControlPointCount;
  objc_msgSend_setBytes_length_atIndex_(v13, v23, &curveControlPointCount, 4, 0);
  v10 = 1;
  objc_msgSend_setBytes_length_atIndex_(v13, v37, self->_anon_10, 64, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v13, v38, var1, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v13, v39, self->_quadPositionsBuffer, 0, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v13, v40, self->_quadTexcoordsBuffer, 0, 4);
  v41 = sub_1AFDE323C(self->_buildQuadGeometryPipeline);
  objc_msgSend_dispatchOnVertices_vertexCount_(v13, v42, v41, 1);
  return v10;
}

@end