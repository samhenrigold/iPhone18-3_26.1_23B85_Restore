@interface TSCH3DChartSceneAreaLayoutItem
+ (id)debug_worldBoundsDescriptionForScene:(id)scene;
- (BOOL)p_inwardLayoutCanUseCacheItem:(id)item;
- (BOOL)p_outwardLayoutCanUseCacheItem:(id)item;
- (BOOL)p_validCacheItem:(id)item inward:(BOOL)inward;
- (CGRect)calcDrawingRect;
- (CGRect)chartBodyLayoutRect;
- (CGRect)p_frameForSelectionPath:(id)path sceneObjectClass:(Class)class;
- (CGRect)titleFrame;
- (TSCH3DChartSceneAreaLayoutItem)initWithParent:(id)parent;
- (TSCH3DScene)scene;
- (TSCH3DVector)containingViewportVector;
- (const)projectedBounds;
- (const)projectedBoundsWithScene:(id)scene forcesAccurateBounds:(BOOL)bounds allowsEmptyBodyLayoutBounds:(BOOL)layoutBounds;
- (id).cxx_construct;
- (id)boundsLayout;
- (id)boundsLayout:(CGRect)layout scene:(id)scene forcesAccurateBounds:(BOOL)bounds allowsEmptyBodyLayoutBounds:(BOOL)layoutBounds;
- (id)debug_rotationBounds;
- (id)p_cache;
- (id)p_cacheInwardLayout;
- (id)p_cacheOutwardLayout;
- (id)p_updatedResizerHelperForcingAccurateBounds:(BOOL)bounds;
- (tvec2<int>)containingViewport;
- (tvec2<int>)p_currentModelSize;
- (void)clearAll;
- (void)clearScene;
- (void)invalidateBounds;
- (void)invalidateLabelsBoundsForSceneObjectClass:(Class)class boundsIndex:(int64_t)index;
- (void)layoutInward;
- (void)layoutOutward;
- (void)p_updateBodyLayoutRect;
- (void)p_updateFromCacheItem:(id)item;
- (void)p_updateLayoutSize:(CGSize)size chartBodyLayoutOffsetInChartAreaLayoutSpace:(void *)space;
- (void)p_validate;
- (void)setLayoutOffset:(CGPoint)offset;
- (void)setStabilizedChartBodyLayoutRectUsingConverter:(const void *)converter;
@end

@implementation TSCH3DChartSceneAreaLayoutItem

+ (id)debug_worldBoundsDescriptionForScene:(id)scene
{
  v141 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v117 = objc_msgSend_string(MEMORY[0x277CCAB68], v3, v4, v5, v6);
  objc_msgSend_appendString_(v117, v7, v8, v9, v10, @"\n");
  v114 = objc_msgSend_debugObjects(sceneCopy, v11, v12, v13, v14);
  v19 = objc_msgSend_camera(sceneCopy, v15, v16, v17, v18);
  v23 = v19;
  if (v19)
  {
    objc_msgSend_modelViewNormalizedProjection(v19, v20, v21, v22);
  }

  else
  {
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
  }

  v28 = objc_msgSend_camera(sceneCopy, v24, v25, v26, v27);
  v118 = objc_msgSend_copy(v28, v29, v30, v31, v32);

  *v124 = 1065353216;
  *&v124[12] = 0;
  *&v124[4] = 0;
  *&v124[20] = 1065353216;
  v125 = 0uLL;
  *v126 = 1065353216;
  *&v126[12] = 0;
  *&v126[4] = 0;
  *&v126[20] = 1065353216;
  objc_msgSend_setTransform_(v118, v33, v34, v35, v36, v124);
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  obj = v114;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, v38, v39, v40, &v128, v140, 16);
  if (v42)
  {
    v116 = *v129;
    __asm { FMOV            V0.4S, #1.0 }

    v120 = _Q0;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v129 != v116)
        {
          objc_enumerationMutation(obj);
        }

        v51 = *(*(&v128 + 1) + 8 * i);
        v52 = objc_msgSend_clone(sceneCopy, v41, *&_Q0, v43, v44);
        objc_msgSend_setCamera_(v52, v53, v54, v55, v56, v118);
        objc_msgSend_resetObjects(v52, v57, v58, v59, v60);
        objc_msgSend_addObject_(v52, v61, v62, v63, v64, v51);
        v69 = objc_msgSend_pipelineWithScene_(TSCH3DGetBoundsPipeline, v65, v66, v67, v68, v52);
        objc_msgSend_run(v69, v70, v71, v72, v73);
        *v124 = xmmword_2764D5F00;
        *&v124[16] = 0x80000000800000;
        v125 = v132;
        *v126 = v133;
        *&v126[16] = v134;
        v127 = v135;
        v75 = objc_msgSend_bounds(v69, *&v134, *&v135, v74);
        v76 = 0;
        v138 = *v75;
        v139 = *(v75 + 16);
        do
        {
          v77 = 0;
          *__p = v120;
          do
          {
            *(__p + v77) = *((&v138 | (4 * ((v76 >> v77) & 1)) & 0xFFFFFFFFFFFFFFF7 | (8 * ((v76 >> v77) & 1))) + 4 * v77);
            ++v77;
          }

          while (v77 != 3);
          v121 = *__p;
          sub_276166708(v124, &v121, &v123);
          ++v76;
        }

        while (v76 != 8);
        if (!v69)
        {
          v82 = MEMORY[0x277D81150];
          v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v79, v80, v81, "+[TSCH3DChartSceneAreaLayoutItem debug_worldBoundsDescriptionForScene:]");
          v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v85, v86, v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v89, v90, v91, v92, v83, v88, 164, 0, "invalid nil value for '%{public}s'", "pipeline");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v94, v95, v96);
        }

        v97 = objc_opt_class();
        v101 = objc_msgSend_bounds(v69, v98, v99, v100);
        v102 = sub_276165634(v101);
        v121 = *v124;
        v122 = *&v124[16];
        v103 = MEMORY[0x277CCACA8];
        sub_276166580(&v121, __p);
        if (v137 >= 0)
        {
          objc_msgSend_stringWithUTF8String_(v103, v104, v105, v106, v107, __p);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(v103, v104, v105, v106, v107, __p[0]);
        }
        v109 = ;
        if (v137 < 0)
        {
          operator delete(__p[0]);
        }

        objc_msgSend_appendFormat_(v117, v108, v110, v111, v112, @"%@: %@ projected %@\n", v97, v102, v109);
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, *&_Q0, v43, v44, &v128, v140, 16);
    }

    while (v42);
  }

  return v117;
}

- (TSCH3DChartSceneAreaLayoutItem)initWithParent:(id)parent
{
  parentCopy = parent;
  v23.receiver = self;
  v23.super_class = TSCH3DChartSceneAreaLayoutItem;
  v6 = [(TSCHChartLayoutItem *)&v23 initWithParent:parentCopy];
  v7 = v6;
  if (v6)
  {
    if (byte_280A46430 == 1)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromSelector(a2);
      NSLog(&cfstr_PParent.isa, v8, v6, v9, parentCopy);
    }

    v6->_chartBodyLayoutRect.origin = 0u;
    v6->_chartBodyLayoutRect.size = 0u;
    v10 = [TSCH3DChartResizerHelper alloc];
    v15 = objc_msgSend_chartInfo(v7, v11, v12, v13, v14);
    v20 = objc_msgSend_initWithInfo_(v10, v16, v17, v18, v19, v15);
    resizerHelper = v7->_resizerHelper;
    v7->_resizerHelper = v20;
  }

  return v7;
}

- (void)p_validate
{
  if (self->_isInvalidated)
  {
    if (self->_scene)
    {
      v6 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, a2, v2, v3, v4);
      initialInfoChartScale = self->_initialInfoChartScale;
      objc_msgSend_setInfoChartScale_(v6, v7, *&initialInfoChartScale.var0.var0, v8, v9, &initialInfoChartScale);
    }

    v10 = [TSCH3DChartResizerHelper alloc];
    v15 = objc_msgSend_chartInfo(self, v11, v12, v13, v14);
    v20 = objc_msgSend_initWithInfo_(v10, v16, v17, v18, v19, v15);
    resizerHelper = self->_resizerHelper;
    self->_resizerHelper = v20;
  }

  self->_isInvalidated = 0;
}

- (TSCH3DScene)scene
{
  objc_msgSend_p_validate(self, a2, v2, v3, v4);
  scene = self->_scene;
  if (!scene && ((objc_msgSend_chartInfo(self, v6, v7, v8, v9), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_layoutSettings(self, v12, v13, v14), objc_msgSend_styleProvidingSource(self, v15, v16, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend_create3DSceneWithLayoutSettings_styleProvidingSource_(v11, v20, v21, v22, v23, &v52, v19), v24 = objc_claimAutoreleasedReturnValue(), v25 = self->_scene, self->_scene = v24, v25, v19, v11, objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v26, v27, v28, v29, self->_scene), v30 = objc_claimAutoreleasedReturnValue(), (v34 = v30) == 0) ? (v35 = 0) : (objc_msgSend_infoChartScale(v30, v31, v32, v33), v35 = v52), self->_initialInfoChartScale = v35, v34, (scene = self->_scene) == 0) || self->_isInvalidated)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DChartSceneAreaLayoutItem scene]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 199, 0, "invalid scene %@ invalidate %lu", self->_scene, self->_isInvalidated);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
    scene = self->_scene;
  }

  return scene;
}

- (void)clearScene
{
  scene = self->_scene;
  self->_scene = 0;
}

- (void)clearAll
{
  if (!self->_isInvariant)
  {
    self->_isInvalidated = 1;
  }

  v2.receiver = self;
  v2.super_class = TSCH3DChartSceneAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v2 clearAll];
}

- (tvec2<int>)containingViewport
{
  v6 = v2;
  v7 = objc_msgSend_p_updatedResizerHelper(self, a2, v3, v4, v5);
  v28 = v7;
  if (v7)
  {
    objc_msgSend_containingViewport(v7, v9, v10, v11);
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DChartSceneAreaLayoutItem containingViewport]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 235, 0, "invalid nil value for '%{public}s'", "resizerHelper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    *v6 = 0;
  }

  return v27;
}

- (TSCH3DVector)containingViewportVector
{
  v6 = objc_msgSend_p_updatedResizerHelper(self, a2, v2, v3, v4);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DChartSceneAreaLayoutItem containingViewportVector]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 241, 0, "invalid nil value for '%{public}s'", "resizerHelper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_containingViewportVector(v6, v5, v7, v8, v9);

  return v25;
}

- (id)p_updatedResizerHelperForcingAccurateBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  objc_msgSend_p_validate(self, a2, v3, v4, v5);
  if (!self->_resizerHelper || self->_isInvalidated)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DChartSceneAreaLayoutItem p_updatedResizerHelperForcingAccurateBounds:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 251, 0, "invalidate resizer helper %@ invalidated %lu", self->_resizerHelper, self->_isInvalidated);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v34 = 0uLL;
  v35 = 0;
  objc_msgSend_layoutSettings(self, v9, v10, v11);
  if (boundsCopy)
  {
    BYTE6(v34) = 1;
  }

  v32 = v34;
  v33 = v35;
  objc_msgSend_setLayoutSettings_(self->_resizerHelper, v27, *&v34, v28, v29, &v32);
  v30 = self->_resizerHelper;

  return v30;
}

- (id)boundsLayout:(CGRect)layout scene:(id)scene forcesAccurateBounds:(BOOL)bounds allowsEmptyBodyLayoutBounds:(BOOL)layoutBounds
{
  boundsCopy = bounds;
  height = layout.size.height;
  width = layout.size.width;
  y = layout.origin.y;
  x = layout.origin.x;
  sceneCopy = scene;
  p_chartBodyLayoutRect = &self->_chartBodyLayoutRect;
  MinX = CGRectGetMinX(self->_chartBodyLayoutRect);
  MinY = CGRectGetMinY(self->_chartBodyLayoutRect);
  MaxX = CGRectGetMaxX(self->_chartBodyLayoutRect);
  MaxY = CGRectGetMaxY(self->_chartBodyLayoutRect);
  *&v19 = MinX;
  *&v20 = MinY;
  *&v21 = MaxX;
  *&MaxY = MaxY;
  v83.i64[0] = __PAIR64__(LODWORD(v20), LODWORD(v19));
  v83.i64[1] = __PAIR64__(LODWORD(MaxY), v21);
  objc_msgSend_setLabelWrapBounds_forScene_(TSCH3DChartTitleSceneObject, v22, MaxY, v19, v20, &v83, sceneCopy);
  v27 = objc_msgSend_p_updatedResizerHelperForcingAccurateBounds_(self, v23, v24, v25, v26, boundsCopy);
  v32 = objc_msgSend_boundsLayoutForScene_mode_(v27, v28, v29, v30, v31, sceneCopy, 0);
  v87.origin.x = x;
  v87.origin.y = y;
  v87.size.width = width;
  v87.size.height = height;
  v33 = CGRectGetMinX(v87);
  v88.origin.x = x;
  v88.origin.y = y;
  v88.size.width = width;
  v88.size.height = height;
  v34 = CGRectGetMinY(v88);
  v89.origin.x = x;
  v89.origin.y = y;
  v89.size.width = width;
  v89.size.height = height;
  v35 = CGRectGetMaxX(v89);
  v90.origin.x = x;
  v90.origin.y = y;
  v90.size.width = width;
  v90.size.height = height;
  v36 = CGRectGetMaxY(v90);
  *&v37 = v33;
  *&v38 = v34;
  *&v39 = v35;
  v78.i64[0] = __PAIR64__(LODWORD(v38), LODWORD(v37));
  *&v36 = v36;
  v78.i64[1] = __PAIR64__(LODWORD(v36), v39);
  objc_msgSend_setLayoutInPage_(v32, v40, v36, v37, v38, &v78);
  v41 = CGRectGetMinX(*p_chartBodyLayoutRect);
  v42 = CGRectGetMinY(*p_chartBodyLayoutRect);
  v43 = CGRectGetMaxX(*p_chartBodyLayoutRect);
  v44 = CGRectGetMaxY(*p_chartBodyLayoutRect);
  *&v45 = v41;
  *&v46 = v42;
  *&v47 = v43;
  v78.i64[0] = __PAIR64__(LODWORD(v46), LODWORD(v45));
  *&v44 = v44;
  v78.i64[1] = __PAIR64__(LODWORD(v44), v47);
  objc_msgSend_setBodyLayoutInPage_(v32, v48, v44, v45, v46, &v78);
  v53 = objc_msgSend_projectedBounds(v32, v49, v50, v51, v52);
  v55 = v53 + 10;
  LODWORD(v56) = v53[10].i32[0];
  LODWORD(v57) = v53[10].i32[1];
  LODWORD(v58) = v53[11].i32[0];
  LODWORD(v59) = v53[11].i32[1];
  if (*&v58 < *&v56 || *&v59 < *&v57)
  {
    if (!layoutBounds)
    {
      v61 = MEMORY[0x277D81150];
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, "[TSCH3DChartSceneAreaLayoutItem boundsLayout:scene:forcesAccurateBounds:allowsEmptyBodyLayoutBounds:]", v59);
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
      v68 = sub_2762032CC(v53);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v69, v70, v71, v72, v62, v67, 277, 0, "convert does not have valid body layout bounds %@", v68);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
    }
  }

  else
  {
    v84 = xmmword_2764D5ED0;
    sub_2761526F4(&v84, v55, &v85);
    v78 = v85;
    v79 = v53;
    v80 = 1.0;
    v81 = 0;
    v82 = 0;
    sub_2761526F4(&v78, v53 + 14, &v85);
    v60 = vsub_f32(vmul_n_f32(*&v85.u32[2], v80), vmul_n_f32(*v85.f32, v80));
    v57 = *v83.i64;
    LODWORD(v59) = v83.i32[2];
    v58 = COERCE_DOUBLE(__PAIR64__(v85.u32[3], v83.u32[1]));
    LODWORD(v54) = v83.i32[3];
    if (v83.f32[2] < v83.f32[0] || v83.f32[3] < v83.f32[1])
    {
      v57 = 0.0;
      v83.i64[0] = 0;
    }

    *&v83.u32[2] = vadd_f32(v60, *&v57);
  }

  v78 = v83;
  objc_msgSend_setBodyLayoutInPage_(v32, v55, *v83.i64, v57, v58, &v78, v59, v54);

  return v32;
}

- (id)boundsLayout
{
  objc_msgSend_layoutRect(self, a2, v2, v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = objc_msgSend_scene(self, v14, v6, v8, v10);
  v17 = objc_msgSend_boundsLayout_scene_forcesAccurateBounds_allowsEmptyBodyLayoutBounds_(self, v16, v7, v9, v11, v15, 0, 0, v13);

  return v17;
}

- (const)projectedBounds
{
  v5 = objc_msgSend_boundsLayout(self, a2, v2, v3, v4);
  v10 = objc_msgSend_projectedBounds(v5, v6, v7, v8, v9);

  return v10;
}

- (const)projectedBoundsWithScene:(id)scene forcesAccurateBounds:(BOOL)bounds allowsEmptyBodyLayoutBounds:(BOOL)layoutBounds
{
  layoutBoundsCopy = layoutBounds;
  boundsCopy = bounds;
  sceneCopy = scene;
  objc_msgSend_layoutRect(self, v9, v10, v11, v12);
  v17 = objc_msgSend_boundsLayout_scene_forcesAccurateBounds_allowsEmptyBodyLayoutBounds_(self, v13, v14, v15, v16, sceneCopy, boundsCopy, layoutBoundsCopy);
  v22 = objc_msgSend_projectedBounds(v17, v18, v19, v20, v21);

  return v22;
}

- (void)invalidateBounds
{
  v9 = objc_msgSend_p_updatedResizerHelper(self, a2, v2, v3, v4);
  objc_msgSend_invalidateBounds(v9, v5, v6, v7, v8);
}

- (void)invalidateLabelsBoundsForSceneObjectClass:(Class)class boundsIndex:(int64_t)index
{
  v13 = objc_msgSend_p_updatedResizerHelper(self, a2, v4, v5, v6);
  objc_msgSend_invalidateLabelsBoundsForSceneObjectClass_boundsIndex_(v13, v9, v10, v11, v12, class, index);
}

- (id)debug_rotationBounds
{
  v6 = objc_msgSend_projectedBounds(self, a2, v2, v3, v4);
  v47 = xmmword_2764D5ED0;
  sub_2761526F4(&v47, v6 + 2, &v48);
  *__p = v48;
  v43 = v6;
  v44 = 1065353216;
  v45 = 0;
  v46 = 0;
  sub_2761526F4(__p, v6 + 14, &v48);
  v7 = v48.f32[2] - v48.f32[0];
  v8 = v48.f32[3] - v48.f32[1];
  v47 = xmmword_2764D5ED0;
  sub_2761526F4(&v47, v6 + 2, &v48);
  *__p = v48;
  v43 = v6;
  v44 = 1065353216;
  v45 = 0;
  v46 = 0;
  v12 = sub_27620E300(v6, __p, &v48, *v48.i64, v9, v10, v11);
  sub_27615294C(v48.f32, &v6[8], &v47, v12, v13, v14, v15);
  v16 = *(&v47 + 1);
  v17 = v47;
  v18 = MEMORY[0x277CCACA8];
  sub_276152FD4(__p, "vec2(%f, %f)", v7, v8);
  if (SHIBYTE(v43) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v18, v19, v20, v21, v22, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v18, v19, v20, v21, v22, __p[0]);
  }
  v23 = ;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

  v24 = MEMORY[0x277CCACA8];
  sub_276152FD4(__p, "vec2(%f, %f)", (*&v16 - *&v17), (*(&v16 + 1) - *(&v17 + 1)));
  if (SHIBYTE(v43) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v24, v25, v26, v27, v28, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v24, v25, v26, v27, v28, __p[0]);
  }
  v29 = ;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

  v30 = sub_2762032CC(v6);
  v35 = objc_msgSend_scene(self, v31, v32, v33, v34);
  v40 = objc_msgSend_stringWithFormat_(v18, v36, v37, v38, v39, @"cv %@ page %@\nspaces %@\nscene %@", v23, v29, v30, v35);

  return v40;
}

- (CGRect)calcDrawingRect
{
  v6.receiver = self;
  v6.super_class = TSCH3DChartSceneAreaLayoutItem;
  [(TSCHChartAbstractAreaLayoutItem *)&v6 calcDrawingRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)titleFrame
{
  v6 = objc_msgSend_chartTitleType(TSCHSelectionPathType, a2, v2, v3, v4);
  v11 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v7, v8, v9, v10, v6, 0);
  v12 = objc_opt_class();
  objc_msgSend_p_frameForSelectionPath_sceneObjectClass_(self, v13, v14, v15, v16, v11, v12);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)p_frameForSelectionPath:(id)path sceneObjectClass:(Class)class
{
  pathCopy = path;
  v11 = objc_msgSend_scene(self, v7, v8, v9, v10);
  v16 = objc_msgSend_clone(v11, v12, v13, v14, v15);

  v21 = objc_msgSend_chartInfo(self, v17, v18, v19, v20);
  v26 = objc_msgSend_chartType(v21, v22, v23, v24, v25);

  v31 = objc_msgSend_stageClass(v26, v27, v28, v29, v30);
  if (objc_msgSend_supportsValueAxisLabelAlignmentCaching(v31, v32, v33, v34, v35))
  {
    objc_msgSend_cacheValueAxisLabelAlignmentForScene_(TSCH3DChartAxisLabelsSceneObject, v36, v37, v38, v39, v16);
  }

  v40 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v36, v37, v38, v39, v16);
  objc_msgSend_setLabelsShadowIgnored_(v40, v41, v42, v43, v44, 1);
  v49 = objc_msgSend_camera(v16, v45, v46, v47, v48);
  objc_msgSend_containingViewport(self, v50, v51, v52);
  objc_msgSend_setContainingViewportSize_(v49, v53, v54, v55, v56, v107);
  objc_msgSend_removeObjectsNotOfClass_(v16, v57, v58, v59, v60, class);
  objc_msgSend_setSelectionPath_selectionMode_forScene_(class, v61, v62, v63, v64, pathCopy, 1, v16);
  v69 = objc_msgSend_pipelineWithScene_(TSCH3DGetBoundsPipeline, v65, v66, v67, v68, v16);
  objc_msgSend_run(v69, v70, v71, v72, v73);
  v77 = objc_msgSend_bounds(v69, v74, v75, v76);
  v78 = *(v77 + 16);
  v107[0] = *v77;
  v107[1] = v78;
  v79 = *(v77 + 48);
  v107[2] = *(v77 + 32);
  v108 = v79;
  v109 = *(v77 + 64);
  v111 = 0;
  v112 = 0;
  __p = 0;
  sub_27618FB60(&__p, *(v77 + 72), *(v77 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(v77 + 80) - *(v77 + 72)) >> 3));
  *v106 = v108;
  *&v106[16] = v109;
  if (sub_276155178(v106))
  {
    v84 = *MEMORY[0x277CBF398];
    v85 = *(MEMORY[0x277CBF398] + 8);
    v86 = *(MEMORY[0x277CBF398] + 16);
    v87 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    v88 = objc_msgSend_projectedBounds(self, v80, v81, v82, v83);
    *&v89 = *v106;
    *(&v89 + 1) = *&v106[12];
    v98 = v89;
    v99 = v88;
    v100 = 1065353216;
    v101 = 0;
    v102 = 0;
    *&v90 = sub_276152C5C(&v98, v88 + 10, &v113).u64[0];
    sub_27615294C(v113.f32, &v88[12], &v103, v90, v91, v92, v93);
    v84 = *v103.i32;
    v85 = *&v103.i32[1];
    v86 = (v104 - *v103.i32);
    v87 = (v105 - *&v103.i32[1]);
  }

  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }

  v94 = v84;
  v95 = v85;
  v96 = v86;
  v97 = v87;
  result.size.height = v97;
  result.size.width = v96;
  result.origin.y = v95;
  result.origin.x = v94;
  return result;
}

- (void)p_updateBodyLayoutRect
{
  objc_msgSend_layoutOffset(self, a2, v2, v3, v4);
  v7.f64[1] = v6;
  self->_chartBodyLayoutRect.origin = vcvtq_f64_f32(vadd_f32(self->_chartBodyLayoutOffsetInChartAreaLayoutSpace, vcvt_f32_f64(v7)));
}

- (void)p_updateLayoutSize:(CGSize)size chartBodyLayoutOffsetInChartAreaLayoutSpace:(void *)space
{
  self->_chartBodyLayoutOffsetInChartAreaLayoutSpace.var0.var0 = *space;
  LODWORD(v4) = *(space + 1);
  self->_chartBodyLayoutOffsetInChartAreaLayoutSpace.var1.var0 = *&v4;
  objc_msgSend_setLayoutSize_(self, a2, size.width, size.height, v4);

  objc_msgSend_p_updateBodyLayoutRect(self, v6, v7, v8, v9);
}

- (void)p_updateFromCacheItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCH3DChartSceneAreaLayoutItem p_updateFromCacheItem:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 380, 0, "invalid nil value for '%{public}s'", "areaLayoutCacheItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  objc_msgSend_chartBodyLayoutSize(itemCopy, v4, v6, v7, v8);
  v25 = v24;
  v27 = v26;
  if ((objc_msgSend_forcedValid(itemCopy, v28, v24, v26, v29) & 1) == 0 && TSUNearlyEqualSizes())
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "[TSCH3DChartSceneAreaLayoutItem p_updateFromCacheItem:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    v45 = objc_msgSend_forcedValid(itemCopy, v41, v42, v43, v44);
    v122.width = v25;
    v122.height = v27;
    v46 = NSStringFromCGSize(v122);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v47, v48, v49, v50, v35, v40, 385, 0, "invalid cache item forced %ld chartBodyLayoutSize %@", v45, v46);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
  }

  if ((TSUNearlyEqualSizes() & 1) == 0)
  {
    self->_chartBodyLayoutRect.size.width = v25;
    self->_chartBodyLayoutRect.size.height = v27;
  }

  v59 = objc_msgSend_scene(self, v55, v56, v57, v58);
  v64 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v60, v61, v62, v63, v59);

  if (itemCopy)
  {
    objc_msgSend_infoChartScale(itemCopy, v66, v67, v68);
    v69 = v117;
  }

  else
  {
    v69 = 0uLL;
  }

  v120 = v69;
  objc_msgSend_setInfoChartScale_(v64, v65, *&v69, v67, v68, &v120);
  objc_msgSend_layoutSize(itemCopy, v70, v71, v72, v73);
  v78 = v75;
  v79 = v76;
  if (itemCopy)
  {
    objc_msgSend_chartBodyLayoutOffsetInChartAreaLayoutSpace(itemCopy, v75, v76, v77);
  }

  else
  {
    *&v120 = 0;
  }

  objc_msgSend_p_updateLayoutSize_chartBodyLayoutOffsetInChartAreaLayoutSpace_(self, v74, v78, v79, v77, &v120);
  if ((objc_msgSend_forcedValid(itemCopy, v80, v81, v82, v83) & 1) == 0)
  {
    objc_msgSend_layoutSettings(self, v85, v86, v87);
    if (itemCopy)
    {
      objc_msgSend_layoutSettings(itemCopy, v88, v89, v90);
    }

    else
    {
      v113 = 0uLL;
      v114 = 0;
    }

    LOBYTE(v115) = 0;
    LOBYTE(v113) = 0;
    v120 = v115;
    v121 = v116;
    v118 = v113;
    v119 = v114;
    if (!sub_27635FBE4(&v120, &v118))
    {
      v91 = MEMORY[0x277D81150];
      v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v85, v86, v87, "[TSCH3DChartSceneAreaLayoutItem p_updateFromCacheItem:]");
      v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, v94, v95, v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v98, v99, v100, v101, v92, v97, 396, 0, "using cache item with different layout settings");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v102, v103, v104, v105);
    }
  }

  v107 = objc_msgSend_p_updatedResizerHelper(self, v84, v85, v86, v87);
  if (itemCopy)
  {
    objc_msgSend_containingViewport(itemCopy, v108, v109, v110);
    v111 = v112;
  }

  else
  {
    v111 = 0.0;
  }

  *&v120 = v111;
  objc_msgSend_setContainingViewport_(v107, v106, v111, v109, v110, &v120);
}

- (id)p_cache
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_sceneAreaLayoutItemCache(v5, v6, v7, v8, v9);

  if (!v10)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DChartSceneAreaLayoutItem p_cache]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 402, 0, "invalid nil value for '%{public}s'", "cache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  return v10;
}

- (tvec2<int>)p_currentModelSize
{
  v6 = v2;
  v7 = objc_msgSend_chartInfo(self, a2, v3, v4, v5);
  v22 = objc_msgSend_model(v7, v8, v9, v10, v11);

  LODWORD(v7) = objc_msgSend_numberOfGroupsInAllSeries(v22, v12, v13, v14, v15);
  v20 = objc_msgSend_numberOfSeries(v22, v16, v17, v18, v19);
  *v6 = v7;
  v6[1] = v20;

  return v21;
}

- (BOOL)p_validCacheItem:(id)item inward:(BOOL)inward
{
  inwardCopy = inward;
  itemCopy = item;
  if (objc_msgSend_forcedValid(itemCopy, v7, v8, v9, v10))
  {
    goto LABEL_2;
  }

  if (itemCopy)
  {
    objc_msgSend_modelSize(itemCopy, v11, v12, v13);
  }

  else
  {
    *&v45 = 0;
  }

  objc_msgSend_p_currentModelSize(self, v11, v12, v13);
  v14 = 0;
  if (v45 == v43)
  {
    if (itemCopy)
    {
      objc_msgSend_layoutSettings(itemCopy, v16, v17, v18);
    }

    else
    {
      v41 = 0uLL;
      v42 = 0;
    }

    objc_msgSend_layoutSettings(self, v16, v17, v18);
    LOBYTE(v41) = 0;
    LOBYTE(v39) = 0;
    v45 = v41;
    v46 = v42;
    v43 = v39;
    v44 = v40;
    if (!sub_27635FBE4(&v45, &v43))
    {
      v14 = 0;
      goto LABEL_3;
    }

    if (inwardCopy)
    {
      objc_msgSend_requestLayoutSize(itemCopy, v19, v20, v21, v22);
      objc_msgSend_layoutSize(self, v23, v24, v25, v26);
      if ((TSUNearlyEqualSizes() & 1) == 0)
      {
        objc_msgSend_layoutSize(itemCopy, v27, v28, v29, v30);
        objc_msgSend_layoutSize(self, v31, v32, v33, v34);
LABEL_18:
        v14 = TSUNearlyEqualSizes();
        goto LABEL_3;
      }
    }

    else
    {
      objc_msgSend_requestChartBodyLayoutSize(itemCopy, v19, v20, v21, v22);
      if ((TSUNearlyEqualSizes() & 1) == 0)
      {
        objc_msgSend_chartBodyLayoutSize(itemCopy, v35, v36, v37, v38);
        goto LABEL_18;
      }
    }

LABEL_2:
    v14 = 1;
  }

LABEL_3:

  return v14;
}

- (BOOL)p_inwardLayoutCanUseCacheItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DChartSceneAreaLayoutItem p_inwardLayoutCanUseCacheItem:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 434, 0, "invalid nil value for '%{public}s'", "areaLayoutCacheItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  valid = objc_msgSend_p_validCacheItem_inward_(self, v5, v7, v8, v9, itemCopy, 1);
  if (valid)
  {
    objc_msgSend_p_updateFromCacheItem_(self, v25, v27, v28, v29, itemCopy);
    if (byte_280A46430 == 1)
    {
      v30 = objc_opt_class();
      v31 = NSStringFromSelector(a2);
      objc_msgSend_layoutSize(itemCopy, v32, v33, v34, v35);
      v36 = NSStringFromCGSize(v53);
      NSLog(&cfstr_PCacheHit.isa, v30, self, v31, v36);
LABEL_8:
    }
  }

  else if (byte_280A46430 == 1)
  {
    v37 = objc_opt_class();
    v31 = NSStringFromSelector(a2);
    objc_msgSend_layoutSize(itemCopy, v38, v39, v40, v41);
    v36 = NSStringFromCGSize(v54);
    objc_msgSend_requestLayoutSize(itemCopy, v42, v43, v44, v45);
    v46 = NSStringFromCGSize(v55);
    objc_msgSend_layoutSize(self, v47, v48, v49, v50);
    v51 = NSStringFromCGSize(v56);
    NSLog(&cfstr_PCacheMiss.isa, v37, self, v31, v36, v46, v51);

    goto LABEL_8;
  }

  return valid;
}

- (id)p_cacheInwardLayout
{
  v6 = objc_msgSend_scene(self, a2, v2, v3, v4);
  v11 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v7, v8, v9, v10, v6);

  objc_msgSend_layoutSize(self, v12, v13, v14, v15);
  v91 = v16;
  v92 = v17;
  v101 = 0;
  v100 = 0;
  if (objc_msgSend_isInResize(self, v18, 0.0, v17, v19))
  {
    objc_msgSend_startingSize(self, v20, v21, v22, v23);
    *&v21 = v21;
    *&v24 = v24;
    v99 = __PAIR64__(LODWORD(v24), LODWORD(v21));
    v22 = 0.0;
  }

  else
  {
    v99 = 0;
  }

  v26 = objc_msgSend_p_updatedResizerHelper(self, v20, v21, v22, v23);
  if (!v26)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v27, v28, v29, "[TSCH3DChartSceneAreaLayoutItem p_cacheInwardLayout]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 479, 0, "invalid nil value for '%{public}s'", "resizerHelper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
  }

  v45 = objc_msgSend_scene(self, v25, v27, v28, v29);
  v47.f64[0] = v91;
  v47.f64[1] = v92;
  v48 = vcvt_f32_f64(v47);
  *&v93 = v48;
  if (v26)
  {
    objc_msgSend_chartBodySizeByResizingScene_toLayoutSize_resizeStartingSize_returningChartBodyLayoutOffsetInChartAreaLayoutSpace_resultLayoutSize_(v26, v91, v92, v46);
  }

  else
  {
    *&v98 = 0.0;
  }

  v97 = xmmword_2764D5EE0;
  v52 = objc_msgSend_scene(self, v49, 1.40444743e306, v50, v51);
  if (v26)
  {
    objc_msgSend_layoutSizeByResizingScene_toChartBodyLayoutSize_resizeStartingSize_returningChartBodyLayoutBoundsInChartAreaLayoutSpace_(v26, v53, v54, v55);
    v56 = v93;
  }

  else
  {
    *&v93 = 0;
    v56 = 0;
  }

  v100 = v56;

  if (objc_msgSend_p_needsRefinementForInwardLayout(self, v57, v58, v59, v60))
  {
    v63 = 20;
    __asm { FMOV            V9.2S, #-1.0 }

    v69 = vdup_n_s32(0x3A83126Fu);
    do
    {
      v70 = vdiv_f32(v48, v100);
      v71 = vadd_f32(v70, _D9);
      v62 = vcgez_f32(v71);
      v72 = vcge_f32(v69, vbsl_s8(v62, v71, vneg_f32(v71)));
      if (v72.i32[0] & v72.i32[1])
      {
        break;
      }

      v73 = *&v98;
      v98 = vmul_f32(v70, v98);
      v74 = objc_msgSend_scene(self, v61, *&v98, v73, *&v62);
      if (v26)
      {
        objc_msgSend_layoutSizeByResizingScene_toChartBodyLayoutSize_resizeStartingSize_returningChartBodyLayoutBoundsInChartAreaLayoutSpace_(v26, v75, v76, v77);
        v78 = v93;
      }

      else
      {
        *&v93 = 0;
        v78 = 0;
      }

      v100 = v78;

      --v63;
    }

    while (v63);
  }

  self->_chartBodyLayoutRect.size = vcvtq_f64_f32(vsub_f32(*(&v97 + 8), *&v97));
  objc_msgSend_p_updateLayoutSize_chartBodyLayoutOffsetInChartAreaLayoutSpace_(self, v61, v100.f32[0], v100.f32[1], *&v62, &v97);
  if (v11)
  {
    objc_msgSend_infoChartScale(v11, v79, v80, v81);
    if (v26)
    {
LABEL_21:
      objc_msgSend_containingViewport(v26, v79, v80, v81);
      goto LABEL_24;
    }
  }

  else
  {
    v96 = 0uLL;
    if (v26)
    {
      goto LABEL_21;
    }
  }

  v95 = 0;
LABEL_24:
  v82 = v100;
  width = self->_chartBodyLayoutRect.size.width;
  height = self->_chartBodyLayoutRect.size.height;
  v85 = v98;
  objc_msgSend_p_currentModelSize(self, v79, v80, v81);
  objc_msgSend_layoutSettings(self, v86, v87, v88);
  v89 = sub_27620CDA4(&v96, &v95, &v97, &v94, &v93, v82.f32[0], v82.f32[1], v91, v92, width, height, v85.f32[0], v85.f32[1]);

  return v89;
}

- (void)layoutInward
{
  v30.receiver = self;
  v30.super_class = TSCH3DChartSceneAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v30 layoutInward];
  if (byte_280A46430 == 1)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(a2);
    objc_msgSend_layoutRect(self, v10, v11, v12, v13);
    v14 = NSStringFromCGRect(v31);
    v15 = NSStringFromCGRect(self->_chartBodyLayoutRect);
    NSLog(&cfstr_PBeginLayoutBo_0.isa, v8, self, v9, v14, v15);
  }

  v16 = objc_msgSend_p_cache(self, v4, v5, v6, v7);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_27620D08C;
  v29[3] = &unk_27A6B66F0;
  v29[4] = self;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_27620D098;
  v28[3] = &unk_27A6B6B80;
  v28[4] = self;
  objc_msgSend_accessWithCacheItemBlock_calculateBlock_(v16, v17, COERCE_DOUBLE(3221225472), v18, v19, v29, v28);
  if (byte_280A46430 == 1)
  {
    v20 = objc_opt_class();
    v21 = NSStringFromSelector(a2);
    objc_msgSend_layoutRect(self, v22, v23, v24, v25);
    v26 = NSStringFromCGRect(v32);
    v27 = NSStringFromCGRect(self->_chartBodyLayoutRect);
    NSLog(&cfstr_PEndLayoutBody.isa, v20, self, v21, v26, v27);
  }
}

- (BOOL)p_outwardLayoutCanUseCacheItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DChartSceneAreaLayoutItem p_outwardLayoutCanUseCacheItem:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 545, 0, "invalid nil value for '%{public}s'", "areaLayoutCacheItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  valid = objc_msgSend_p_validCacheItem_inward_(self, v5, v7, v8, v9, itemCopy, 0);
  if (valid)
  {
    objc_msgSend_p_updateFromCacheItem_(self, v25, v27, v28, v29, itemCopy);
    MinX = CGRectGetMinX(self->_chartBodyLayoutRect);
    MinY = CGRectGetMinY(self->_chartBodyLayoutRect);
    MaxX = CGRectGetMaxX(self->_chartBodyLayoutRect);
    MaxY = CGRectGetMaxY(self->_chartBodyLayoutRect);
    *&v34 = MinX;
    *&v35 = MinY;
    v36 = MaxX;
    v63 = __PAIR64__(LODWORD(v35), LODWORD(v34));
    *&MaxY = MaxY;
    v64 = v36;
    v65 = LODWORD(MaxY);
    v38 = objc_msgSend_scene(self, v37, MaxY, v34, v35);
    objc_msgSend_setLabelWrapBounds_forScene_(TSCH3DChartTitleSceneObject, v39, v40, v41, v42, &v63, v38);

    if (byte_280A46430 == 1)
    {
      v43 = objc_opt_class();
      v44 = NSStringFromSelector(a2);
      objc_msgSend_chartBodyLayoutSize(itemCopy, v45, v46, v47, v48);
      v49 = NSStringFromCGSize(v66);
      NSLog(&cfstr_PCacheHit.isa, v43, self, v44, v49);

LABEL_8:
    }
  }

  else if (byte_280A46430 == 1)
  {
    v50 = objc_opt_class();
    v44 = NSStringFromSelector(a2);
    objc_msgSend_chartBodyLayoutSize(itemCopy, v51, v52, v53, v54);
    v55 = NSStringFromCGSize(v67);
    objc_msgSend_requestChartBodyLayoutSize(itemCopy, v56, v57, v58, v59);
    v60 = NSStringFromCGSize(v68);
    v61 = NSStringFromCGSize(self->_chartBodyLayoutRect.size);
    NSLog(&cfstr_PCacheMiss.isa, v50, self, v44, v55, v60, v61);

    goto LABEL_8;
  }

  return valid;
}

- (id)p_cacheOutwardLayout
{
  v6 = objc_msgSend_scene(self, a2, v2, v3, v4);
  v11 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v7, v8, v9, v10, v6);

  size = self->_chartBodyLayoutRect.size;
  v84 = xmmword_2764D5EE0;
  if (objc_msgSend_isInResize(self, v12, 1.40444743e306, v13, v14))
  {
    objc_msgSend_startingSize(self, v15, v16, v17, v18);
    *&v16 = v16;
    *&v19 = v19;
    v83 = __PAIR64__(LODWORD(v19), LODWORD(v16));
    v17 = 0.0;
  }

  else
  {
    v83 = 0;
  }

  v20 = objc_msgSend_scene(self, v15, v16, v17, v18);
  v25 = objc_msgSend_p_updatedResizerHelper(self, v21, v22, v23, v24);
  v30 = v25;
  if (v25)
  {
    if (!self->_isInvariant)
    {
      *&v81 = vcvt_f32_f64(size);
      objc_msgSend_layoutSizeByResizingScene_toChartBodyLayoutSize_resizeStartingSize_returningChartBodyLayoutBoundsInChartAreaLayoutSpace_(v25, *&v81, v28, v29);
      v31 = v77;
LABEL_11:
      v56 = *(&v84 + 8);
      v57 = v84;
      goto LABEL_18;
    }
  }

  else
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "[TSCH3DChartSceneAreaLayoutItem p_cacheOutwardLayout]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSceneAreaLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 573, 0, "invalid nil value for '%{public}s'", "resizerHelper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
    if (!self->_isInvariant)
    {
      v31 = 0;
      goto LABEL_11;
    }
  }

  *&v81 = objc_msgSend_projectedBounds(self, v26, v27, v28, v29);
  DWORD2(v81) = 1065353216;
  BYTE12(v81) = 0;
  v82 = 0;
  v85 = xmmword_2764D5ED0;
  sub_2761526F4(&v85, (v81 + 16), &v86);
  v77 = v86;
  v78 = v81;
  LODWORD(v79) = 1065353216;
  BYTE4(v79) = 0;
  v80 = 0;
  sub_2761526F4(&v77, (v81 + 112), &v86);
  v74 = *&v79;
  v47 = v86;
  v51 = objc_msgSend_p_updatedResizerHelper(self, v48, v79, v49, v50);
  v55 = v51;
  if (v51)
  {
    objc_msgSend_chartBodyLayoutOffsetInChartAreaLayoutSpaceUsingConverter_(v51, v52, v53, v54);
  }

  else
  {
    *&v77 = 0;
  }

  v58 = vmul_n_f32(*&v47, v74);
  v59 = vmul_n_f32(*(&v47 + 8), v74);

  v60 = vcvt_f32_f64(size);
  if (v60.f32[0] < 0.0 || v60.f32[1] < 0.0)
  {
    v56 = v77;
    v57 = v77;
  }

  else
  {
    v57 = vadd_f32(*&v77, 0);
    v56 = vadd_f32(*&v77, v60);
  }

  v31 = vsub_f32(v59, v58);
  *&v61 = v57;
  *(&v61 + 1) = v56;
  v84 = v61;
LABEL_18:
  self->_chartBodyLayoutRect.size = vcvtq_f64_f32(vsub_f32(v56, v57));
  v62 = vcvtq_f64_f32(v31);
  v63 = v62.f64[1];
  v75 = v62.f64[0];
  objc_msgSend_p_updateLayoutSize_chartBodyLayoutOffsetInChartAreaLayoutSpace_(self, v26, v62.f64[0], v62.f64[1], *&v57, &v84);
  if (v11)
  {
    objc_msgSend_infoChartScale(v11, v64, v65, v66);
    if (v30)
    {
LABEL_20:
      objc_msgSend_containingViewport(v30, v64, v65, v66);
      goto LABEL_23;
    }
  }

  else
  {
    v81 = 0uLL;
    if (v30)
    {
      goto LABEL_20;
    }
  }

  *&v86 = 0;
LABEL_23:
  width = self->_chartBodyLayoutRect.size.width;
  height = self->_chartBodyLayoutRect.size.height;
  objc_msgSend_p_currentModelSize(self, v64, v65, v66);
  objc_msgSend_layoutSettings(self, v69, v70, v71);
  v72 = sub_27620CDA4(&v81, &v86, &v84, &v85, &v77, v75, v63, v75, v63, width, height, size.width, size.height);

  return v72;
}

- (void)layoutOutward
{
  if (byte_280A46430 == 1)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    objc_msgSend_layoutRect(self, v6, v7, v8, v9);
    v10 = NSStringFromCGRect(v31);
    v11 = NSStringFromCGRect(self->_chartBodyLayoutRect);
    NSLog(&cfstr_PBeginLayoutBo_0.isa, v4, self, v5, v10, v11);
  }

  v30.receiver = self;
  v30.super_class = TSCH3DChartSceneAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v30 layoutOutward];
  v16 = objc_msgSend_p_cache(self, v12, v13, v14, v15);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_27620DA50;
  v29[3] = &unk_27A6B66F0;
  v29[4] = self;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_27620DA5C;
  v28[3] = &unk_27A6B6B80;
  v28[4] = self;
  objc_msgSend_accessWithCacheItemBlock_calculateBlock_(v16, v17, COERCE_DOUBLE(3221225472), v18, v19, v29, v28);
  if (byte_280A46430 == 1)
  {
    v20 = objc_opt_class();
    v21 = NSStringFromSelector(a2);
    objc_msgSend_layoutRect(self, v22, v23, v24, v25);
    v26 = NSStringFromCGRect(v32);
    v27 = NSStringFromCGRect(self->_chartBodyLayoutRect);
    NSLog(&cfstr_PEndLayoutBody.isa, v20, self, v21, v26, v27);
  }
}

- (void)setStabilizedChartBodyLayoutRectUsingConverter:(const void *)converter
{
  v49 = xmmword_2764D5ED0;
  sub_2761526F4(&v49, (*converter + 80), &v50);
  v5 = *converter;
  v6 = *(converter + 2);
  v7 = *(converter + 12);
  v42 = v50;
  v43 = v5;
  v44 = v6;
  v45 = v7;
  v46 = *(converter + 2);
  *&v8 = sub_276152C5C(&v42, v5 + 10, &v50).u64[0];
  sub_27615294C(v50.f32, &v5[12], &v47, v8, v9, v10, v11);
  v16 = objc_msgSend_p_updatedResizerHelper(self, v12, v13, v14, v15);
  v20 = v16;
  if (v16)
  {
    objc_msgSend_chartBodyLayoutOffsetInChartAreaLayoutSpaceUsingConverter_(v16, v17, v18, v19);
  }

  else
  {
    v41 = 0;
  }

  v21 = vsub_f32(v48, v47);
  if (v21.f32[0] < 0.0 || v21.f32[1] < 0.0)
  {
    v22.i64[0] = v41;
    v22.i64[1] = v41;
  }

  else
  {
    v23.i64[0] = v41;
    v23.i64[1] = v41;
    v24.i64[0] = 0;
    *&v24.u32[2] = v21;
    v22 = vaddq_f32(v24, v23);
  }

  v40 = v22;
  v49 = xmmword_2764D5ED0;
  sub_2761526F4(&v49, (*converter + 16), &v50);
  v25 = *converter;
  v26 = *(converter + 2);
  v27 = *(converter + 12);
  v42 = v50;
  v43 = v25;
  v44 = v26;
  v45 = v27;
  v46 = *(converter + 2);
  *&v28 = sub_276152C5C(&v42, v25 + 10, &v50).u64[0];
  sub_27615294C(v50.f32, &v25[12], &v49, v28, v29, v30, v31);
  v32 = vcvtq_f64_f32(vsub_f32(*(&v49 + 8), *&v49));
  objc_msgSend_p_updateLayoutSize_chartBodyLayoutOffsetInChartAreaLayoutSpace_(self, v33, v32.f64[0], v32.f64[1], v34, &v40);
  v35 = v47;
  v36 = vcvtq_f64_f32(v47);
  v37 = vcvtq_f64_f32(vsub_f32(v48, v47));
  self->_chartBodyLayoutRect.origin = v36;
  self->_chartBodyLayoutRect.size = v37;
  v38 = vcvtq_f64_f32(vsub_f32(v35, self->_chartBodyLayoutOffsetInChartAreaLayoutSpace));
  objc_msgSend_setLayoutOffset_(self, v39, v38.f64[0], v38.f64[1], v36.x);
}

- (void)setLayoutOffset:(CGPoint)offset
{
  v8.receiver = self;
  v8.super_class = TSCH3DChartSceneAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v8 setLayoutOffset:offset.x, offset.y];
  objc_msgSend_p_updateBodyLayoutRect(self, v4, v5, v6, v7);
}

- (CGRect)chartBodyLayoutRect
{
  x = self->_chartBodyLayoutRect.origin.x;
  y = self->_chartBodyLayoutRect.origin.y;
  width = self->_chartBodyLayoutRect.size.width;
  height = self->_chartBodyLayoutRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 204) = 0;
  *(self + 212) = 0;
  return self;
}

@end