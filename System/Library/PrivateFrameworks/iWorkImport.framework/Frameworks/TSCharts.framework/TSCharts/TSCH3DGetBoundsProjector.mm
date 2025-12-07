@interface TSCH3DGetBoundsProjector
- (TSCH3DGetBoundsProjector)init;
- (box<glm::detail::tvec3<float>>)projectBounds:(SEL)bounds type:(void *)type;
- (id).cxx_construct;
- (tvec3<float>)backProjectModelViewPoint:(void *)point;
- (void)dealloc;
- (void)reset;
- (void)resetTransformsForLayoutBounds;
- (void)resetTransformsForRenderBounds;
- (void)setCamera:(id)camera accessor:(id)accessor;
@end

@implementation TSCH3DGetBoundsProjector

- (TSCH3DGetBoundsProjector)init
{
  v8.receiver = self;
  v8.super_class = TSCH3DGetBoundsProjector;
  result = [(TSCH3DGetBoundsProjector *)&v8 init];
  if (result)
  {
    result->_modelView.value[0].var0.var0 = 1.0;
    *&result->_modelView.value[0].var3.var0 = 0;
    *&result->_modelView.value[0].var1.var0 = 0;
    result->_modelView.value[1].var1.var0 = 1.0;
    *&result->_modelView.value[1].var2.var0 = 0;
    *&result->_modelView.value[2].var0.var0 = 0;
    result->_modelView.value[2].var2.var0 = 1.0;
    *&result->_modelView.value[3].var1.var0 = 0;
    *&result->_modelView.value[2].var3.var0 = 0;
    result->_modelView.value[3].var3.var0 = 1.0;
    result->_projection.value[0].var0.var0 = 1.0;
    *&result->_projection.value[0].var3.var0 = 0;
    *&result->_projection.value[0].var1.var0 = 0;
    result->_projection.value[1].var1.var0 = 1.0;
    *&result->_projection.value[1].var2.var0 = 0;
    *&result->_projection.value[2].var0.var0 = 0;
    result->_projection.value[2].var2.var0 = 1.0;
    *&result->_projection.value[3].var1.var0 = 0;
    *&result->_projection.value[2].var3.var0 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *&result->_projection.value[3].var3.var0 = _D0;
    *&result->_MVP.value[0].var3.var0 = 0;
    *&result->_MVP.value[0].var1.var0 = 0;
    result->_MVP.value[1].var1.var0 = 1.0;
    *&result->_MVP.value[1].var2.var0 = 0;
    *&result->_MVP.value[2].var0.var0 = 0;
    result->_MVP.value[2].var2.var0 = 1.0;
    *&result->_MVP.value[2].var3.var0 = 0;
    *&result->_MVP.value[3].var1.var0 = 0;
    result->_MVP.value[3].var3.var0 = 1.0;
  }

  return result;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_camera);

  if (WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DGetBoundsProjector dealloc]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 75, 0, "expected nil value for '%{public}s'", "_camera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (self->_accessor)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DGetBoundsProjector dealloc]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 76, 0, "expected nil value for '%{public}s'", "_accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38.receiver = self;
  v38.super_class = TSCH3DGetBoundsProjector;
  [(TSCH3DGetBoundsProjector *)&v38 dealloc];
}

- (void)reset
{
  objc_storeWeak(&self->_camera, 0);
  accessor = self->_accessor;
  self->_accessor = 0;
}

- (void)setCamera:(id)camera accessor:(id)accessor
{
  obj = camera;
  accessorCopy = accessor;
  if (!accessorCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DGetBoundsProjector setCamera:accessor:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 85, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_storeWeak(&self->_camera, obj);
  accessor = self->_accessor;
  self->_accessor = accessorCopy;
}

- (void)resetTransformsForLayoutBounds
{
  self->_useAggressiveBackProjection = 0;
  WeakRetained = objc_loadWeakRetained(&self->_camera);

  if (!WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DGetBoundsProjector resetTransformsForLayoutBounds]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 92, 0, "invalid nil value for '%{public}s'", "_camera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (!self->_accessor)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DGetBoundsProjector resetTransformsForLayoutBounds]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 93, 0, "invalid nil value for '%{public}s'", "_accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = objc_loadWeakRetained(&self->_camera);
  v42 = v38;
  if (v38)
  {
    objc_msgSend_normalizedProjection(v38, v39, v40, v41);
    v43 = v71;
    v44 = v72;
    v45 = v73;
    v46 = v74;
  }

  else
  {
    v43 = 0;
    v73 = 0;
    v74 = 0;
    v71 = 0;
    v72 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
  }

  self->_projection.value[0] = v43;
  self->_projection.value[1] = v44;
  self->_projection.value[2] = v45;
  self->_projection.value[3] = v46;

  v47 = objc_loadWeakRetained(&self->_camera);
  v51 = v47;
  if (v47)
  {
    objc_msgSend_space(v47, v48, v49, v50);
  }

  else
  {
    v73 = 0;
    v74 = 0;
    v71 = 0;
    v72 = 0;
  }

  accessor = self->_accessor;
  if (accessor)
  {
    objc_msgSend_stageTransform(accessor, v52, v53, v54);
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
  }

  sub_2761558A0(&v71, &v63, &v67);
  v57 = v68;
  self->_modelView.value[0] = v67;
  self->_modelView.value[1] = v57;
  v58 = *&v69.var0.var0;
  v59 = v70;
  self->_modelView.value[2] = v69;
  self->_modelView.value[3] = v59;
  v60 = self->_accessor;
  if (v60)
  {
    objc_msgSend_constantDepthStageTransform(v60, v58, *&v59.var0.var0, v56);
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
  }

  sub_2761558A0(&v71, &v63, &v67);
  v61 = v68;
  self->_constantDepthModelView.value[0] = v67;
  self->_constantDepthModelView.value[1] = v61;
  v62 = v70;
  self->_constantDepthModelView.value[2] = v69;
  self->_constantDepthModelView.value[3] = v62;
}

- (void)resetTransformsForRenderBounds
{
  self->_useAggressiveBackProjection = 1;
  WeakRetained = objc_loadWeakRetained(&self->_camera);

  if (!WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DGetBoundsProjector resetTransformsForRenderBounds]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 103, 0, "invalid nil value for '%{public}s'", "_camera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (!self->_accessor)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DGetBoundsProjector resetTransformsForRenderBounds]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 104, 0, "invalid nil value for '%{public}s'", "_accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = objc_loadWeakRetained(&self->_camera);
  v42 = v38;
  if (v38)
  {
    objc_msgSend_normalizedProjection(v38, v39, v40, v41);
    v43 = v83;
    v44 = v84;
    v45 = v85;
    v46 = v86;
  }

  else
  {
    v43 = 0;
    v85 = 0;
    v86 = 0;
    v83 = 0;
    v84 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
  }

  self->_projection.value[0] = v43;
  self->_projection.value[1] = v44;
  self->_projection.value[2] = v45;
  self->_projection.value[3] = v46;

  v47 = objc_loadWeakRetained(&self->_camera);
  v51 = v47;
  if (v47)
  {
    objc_msgSend_space(v47, v48, v49, v50);
  }

  else
  {
    v85 = 0;
    v86 = 0;
    v83 = 0;
    v84 = 0;
  }

  accessor = self->_accessor;
  if (accessor)
  {
    objc_msgSend_transform(accessor, v52, v53, v54);
  }

  else
  {
    memset(v72, 0, sizeof(v72));
  }

  *&v56 = sub_2761558A0(&v83, v72, v73).u64[0];
  v59 = self->_accessor;
  if (v59)
  {
    objc_msgSend_stageTransform(v59, v56, v57, v58);
  }

  else
  {
    memset(v71, 0, sizeof(v71));
  }

  sub_2761558A0(v73, v71, &v74);
  v60 = v74.i64[0];
  *&self->_modelView.value[0].var0.var0 = v74.i64[0];
  v61 = v74.i64[1];
  *&self->_modelView.value[0].var2.var0 = v74.i64[1];
  v62 = v75;
  v63 = v76;
  self->_modelView.value[1].var0.var0 = v75;
  self->_modelView.value[1].var1.var0 = v63;
  v64 = v77;
  v65 = v78;
  self->_modelView.value[1].var2.var0 = v77;
  self->_modelView.value[1].var3.var0 = v65;
  v66 = v79;
  v67 = v80;
  self->_modelView.value[2].var0.var0 = v79;
  self->_modelView.value[2].var1.var0 = v67;
  self->_constantDepthModelView.value[0].var1.var0 = *(&v60 + 1);
  *&self->_constantDepthModelView.value[0].var2.var0 = v61;
  self->_constantDepthModelView.value[1].var0.var0 = v62;
  self->_constantDepthModelView.value[1].var1.var0 = v63;
  self->_constantDepthModelView.value[1].var2.var0 = v64;
  self->_constantDepthModelView.value[1].var3.var0 = v65;
  self->_constantDepthModelView.value[2].var0.var0 = v66;
  self->_constantDepthModelView.value[2].var1.var0 = v67;
  v68 = v81;
  *&self->_modelView.value[2].var2.var0 = v81.i64[0];
  LODWORD(self->_modelView.value[3].var0.var0) = v68.i32[2];
  v69 = vdupq_laneq_s32(v68, 3);
  *&self->_constantDepthModelView.value[2].var2.var0 = v68;
  v68.i64[0] = v82;
  v70 = vextq_s8(vextq_s8(v69, v69, 4uLL), v68, 0xCuLL);
  v70.i32[3] = v60;
  *&self->_modelView.value[3].var1.var0 = v70;
  *&self->_constantDepthModelView.value[3].var2.var0 = v68.i64[0];
}

- (tvec3<float>)backProjectModelViewPoint:(void *)point
{
  v7 = v3;
  WeakRetained = objc_loadWeakRetained(&self->_camera);

  if (!WeakRetained)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DGetBoundsProjector backProjectModelViewPoint:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 114, 0, "invalid nil value for '%{public}s'", "_camera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_loadWeakRetained(&self->_camera);
  v32 = v28;
  if (v28)
  {
    objc_msgSend_backProjectCameraSpacePoint_(v28, v29, v30, v31);
  }

  else
  {
    v61 = 0.0;
    v60 = 0;
  }

  *v35.i32 = self->_projection.value[3].var3.var0 + (((*(&v60 + 1) * self->_projection.value[1].var3.var0) + (self->_projection.value[0].var3.var0 * *&v60)) + (self->_projection.value[2].var3.var0 * v61));
  v36 = (self->_projection.value[3].var2.var0 + (((*(&v60 + 1) * self->_projection.value[1].var2.var0) + (self->_projection.value[0].var2.var0 * *&v60)) + (self->_projection.value[2].var2.var0 * v61))) / *v35.i32;
  v37 = vdiv_f32(vadd_f32(*&self->_projection.value[3].var0.var0, vmla_n_f32(vmla_n_f32(vmul_n_f32(*&self->_projection.value[1].var0.var0, *(&v60 + 1)), *&self->_projection.value[0].var0.var0, *&v60), *&self->_projection.value[2].var0.var0, v61)), vdup_lane_s32(v35, 0));
  *v7 = v37;
  v7[1].f32[0] = v36;
  if (byte_280A46430 == 1)
  {
    v59 = v37;
    v38 = objc_opt_class();
    v39 = NSStringFromSelector(a2);
    v40 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec3(%f, %f, %f)", *point, *(point + 1), *(point + 2));
    if (v63 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v40, v41, v42, v43, v44, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v40, v41, v42, v43, v44, __p[0]);
    }
    v45 = ;
    if (v63 < 0)
    {
      operator delete(__p[0]);
    }

    v46 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec3(%f, %f, %f)", *&v60, *(&v60 + 1), v61);
    if (v63 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v46, v47, v48, v49, v50, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v46, v47, v48, v49, v50, __p[0]);
    }
    v51 = ;
    v52 = v59;
    if (v63 < 0)
    {
      operator delete(__p[0]);
      v52 = v59;
    }

    v53 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec3(%f, %f, %f)", v52.f32[0], v52.f32[1], v36);
    if (v63 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v53, v54, v55, v56, v57, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v53, v54, v55, v56, v57, __p[0]);
    }
    v58 = ;
    if (v63 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PPointBackResu.isa, v38, self, v39, v45, v51, v58);
  }

  result.var0 = v33;
  result.var1 = *(&v33 + 4);
  result.var2 = v34;
  return result;
}

- (box<glm::detail::tvec3<float>>)projectBounds:(SEL)bounds type:(void *)type
{
  WeakRetained = objc_loadWeakRetained(&self->_camera);

  if (!WeakRetained)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DGetBoundsProjector projectBounds:type:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 123, 0, "invalid nil value for '%{public}s'", "_camera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  *&retstr->_min.var0.var0 = xmmword_2764D5F00;
  *&retstr->_max.var1.var0 = 0x80000000800000;
  v29 = 8;
  if (a5 == 1)
  {
    v29 = 72;
  }

  v170 = v29;
  result = sub_276155178(type);
  if ((result & 1) == 0)
  {
    v31 = -1;
    v168 = retstr;
    typeCopy = type;
    do
    {
      sub_276154EAC(type, v31 + 1, v175);
      sub_276154744(v175, (self + v170), &v173, v32);
      *v33.i32 = self->_projection.value[3].var3.var0 + (((v173.f32[1] * self->_projection.value[1].var3.var0) + (self->_projection.value[0].var3.var0 * v173.f32[0])) + (self->_projection.value[2].var3.var0 * v174));
      v34 = (self->_projection.value[3].var2.var0 + (((v173.f32[1] * self->_projection.value[1].var2.var0) + (self->_projection.value[0].var2.var0 * v173.f32[0])) + (self->_projection.value[2].var2.var0 * v174))) / *v33.i32;
      v171 = vdiv_f32(vadd_f32(*&self->_projection.value[3].var0.var0, vmla_n_f32(vmla_n_f32(vmul_n_f32(*&self->_projection.value[1].var0.var0, v173.f32[1]), *&self->_projection.value[0].var0.var0, v173.f32[0]), *&self->_projection.value[2].var0.var0, v174)), vdup_lane_s32(v33, 0));
      v172 = v34;
      v35 = objc_loadWeakRetained(&self->_camera);
      v40 = objc_msgSend_lens(v35, v36, v37, v38, v39);

      if (!v40)
      {
        v45 = MEMORY[0x277D81150];
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "[TSCH3DGetBoundsProjector projectBounds:type:]");
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v52, v53, v54, v55, v46, v51, 130, 0, "invalid nil value for '%{public}s'", "_camera.lens");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
      }

      if (v172 < 0.0 || self->_useAggressiveBackProjection && (v154 = v174, v155 = objc_loadWeakRetained(&self->_camera), objc_msgSend_lens(v155, v156, v157, v158, v159), v160 = objc_claimAutoreleasedReturnValue(), objc_msgSend_near(v160, v161, v162, v163, v164), v166 = -v165, v160, v155, v154 > v166))
      {
        v60 = v174;
        v61 = objc_loadWeakRetained(&self->_camera);
        v66 = objc_msgSend_lens(v61, v62, v63, v64, v65);
        objc_msgSend_near(v66, v67, v68, v69, v70);
        v72 = -v71;

        if (v60 <= v72)
        {
          v77 = MEMORY[0x277D81150];
          v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, v74, v75, v76, "[TSCH3DGetBoundsProjector projectBounds:type:]");
          v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v80, v81, v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
          v84 = MEMORY[0x277CCACA8];
          sub_276152FD4(&__p, "vec3(%f, %f, %f)", v173.f32[0], v173.f32[1], v174);
          if (v178 >= 0)
          {
            objc_msgSend_stringWithUTF8String_(v84, v85, v86, v87, v88, &__p);
          }

          else
          {
            objc_msgSend_stringWithUTF8String_(v84, v85, v86, v87, v88, __p);
          }
          v89 = ;
          if (v178 < 0)
          {
            operator delete(__p);
          }

          v90 = MEMORY[0x277CCACA8];
          sub_276152FD4(&__p, "vec3(%f, %f, %f)", v171.f32[0], v171.f32[1], v172);
          if (v178 >= 0)
          {
            objc_msgSend_stringWithUTF8String_(v90, v91, v92, v93, v94, &__p);
          }

          else
          {
            objc_msgSend_stringWithUTF8String_(v90, v91, v92, v93, v94, __p);
          }
          v96 = ;
          if (v178 < 0)
          {
            operator delete(__p);
          }

          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v95, v97, v98, v99, v78, v83, 133, 0, "inconsistent depth for point %@ projected %@", v89, v96);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v100, v101, v102, v103);
          retstr = v168;
          type = typeCopy;
        }

        if (byte_280A46430 == 1)
        {
          v104 = objc_opt_class();
          v105 = NSStringFromSelector(bounds);
          v106 = MEMORY[0x277CCACA8];
          sub_276152FD4(&__p, "vec3(%f, %f, %f)", v175[0], v175[1], v175[2]);
          if (v178 >= 0)
          {
            objc_msgSend_stringWithUTF8String_(v106, v107, v108, v109, v110, &__p);
          }

          else
          {
            objc_msgSend_stringWithUTF8String_(v106, v107, v108, v109, v110, __p);
          }
          v111 = ;
          if (v178 < 0)
          {
            operator delete(__p);
          }

          v112 = MEMORY[0x277CCACA8];
          sub_276152FD4(&__p, "vec3(%f, %f, %f)", v173.f32[0], v173.f32[1], v174);
          if (v178 >= 0)
          {
            objc_msgSend_stringWithUTF8String_(v112, v113, v114, v115, v116, &__p);
          }

          else
          {
            objc_msgSend_stringWithUTF8String_(v112, v113, v114, v115, v116, __p);
          }
          v117 = ;
          if (v178 < 0)
          {
            operator delete(__p);
          }

          v118 = MEMORY[0x277CCACA8];
          sub_276152FD4(&__p, "vec3(%f, %f, %f)", v171.f32[0], v171.f32[1], v172);
          if (v178 >= 0)
          {
            objc_msgSend_stringWithUTF8String_(v118, v119, v120, v121, v122, &__p);
          }

          else
          {
            objc_msgSend_stringWithUTF8String_(v118, v119, v120, v121, v122, __p);
          }
          v123 = ;
          if (v178 < 0)
          {
            operator delete(__p);
          }

          NSLog(&cfstr_PBackProjectin.isa, v104, self, v105, v111, v117, v123);

          retstr = v168;
          type = typeCopy;
        }

        objc_msgSend_backProjectModelViewPoint_(self, v74, v75, v76);
        v171 = __p;
        v172 = v177;
        if (v177 < 0.0 || v177 > 1.0)
        {
          v127 = MEMORY[0x277D81150];
          v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, COERCE_DOUBLE(__PAIR64__(HIDWORD(__p), LODWORD(v177))), v125, v126, "[TSCH3DGetBoundsProjector projectBounds:type:]");
          v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, v130, v131, v132, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
          v134 = MEMORY[0x277CCACA8];
          sub_276152FD4(&__p, "vec3(%f, %f, %f)", v171.f32[0], v171.f32[1], v172);
          if (v178 >= 0)
          {
            objc_msgSend_stringWithUTF8String_(v134, v135, v136, v137, v138, &__p);
          }

          else
          {
            objc_msgSend_stringWithUTF8String_(v134, v135, v136, v137, v138, __p);
          }
          v139 = ;
          if (v178 < 0)
          {
            operator delete(__p);
          }

          v140 = MEMORY[0x277CCACA8];
          sub_276152FD4(&__p, "vec3(%f, %f, %f)", v173.f32[0], v173.f32[1], v174);
          if (v178 >= 0)
          {
            objc_msgSend_stringWithUTF8String_(v140, v141, v142, v143, v144, &__p);
          }

          else
          {
            objc_msgSend_stringWithUTF8String_(v140, v141, v142, v143, v144, __p);
          }
          v146 = ;
          if (v178 < 0)
          {
            operator delete(__p);
          }

          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v127, v145, v147, v148, v149, v128, v133, 138, 0, "invalid back projected %@ from %@", v139, v146);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v150, v151, v152, v153);
          retstr = v168;
          type = typeCopy;
        }
      }

      result = sub_276154FD8(retstr, &v171);
      ++v31;
    }

    while (v31 <= 6);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 1065353216;
  *(self + 20) = 0;
  *(self + 12) = 0;
  *(self + 7) = 1065353216;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 12) = 1065353216;
  *(self + 60) = 0;
  *(self + 52) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(self + 68) = _D0;
  *(self + 84) = 0;
  *(self + 76) = 0;
  *(self + 23) = 1065353216;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 28) = 1065353216;
  *(self + 116) = 0;
  *(self + 124) = 0;
  *(self + 132) = _D0;
  *(self + 148) = 0;
  *(self + 140) = 0;
  *(self + 39) = 1065353216;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 44) = 1065353216;
  *(self + 180) = 0;
  *(self + 188) = 0;
  *(self + 196) = _D0;
  *(self + 204) = 0;
  *(self + 212) = 0;
  *(self + 55) = 1065353216;
  *(self + 28) = 0;
  *(self + 29) = 0;
  *(self + 60) = 1065353216;
  *(self + 252) = 0;
  *(self + 244) = 0;
  *(self + 65) = 1065353216;
  return self;
}

@end