@interface TSCH3DChartCacheableGetProjectedBoundsPipeline
+ (BOOL)includesDepthForUnitScaleForScene:(id)scene;
+ (void)setIncludesDepthForUnitScale:(BOOL)scale forScene:(id)scene;
- (Class)labelsMeshRendererClassForLabelsRenderer:(id)renderer;
- (TSCH3DChartCacheableGetProjectedBoundsPipeline)initWithScene:(id)scene;
- (box<glm::detail::tvec3<float>>)boundsFromObjectBoundsOfType:(SEL)type;
- (id).cxx_construct;
- (id)updatedConstantDepthSceneFromScene:(id)scene;
- (void)calculateBounds;
- (void)calculateLayoutBounds;
- (void)updateBounds;
- (void)updateLayoutBounds;
- (void)updateRenderBounds;
@end

@implementation TSCH3DChartCacheableGetProjectedBoundsPipeline

+ (void)setIncludesDepthForUnitScale:(BOOL)scale forScene:(id)scene
{
  scaleCopy = scale;
  sceneCopy = scene;
  v9 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, v6, v7, v8, scaleCopy);
  objc_msgSend_setProperties_forType_(sceneCopy, v10, v11, v12, v13, v9, @"TSCH3DChartCacheableGetProjectedBoundsPipeline.includesDepthForUnitScale");
}

+ (BOOL)includesDepthForUnitScaleForScene:(id)scene
{
  sceneCopy = scene;
  objc_opt_class();
  v8 = objc_msgSend_propertiesForType_(sceneCopy, v4, v5, v6, v7, @"TSCH3DChartCacheableGetProjectedBoundsPipeline.includesDepthForUnitScale");
  v9 = TSUCheckedDynamicCast();
  v14 = objc_msgSend_BOOLValue(v9, v10, v11, v12, v13);

  return v14;
}

- (TSCH3DChartCacheableGetProjectedBoundsPipeline)initWithScene:(id)scene
{
  sceneCopy = scene;
  v18.receiver = self;
  v18.super_class = TSCH3DChartCacheableGetProjectedBoundsPipeline;
  v6 = [(TSCH3DGetBoundsPipeline *)&v18 initWithScene:sceneCopy];
  if (v6)
  {
    v10 = objc_msgSend_identity(TSCH3DSceneRenderSetup, v5, v7, v8, v9);
    objc_msgSend_setSetup_(v6, v11, v12, v13, v14, v10);

    v15 = objc_alloc_init(TSCH3DGetBoundsProjector);
    projector = v6->_projector;
    v6->_projector = v15;
  }

  return v6;
}

- (box<glm::detail::tvec3<float>>)boundsFromObjectBoundsOfType:(SEL)type
{
  v9 = objc_msgSend_bounds(self, v4, v5, v6, type);
  v91 = *v9;
  v92 = *(v9 + 16);
  if (!objc_msgSend_useIndividualBounds(self, v10, v92, v11, v12))
  {
    v89 = *(v9 + 48);
    v54 = *(v9 + 64);
    v90 = v54;
    if (*(v9 + 72) != *(v9 + 80))
    {
      v55 = MEMORY[0x277D81150];
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v54, v14, v15, "[TSCH3DChartCacheableGetProjectedBoundsPipeline boundsFromObjectBoundsOfType:]");
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 464, 0, "cannot have individual bounds when flag is false");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
    }

    if ((sub_276155178(v91.i32) & 1) == 0 && (sub_276155178(v89.i32) & 1) == 0)
    {
      v74 = MEMORY[0x277D81150];
      v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "[TSCH3DChartCacheableGetProjectedBoundsPipeline boundsFromObjectBoundsOfType:]");
      v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v81, v82, v83, v84, v75, v80, 465, 0, "invalid bounds state");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
    }

    goto LABEL_19;
  }

  if (*(v9 + 72) == *(v9 + 80))
  {
    v89 = *(v9 + 48);
    v90 = *(v9 + 64);
LABEL_19:
    result = sub_276155178(v89.i32);
    *&retstr->_min.var0.var0 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(result)), 0x1FuLL)), v91, v89);
    *&retstr->_max.var1.var0 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(result), 0x1FuLL)), *&v92, *&v90);
    return result;
  }

  result = sub_276155178(v91.i32);
  if ((result & 1) == 0)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCH3DChartCacheableGetProjectedBoundsPipeline boundsFromObjectBoundsOfType:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 452, 0, "cannot have bounds when using individual bounds");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  if (!self->_projector)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCH3DChartCacheableGetProjectedBoundsPipeline boundsFromObjectBoundsOfType:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 453, 0, "invalid nil value for '%{public}s'", "_projector");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  *&retstr->_min.var0.var0 = xmmword_2764D5F00;
  v51 = 2.84809454e-306;
  *&retstr->_max.var1.var0 = 0x80000000800000;
  for (i = *(v9 + 72); i != *(v9 + 80); i += 24)
  {
    projector = self->_projector;
    if (projector)
    {
      objc_msgSend_projectBounds_type_(projector, v51, v19, v20);
    }

    else
    {
      v89 = 0uLL;
      v90 = 0.0;
    }

    result = sub_276166138(retstr, &v89);
  }

  return result;
}

- (id)updatedConstantDepthSceneFromScene:(id)scene
{
  v6 = objc_msgSend_clone(scene, a2, v3, v4, v5);
  v11 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v7, v8, v9, v10, v6);
  v16 = v11;
  if (v11)
  {
    objc_msgSend_infoChartScale(v11, v13, v14, v15);
    v17 = v20;
    LODWORD(v18) = HIDWORD(v21);
  }

  else
  {
    v20 = 0.0;
    v21 = 0;
    v17 = 0.0;
    v18 = 0.0;
  }

  v22 = v17;
  v23 = 1065353216;
  v24 = LODWORD(v18);
  objc_msgSend_setInfoChartScale_(v16, v12, v18, v17, v15, &v22, *&v20, v21);

  return v6;
}

- (void)calculateLayoutBounds
{
  objc_msgSend_calculateLayoutBoundsSkippingLayoutSceneBounds_(self, a2, v2, v3, v4, 0);
  self->_shadowsLayout3DBounds = self->super._shadowsLayoutBounds;
  self->_layout3DBounds = self->super._layoutBounds;
  self->_bodyLayout3DBounds = self->super._bodyLayoutBounds;
  self->_constantDepthBodyLayout3DBounds = self->super._constantDepthBodyLayoutBounds;
}

- (void)updateLayoutBounds
{
  objc_msgSend_resetTransformsForLayoutBounds(self->_projector, a2, v2, v3, v4);
  if (!self->_layoutBoundsValid)
  {
    v17.receiver = self;
    v17.super_class = TSCH3DChartCacheableGetProjectedBoundsPipeline;
    [(TSCH3DChartGetProjectedBoundsPipeline *)&v17 updateLayoutBounds];
    self->_layoutBoundsValid = 1;
  }

  *&self->super._layoutBounds._min.var0.var0 = xmmword_2764D5F00;
  *&self->super._layoutBounds._max.var1.var0 = 0x80000000800000;
  projector = self->_projector;
  objc_msgSend_p_depthBoundsTypes(self, v6, 2.84809454e-306, v7, v8);
  if (projector)
  {
    objc_msgSend_projectBounds_type_(projector, v10, v11, v12);
    v13 = v15;
    v14 = v16;
  }

  else
  {
    v14 = 0;
    v13 = 0uLL;
  }

  *&self->super._constantDepthBodyLayoutBounds._min.var0.var0 = v13;
  *&self->super._constantDepthBodyLayoutBounds._max.var1.var0 = v14;
}

- (void)calculateBounds
{
  projector = self->_projector;
  if (projector)
  {
    p_bodyLayout3DBounds = &self->_bodyLayout3DBounds;
    objc_msgSend_projectBounds_type_(projector, v2, v3, v4, a2, &self->_bodyLayout3DBounds, 0);
LABEL_5:
    v29 = *__p;
    v30 = v82;
    goto LABEL_6;
  }

  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartCacheableGetProjectedBoundsPipeline calculateBounds]");
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 517, 0, "invalid nil value for '%{public}s'", "_projector");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  v28 = self->_projector;
  p_bodyLayout3DBounds = &self->_bodyLayout3DBounds;
  if (v28)
  {
    objc_msgSend_projectBounds_type_(v28, v25, v26, v27, v24, p_bodyLayout3DBounds, 0);
    goto LABEL_5;
  }

  v30 = 0.0;
  v29 = 0uLL;
LABEL_6:
  *&self->super._chartBounds._min.var0.var0 = v29;
  *&self->super._chartBounds._max.var1.var0 = v30;
  v31 = self->_projector;
  v32 = 0.0;
  v33 = 0uLL;
  v34 = 0uLL;
  v35 = 0.0;
  if (v31)
  {
    objc_msgSend_projectBounds_type_(v31, 0.0, 0.0, 0.0);
    v33 = 0uLL;
    v34 = *__p;
    v35 = v82;
  }

  *&self->super._orientBounds._min.var0.var0 = v34;
  *&self->super._orientBounds._max.var1.var0 = v35;
  v36 = self->_projector;
  if (v36)
  {
    objc_msgSend_projectBounds_type_(v36, *&v34, v35, 0.0);
    v33 = *__p;
    v32 = v82;
  }

  *&self->super._drawingBounds._min.var0.var0 = v33;
  *&self->super._drawingBounds._max.var1.var0 = v32;
  if (byte_280A46430 == 1)
  {
    v37 = objc_opt_class();
    v38 = a2;
    v80 = NSStringFromSelector(a2);
    v39 = MEMORY[0x277CCACA8];
    sub_276166580(&p_bodyLayout3DBounds->_min.var0.var0, __p);
    if (v82 >= 0.0)
    {
      objc_msgSend_stringWithUTF8String_(v39, v40, v41, v42, v43, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v39, v40, v41, v42, v43, __p[0]);
    }
    v44 = ;
    if (SHIBYTE(v82) < 0)
    {
      operator delete(__p[0]);
    }

    v45 = MEMORY[0x277CCACA8];
    sub_276166580(&self->super._chartBounds._min.var0.var0, __p);
    if (v82 >= 0.0)
    {
      objc_msgSend_stringWithUTF8String_(v45, v46, v47, v48, v49, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v45, v46, v47, v48, v49, __p[0]);
    }
    v50 = ;
    v51 = v38;
    if (SHIBYTE(v82) < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PBodyLayoutCha.isa, v37, self, v80, v44, v50);

    if (byte_280A46430)
    {
      v52 = objc_opt_class();
      v53 = NSStringFromSelector(v38);
      v54 = MEMORY[0x277CCACA8];
      sub_276166580(&self->_layout3DBounds._min.var0.var0, __p);
      if (v82 >= 0.0)
      {
        objc_msgSend_stringWithUTF8String_(v54, v55, v56, v57, v58, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v54, v55, v56, v57, v58, __p[0]);
      }
      v59 = ;
      if (SHIBYTE(v82) < 0)
      {
        operator delete(__p[0]);
      }

      v60 = MEMORY[0x277CCACA8];
      sub_276166580(&self->super._orientBounds._min.var0.var0, __p);
      if (v82 >= 0.0)
      {
        objc_msgSend_stringWithUTF8String_(v60, v61, v62, v63, v64, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v60, v61, v62, v63, v64, __p[0]);
      }
      v65 = ;
      if (SHIBYTE(v82) < 0)
      {
        operator delete(__p[0]);
      }

      NSLog(&cfstr_POrientLayoutC.isa, v52, self, v53, v59, v65);

      if (byte_280A46430)
      {
        v66 = objc_opt_class();
        v67 = NSStringFromSelector(v51);
        v68 = MEMORY[0x277CCACA8];
        sub_276166580(&self->_shadowsLayout3DBounds._min.var0.var0, __p);
        if (v82 >= 0.0)
        {
          objc_msgSend_stringWithUTF8String_(v68, v69, v70, v71, v72, __p);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(v68, v69, v70, v71, v72, __p[0]);
        }
        v73 = ;
        if (SHIBYTE(v82) < 0)
        {
          operator delete(__p[0]);
        }

        v74 = MEMORY[0x277CCACA8];
        sub_276166580(&self->super._drawingBounds._min.var0.var0, __p);
        if (v82 >= 0.0)
        {
          objc_msgSend_stringWithUTF8String_(v74, v75, v76, v77, v78, __p);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(v74, v75, v76, v77, v78, __p[0]);
        }
        v79 = ;
        if (SHIBYTE(v82) < 0)
        {
          operator delete(__p[0]);
        }

        NSLog(&cfstr_PDrawingLayout.isa, v66, self, v67, v73, v79);
      }
    }
  }
}

- (void)updateRenderBounds
{
  objc_msgSend_resetTransformsForRenderBounds(self->_projector, a2, v2, v3, v4);
  v6.receiver = self;
  v6.super_class = TSCH3DChartCacheableGetProjectedBoundsPipeline;
  [(TSCH3DChartGetProjectedBoundsPipeline *)&v6 updateRenderBounds];
}

- (void)updateBounds
{
  if (!self->super._originalCamera)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartCacheableGetProjectedBoundsPipeline updateBounds]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 541, 0, "invalid nil value for '%{public}s'", "_originalCamera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  originalSceneAccessor = self->super._originalSceneAccessor;
  if (!originalSceneAccessor)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartCacheableGetProjectedBoundsPipeline updateBounds]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 542, 0, "invalid nil value for '%{public}s'", "_originalSceneAccessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    originalSceneAccessor = self->super._originalSceneAccessor;
  }

  objc_msgSend_setCamera_accessor_(self->_projector, a2, v2, v3, v4, self->super._originalCamera, originalSceneAccessor);
  v41 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v37, v38, v39, v40, self->super.super.super._scene);
  v46 = v41;
  if (v41)
  {
    objc_msgSend_infoChartScale(v41, v43, v44, v45);
    v47 = v85;
  }

  else
  {
    v85 = 0uLL;
    v47 = 0uLL;
  }

  v86 = v47;
  objc_msgSend_setOriginalInfoChartScale_(v46, v42, *&v47, v44, v45, &v86);
  if (v46)
  {
    objc_msgSend_rotation(v46, v49, v50, v51);
    v52 = v83;
    LODWORD(v53) = v84;
  }

  else
  {
    v84 = 0;
    v83 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
  }

  *&v86 = v52;
  DWORD2(v86) = LODWORD(v53);
  objc_msgSend_setOriginalRotation_(v46, v48, v52, v53, v51, &v86);
  v54 = objc_opt_class();
  if (objc_msgSend_includesDepthForUnitScaleForScene_(v54, v55, v56, v57, v58, self->super.super.super._scene))
  {
    if (v46)
    {
      objc_msgSend_infoChartScale(v46, v60, v61, v62);
      LODWORD(v63) = DWORD2(v86);
    }

    else
    {
      v86 = 0uLL;
      v63 = 0.0;
    }

    __asm { FMOV            V1.2S, #1.0 }

    v81 = _D1;
    v82 = LODWORD(v63);
    objc_msgSend_setInfoChartScaleVec3_(v46, v59, v63, _D1, v62, &v81);
    v74 = self->super._originalSceneAccessor;
    if (v74)
    {
      objc_msgSend_infoChartScaleVec3(self->super._originalSceneAccessor, v71, v72, v73);
      v75 = v81;
    }

    else
    {
      v82 = 0;
      v81 = 0.0;
      v75 = 0.0;
    }

    *&v86 = v75;
    DWORD2(v86) = 1065353216;
    objc_msgSend_setInfoChartScaleVec3_(v74, v70, v75, v72, v73, &v86);
  }

  else
  {
    __asm { FMOV            V0.2S, #1.0 }

    *&v86 = _D0;
    DWORD2(v86) = 1065353216;
    objc_msgSend_setInfoChartScaleVec3_(v46, v59, _D0, v61, v62, &v86);
  }

  v80.receiver = self;
  v80.super_class = TSCH3DChartCacheableGetProjectedBoundsPipeline;
  [(TSCH3DChartGetProjectedBoundsPipeline *)&v80 updateBounds];
  objc_msgSend_reset(self->_projector, v76, v77, v78, v79);
}

- (id).cxx_construct
{
  *(self + 516) = xmmword_2764D5F00;
  *(self + 532) = 0x80000000800000;
  *(self + 540) = xmmword_2764D5F00;
  *(self + 556) = 0x80000000800000;
  *(self + 564) = xmmword_2764D5F00;
  *(self + 580) = 0x80000000800000;
  *(self + 588) = xmmword_2764D5F00;
  *(self + 604) = 0x80000000800000;
  return self;
}

- (Class)labelsMeshRendererClassForLabelsRenderer:(id)renderer
{
  objc_msgSend_useIndividualBounds(self, a2, v3, v4, v5, renderer);
  v6 = objc_opt_class();

  return v6;
}

@end