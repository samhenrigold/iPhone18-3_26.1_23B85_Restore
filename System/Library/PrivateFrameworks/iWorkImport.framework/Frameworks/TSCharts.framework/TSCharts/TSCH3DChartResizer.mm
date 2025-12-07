@interface TSCH3DChartResizer
+ (id)resizerWithLayout:(id)layout chartType:(id)type;
+ (tvec2<float>)adjustLabelWrapSize:(void *)size forScene:(id)scene;
- (BOOL)checkImprovement;
- (BOOL)resize1;
- (TSCH3DChartResizer)initWithLayout:(id)layout chartType:(id)type;
- (float)maxDepthRatio;
- (float)perspectiveness;
- (id).cxx_construct;
- (tvec2<BOOL>)canImprove;
- (tvec2<BOOL>)converges;
- (tvec2<float>)resize:(void *)resize startingSize:(void *)size;
- (tvec2<float>)updateResizerFromRequestedSize:(void *)size startingSize:(void *)startingSize;
- (tvec2<int>)containingViewportFromSize:(void *)size;
- (tvec3<float>)adjust:(void *)adjust;
- (tvec3<float>)adjust:(void *)adjust by:(float)by;
- (tvec3<float>)adjustedScale;
- (tvec3<float>)clamp:(void *)clamp;
- (tvec3<float>)clampDepthRatio:(void *)ratio;
- (void)adjustContainingViewport;
- (void)dealloc;
- (void)initializeResizing:(void *)resizing;
- (void)loop;
- (void)readjustContainingViewport;
- (void)setContainingViewport:(void *)viewport;
- (void)setScale:(void *)scale;
- (void)updateResizeData;
- (void)updateSteps;
@end

@implementation TSCH3DChartResizer

+ (tvec2<float>)adjustLabelWrapSize:(void *)size forScene:(id)scene
{
  v6 = v4;
  sceneCopy = scene;
  v11 = objc_msgSend_main(sceneCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_resizer3DClass(v11, v12, v13, v14, v15);

  if (v16)
  {
    objc_msgSend_adjustLabelWrapSize_(v16, v17, v18, v19, v20, size);
  }

  else
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "+[TSCH3DChartResizer adjustLabelWrapSize:forScene:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 817, 0, "invalid nil value for '%{public}s'", "resizerClass");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
    *v6 = 0;
  }

  return v36;
}

+ (id)resizerWithLayout:(id)layout chartType:(id)type
{
  layoutCopy = layout;
  typeCopy = type;
  v8 = [self alloc];
  v13 = objc_msgSend_initWithLayout_chartType_(v8, v9, v10, v11, v12, layoutCopy, typeCopy);

  return v13;
}

- (TSCH3DChartResizer)initWithLayout:(id)layout chartType:(id)type
{
  layoutCopy = layout;
  typeCopy = type;
  v33.receiver = self;
  v33.super_class = TSCH3DChartResizer;
  v9 = [(TSCH3DChartResizer *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layout, layout);
    if (layoutCopy)
    {
      objc_msgSend_layoutSettings(layoutCopy, v12, v13, v14);
    }

    else
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DChartResizer initWithLayout:chartType:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 841, 0, "invalid nil value for '%{public}s'", "boundsLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
      v31 = 0uLL;
      v32 = 0;
    }

    *&v10->_layoutSettings.forceOmitLegend = v31;
    v10->_layoutSettings.max3DLimitingSeries = v32;
    objc_storeStrong(&v10->_chartType, type);
    *&v10->_minStep = 0x3A83126F3B449BA6;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_scene)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartResizer dealloc]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 851, 0, "expected nil value for '%{public}s'", "_scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (self->_accessor)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartResizer dealloc]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 852, 0, "expected nil value for '%{public}s'", "_accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v36.receiver = self;
  v36.super_class = TSCH3DChartResizer;
  [(TSCH3DChartResizer *)&v36 dealloc];
}

- (float)maxDepthRatio
{
  chartType = self->_chartType;
  if (!chartType)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartResizer maxDepthRatio]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 860, 0, "invalid nil value for '%{public}s'", "_chartType");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    chartType = self->_chartType;
  }

  objc_msgSend_maxDepthRatio(chartType, a2, v2, v3, v4);
  maxDepthRatioType = self->_layoutSettings.maxDepthRatioType;
  if (maxDepthRatioType)
  {
    if (maxDepthRatioType == 1)
    {
      objc_msgSend_sageMaxDepthRatio(self->_chartType, v22, v23, v24, v25);
    }
  }

  else
  {
    objc_msgSend_spiceMaxDepthRatio(self->_chartType, v22, v23, v24, v25);
  }

  return v23;
}

- (tvec2<BOOL>)converges
{
  p_precision = &self->_precision;
  v4 = vsub_f32(self->_current.size, self->_target);
  v5 = vld1_dup_f32(p_precision);
  v6 = vcge_f32(v5, vbsl_s8(vcgez_f32(v4), v4, vneg_f32(v4)));
  *v2 = v6.i8[0] & 1;
  v2[1] = v6.i8[4] & 1;
  return self;
}

- (tvec3<float>)adjust:(void *)adjust by:(float)by
{
  v8 = v4;
  v9 = *adjust;
  *v4 = *adjust;
  *(v4 + 8) = *(adjust + 2);
  index = self->_index;
  *&v9 = *(v4 + 4 * index) * by;
  *(v4 + 4 * index) = LODWORD(v9);
  v11 = objc_msgSend_depthRatioDimension(self->_chartType, a2, v9, v5, v6);
  if (index == v11)
  {
    *(v8 + 8) = *(v8 + 8) * by;
  }

  result.var0 = v11;
  result.var1 = *(&v11 + 4);
  result.var2 = v12;
  return result;
}

- (tvec3<float>)adjust:(void *)adjust
{
  v9 = v3;
  v10 = *(&self->_current.delta.var0.var0 + self->_index);
  v11 = v10 < 0.0;
  v12 = v10 <= 0.0;
  v13 = 0.0;
  LODWORD(v4) = -1.0;
  if (v11)
  {
    *&v13 = -1.0;
  }

  if (v12)
  {
    v14 = *&v13;
  }

  else
  {
    v14 = 1.0;
  }

  objc_msgSend_step(self, a2, v13, v4, v5);
  v19 = *&v16;
  if (byte_280A46430 == 1)
  {
    v20 = objc_opt_class();
    v21 = NSStringFromSelector(a2);
    v22 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec3(%f, %f, %f)", *adjust, *(adjust + 1), *(adjust + 2));
    if (v68 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v22, v23, v24, v25, v26, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v22, v23, v24, v25, v26, __p[0]);
    }
    v27 = ;
    if (v68 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PPreadjust.isa, v20, self, v21, v27);
  }

  v28 = (v14 * v19) + 1.0;
  *&v16 = v28;
  v29 = objc_msgSend_adjust_by_(self, v15, v16, v17, v18, adjust);
  if (byte_280A46430 == 1)
  {
    v34 = objc_opt_class();
    v35 = NSStringFromSelector(a2);
    v36 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec3(%f, %f, %f)", *v9, v9[1], v9[2]);
    if (v68 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v36, v37, v38, v39, v40, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v36, v37, v38, v39, v40, __p[0]);
    }
    v41 = ;
    if (v68 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PAdjust.isa, v34, self, v35, v41);
  }

  v42 = 0;
  v43 = 0;
  *&v31 = *v9;
  *&v32 = v9[1];
  LOBYTE(__p[0]) = fabsf(*v9) == INFINITY;
  *&v33 = v9[2];
  BYTE1(__p[0]) = fabsf(*&v32) == INFINITY;
  BYTE2(__p[0]) = fabsf(*&v33) == INFINITY;
  do
  {
    while ((v43 & 1) != 0)
    {
      ++v42;
      v43 = 1;
      if (v42 == 3)
      {
        goto LABEL_26;
      }
    }

    v43 = *(__p + v42++);
  }

  while (v42 != 3);
  if (v43)
  {
    goto LABEL_26;
  }

  v64 = 0;
  LOBYTE(v65) = 0;
  v66[0] = 0;
  v66[1] = 0;
  v66[2] = 0;
  do
  {
    while ((v65 & 1) != 0)
    {
      ++v64;
      LOBYTE(v65) = 1;
      if (v64 == 3)
      {
        goto LABEL_26;
      }
    }

    v65 = v66[v64++];
  }

  while (v64 != 3);
  if (v65)
  {
LABEL_26:
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "[TSCH3DChartResizer adjust:]");
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    v51 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec3(%f, %f, %f)", *v9, v9[1], v9[2]);
    if (v68 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v51, v52, v53, v54, v55, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v51, v52, v53, v54, v55, __p[0]);
    }
    v57 = ;
    if (v68 < 0)
    {
      operator delete(__p[0]);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v56, v28, v58, v59, v45, v50, 904, 0, "scale is not finite %@ adjust %f", v57, v28);

    v29 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
  }

  result.var2 = v30;
  result.var0 = v29;
  result.var1 = *(&v29 + 4);
  return result;
}

- (tvec3<float>)clamp:(void *)clamp
{
  v10 = v3;
  if (byte_280A46430 == 1)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(a2);
    v13 = MEMORY[0x277CCACA8];
    sub_276152FD4(&__p, "vec3(%f, %f, %f)", *clamp, *(clamp + 1), *(clamp + 2));
    if (v98 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v13, v14, v15, v16, v17, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v13, v14, v15, v16, v17, __p);
    }
    v18 = ;
    if (v98 < 0)
    {
      operator delete(__p);
    }

    NSLog(&cfstr_PPreclamp.isa, v11, self, v12, v18);
  }

  objc_msgSend_minScale(self, a2, v4, v5, v6);
  v21 = 0;
  v95[0] = LODWORD(v20);
  v95[1] = LODWORD(v20);
  v95[2] = LODWORD(v20);
  __p = 0;
  v97 = 0;
  do
  {
    v22 = *(&__p + v21);
    *(&v90 + v21) = *(clamp + v21) <= v22;
    ++v21;
  }

  while (v21 != 3);
  v23 = 0;
  LOBYTE(v22) = BYTE2(v90);
  v24 = *(clamp + 2);
  v25 = (*&v20 - v24) * LODWORD(v22);
  v26.i32[0] = LOBYTE(v90) & 1;
  v26.i32[1] = BYTE1(v90) & 1;
  v27 = vdup_lane_s32(*&v20, 0);
  v28 = vadd_f32(*clamp, vmul_f32(vsub_f32(v27, *clamp), vcvt_f32_u32(v26)));
  v29 = v24 + v25;
  v93 = v28;
  v94 = v24 + v25;
  do
  {
    v92[v23] = v93.f32[v23] < *&v95[v23];
    ++v23;
  }

  while (v23 != 3);
  v30 = COERCE_DOUBLE(vdiv_f32(v27, v28));
  v87 = v20;
  v28.f32[0] = *&v20 / v29;
  v90 = v30;
  v91 = *&v20 / v29;
  v31 = objc_msgSend_depthRatioDimension(self->_chartType, v19, v20, *&v28, v30);
  v35 = v31;
  if (v92[v31] == 1)
  {
    v36 = *(&v90 + v31);
    v93.f32[v31] = v36 * v93.f32[v31];
    v29 = v36 * v94;
    v94 = v36 * v94;
    if (byte_280A46430 == 1)
    {
      v37 = objc_opt_class();
      v38 = NSStringFromSelector(a2);
      v39 = MEMORY[0x277CCACA8];
      sub_276152FD4(&__p, "vec3(%f, %f, %f)", v93.f32[0], v93.f32[1], v29);
      if (v98 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v39, v40, v41, v42, v43, &__p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v39, v40, v41, v42, v43, __p);
      }
      v44 = ;
      if (v98 < 0)
      {
        operator delete(__p);
      }

      NSLog(&cfstr_PClampRatiodim.isa, v37, self, v38, v44);
    }
  }

  v45 = v87;
  if (v92[v35 ^ 1] == 1)
  {
    v93.i32[v35 ^ 1] = v95[v35 ^ 1];
    if (byte_280A46430)
    {
      v46 = objc_opt_class();
      v47 = NSStringFromSelector(a2);
      v48 = MEMORY[0x277CCACA8];
      v29 = v94;
      sub_276152FD4(&__p, "vec3(%f, %f, %f)", v93.f32[0], v93.f32[1], v94);
      if (v98 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v48, v49, v50, v51, v52, &__p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v48, v49, v50, v51, v52, __p);
      }
      v53 = ;
      if (v98 < 0)
      {
        operator delete(__p);
      }

      NSLog(&cfstr_PClampOtherdim.isa, v46, self, v47, v53);

      v45 = v87;
    }

    else
    {
      v29 = v94;
    }
  }

  if (v29 >= *&v45)
  {
    *&v45 = v29;
  }

  else
  {
    v33 = 3.18618444e-58;
    if (v29 >= 0.00000011921)
    {
      *&v33 = v29;
    }

    v93.f32[v35] = (*&v45 / *&v33) * v93.f32[v35];
    if (byte_280A46430 == 1)
    {
      v54 = objc_opt_class();
      v55 = NSStringFromSelector(a2);
      v56 = MEMORY[0x277CCACA8];
      sub_276152FD4(&__p, "vec3(%f, %f, %f)", v93.f32[0], v93.f32[1], *&v87);
      if (v98 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v56, v57, v58, v59, v60, &__p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v56, v57, v58, v59, v60, __p);
      }
      v61 = ;
      if (v98 < 0)
      {
        operator delete(__p);
      }

      NSLog(&cfstr_PClampZ.isa, v54, self, v55, v61);

      v45 = v87;
    }
  }

  v62 = 0;
  v63 = v93;
  *v10 = v93;
  v10[1].i32[0] = LODWORD(v45);
  __p = 0;
  v97 = 0;
  do
  {
    LODWORD(v33) = v10->i32[v62];
    LODWORD(v34) = *(&__p + v62);
    v89[v62++] = *&v33 > *&v34;
  }

  while (v62 != 3);
  v64 = 0;
  v65 = 1;
  do
  {
    while ((v65 & 1) == 0)
    {
      v65 = 0;
      if (++v64 == 3)
      {
        goto LABEL_49;
      }
    }

    v65 = v89[v64++];
  }

  while (v64 != 3);
  if (v65)
  {
    goto LABEL_55;
  }

LABEL_49:
  v88 = *&v45;
  v66 = MEMORY[0x277D81150];
  v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v45, "[TSCH3DChartResizer clamp:]");
  v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
  v73 = MEMORY[0x277CCACA8];
  sub_276152FD4(&__p, "vec3(%f, %f, %f)", v63.f32[0], v63.f32[1], v88);
  if (v98 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v73, v74, v75, v76, v77, &__p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v73, v74, v75, v76, v77, __p);
  }
  v79 = ;
  if (v98 < 0)
  {
    operator delete(__p);
  }

  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v78, v80, v81, v82, v67, v72, 938, 0, "scale is negative %@", v79);

  v31 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85, v86);
LABEL_55:
  result.var2 = v32;
  result.var0 = v31;
  result.var1 = *(&v31 + 4);
  return result;
}

- (tvec3<float>)clampDepthRatio:(void *)ratio
{
  v9 = v3;
  if (byte_280A46430 == 1)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromSelector(a2);
    v12 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec3(%f, %f, %f)", *ratio, *(ratio + 1), *(ratio + 2));
    if (v36 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v12, v13, v14, v15, v16, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v12, v13, v14, v15, v16, __p[0]);
    }
    v17 = ;
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PPreclampzx.isa, v10, self, v11, v17);
  }

  v18 = *ratio;
  *v9 = *ratio;
  v19 = *(ratio + 2);
  v9[2] = v19;
  objc_msgSend_maxDepthRatio(self, a2, v18, v4, v5);
  v21 = *&v20;
  v25 = objc_msgSend_depthRatioDimension(self->_chartType, v22, v20, v23, v24);
  if ((v19 / v9[v25]) > v21)
  {
    v9[v25] = v19 / v21;
  }

  if (byte_280A46430 == 1)
  {
    v27 = objc_opt_class();
    v28 = NSStringFromSelector(a2);
    v29 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec3(%f, %f, %f)", *v9, v9[1], v9[2]);
    if (v36 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v29, v30, v31, v32, v33, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v29, v30, v31, v32, v33, __p[0]);
    }
    v34 = ;
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PClampzx.isa, v27, self, v28, v34);
  }

  result.var0 = v25;
  result.var1 = *(&v25 + 4);
  result.var2 = v26;
  return result;
}

- (tvec3<float>)adjustedScale
{
  v7 = v2;
  scale = self->_current.scale;
  objc_msgSend_adjust_(self, COERCE_DOUBLE(__PAIR64__(LODWORD(scale.var1.var0), LODWORD(scale.var2.var0))), v3, v4, a2, &scale);
  objc_msgSend_clamp_(self, v8, v9, v10);
  v14 = objc_msgSend_clampDepthRatio_(self, v11, v12, v13);
  *v7 = v30;
  v7[1] = v31;
  v7[2] = v32;
  if (byte_280A46430 == 1)
  {
    v16 = objc_opt_class();
    v17 = NSStringFromSelector(a2);
    v18 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec3(%f, %f, %f)", self->_current.scale.var0.var0, self->_current.scale.var1.var0, self->_current.scale.var2.var0);
    if (v35 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v18, v19, v20, v21, v22, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v18, v19, v20, v21, v22, __p[0]);
    }
    v23 = ;
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    v24 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec3(%f, %f, %f)", v30, v31, v32);
    if (v35 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v24, v25, v26, v27, v28, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v24, v25, v26, v27, v28, __p[0]);
    }
    v29 = ;
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PAdjustingScal.isa, v16, self, v17, v23, v29);
  }

  result.var0 = v14;
  result.var1 = *(&v14 + 4);
  result.var2 = v15;
  return result;
}

- (void)updateSteps
{
  p_delta = &self->_current.delta;
  index = self->_index;
  LODWORD(v2) = *(&self->_current.delta.var0.var0 + index);
  v6 = &self->_previous.delta;
  LODWORD(v3) = *(&self->_previous.delta.var0.var0 + index);
  v7 = vabdd_f64(*&v2, *&v3);
  if (*&v2 != *&v3 && v7 >= self->_precision)
  {
    objc_msgSend_step(self, a2, v2, v7, v3);
    v14 = self->_index;
    v15 = *(&p_delta->var0.var0 + v14);
    *&v13 = vabds_f32(v15, *(&v6->var0.var0 + v14));
    *&v12 = fabsf(v15);
    *&v11 = *&v12 * (*&v11 / *&v13);

    objc_msgSend_setStep_(self, v10, v11, v12, v13);
  }
}

- (BOOL)checkImprovement
{
  v4 = *(&self->_current.chartOnlySize.var0.var0 + self->_index);
  v5 = objc_opt_class();
  objc_msgSend_minimumSize(v5, v6, v7, v8, v9);
  v12 = (self + 4 * self->_index);
  v13 = v12[30];
  v14 = v12[17];
  if (fabsf(v13) >= fabsf(v14) || (v13 <= 0.0 ? (v15 = v4 < *&v11) : (v15 = 0), !v15 ? (v16 = 0) : (v16 = 1), vabds_f32(v13, v14) < 0.5 || (v16 & 1) != 0))
  {
    *&v11 = v12[32] * 0.5;
    if ((v12[19] * 0.5) < *&v11)
    {
      *&v11 = v12[19] * 0.5;
    }

    if (self->_minStep >= *&v11)
    {
      *&v11 = self->_minStep;
    }

    v29 = *&self->_previous.scale.var2.var0;
    *&self->_current.size.var0.var0 = *&self->_previous.size.var0.var0;
    *&self->_current.scale.var2.var0 = v29;
    v30 = *&self->_previous.steps.var1.var0;
    *&self->_current.steps.var1.var0 = v30;
    *&v30 = self->_previous.chartOnlySize.var1.var0;
    LODWORD(self->_current.chartOnlySize.var1.var0) = v30;
    objc_msgSend_setStep_(self, v10, v11, *&v30, *&v29);
    accessor = self->_accessor;
    __p = *&self->_current.scale.var0.var0;
    var0 = self->_current.scale.var2.var0;
    objc_msgSend_setInfoChartScaleVec3_(accessor, v32, COERCE_DOUBLE(__PAIR64__(HIDWORD(__p), LODWORD(var0))), v33, v34, &__p);
    if (byte_280A46430 != 1)
    {
      return 0;
    }

    v35 = objc_opt_class();
    v18 = NSStringFromSelector(a2);
    NSLog(&cfstr_PFailedToResiz.isa, v35, self, v18, self->_index);
    v28 = 0;
  }

  else
  {
    if (byte_280A46430 != 1)
    {
      return 1;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(a2);
    index = self->_index;
    v20 = sub_276202B30(&self->_previous.size);
    v21 = sub_276202B30(&self->_current.size);
    v22 = MEMORY[0x277CCACA8];
    sub_276152FD4(&__p, "vec2(%f, %f)", self->_target.var0.var0, self->_target.var1.var0);
    if (v39 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v22, v23, v24, v25, v26, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v22, v23, v24, v25, v26, __p);
    }
    v27 = ;
    if (v39 < 0)
    {
      operator delete(__p);
    }

    NSLog(&cfstr_PIndexLuChange.isa, v17, self, v18, index, v20, v21, v27);

    v28 = 1;
  }

  return v28;
}

- (void)updateResizeData
{
  layout = self->_layout;
  if (layout)
  {
    objc_msgSend_resizingSize(layout, v2, v3, v4);
    v8 = v31;
  }

  else
  {
    v32 = 0uLL;
    v8 = 0;
  }

  accessor = self->_accessor;
  if (accessor)
  {
    objc_msgSend_infoChartScaleVec3(accessor, v2, v3, v4);
    v10 = __p;
    v11 = v34;
  }

  else
  {
    v10 = 0;
    v11 = 0.0;
  }

  self->_current.size = v8;
  *&self->_current.scale.var0.var0 = v10;
  self->_current.scale.var2.var0 = v11;
  self->_current.delta = vsub_f32(self->_target, v8);
  *&self->_current.unrotatedSize.var0.var0 = v32;
  if (byte_280A46430 == 1)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(a2);
    v14 = MEMORY[0x277CCACA8];
    sub_276152FD4(&__p, "vec2(%f, %f)", self->_target.var0.var0, self->_target.var1.var0);
    if (v35 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v14, v15, v16, v17, v18, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v14, v15, v16, v17, v18, __p);
    }
    v19 = ;
    if (v35 < 0)
    {
      operator delete(__p);
    }

    objc_msgSend_containingViewportFromCurrentSize(self, v20, v21, v22);
    v23 = MEMORY[0x277CCACA8];
    sub_276152FD4(&__p, "ivec2(%d, %d)", v30, 0);
    if (v35 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v23, v24, v25, v26, v27, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v23, v24, v25, v26, v27, __p);
    }
    v28 = ;
    if (v35 < 0)
    {
      operator delete(__p);
    }

    v29 = sub_276202B30(&self->_current.size);
    NSLog(&cfstr_PRequestCvCurr.isa, v12, self, v13, v19, v28, v29);
  }
}

- (tvec2<BOOL>)canImprove
{
  v6 = v2;
  minStep = self->_minStep;
  var0 = self->_current.steps.var0.var0;
  v9 = self->_current.steps.var1.var0;
  v10 = objc_msgSend_converges(self, v3, v4, v5, a2);
  v11 = v14 ^ 1;
  if (var0 > minStep)
  {
    ++v11;
  }

  v12 = v15 ^ 1;
  v13 = v11 & 3;
  if (v9 > minStep)
  {
    ++v12;
  }

  *v6 = v13 == 2;
  v6[1] = v12 == 2;
  return v10;
}

- (void)setScale:(void *)scale
{
  accessor = self->_accessor;
  v11 = *scale;
  v12 = *(scale + 2);
  objc_msgSend_setInfoChartScaleVec3_(accessor, a2, COERCE_DOUBLE(__PAIR64__(HIDWORD(v11), v12)), v3, v4, &v11);
  objc_msgSend_updateResizeData(self, v7, v8, v9, v10);
}

- (BOOL)resize1
{
  CanImprove = objc_msgSend_currentCanImprove(self, a2, v2, v3, v4);
  if (CanImprove)
  {
    if (byte_280A46430 == 1)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromSelector(a2);
      v17 = objc_msgSend_debugBounds(self->_layout, v13, v14, v15, v16);
      v22 = objc_msgSend_projectedBounds(self->_layout, v18, v19, v20, v21);
      v23 = sub_2762032CC(v22);
      NSLog(&cfstr_PPreSetScale.isa, v11, self, v12, v17, v23);
    }

    objc_msgSend_adjustedScale(self, v8, v9, v10);
    objc_msgSend_setScale_(self, v24, v25, v26, v27, v51);
    if (byte_280A46430 == 1)
    {
      v32 = objc_opt_class();
      v33 = NSStringFromSelector(a2);
      v38 = objc_msgSend_debugBounds(self->_layout, v34, v35, v36, v37);
      v43 = objc_msgSend_projectedBounds(self->_layout, v39, v40, v41, v42);
      v44 = sub_2762032CC(v43);
      NSLog(&cfstr_PPostSetScale.isa, v32, self, v33, v38, v44);
    }

    objc_msgSend_updateSteps(self, v28, v29, v30, v31);
    LOBYTE(CanImprove) = objc_msgSend_checkImprovement(self, v45, v46, v47, v48);
    v49 = *&self->_current.scale.var2.var0;
    *&self->_previous.size.var0.var0 = *&self->_current.size.var0.var0;
    *&self->_previous.scale.var2.var0 = v49;
    *&self->_previous.steps.var1.var0 = *&self->_current.steps.var1.var0;
    self->_previous.chartOnlySize.var1.var0 = self->_current.chartOnlySize.var1.var0;
  }

  return CanImprove;
}

- (void)loop
{
  v57 = 257;
  v10 = 0;
  if ((objc_msgSend_allConverges(self, a2, v2, v3, v4) & 1) == 0)
  {
    do
    {
      objc_msgSend_canImprove(self, v7, v8, v9);
      if ((__p[0] & 1) == 0 && (BYTE1(__p[0]) & 1) == 0)
      {
        break;
      }

      self->_index = 0;
      do
      {
        v15 = objc_msgSend_resize1(self, v11, v12, v13, v14);
        index = self->_index;
        *(&v57 + index++) = v15;
        self->_index = index;
      }

      while (index < 2);
      ++v10;
    }

    while (!objc_msgSend_allConverges(self, v11, v12, v13, v14));
  }

  if (byte_280A46430 == 1)
  {
    v17 = objc_opt_class();
    v54 = NSStringFromSelector(a2);
    v22 = objc_msgSend_allConverges(self, v18, v19, v20, v21);
    v23 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec2(%f, %f)", self->_current.size.var0.var0, self->_current.size.var1.var0);
    if (v59 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v23, v24, v25, v26, v27, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v23, v24, v25, v26, v27, __p[0]);
    }
    v53 = ;
    if (v59 < 0)
    {
      operator delete(__p[0]);
    }

    v28 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec2(%f, %f)", self->_target.var0.var0, self->_target.var1.var0);
    if (v59 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v28, v29, v30, v31, v32, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v28, v29, v30, v31, v32, __p[0]);
    }
    v33 = ;
    if (v59 < 0)
    {
      operator delete(__p[0]);
    }

    v34 = MEMORY[0x277CCACA8];
    if (v57)
    {
      v35 = "true";
    }

    else
    {
      v35 = "false";
    }

    if (HIBYTE(v57))
    {
      v36 = "true";
    }

    else
    {
      v36 = "false";
    }

    sub_276152FD4(__p, "bvec2(%s, %s)", v35, v36);
    if (v59 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v34, v37, v38, v39, v40, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v34, v37, v38, v39, v40, __p[0]);
    }
    v41 = ;
    if (v59 < 0)
    {
      operator delete(__p[0]);
    }

    objc_msgSend_canImprove(self, v42, v43, v44);
    v45 = MEMORY[0x277CCACA8];
    if (v55)
    {
      v46 = "true";
    }

    else
    {
      v46 = "false";
    }

    if (v56)
    {
      v47 = "true";
    }

    else
    {
      v47 = "false";
    }

    sub_276152FD4(__p, "bvec2(%s, %s)", v46, v47);
    if (v59 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v45, v48, v49, v50, v51, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v45, v48, v49, v50, v51, __p[0]);
    }
    v52 = ;
    if (v59 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PTotalLuRunsCo.isa, v17, self, v54, v10, v22, v53, v33, v41, v52);
  }
}

- (float)perspectiveness
{
  v2 = objc_opt_class();

  objc_msgSend_perspectiveness(v2, v3, v4, v5, v6);
  return result;
}

- (tvec2<int>)containingViewportFromSize:(void *)size
{
  v8 = v3;
  v9 = objc_msgSend_perspectiveness(self, a2, v4, v5, v6);
  v11 = *size;
  if (*size <= *(size + 1))
  {
    v11 = *(size + 1);
  }

  v12 = vcvtps_s32_f32(v10 * v11);
  *v8 = v12;
  v8[1] = v12;
  return v9;
}

- (void)setContainingViewport:(void *)viewport
{
  if (byte_280A46430 == 1)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(a2);
    layout = self->_layout;
    if (layout)
    {
      objc_msgSend_containingViewport(layout, v10, v11, v12);
      v14 = v27;
    }

    else
    {
      v14 = 0;
    }

    v15 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "ivec2(%d, %d)", v14, HIDWORD(v14));
    if (v29 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v15, v16, v17, v18, v19, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v15, v16, v17, v18, v19, __p[0]);
    }
    v20 = ;
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    v21 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "ivec2(%d, %d)", *viewport, 0);
    if (v29 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v21, v22, v23, v24, v25, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v21, v22, v23, v24, v25, __p[0]);
    }
    v26 = ;
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PCvChangedFrom.isa, v8, self, v9, v20, v26);
  }

  objc_msgSend_setContainingViewport_(self->_layout, a2, *viewport, v3, v4, __p);
}

- (void)initializeResizing:(void *)resizing
{
  self->_target.var0.var0 = *resizing;
  LODWORD(v3) = *(resizing + 1);
  self->_target.var1.var0 = *&v3;
  objc_msgSend_seedResizeCondition(self, a2, v3, v4, v5);
  objc_msgSend_resetInfoChartScale(self->_accessor, v7, v8, v9, v10);
  objc_msgSend_resetContainingViewport(self->_layout, v11, v12, v13, v14);
  objc_msgSend_updateResizeData(self, v15, v16, v17, v18);
  v19 = *&self->_current.scale.var2.var0;
  *&self->_previous.size.var0.var0 = *&self->_current.size.var0.var0;
  *&self->_previous.scale.var2.var0 = v19;
  *&self->_previous.steps.var1.var0 = *&self->_current.steps.var1.var0;
  self->_previous.chartOnlySize.var1.var0 = self->_current.chartOnlySize.var1.var0;
}

- (void)adjustContainingViewport
{
  objc_msgSend_containingViewportFromCurrentSize(self, v2, v3, v4, a2);
  layout = self->_layout;
  if (layout)
  {
    objc_msgSend_containingViewport(layout, v7, v8, v9);
  }

  else
  {
    v24 = 0;
  }

  v11 = objc_msgSend_depthRatioDimension(self->_chartType, v6, v7, v8, v9);
  if (v25[v11] != v25[v11 - 2])
  {
    v16 = v11;
    objc_msgSend_setContainingViewport_(self, v12, v13, v14, v15, v25);
    v17 = v25[v16 - 2] / v25[v16];
    *&v18 = v17 * self->_current.scale.var2.var0;
    v19 = *&self->_current.scale.var0.var0;
    v22 = COERCE_DOUBLE(vmul_n_f32(*&v19, v17));
    v23 = LODWORD(v18);
    objc_msgSend_setScale_(self, v20, v22, v18, v19, &v22);
  }

  v21 = *&self->_current.scale.var2.var0;
  *&self->_previous.size.var0.var0 = *&self->_current.size.var0.var0;
  *&self->_previous.scale.var2.var0 = v21;
  *&self->_previous.steps.var1.var0 = *&self->_current.steps.var1.var0;
  self->_previous.chartOnlySize.var1.var0 = self->_current.chartOnlySize.var1.var0;
}

- (void)readjustContainingViewport
{
  objc_msgSend_seedResizeCondition(self, a2, v2, v3, v4);
  objc_msgSend_adjustContainingViewport(self, v6, v7, v8, v9);

  MEMORY[0x2821F9670](self, sel_loop, v10, v11, v12);
}

- (tvec2<float>)updateResizerFromRequestedSize:(void *)size startingSize:(void *)startingSize
{
  v6 = v4;
  v7 = objc_opt_class();
  v12 = objc_msgSend_minimumSize(v7, v8, v9, v10, v11);
  v14 = vdup_lane_s32(v13, 0);
  *v6 = vbsl_s8(vcgt_f32(*size, v14), *size, v14);
  return v12;
}

- (tvec2<float>)resize:(void *)resize startingSize:(void *)size
{
  v11 = v4;
  objc_msgSend_updateResizerFromRequestedSize_startingSize_(self, a2, v5, v6, v7, resize, size);
  if (byte_280A46430 == 1)
  {
    v16 = objc_opt_class();
    v17 = NSStringFromSelector(a2);
    v18 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec2(%f, %f)", *resize, *(resize + 1));
    if (v127 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v18, v19, v20, v21, v22, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v18, v19, v20, v21, v22, __p[0]);
    }
    v23 = ;
    if (v127 < 0)
    {
      operator delete(__p[0]);
    }

    v24 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec2(%f, %f)", *v11, v11[1]);
    if (v127 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v24, v25, v26, v27, v28, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v24, v25, v26, v27, v28, __p[0]);
    }
    v29 = ;
    if (v127 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PBeginResizing.isa, v16, self, v17, v23, v29);
  }

  v30 = objc_msgSend_scene(self->_layout, v12, v13, v14, v15);
  self->_scene = v30;

  v35 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v31, v32, v33, v34, self->_scene);
  objc_storeStrong(&self->_accessor, v35);
  objc_msgSend_initializeResizing_(self, v36, v37, v38, v39, v11);
  layout = self->_layout;
  if (layout)
  {
    objc_msgSend_containingViewport(layout, v41, v42, v43);
  }

  else
  {
    v125 = 0;
  }

  objc_msgSend_readjustContainingViewport(self, v40, v41, v42, v43);
  var0 = self->_current.scale.var0.var0;
  v46 = *&self->_current.scale.var1.var0;
  objc_msgSend_readjustContainingViewport(self, v47, v48, v49, v50);
  v55 = objc_msgSend_depthRatioDimension(self->_chartType, v51, v52, v53, v54);
  v57 = 0;
  v58 = self->_current.scale.var0.var0 - var0;
  if (v58 < 0.0)
  {
    v58 = -v58;
  }

  v56.i32[0] = LODWORD(self->_precision);
  v59 = v58 <= *v56.i32;
  v60 = vsub_f32(*&self->_current.scale.var1.var0, v46);
  v61 = vcgez_f32(v60);
  v62 = vdup_lane_s32(v56, 0);
  v63 = COERCE_DOUBLE(vcge_f32(v62, vbsl_s8(v61, v60, vneg_f32(v60))));
  LOBYTE(__p[0]) = v59;
  BYTE1(__p[0]) = LOBYTE(v63) & 1;
  BYTE2(__p[0]) = BYTE4(v63) & 1;
  v64 = 1;
  do
  {
    while ((v64 & 1) == 0)
    {
      v64 = 0;
      if (++v57 == 3)
      {
        goto LABEL_25;
      }
    }

    v64 = *(__p + v57++);
  }

  while (v57 != 3);
  if (v64)
  {
LABEL_31:
    v77 = 0;
    goto LABEL_36;
  }

LABEL_25:
  objc_msgSend_containingViewportFromCurrentSize(self, v63, *&v62, *&v61);
  v69 = *(__p + v55);
  v70 = self->_layout;
  if (v70)
  {
    objc_msgSend_containingViewport(v70, v66, v67, v68);
  }

  else
  {
    v124 = 0;
  }

  v71 = *(&v124 + v55);
  objc_msgSend_containingViewportThreshold(self, v65, v66, v67, v68);
  v76 = v69 - v71;
  if (v69 - v71 < 0)
  {
    v76 = v71 - v69;
  }

  *&v74 = v76;
  if (*&v73 > v76)
  {
    goto LABEL_31;
  }

  v78 = self->_layout;
  if (v78)
  {
    objc_msgSend_containingViewport(v78, v73, v74, v75);
    v77 = LODWORD(__p[0]);
  }

  else
  {
    v77 = 0;
  }

  objc_msgSend_readjustContainingViewport(self, v72, v73, v74, v75);
LABEL_36:
  if (byte_280A46430 == 1)
  {
    v79 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "ivec2(%d, %d)", v125, 0);
    if (v127 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v79, v80, v81, v82, v83, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v79, v80, v81, v82, v83, __p[0]);
    }
    v84 = ;
    if (v127 < 0)
    {
      operator delete(__p[0]);
    }

    v85 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "ivec2(%d, %d)", v77, HIDWORD(v77));
    if (v127 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v85, v86, v87, v88, v89, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v85, v86, v87, v88, v89, __p[0]);
    }
    v90 = ;
    if (v127 < 0)
    {
      operator delete(__p[0]);
    }

    v94 = self->_layout;
    if (v94)
    {
      objc_msgSend_containingViewport(v94, v91, v92, v93);
      v95 = v124;
    }

    else
    {
      v95 = 0;
      v124 = 0;
    }

    v96 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "ivec2(%d, %d)", v95, HIDWORD(v95));
    if (v127 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v96, v97, v98, v99, v100, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v96, v97, v98, v99, v100, __p[0]);
    }
    v101 = ;
    if (v127 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_OlderOldCurren.isa, v84, v90, v101);

    if (byte_280A46430)
    {
      v102 = objc_opt_class();
      v103 = NSStringFromSelector(a2);
      v104 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "vec2(%f, %f)", self->_current.size.var0.var0, self->_current.size.var1.var0);
      if (v127 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v104, v105, v106, v107, v108, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v104, v105, v106, v107, v108, __p[0]);
      }
      v109 = ;
      if (v127 < 0)
      {
        operator delete(__p[0]);
      }

      v110 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "vec2(%f, %f)", *resize, *(resize + 1));
      if (v127 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v110, v111, v112, v113, v114, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v110, v111, v112, v113, v114, __p[0]);
      }
      v115 = ;
      if (v127 < 0)
      {
        operator delete(__p[0]);
      }

      v116 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "vec2(%f, %f)", *v11, v11[1]);
      if (v127 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v116, v117, v118, v119, v120, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v116, v117, v118, v119, v120, __p[0]);
      }
      v121 = ;
      if (v127 < 0)
      {
        operator delete(__p[0]);
      }

      NSLog(&cfstr_PEndResizingRe.isa, v102, self, v103, v109, v115, v121);
    }
  }

  accessor = self->_accessor;
  self->_accessor = 0;

  self->_scene = 0;
  return v123;
}

- (id).cxx_construct
{
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 3) = 0u;
  return self;
}

@end