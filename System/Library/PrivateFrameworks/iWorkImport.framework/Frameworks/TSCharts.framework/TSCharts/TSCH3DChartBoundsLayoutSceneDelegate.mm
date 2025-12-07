@interface TSCH3DChartBoundsLayoutSceneDelegate
+ (id)sceneDelegate;
- (BOOL)willSubmitLabelForSceneObject:(id)object labelRenderInfo:(id)info;
- (BOOL)willSubmitLabelType:(int)type boundsIndex:(int64_t)index alignment:(unint64_t)alignment elementIndex:(unint64_t)elementIndex forSceneObject:(id)object;
- (BOOL)willSubmitSceneObject:(id)object pipeline:(id)pipeline;
- (TSCH3DChartBoundsLayoutSceneDelegate)init;
- (id)interestedClasses;
- (id)makeDelegateWithSceneObject:(id)object scene:(id)scene;
- (void)dealloc;
- (void)didRunForScene:(id)scene pipeline:(id)pipeline;
- (void)invalidateLabelsBoundsForSceneObjectClass:(Class)class boundsIndex:(int64_t)index;
- (void)p_addAllActiveLabelsBounds;
- (void)p_extendProjectedBoundsForCachedLabelBounds:(id)bounds offset:(void *)offset;
- (void)setOffset:(void *)offset labelType:(int)type boundsIndex:(int64_t)index forSceneObject:(id)object;
- (void)willRunForScene:(id)scene pipeline:(id)pipeline;
@end

@implementation TSCH3DChartBoundsLayoutSceneDelegate

+ (id)sceneDelegate
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSCH3DChartBoundsLayoutSceneDelegate)init
{
  v10.receiver = self;
  v10.super_class = TSCH3DChartBoundsLayoutSceneDelegate;
  v2 = [(TSCH3DChartBoundsLayoutSceneDelegate *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(TSCH3DLabelsRendererTransforms);
    transforms = v2->_transforms;
    v2->_transforms = v3;

    v5 = objc_alloc_init(MEMORY[0x277D81278]);
    sceneObjectLabelsBounds = v2->_sceneObjectLabelsBounds;
    v2->_sceneObjectLabelsBounds = v5;

    v7 = objc_alloc_init(MEMORY[0x277D81258]);
    debugCachedSceneObjects = v2->_debugCachedSceneObjects;
    v2->_debugCachedSceneObjects = v7;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_pipeline)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartBoundsLayoutSceneDelegate dealloc]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 278, 0, "expected nil value for '%{public}s'", "_pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (self->_activeBounds)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartBoundsLayoutSceneDelegate dealloc]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 279, 0, "expected nil value for '%{public}s'", "_activeBounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v36.receiver = self;
  v36.super_class = TSCH3DChartBoundsLayoutSceneDelegate;
  [(TSCH3DChartBoundsLayoutSceneDelegate *)&v36 dealloc];
}

- (id)interestedClasses
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = objc_opt_class();
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v3, v4, v5, v8, 1);

  return v6;
}

- (id)makeDelegateWithSceneObject:(id)object scene:(id)scene
{
  v29 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_msgSend_interestedClasses(self, v6, v7, v8, v9);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v10 = v25 = 0u;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, &v24, v28, 16);
  if (v15)
  {
    v16 = *v25;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v10);
        }

        if (objc_opt_isKindOfClass())
        {
          selfCopy = self;
          goto LABEL_11;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v18, v19, v20, v21, &v24, v28, 16);
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

- (void)invalidateLabelsBoundsForSceneObjectClass:(Class)class boundsIndex:(int64_t)index
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = objc_msgSend_allKeys(self->_sceneObjectLabelsBounds, a2, 0.0, v4, v5, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v28, v32, 16);
  if (v13)
  {
    v14 = 0;
    v15 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v22 = objc_msgSend_objectForKeyedSubscript_(self->_sceneObjectLabelsBounds, v18, v19, v20, v21, v17);
          v27 = objc_msgSend_resetIndex_(v22, v23, v24, v25, v26, index);

          v14 |= v27;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v18, v19, v20, v21, &v28, v32, 16);
    }

    while (v13);

    if (v14)
    {
      self->_labelsHaveCache = 0;
    }
  }

  else
  {
  }
}

- (void)p_extendProjectedBoundsForCachedLabelBounds:(id)bounds offset:(void *)offset
{
  boundsCopy = bounds;
  if (!boundsCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DChartBoundsLayoutSceneDelegate p_extendProjectedBoundsForCachedLabelBounds:offset:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 317, 0, "Invalid parameter not satisfying: %{public}s", "bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (!self->_pipeline)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DChartBoundsLayoutSceneDelegate p_extendProjectedBoundsForCachedLabelBounds:offset:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 318, 0, "invalid nil value for '%{public}s'", "_pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  }

  if (boundsCopy)
  {
    *&v87 = *offset;
    DWORD2(v87) = *(offset + 2);
    v42 = objc_msgSend_camera(self->_pipeline, v7, COERCE_DOUBLE(__PAIR64__(DWORD1(v87), DWORD2(v87))), v10, v11);
    v46 = v42;
    if (v42)
    {
      objc_msgSend_viewport(v42, v43, v44, v45);
    }

    else
    {
      v89[0] = 0;
      v89[1] = 0;
    }

    objc_msgSend_normalizedBoundsWithOffset_transforms_viewport_(boundsCopy, v43, v44, v45);

    if (byte_280A46430 == 1)
    {
      v51 = objc_opt_class();
      v52 = NSStringFromSelector(a2);
      v57 = objc_msgSend_string(boundsCopy, v53, v54, v55, v56);
      v58 = MEMORY[0x277CCACA8];
      sub_276152FD4(v89, "vec3(%f, %f, %f)", *offset, *(offset + 1), *(offset + 2));
      if (v90 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v58, v59, v60, v61, v62, v89);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v58, v59, v60, v61, v62, v89[0]);
      }
      v63 = ;
      if (v90 < 0)
      {
        operator delete(v89[0]);
      }

      *&v64 = v88[0];
      *(&v64 + 1) = *(&v88[1] + 4);
      v87 = v64;
      v65 = MEMORY[0x277CCACA8];
      sub_276152EB4(&v87, v89);
      if (v90 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v65, v66, v67, v68, v69, v89);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v65, v66, v67, v68, v69, v89[0]);
      }
      v71 = ;
      if (v90 < 0)
      {
        operator delete(v89[0]);
      }

      v75 = objc_msgSend_camera(self->_pipeline, v70, v72, v73, v74);
      v79 = v75;
      if (v75)
      {
        objc_msgSend_viewport(v75, v76, v77, v78);
      }

      else
      {
        v86[0] = 0;
        v86[1] = 0;
      }

      v80 = MEMORY[0x277CCACA8];
      sub_2761B7678(v86, v89);
      if (v90 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v80, v81, v82, v83, v84, v89);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v80, v81, v82, v83, v84, v89[0]);
      }
      v85 = ;
      if (v90 < 0)
      {
        operator delete(v89[0]);
      }

      NSLog(&cfstr_POffsetBoundsV.isa, v51, self, v52, v57, v63, v71, v85);
    }

    objc_msgSend_extend2DProjectedBounds_(self->_pipeline, v47, v48, v49, v50, v88);
  }
}

- (void)willRunForScene:(id)scene pipeline:(id)pipeline
{
  sceneCopy = scene;
  pipelineCopy = pipeline;
  pipeline = self->_pipeline;
  self->_labelsDidOverride = 0;
  if (pipeline)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DChartBoundsLayoutSceneDelegate willRunForScene:pipeline:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 341, 0, "expected nil value for '%{public}s'", "_pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  objc_storeStrong(&self->_pipeline, pipeline);
  transforms = self->_transforms;
  v32 = objc_msgSend_camera(pipelineCopy, v28, v29, v30, v31);
  objc_msgSend_resetWithScene_camera_(transforms, v33, v34, v35, v36, sceneCopy, v32);
}

- (void)p_addAllActiveLabelsBounds
{
  v69 = *MEMORY[0x277D85DE8];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = objc_msgSend_allKeys(self->_sceneObjectLabelsBounds, a2, 0.0, v2, v3);
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, v6, v7, v8, &v64, v68, 16);
  if (v59)
  {
    v58 = *v65;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v65 != v58)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v60 = TSUCheckedDynamicCast();
        v13 = objc_msgSend_objectForKeyedSubscript_(self->_sceneObjectLabelsBounds, v9, v10, v11, v12);
        v19 = objc_msgSend_activeIndices(v13, v14, v15, v16, v17);
        if (!v19)
        {
          v23 = MEMORY[0x277D81150];
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v20, v21, v22, "[TSCH3DChartBoundsLayoutSceneDelegate p_addAllActiveLabelsBounds]");
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 352, 0, "invalid nil value for '%{public}s'", "indices");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
        }

        for (j = objc_msgSend_firstIndex(v19, v18, v20, v21, v22); j != 0x7FFFFFFFFFFFFFFFLL; j = objc_msgSend_indexGreaterThanIndex_(v19, v49, v50, v51, v52, j))
        {
          v43 = objc_msgSend_arrayAtIndex_(v13, v38, v40, v41, v42, j);
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = sub_2761FEAD4;
          v62[3] = &unk_27A6B6B08;
          v62[4] = self;
          v44 = v43;
          v63 = v44;
          objc_msgSend_enumerateLabelBoundsUsingBlock_(v44, v45, v46, v47, v48, v62);
        }
      }

      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, v54, v55, v56, &v64, v68, 16);
    }

    while (v59);
  }
}

- (void)didRunForScene:(id)scene pipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  activeBounds = self->_activeBounds;
  self->_activeBounds = 0;

  if (self->_labelsDidOverride)
  {
    objc_msgSend_p_addAllActiveLabelsBounds(self, v6, v7, v8, v9);
    self->_labelsHaveCache = 1;
  }

  pipeline = self->_pipeline;
  if (pipeline != pipelineCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DChartBoundsLayoutSceneDelegate didRunForScene:pipeline:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 375, 0, "pipeline mismatch %@ %@", self->_pipeline, pipelineCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    pipeline = self->_pipeline;
  }

  self->_pipeline = 0;

  objc_msgSend_resetWithScene_camera_(self->_transforms, v26, v27, v28, v29, 0, 0);
}

- (BOOL)willSubmitSceneObject:(id)object pipeline:(id)pipeline
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DChartBoundsLayoutSceneDelegate willSubmitSceneObject:pipeline:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 389, 0, "non-label class passed through %@", objectCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if (self->_labelsHaveCache && (objc_msgSend_containsObject_(self->_debugCachedSceneObjects, v6, v7, v8, v9, objectCopy) & 1) == 0)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DChartBoundsLayoutSceneDelegate willSubmitSceneObject:pipeline:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 392, 0, "%@ labels not cached in previous runs, layout item probably needs to be invalidated", objectCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  v40 = objc_msgSend_objectForKeyedSubscript_(self->_sceneObjectLabelsBounds, v6, v7, v8, v9, objectCopy);

  if (!v40)
  {
    sceneObjectLabelsBounds = self->_sceneObjectLabelsBounds;
    v46 = objc_alloc_init(TSCH3DActiveLabelsTypeBounds);
    objc_msgSend_setObject_forUncopiedKey_(sceneObjectLabelsBounds, v47, v48, v49, v50, v46, objectCopy);
  }

  v51 = objc_msgSend_objectForKeyedSubscript_(self->_sceneObjectLabelsBounds, v41, v42, v43, v44, objectCopy);
  activeBounds = self->_activeBounds;
  self->_activeBounds = v51;

  labelsHaveCache = self->_labelsHaveCache;
  if (!labelsHaveCache)
  {
    objc_msgSend_addObject_(self->_debugCachedSceneObjects, v53, v54, v55, v56, objectCopy);
    labelsHaveCache = self->_labelsHaveCache;
  }

  self->_labelsDidOverride = self->_labelsDidOverride || labelsHaveCache;

  return labelsHaveCache;
}

- (void)setOffset:(void *)offset labelType:(int)type boundsIndex:(int64_t)index forSceneObject:(id)object
{
  objectCopy = object;
  if (byte_280A46430 == 1)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromSelector(a2);
    v17 = MEMORY[0x277CCACA8];
    sub_276152FD4(&__p, "vec3(%f, %f, %f)", *offset, *(offset + 1), *(offset + 2));
    if (v34 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v17, v18, v19, v20, v21, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v17, v18, v19, v20, v21, __p);
    }
    v22 = ;
    if (v34 < 0)
    {
      operator delete(__p);
    }

    NSLog(&cfstr_POffsetBoundsi.isa, v15, self, v16, v22, index, objectCopy);
  }

  v23 = objc_msgSend_objectForKeyedSubscript_(self->_sceneObjectLabelsBounds, v10, v12, v13, v14, objectCopy);
  v28 = objc_msgSend_arrayAtIndex_(v23, v24, v25, v26, v27, index);
  __p = *offset;
  v33 = *(offset + 2);
  objc_msgSend_setOffset_(v28, v29, COERCE_DOUBLE(__PAIR64__(HIDWORD(__p), v33)), v30, v31, &__p);
}

- (BOOL)willSubmitLabelType:(int)type boundsIndex:(int64_t)index alignment:(unint64_t)alignment elementIndex:(unint64_t)elementIndex forSceneObject:(id)object
{
  objectCopy = object;
  activeBounds = self->_activeBounds;
  if (!activeBounds)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DChartBoundsLayoutSceneDelegate willSubmitLabelType:boundsIndex:alignment:elementIndex:forSceneObject:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 432, 0, "invalid nil value for '%{public}s'", "_activeBounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    activeBounds = self->_activeBounds;
  }

  active = objc_msgSend_setActiveType_(activeBounds, v9, v11, v12, v13, index);

  return active ^ 1;
}

- (BOOL)willSubmitLabelForSceneObject:(id)object labelRenderInfo:(id)info
{
  objectCopy = object;
  infoCopy = info;
  pipeline = self->_pipeline;
  v13 = objc_msgSend_pipeline(infoCopy, v9, v10, v11, v12);

  if (pipeline != v13)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCH3DChartBoundsLayoutSceneDelegate willSubmitLabelForSceneObject:labelRenderInfo:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    v25 = self->_pipeline;
    v30 = objc_msgSend_pipeline(infoCopy, v26, v27, v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v31, v32, v33, v34, v19, v24, 439, 0, "pipeline mismatch %@ %@", v25, v30);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  v39 = objc_msgSend_labelsRenderer(objectCopy, v14, v15, v16, v17);
  v43 = v39;
  if (v39)
  {
    objc_msgSend_renderInfo(v39, v40, v41, v42);
  }

  else
  {
    memset(v130, 0, sizeof(v130));
  }

  v48 = objc_msgSend_alignment(infoCopy, v44, v45, v46, v47);
  *&v131 = vmul_f32(*&v130[0], 0xBF000000BF000000);
  sub_276205CDC(v130, v48, &v131, &v129);
  v123 = *(v130 + 1);
  v49 = self->_pipeline;
  objc_msgSend_renderScale(v49, v50, *(v130 + 1), v51, v52);
  v122 = sub_2761FF750(v53, self, a2, v49);
  v54.i32[0] = HIDWORD(v123);
  if (*&v123 < 0.0 || *(&v123 + 1) < 0.0)
  {
    *v56.f32 = v129;
    *&v56.u32[2] = v129;
  }

  else
  {
    *v55.f32 = v129;
    *&v55.u32[2] = v129;
    v54.i64[0] = 0;
    *&v54.i64[1] = v123;
    v56 = vaddq_f32(v54, v55);
  }

  v128 = v56;
  objc_msgSend_rotation(infoCopy, *v56.i64, *v54.i64, v123);
  if (*&v58 != 0.0)
  {
    objc_msgSend_rotation(infoCopy, *&v58, v59, v60);
    v62 = v61 * 3.14159265 / 180.0;
    v65 = __sincosf_stret(v62);
    cosval = v65.__cosval;
    LODWORD(v63) = *&v65;
    v58 = xmmword_2764D5EE0;
    v131 = xmmword_2764D5EE0;
    LODWORD(v60) = DWORD1(v128);
    LODWORD(v59) = v128;
    LODWORD(v66) = DWORD2(v128);
    if (*(&v128 + 2) >= *&v128 && *(&v128 + 3) >= *(&v128 + 1))
    {
      v67 = 0;
      do
      {
        sub_2761FF824(&v128, v67, &v127, *&v58, v59, v60, v66);
        v125.f32[0] = (*(&v127 + 1) * -v63) + (cosval * *&v127);
        v125.f32[1] = (cosval * *(&v127 + 1)) + (v63 * *&v127);
        *&v58 = sub_276152BD8(&v131, &v125);
        ++v67;
      }

      while (v67 != 4);
      v58 = v131;
    }

    v128 = v58;
  }

  if (infoCopy)
  {
    objc_msgSend_offset2D(infoCopy, *&v58, v59, v60);
    v68 = v131;
    objc_msgSend_position(infoCopy, v69, v70, v71);
  }

  else
  {
    v126 = 0.0;
    v125 = 0;
    v68 = 0;
  }

  v131 = v128;
  v127 = COERCE_DOUBLE(vmul_n_f32(v68, v122));
  v72 = objc_msgSend_renderString(infoCopy, v57, v127, *&v128, v60);
  v77 = objc_msgSend_boundsWithPosition_labelBox_offset2D_string_(TSCH3DCachedLabelBounds, v73, v74, v75, v76, &v125, &v131, &v127, v72);

  activeBounds = self->_activeBounds;
  if (!activeBounds)
  {
    v83 = MEMORY[0x277D81150];
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v79, v80, v81, "[TSCH3DChartBoundsLayoutSceneDelegate willSubmitLabelForSceneObject:labelRenderInfo:]");
    v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, v86, v87, v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartResizer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v90, v91, v92, v93, v84, v89, 458, 0, "invalid nil value for '%{public}s'", "_activeBounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95, v96, v97);
    activeBounds = self->_activeBounds;
  }

  objc_msgSend_addBounds_(activeBounds, v78, v79, v80, v81, v77);
  if (infoCopy)
  {
    objc_msgSend_offset(infoCopy, v99, v100, v101);
  }

  else
  {
    DWORD2(v131) = 0;
    *&v131 = 0;
  }

  objc_msgSend_p_extendProjectedBoundsForCachedLabelBounds_offset_(self, v98, v99, v100, v101, v77, &v131);
  if (byte_280A46430 == 1)
  {
    v102 = objc_opt_class();
    v103 = NSStringFromSelector(a2);
    v108 = objc_msgSend_renderString(infoCopy, v104, v105, v106, v107);
    if (infoCopy)
    {
      objc_msgSend_position(infoCopy, v109, v110, v111);
      v112 = v125.f32[0];
      v113 = v125.f32[1];
      v114 = v126;
    }

    else
    {
      v126 = 0.0;
      v125 = 0;
      v114 = 0.0;
      v113 = 0.0;
      v112 = 0.0;
    }

    v115 = MEMORY[0x277CCACA8];
    sub_276152FD4(&v131, "vec3(%f, %f, %f)", v112, v113, v114);
    if (v132 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v115, v116, v117, v118, v119, &v131);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v115, v116, v117, v118, v119, v131);
    }
    v120 = ;
    if (v132 < 0)
    {
      operator delete(v131);
    }

    NSLog(&cfstr_PPosition.isa, v102, self, v103, v108, v120);
  }

  self->_labelsDidOverride = 1;

  return 1;
}

@end