@interface TSCH3DLabelsRenderer
+ (id)renderer;
- (BOOL)beginResources:(id)resources expectedSize:(void *)size;
- (BOOL)cacheEnabled;
- (BOOL)hasCachedLabels;
- (BOOL)isCacheValid;
- (LabelRenderInfo)renderInfo;
- (TSCH3DLabelsRenderer)init;
- (id).cxx_construct;
- (id)effects;
- (id)p_renderCacheFromScene:(id)scene created:(BOOL *)created createIfAbsent:(BOOL)absent;
- (id)p_renderCacheID;
- (id)p_renderCacheKey;
- (void)dealloc;
- (void)endResources;
- (void)postrender:(id)postrender;
- (void)prepareCachedIndex:(void *)index string:(id)string alignmentPadding:(void *)padding width:(double)width bitmapContextInfo:(id)info;
- (void)prerender:(id)prerender;
- (void)renderAtPosition:(void *)position offset:(void *)offset alignment:(unsigned int)alignment offset2D:(void *)d rotation:(float)rotation externalAttribute:(id)attribute;
- (void)unitToWorld;
- (void)worldToStage;
@end

@implementation TSCH3DLabelsRenderer

+ (id)renderer
{
  v2 = objc_alloc_init(TSCH3DLabelsRenderer);

  return v2;
}

- (TSCH3DLabelsRenderer)init
{
  v12.receiver = self;
  v12.super_class = TSCH3DLabelsRenderer;
  v3 = [(TSCH3DLabelsRenderer *)&v12 init];
  if (v3)
  {
    v7 = objc_msgSend_normalized4D(TSCH3DQuadResource, v2, v4, v5, v6);
    labelQuad = v3->_labelQuad;
    v3->_labelQuad = v7;

    v9 = objc_alloc_init(TSCH3DLabelsRendererTransforms);
    transforms = v3->_transforms;
    v3->_transforms = v9;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_label)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer dealloc]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 657, 0, "expected nil value for '%{public}s'", "_label");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (self->_resources)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer dealloc]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 658, 0, "expected nil value for '%{public}s'", "_resources");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  if (self->_pipeline)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer dealloc]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 659, 0, "expected nil value for '%{public}s'", "_pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  if (self->_labelCamera)
  {
    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer dealloc]");
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v58, v59, v60, v61, v52, v57, 660, 0, "expected nil value for '%{public}s'", "_labelCamera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
  }

  v66.receiver = self;
  v66.super_class = TSCH3DLabelsRenderer;
  [(TSCH3DLabelsRenderer *)&v66 dealloc];
}

- (void)worldToStage
{
  transforms = self->_transforms;
  if (!transforms)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer worldToStage]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 664, 0, "invalid nil value for '%{public}s'", "_transforms");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    transforms = self->_transforms;
  }

  return objc_msgSend_worldToStage(transforms, a2, v2, v3, v4);
}

- (void)unitToWorld
{
  transforms = self->_transforms;
  if (!transforms)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer unitToWorld]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 669, 0, "invalid nil value for '%{public}s'", "_transforms");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    transforms = self->_transforms;
  }

  return objc_msgSend_unitToWorld(transforms, a2, v2, v3, v4);
}

- (id)p_renderCacheKey
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_renderCacheKey, v3, v4, v5);
}

- (id)p_renderCacheID
{
  if (!self->_resources)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer p_renderCacheID]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 678, 0, "invalid nil value for '%{public}s'", "_resources");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  pipeline = self->_pipeline;
  if (!pipeline)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRenderer p_renderCacheID]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 679, 0, "invalid nil value for '%{public}s'", "_pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    pipeline = self->_pipeline;
  }

  v37 = MEMORY[0x277D812A8];
  v38 = objc_msgSend_labelsMeshRendererClassForLabelsRenderer_(pipeline, a2, v2, v3, v4, self);
  v43 = objc_msgSend_valueWithPointer_(MEMORY[0x277CCAE60], v39, v40, v41, v42, self->_resources);
  v48 = objc_msgSend_pairWithFirst_second_(v37, v44, v45, v46, v47, v38, v43);

  return v48;
}

- (id)p_renderCacheFromScene:(id)scene created:(BOOL *)created createIfAbsent:(BOOL)absent
{
  absentCopy = absent;
  sceneCopy = scene;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_27621C85C;
  v31[3] = &unk_27A6B6C10;
  v31[4] = self;
  v9 = MEMORY[0x277C98B30](v31);
  v14 = objc_msgSend_renderCache(sceneCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_p_renderCacheKey(self, v15, v16, v17, v18);
  v25 = objc_msgSend_p_renderCacheID(self, v20, v21, v22, v23);
  if (absentCopy)
  {
    objc_msgSend_cacheObjectForKey_cacheID_created_ifAbsent_(v14, v24, v26, v27, v28, v19, v25, created, v9);
  }

  else
  {
    objc_msgSend_cacheObjectForKey_cacheID_created_ifAbsent_(v14, v24, v26, v27, v28, v19, v25, created, 0);
  }
  v29 = ;

  return v29;
}

- (BOOL)cacheEnabled
{
  v6 = objc_msgSend_scene(self->_pipeline, a2, v2, v3, v4);
  v12 = objc_msgSend_renderCache(v6, v7, v8, v9, v10);
  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DLabelsRenderer cacheEnabled]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 702, 0, "invalid nil value for '%{public}s'", "cache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_p_renderCacheKey(self, v11, v13, v14, v15);
  v36 = objc_msgSend_cacheEnabledForKey_(v12, v32, v33, v34, v35, v31);

  return v36;
}

- (BOOL)hasCachedLabels
{
  v7 = objc_msgSend_scene(self->_pipeline, a2, v2, v3, v4);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DLabelsRenderer hasCachedLabels]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 708, 0, "invalid nil value for '%{public}s'", "scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_p_renderCacheFromScene_created_createIfAbsent_(self, v6, v8, v9, v10, v7, 0, 0);
  v27 = v26 != 0;

  return v27;
}

- (BOOL)isCacheValid
{
  v6 = objc_msgSend_cacheEnabled(self, a2, v2, v3, v4);
  if (v6)
  {

    LOBYTE(v6) = MEMORY[0x2821F9670](self, sel_hasCachedLabels, v7, v8, v9);
  }

  return v6;
}

- (id)effects
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_effect(TSCH3DNoLightingVertexShaderEffect, a2, v2, v3, v4);
  v17[0] = v5;
  v10 = objc_msgSend_effect(TSCH3DDiffuseTextureShaderEffect, v6, v7, v8, v9);
  v17[1] = v10;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v17, 2);

  return v15;
}

- (void)prerender:(id)prerender
{
  v176 = *MEMORY[0x277D85DE8];
  prerenderCopy = prerender;
  if (byte_280A46430 == 1)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromSelector(a2);
    NSLog(&cfstr_P.isa, v10, self, v11, prerenderCopy);
  }

  if (self->_pipeline)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DLabelsRenderer prerender:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 729, 0, "expected nil value for '%{public}s'", "_pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  objc_msgSend_setPipeline_(self, v5, v7, v8, v9, prerenderCopy);
  objc_msgSend_setObjectRenderMode_(self->_pipeline, v27, v28, v29, v30, 1);
  v36 = objc_msgSend_camera(self->_pipeline, v31, v32, v33, v34);
  if (self->_labelCamera)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v37, v38, v39, "[TSCH3DLabelsRenderer prerender:]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 733, 0, "expected nil value for '%{public}s'", "_labelCamera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
  }

  if (v36)
  {
    objc_msgSend_viewport(v36, v37, v38, v39);
  }

  else
  {
    v173[0] = 0uLL;
  }

  v55 = objc_msgSend_orthographicPerPixelWithBounds_(TSCH3DCamera, v35, v37, v38, v39, v173);
  labelCamera = self->_labelCamera;
  self->_labelCamera = v55;

  v61 = objc_msgSend_processor(self->_pipeline, v57, v58, v59, v60);
  objc_msgSend_pushState(v61, v62, v63, v64, v65);

  v71 = objc_msgSend_processor(self->_pipeline, v66, v67, v68, v69);
  if (v71)
  {
    v75 = objc_msgSend_processor(self->_pipeline, v70, v72, v73, v74);
    v79 = v75;
    if (v75)
    {
      objc_msgSend_renderState(v75, v76, v77, v78);
    }

    else
    {
      v174 = 0u;
      v175 = 0u;
    }
  }

  else
  {
    *&v174 = 0;
    DWORD2(v174) = 16843008;
    BYTE12(v174) = 0;
    v175 = 0uLL;
  }

  LOBYTE(v174) = 1;
  DWORD1(v174) = 2;
  BYTE8(v174) = 0;
  v84 = objc_msgSend_processor(self->_pipeline, v80, v81, v82, v83);
  objc_msgSend_setRenderState_(v84, v85, v86, v87, v88, &v174);

  if (!self->_useLabelBounds)
  {
    v94 = objc_msgSend_context(self->_pipeline, v89, v90, v91, v92);
    v98 = self->_labelCamera;
    if (v98)
    {
      objc_msgSend_viewport(v98, v95, v96, v97);
    }

    else
    {
      v173[0] = 0uLL;
    }

    objc_msgSend_viewport_(v94, v93, v95, v96, v97, v173);
  }

  v100 = objc_msgSend_processor(self->_pipeline, v89, v90, v91, v92);
  v104 = self->_labelCamera;
  if (v104)
  {
    objc_msgSend_projection(v104, v101, v102, v103);
  }

  else
  {
    v105 = 0.0;
    memset(v173, 0, sizeof(v173));
  }

  objc_msgSend_projection_(v100, v99, v105, v102, v103, v173);

  v110 = objc_msgSend_processor(self->_pipeline, v106, v107, v108, v109);
  v115 = objc_msgSend_effects(v110, v111, v112, v113, v114);
  v120 = objc_msgSend_effects(self, v116, v117, v118, v119);
  objc_msgSend_resetToArray_(v115, v121, v122, v123, v124, v120);

  v129 = objc_msgSend_processor(self->_pipeline, v125, v126, v127, v128);
  objc_msgSend_geometry_(v129, v130, v131, v132, v133, self->_labelQuad);

  v138 = objc_msgSend_processor(self->_pipeline, v134, v135, v136, v137);
  objc_msgSend_texcoords_(v138, v139, v140, v141, v142, self->_labelQuad);

  transforms = self->_transforms;
  if (!transforms)
  {
    v148 = MEMORY[0x277D81150];
    v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v143, v144, v145, v146, "[TSCH3DLabelsRenderer prerender:]");
    v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v150, v151, v152, v153, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v148, v155, v156, v157, v158, v149, v154, 753, 0, "invalid nil value for '%{public}s'", "_transforms");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v159, v160, v161, v162);
    transforms = self->_transforms;
  }

  v163 = objc_msgSend_pipeline(self, v143, v144, v145, v146);
  v168 = objc_msgSend_scene(v163, v164, v165, v166, v167);
  objc_msgSend_resetWithScene_camera_(transforms, v169, v170, v171, v172, v168, v36);
}

- (void)postrender:(id)postrender
{
  postrenderCopy = postrender;
  if (byte_280A46430 == 1)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(a2);
    NSLog(&cfstr_P.isa, v9, self, v10, postrenderCopy);
  }

  if (self->_resources)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DLabelsRenderer postrender:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 761, 0, "expected nil value for '%{public}s'", "_resources");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (self->_pipeline != postrenderCopy)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DLabelsRenderer postrender:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 763, 0, "pipeline %@ passed in for postrender is different %@", postrenderCopy, self->_pipeline);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  labelCamera = self->_labelCamera;
  self->_labelCamera = 0;

  v46 = objc_msgSend_processor(self->_pipeline, v42, v43, v44, v45);
  objc_msgSend_popState(v46, v47, v48, v49, v50);

  objc_msgSend_setObjectRenderMode_(self->_pipeline, v51, v52, v53, v54, 0);
  objc_msgSend_setPipeline_(self, v55, v56, v57, v58, 0);
  objc_msgSend_resetWithScene_camera_(self->_transforms, v59, v60, v61, v62, 0, 0);
}

- (BOOL)beginResources:(id)resources expectedSize:(void *)size
{
  resourcesCopy = resources;
  if (byte_280A46430 == 1)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(a2);
    v14 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "ivec2(%d, %d)", *size, 0);
    if (v148 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v14, v15, v16, v17, v18, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v14, v15, v16, v17, v18, __p[0]);
    }
    v19 = ;
    if (v148 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_P_0.isa, v12, self, v13, resourcesCopy, v19);
  }

  if (resourcesCopy)
  {
    v20 = resourcesCopy;
    objc_msgSend_size(v20, v21, v22, v23);
    v29 = __p[0];
    v28 = HIDWORD(__p[0]);
  }

  else
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DLabelsRenderer beginResources:expectedSize:]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 776, 0, "invalid nil value for '%{public}s'", "r");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
    v28 = 0;
    v29 = 0;
  }

  if (v29 != *size || v28 != *(size + 1))
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSCH3DLabelsRenderer beginResources:expectedSize:]");
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    if (resourcesCopy)
    {
      objc_msgSend_size(resourcesCopy, v52, v53, v54);
      v55 = v146;
    }

    else
    {
      v55 = 0;
    }

    v56 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "ivec2(%d, %d)", v55, HIDWORD(v55));
    if (v148 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v56, v57, v58, v59, v60, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v56, v57, v58, v59, v60, __p[0]);
    }
    v61 = ;
    if (v148 < 0)
    {
      operator delete(__p[0]);
    }

    v62 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "ivec2(%d, %d)", *size, 0);
    if (v148 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v62, v63, v64, v65, v66, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v62, v63, v64, v65, v66, __p[0]);
    }
    v68 = ;
    if (v148 < 0)
    {
      operator delete(__p[0]);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v67, v69, v70, v71, v46, v51, 778, 0, "resource size mismatch %@ should be %@", v61, v68);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74, v75);
  }

  if (self->_resources)
  {
    v76 = MEMORY[0x277D81150];
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSCH3DLabelsRenderer beginResources:expectedSize:]");
    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v79, v80, v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v83, v84, v85, v86, v77, v82, 779, 0, "expected nil value for '%{public}s'", "_resources");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88, v89, v90);
  }

  objc_msgSend_setResources_(self, v24, v25, v26, v27, resourcesCopy);
  v95 = objc_msgSend_scene(self->_pipeline, v91, v92, v93, v94);
  LOBYTE(__p[0]) = 0;
  v100 = objc_msgSend_p_renderCacheFromScene_created_createIfAbsent_(self, v96, v97, v98, v99, v95, __p, 1);
  objc_msgSend_setMeshRenderer_(self, v101, v102, v103, v104, v100);

  v109 = objc_msgSend_cacheEnabled(self, v105, v106, v107, v108);
  if ((__p[0] & 1) != 0 || v109 != 1)
  {
    pipeline = self->_pipeline;
    if (!pipeline)
    {
      v115 = MEMORY[0x277D81150];
      v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, v111, v112, v113, "[TSCH3DLabelsRenderer beginResources:expectedSize:]");
      v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, v118, v119, v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v122, v123, v124, v125, v116, v121, 789, 0, "invalid nil value for '%{public}s'", "_pipeline");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v126, v127, v128, v129);
      pipeline = self->_pipeline;
    }

    objc_msgSend_renderScale(pipeline, v110, v111, v112, v113);
    v131 = *&v130;
    objc_msgSend_superSamples(self->_pipeline, v132, v130, v133, v134);
    v136 = *&v135;
    v140 = objc_msgSend_meshRenderer(self, v137, v135, v138, v139);
    *&v141 = v131 / v136;
    objc_msgSend_beginResources_samples_(v140, v142, v141, v143, v144, resourcesCopy);
  }

  return 1;
}

- (void)endResources
{
  if (byte_280A46430 == 1)
  {
    v7 = objc_opt_class();
    v78 = NSStringFromSelector(a2);
    NSLog(&cfstr_P.isa, v7, self, v78, self->_resources);
  }

  v79 = objc_msgSend_processor(self->_pipeline, a2, v2, v3, v4);
  v12 = objc_msgSend_meshRenderer(self, v8, v9, v10, v11);
  objc_msgSend_submitResourcesWithProcessor_(v12, v13, v14, v15, v16, v79);

  v21 = objc_msgSend_scene(self->_pipeline, v17, v18, v19, v20);
  v26 = objc_msgSend_renderCache(v21, v22, v23, v24, v25);
  v31 = objc_msgSend_meshRenderer(self, v27, v28, v29, v30);
  v36 = objc_msgSend_p_renderCacheKey(self, v32, v33, v34, v35);
  v41 = objc_msgSend_p_renderCacheID(self, v37, v38, v39, v40);
  objc_msgSend_setCacheObject_forKey_cacheID_(v26, v42, v43, v44, v45, v31, v36, v41);

  if ((objc_msgSend_cacheEnabled(self, v46, v47, v48, v49) & 1) == 0)
  {
    v54 = objc_msgSend_meshRenderer(self, v50, v51, v52, v53);
    objc_msgSend_flushCache(v54, v55, v56, v57, v58);
  }

  if (!self->_resources)
  {
    v59 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "[TSCH3DLabelsRenderer endResources]");
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v66, v67, v68, v69, v60, v65, 813, 0, "invalid nil value for '%{public}s'", "_resources");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
  }

  objc_msgSend_setResources_(self, v50, v51, v52, v53, 0);
  objc_msgSend_setMeshRenderer_(self, v74, v75, v76, v77, 0);
}

- (void)prepareCachedIndex:(void *)index string:(id)string alignmentPadding:(void *)padding width:(double)width bitmapContextInfo:(id)info
{
  stringCopy = string;
  infoCopy = info;
  if (byte_280A46430 == 1)
  {
    v18 = objc_opt_class();
    v19 = NSStringFromSelector(a2);
    v20 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "ivec2(%d, %d)", *index, 0);
    if (v97 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v20, v21, v22, v23, v24, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v20, v21, v22, v23, v24, __p[0]);
    }
    v25 = ;
    if (v97 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_P_0.isa, v18, self, v19, v25, stringCopy);
  }

  __p[0] = *index;
  v26 = objc_msgSend_resourceAtIndex_string_bitmapContextInfo_labelWidth_(self->_resources, v14, width, v16, v17, __p, stringCopy, infoCopy);
  objc_msgSend_setLabel_(self, v27, v28, v29, v30, v26);

  v35 = objc_msgSend_label(self, v31, v32, v33, v34);

  if (!v35)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "[TSCH3DLabelsRenderer prepareCachedIndex:string:alignmentPadding:width:bitmapContextInfo:]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 825, 0, "invalid nil value for '%{public}s'", "self.label");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
  }

  pipeline = self->_pipeline;
  objc_msgSend_renderScale(pipeline, v36, v37, v38, v39);
  *&v57 = sub_2761FF750(v56, self, a2, pipeline);
  v94 = v57;
  v58 = self->_pipeline;
  objc_msgSend_superSamples(v58, v59, v57, v60, v61);
  *&v64 = sub_2761FF750(v62, self, a2, v58);
  v93 = v64;
  label = self->_label;
  if (!label)
  {
    HIDWORD(v68) = 0;
    v70 = v94;
    *&v68 = *&v94 * 0.0;
    v71 = vdup_lane_s32(COERCE_UNSIGNED_INT(*&v94 * 0.0), 0);
    goto LABEL_15;
  }

  objc_msgSend_tightSize(label, v64, v65, v66);
  v68 = *&v95;
  v69 = self->_label;
  v70 = v94;
  v71 = vmul_n_f32(v95, *&v94);
  if (!v69)
  {
LABEL_15:
    v73 = 0;
    goto LABEL_16;
  }

  objc_msgSend_labelSizeWithSamples_(v69, (*&v94 / *&v93), v93, v66);
  v68 = *&v95;
  v72 = self->_label;
  v73 = vcvt_f32_s32(v95);
  if (v72)
  {
    objc_msgSend_labelRenderOffset(v72, *&v95, v70, v66);
    v74 = v95;
    goto LABEL_17;
  }

LABEL_16:
  v74 = 0;
LABEL_17:
  v75 = objc_msgSend_scene(self->_pipeline, v63, v68, v70, v66);
  v80 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v76, v77, v78, v79, v75);

  v85 = objc_msgSend_labelsShadowIgnored(v80, v81, v82, v83, v84);
  v86 = vmul_n_f32(v73, *&v93);
  v87 = vmul_n_f32(v74, *&v94);
  if (v85)
  {
    v88 = -1;
  }

  else
  {
    v88 = 0;
  }

  v89 = vdup_n_s32(v88);
  v90 = vbsl_s8(v89, v71, v86);
  v91 = vbic_s8(v87, v89);
  v92 = *padding;
  self->_info.sampledLabelSize = v71;
  self->_info.sampledLabelFullSize = v90;
  self->_info.sampledLabelRenderOffset = v91;
  self->_info.sampledAlignmentPadding = vmul_n_f32(v92, *&v94);
}

- (void)renderAtPosition:(void *)position offset:(void *)offset alignment:(unsigned int)alignment offset2D:(void *)d rotation:(float)rotation externalAttribute:(id)attribute
{
  attributeCopy = attribute;
  if ((objc_msgSend_isCacheValid(self, v16, v17, v18, v19) & 1) == 0)
  {
    *&v21 = *(position + 2) + *(offset + 2);
    v22 = *offset;
    v23 = COERCE_DOUBLE(vadd_f32(*position, *offset));
    v147 = *&v23;
    v148 = *&v21;
    v136 = attributeCopy;
    if (byte_280A46430 == 1)
    {
      v24 = objc_opt_class();
      v25 = NSStringFromSelector(a2);
      v26 = MEMORY[0x277CCACA8];
      sub_276152FD4(&v149, "vec3(%f, %f, %f)", v147.f32[0], v147.f32[1], v148);
      if (v151 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v26, v27, v28, v29, v30, &v149);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v26, v27, v28, v29, v30, *&v149);
      }
      v31 = ;
      if (v151 < 0)
      {
        operator delete(*&v149);
      }

      v32 = MEMORY[0x277CCACA8];
      sub_276152FD4(&v149, "vec3(%f, %f, %f)", *offset, *(offset + 1), *(offset + 2));
      if (v151 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v32, v33, v34, v35, v36, &v149);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v32, v33, v34, v35, v36, *&v149);
      }
      v37 = ;
      if (v151 < 0)
      {
        operator delete(*&v149);
      }

      v38 = MEMORY[0x277CCACA8];
      sub_276152FD4(&v149, "vec2(%f, %f)", *d, *(d + 1));
      if (v151 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v38, v39, v40, v41, v42, &v149);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v38, v39, v40, v41, v42, *&v149);
      }
      v43 = ;
      if (v151 < 0)
      {
        operator delete(*&v149);
      }

      NSLog(&cfstr_PLd.isa, v24, self, v25, v31, v37, alignment, v43);

      attributeCopy = v136;
    }

    pipeline = self->_pipeline;
    objc_msgSend_renderScale(pipeline, v20, v21, v23, *&v22);
    *&v46 = sub_2761FF750(v45, self, a2, pipeline);
    v137 = v46;
    transforms = self->_transforms;
    if (transforms)
    {
      objc_msgSend_projectPoint_(transforms, v46, v47, v48);
    }

    else
    {
      v146 = 0.0;
      v145 = 0;
    }

    v149 = vmul_f32(self->_info.sampledLabelSize, 0xBF000000BF000000);
    *&v51 = sub_276205CDC(&self->_info, alignment, &v149, &v144);
    v54 = v145;
    sampledLabelFullSize = self->_info.sampledLabelFullSize;
    if (byte_280A46430 == 1)
    {
      v56 = *d;
      v57 = *(d + 1);
      v58 = v144;
      v59 = objc_opt_class();
      v135 = NSStringFromSelector(a2);
      v60 = MEMORY[0x277CCACA8];
      sub_276152FD4(&v149, "vec3(%f, %f, %f)", v147.f32[0], v147.f32[1], v148);
      if (v151 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v60, v61, v62, v63, v64, &v149);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v60, v61, v62, v63, v64, *&v149);
      }
      v65 = ;
      if (v151 < 0)
      {
        operator delete(*&v149);
      }

      v66 = MEMORY[0x277CCACA8];
      sub_276152FD4(&v149, "vec3(%f, %f, %f)", *&v145, *(&v145 + 1), v146);
      if (v151 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v66, v67, v68, v69, v70, &v149);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v66, v67, v68, v69, v70, *&v149);
      }
      v71 = ;
      if (v151 < 0)
      {
        operator delete(*&v149);
      }

      v72 = MEMORY[0x277CCACA8];
      sub_276152FD4(&v149, "vec2(%f, %f)", v144.f32[0], v144.f32[1]);
      if (v151 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v72, v73, v74, v75, v76, &v149);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v72, v73, v74, v75, v76, *&v149);
      }
      v77 = ;
      v78 = (*&v137 * v56) + v58.f32[0];
      v79 = (*&v137 * v57) + v58.f32[1];
      if (v151 < 0)
      {
        operator delete(*&v149);
      }

      v80 = MEMORY[0x277CCACA8];
      sub_276152FD4(&v149, "vec2(%f, %f)", v78, v79);
      if (v151 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v80, v81, v82, v83, v84, &v149);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v80, v81, v82, v83, v84, *&v149);
      }
      v85 = ;
      if (v151 < 0)
      {
        operator delete(*&v149);
      }

      v86 = MEMORY[0x277CCACA8];
      sub_276152FD4(&v149, "vec3(%f, %f, %f)", *&v54, *(&v54 + 1), 0.0);
      if (v151 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v86, v87, v88, v89, v90, &v149);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v86, v87, v88, v89, v90, *&v149);
      }
      v91 = ;
      if (v151 < 0)
      {
        operator delete(*&v149);
      }

      v92 = MEMORY[0x277CCACA8];
      sub_276152FD4(&v149, "vec2(%f, %f)", self->_info.sampledLabelSize.var0.var0, self->_info.sampledLabelSize.var1.var0);
      if (v151 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v92, v93, v94, v95, v96, &v149);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v92, v93, v94, v95, v96, *&v149);
      }
      v97 = ;
      if (v151 < 0)
      {
        operator delete(*&v149);
      }

      NSLog(&cfstr_POffsetpositio.isa, v59, self, v135, v65, v71, v77, v85, v91, v97);

      attributeCopy = v136;
    }

    v98 = objc_msgSend_meshRenderer(self, *&v50, v51, v52, v53);

    if (!v98)
    {
      v103 = MEMORY[0x277D81150];
      v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, v100, v101, v102, "[TSCH3DLabelsRenderer renderAtPosition:offset:alignment:offset2D:rotation:externalAttribute:]");
      v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, v106, v107, v108, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v110, v111, v112, v113, v104, v109, 875, 0, "invalid nil value for '%{public}s'", "self.meshRenderer");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v114, v115, v116, v117);
    }

    v118 = [TSCH3DLabelsMeshRendererLabelInfo alloc];
    v149 = v147;
    v150 = v148;
    v142 = v54;
    v143 = 0;
    v141 = 1065353216;
    v139 = vmul_n_f32(*d, *&v137);
    v140 = sampledLabelFullSize;
    v138 = v144;
    v121 = objc_msgSend_initWithRenderer_position_translation_scale_rotation_offset_alignmentOffset_externalAttribute_(v118, v119, COERCE_DOUBLE(__PAIR64__(v144.u32[1], LODWORD(rotation))), v137, v120, self, &v149, &v142, &v140, &v139, &v138, attributeCopy);
    v126 = objc_msgSend_meshRenderer(self, v122, v123, v124, v125);
    objc_msgSend_renderWithMeshRenderLabelInfo_(v126, v127, v128, v129, v130, v121);

    objc_msgSend_setLabel_(self, v131, v132, v133, v134, 0);
  }
}

- (LabelRenderInfo)renderInfo
{
  v3 = *&self[2].sampledLabelRenderOffset.var0.var0;
  *&retstr->sampledLabelSize.var0.var0 = *&self[2].sampledLabelSize.var0.var0;
  *&retstr->sampledLabelRenderOffset.var0.var0 = v3;
  return self;
}

- (id).cxx_construct
{
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  return self;
}

@end