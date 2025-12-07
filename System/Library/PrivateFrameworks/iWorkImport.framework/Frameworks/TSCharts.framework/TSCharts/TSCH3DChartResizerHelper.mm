@interface TSCH3DChartResizerHelper
+ (TSCH3DChartResizerHelper)helperWithInfo:(id)info;
+ (id)vectorForContainingViewport:(void *)viewport;
+ (tvec2<int>)containingViewportForVector:(id)vector;
- (TSCH3DChartResizerHelper)initWithInfo:(id)info;
- (TSCH3DVector)containingViewportVector;
- (id).cxx_construct;
- (id)boundsLayoutForScene:(id)scene mode:(int)mode;
- (id)boundsLayoutResizedForScene:(id)scene bounds:(void *)bounds resizeStartingSize:(void *)size mode:(int)mode returningResultSize:(void *)resultSize;
- (tvec2<float>)chartBodyLayoutOffsetInChartAreaLayoutSpaceUsingConverter:(const void *)converter;
- (tvec2<float>)chartBodySizeByResizingScene:(id)scene toLayoutSize:(void *)size resizeStartingSize:(void *)startingSize returningChartBodyLayoutOffsetInChartAreaLayoutSpace:(void *)space resultLayoutSize:(void *)layoutSize;
- (tvec2<float>)layoutSizeByResizingScene:(id)scene toChartBodyLayoutSize:(void *)size resizeStartingSize:(void *)startingSize returningChartBodyLayoutBoundsInChartAreaLayoutSpace:(void *)space;
- (void)initializeOriginalContainingViewport;
- (void)setLayoutSettings:(id *)settings;
@end

@implementation TSCH3DChartResizerHelper

+ (tvec2<int>)containingViewportForVector:(id)vector
{
  v4 = v3;
  vectorCopy = vector;
  v10 = vectorCopy;
  if (vectorCopy)
  {
    objc_msgSend_value4(vectorCopy, v7, v8, v9);
    v11 = vcvt_s32_f32(v28);
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "+[TSCH3DChartResizerHelper containingViewportForVector:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 1260, 0, "invalid nil value for '%{public}s'", "vector");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    v11 = 0;
  }

  *v4 = v11;

  return v27;
}

+ (id)vectorForContainingViewport:(void *)viewport
{
  *&v3 = *viewport;
  *&v4 = *(viewport + 1);
  return objc_msgSend_x_y_z_w_(TSCH3DVector, a2, 0.0, 0.0, v3, v4);
}

+ (TSCH3DChartResizerHelper)helperWithInfo:(id)info
{
  infoCopy = info;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithInfo_(v5, v6, v7, v8, v9, infoCopy);

  return v10;
}

- (TSCH3DChartResizerHelper)initWithInfo:(id)info
{
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = TSCH3DChartResizerHelper;
  v6 = [(TSCH3DChartResizerHelper *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chartInfo, info);
    objc_msgSend_initializeOriginalContainingViewport(v7, v8, v9, v10, v11);
    v7->_containingViewport = v7->_originalContainingViewport;
    sub_27635FB94(&v13);
    *&v7->_layoutSettings.forceOmitLegend = v13;
    v7->_layoutSettings.max3DLimitingSeries = v14;
  }

  return v7;
}

- (void)initializeOriginalContainingViewport
{
  if (self->_originalContainingViewport)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartResizerHelper initializeOriginalContainingViewport]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 1288, 0, "_originalContainingViewport is initialized already");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21 = objc_msgSend_objectValueForProperty_(self->_chartInfo, a2, v2, v3, v4, 1074);
  if (v21)
  {
    v22 = objc_opt_class();
    if (v22)
    {
      objc_msgSend_containingViewportForVector_(v22, v23, v24, v25);
      var0 = v29;
      v27 = v30;
    }

    else
    {
      v27 = 0;
      var0 = 0;
    }

    self->_originalContainingViewport.var0.var0 = var0;
    self->_originalContainingViewport.var1.var0 = v27;
  }

  else
  {
    var0 = self->_originalContainingViewport.var0.var0;
    v27 = self->_originalContainingViewport.var1.var0;
  }

  if (var0 < 1 || v27 <= 0)
  {
    self->_originalContainingViewport = vdup_n_s32(0x320u);
  }
}

- (TSCH3DVector)containingViewportVector
{
  v3 = objc_opt_class();
  objc_msgSend_containingViewport(self, v4, v5, v6);
  v11 = objc_msgSend_vectorForContainingViewport_(v3, v7, v8, v9, v10, v13);

  return v11;
}

- (id)boundsLayoutForScene:(id)scene mode:(int)mode
{
  v4 = *&mode;
  sceneCopy = scene;
  if (!sceneCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DChartResizerHelper boundsLayoutForScene:mode:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 1305, 0, "invalid nil value for '%{public}s'", "scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_scene(self->_boundsLayout, v6, v8, v9, v10);
  v30 = v26;
  if (v26 != sceneCopy)
  {

LABEL_9:
    v37 = [TSCH3DChartBoundsLayout alloc];
    v42 = objc_msgSend_initWithScene_containingViewport_originalContainingViewport_layoutSettings_(v37, v38, v39, v40, v41, sceneCopy, &self->_containingViewport, &self->_originalContainingViewport, &self->_layoutSettings);
    boundsLayout = self->_boundsLayout;
    self->_boundsLayout = v42;

    if (self->_layoutSettings.enable3DTightBounds)
    {
      v48 = objc_opt_class();
      objc_msgSend_setGetBoundsClass_(self->_boundsLayout, v49, v50, v51, v52, v48);
    }

    else
    {
      v57 = objc_msgSend_main(sceneCopy, v44, v45, v46, v47);
      Bounds3DClass = objc_msgSend_getBounds3DClass(v57, v58, v59, v60, v61);
      objc_msgSend_setGetBoundsClass_(self->_boundsLayout, v63, v64, v65, v66, Bounds3DClass);
    }

    if (!objc_msgSend_getBoundsClass(self->_boundsLayout, v53, v54, v55, v56))
    {
      v67 = MEMORY[0x277D81150];
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCH3DChartResizerHelper boundsLayoutForScene:mode:]");
      v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v74, v75, v76, v77, v68, v73, 1317, 0, "invalid nil value for '%{public}s'", "_boundsLayout.getBoundsClass");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81);
    }

    goto LABEL_14;
  }

  v31 = self->_boundsLayout;
  if (v31)
  {
    objc_msgSend_layoutSettings(v31, v27, v28, v29);
  }

  else
  {
    v87 = 0uLL;
    v88 = 0;
  }

  v85 = *&self->_layoutSettings.forceOmitLegend;
  max3DLimitingSeries = self->_layoutSettings.max3DLimitingSeries;
  v32 = sub_27620A520(&v87, &v85);

  if (!v32)
  {
    goto LABEL_9;
  }

LABEL_14:
  objc_msgSend_setMode_(self->_boundsLayout, v33, v34, v35, v36, v4);
  v82 = self->_boundsLayout;
  v83 = v82;

  return v82;
}

- (id)boundsLayoutResizedForScene:(id)scene bounds:(void *)bounds resizeStartingSize:(void *)size mode:(int)mode returningResultSize:(void *)resultSize
{
  v8 = *&mode;
  sceneCopy = scene;
  v125 = sceneCopy;
  if ((v8 & 2) != 0)
  {
    objc_msgSend_setLabelWrapBounds_forScene_(TSCH3DChartTitleSceneObject, v12, v14, v15, v16, bounds, sceneCopy);
  }

  v17 = objc_msgSend_boundsLayoutForScene_mode_(self, v12, v14, v15, v16, sceneCopy, v8);
  *__p = *bounds;
  objc_msgSend_setLayoutInPage_(v17, v18, *__p, v19, v20, __p);
  *__p = *bounds;
  objc_msgSend_setBodyLayoutInPage_(v17, v21, *__p, v22, v23, __p);
  v124 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v24, v25, v26, v27, sceneCopy);
  if (byte_280A46430 == 1)
  {
    v32 = objc_msgSend_projectedBounds(v17, v28, v29, v30, v31);
    v33 = sub_2762032CC(v32);
    if (v124)
    {
      objc_msgSend_infoChartScale(v124, v34, v35, v36);
      v37 = *&v127;
      v38 = *(&v127 + 1);
      v39 = *&v128;
      v40 = *(&v128 + 1);
    }

    else
    {
      v127 = 0;
      v128 = 0;
      v40 = 0.0;
      v39 = 0.0;
      v38 = 0.0;
      v37 = 0.0;
    }

    v41 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec4(%f, %f, %f, %f)", v37, v38, v39, v40);
    if (v130 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v41, v42, v43, v44, v45, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v41, v42, v43, v44, v45, __p[0]);
    }
    v46 = ;
    sceneCopy = v125;
    if (v130 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PreResizeScale.isa, v33, v46);
  }

  v47 = objc_msgSend_main(sceneCopy, v28, v29, v30, v31);
  v52 = objc_msgSend_resizer3DClass(v47, v48, v49, v50, v51);

  if (!v52)
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, "[TSCH3DChartResizerHelper boundsLayoutResizedForScene:bounds:resizeStartingSize:mode:returningResultSize:]");
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v64, v65, v66, v67, v58, v63, 1341, 0, "invalid nil value for '%{public}s'", "resizerClass");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
  }

  objc_opt_class();
  v76 = objc_msgSend_chartType(self->_chartInfo, v72, v73, v74, v75);
  v77 = TSUDynamicCast();
  v82 = objc_msgSend_resizerWithLayout_chartType_(v52, v78, v79, v80, v81, v17, v77);

  v85 = *bounds;
  v86 = vsub_f32(*(bounds + 8), *bounds);
  __p[0] = v86;
  if (v82)
  {
    v87 = v124;
    v88 = v125;
    objc_msgSend_resize_startingSize_(v82, *&v86, v85, v84);
    if (!resultSize)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v126 = 0;
  v87 = v124;
  v88 = v125;
  if (resultSize)
  {
LABEL_17:
    v86 = v126;
    *resultSize = v126;
  }

LABEL_18:
  if (byte_280A46430 != 1)
  {
    goto LABEL_35;
  }

  v89 = objc_opt_class();
  v90 = NSStringFromSelector(a2);
  v91 = MEMORY[0x277CCACA8];
  sub_276152FD4(__p, "ivec2(%d, %d)", self->_containingViewport.var0.var0, 0);
  if (v130 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v91, v92, v93, v94, v95, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v91, v92, v93, v94, v95, __p[0]);
  }
  v96 = ;
  if (v130 < 0)
  {
    operator delete(__p[0]);
    if (v17)
    {
      goto LABEL_24;
    }

LABEL_28:
    v100 = 0;
    v127 = 0;
    goto LABEL_29;
  }

  if (!v17)
  {
    goto LABEL_28;
  }

LABEL_24:
  objc_msgSend_containingViewport(v17, v97, v98, v99);
  v100 = v127;
LABEL_29:
  v101 = MEMORY[0x277CCACA8];
  sub_276152FD4(__p, "ivec2(%d, %d)", v100, HIDWORD(v100));
  if (v130 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v101, v102, v103, v104, v105, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v101, v102, v103, v104, v105, __p[0]);
  }
  v106 = ;
  v88 = v125;
  if (v130 < 0)
  {
    operator delete(__p[0]);
  }

  NSLog(&cfstr_PUpdatingCvFro.isa, v89, self, v90, v96, v106);

  v87 = v124;
LABEL_35:
  if (v17)
  {
    objc_msgSend_containingViewport(v17, *&v86, v85, v84);
    v107 = __p[0];
  }

  else
  {
    v107 = 0;
  }

  self->_containingViewport = v107;
  if (byte_280A46430 == 1)
  {
    v108 = objc_msgSend_projectedBounds(v17, v83, *&v107, v85, v84);
    v109 = sub_2762032CC(v108);
    if (v87)
    {
      objc_msgSend_infoChartScale(v87, v110, v111, v112);
      v113 = *&v127;
      v114 = *(&v127 + 1);
      v115 = *&v128;
      v116 = *(&v128 + 1);
    }

    else
    {
      v116 = 0.0;
      v115 = 0.0;
      v114 = 0.0;
      v113 = 0.0;
    }

    v117 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec4(%f, %f, %f, %f)", v113, v114, v115, v116);
    if (v130 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v117, v118, v119, v120, v121, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v117, v118, v119, v120, v121, __p[0]);
    }
    v122 = ;
    v88 = v125;
    if (v130 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PostResizeScal.isa, v109, v122);
  }

  return v17;
}

- (tvec2<float>)chartBodyLayoutOffsetInChartAreaLayoutSpaceUsingConverter:(const void *)converter
{
  v5 = v3;
  v21 = xmmword_2764D5ED0;
  sub_2761526F4(&v21, (*converter + 16), &v22);
  v6 = *converter;
  v7 = *(converter + 2);
  v8 = *(converter + 12);
  v16 = v22;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = *(converter + 2);
  sub_2761526F4(&v16, v6 + 14, &v22);
  v9 = v18 * v22.f32[0];
  v10 = v18 * v22.f32[3];
  v21 = xmmword_2764D5ED0;
  sub_2761526F4(&v21, (*converter + 80), &v22);
  v11 = *converter;
  v12 = *(converter + 2);
  v13 = *(converter + 12);
  v16 = v22;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = *(converter + 2);
  sub_2761526F4(&v16, v11 + 14, &v22);
  v15 = v10 - (v18 * v22.f32[3]);
  *v5 = (v18 * v22.f32[0]) - v9;
  v5[1] = v15;
  return v14;
}

- (tvec2<float>)chartBodySizeByResizingScene:(id)scene toLayoutSize:(void *)size resizeStartingSize:(void *)startingSize returningChartBodyLayoutOffsetInChartAreaLayoutSpace:(void *)space resultLayoutSize:(void *)layoutSize
{
  v13 = v7;
  sceneCopy = scene;
  v28.i64[0] = 0;
  v28.i64[1] = *size;
  v18 = objc_msgSend_boundsLayoutResizedForScene_bounds_resizeStartingSize_mode_returningResultSize_(self, v15, *&v28.i64[1], v16, v17, sceneCopy, &v28, startingSize, 1, layoutSize);
  v23 = objc_msgSend_projectedBounds(v18, v19, v20, v21, v22);
  v33 = v23;
  v34 = 1.0;
  v35 = 0;
  v36 = 0;
  if (space)
  {
    objc_msgSend_chartBodyLayoutOffsetInChartAreaLayoutSpaceUsingConverter_(self, v24, v25, v26);
    *space = v28.i64[0];
    v23 = v33;
  }

  v37 = xmmword_2764D5ED0;
  sub_2761526F4(&v37, v23 + 10, &v38);
  v28 = v38;
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  sub_2761526F4(&v28, v33 + 14, &v38);
  *v13 = vsub_f32(vmul_n_f32(*&v38.u32[2], v30), vmul_n_f32(*v38.f32, v30));

  return v27;
}

- (tvec2<float>)layoutSizeByResizingScene:(id)scene toChartBodyLayoutSize:(void *)size resizeStartingSize:(void *)startingSize returningChartBodyLayoutBoundsInChartAreaLayoutSpace:(void *)space
{
  v11 = v6;
  sceneCopy = scene;
  v38 = 0;
  v13 = *size;
  v29.i64[0] = 0;
  *&v29.i64[1] = v13;
  v16 = objc_msgSend_boundsLayoutResizedForScene_bounds_resizeStartingSize_mode_returningResultSize_(self, v14, 0.0, v13, v15, sceneCopy, &v29, startingSize, 2, &v38);
  v21 = objc_msgSend_projectedBounds(v16, v17, v18, v19, v20);
  v34 = v21;
  v35 = 1.0;
  v36 = 0;
  v37 = 0;
  if (space)
  {
    objc_msgSend_chartBodyLayoutOffsetInChartAreaLayoutSpaceUsingConverter_(self, v22, v23, v24);
    if (*&v38 < 0.0 || *(&v38 + 1) < 0.0)
    {
      v25.i64[0] = v29.i64[0];
      v25.i64[1] = v29.i64[0];
    }

    else
    {
      v26.i64[0] = v29.i64[0];
      v26.i64[1] = v29.i64[0];
      v27.i64[0] = 0;
      v27.i64[1] = v38;
      v25 = vaddq_f32(v27, v26);
    }

    *space = v25;
    v21 = v34;
  }

  v39 = xmmword_2764D5ED0;
  sub_2761526F4(&v39, v21 + 2, &v40);
  v29 = v40;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  v33 = v37;
  sub_2761526F4(&v29, v34 + 14, &v40);
  *v11 = vsub_f32(vmul_n_f32(*&v40.u32[2], v31), vmul_n_f32(*v40.f32, v31));

  return v28;
}

- (void)setLayoutSettings:(id *)settings
{
  v3 = *&settings->var0;
  self->_layoutSettings.max3DLimitingSeries = settings->var9;
  *&self->_layoutSettings.forceOmitLegend = v3;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end