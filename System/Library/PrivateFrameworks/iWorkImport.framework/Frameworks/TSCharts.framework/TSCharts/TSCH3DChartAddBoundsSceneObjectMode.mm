@interface TSCH3DChartAddBoundsSceneObjectMode
+ (id)mode;
- (BOOL)hasObjectBoundsForScene:(id)scene pipeline:(id)pipeline returningObjectBounds:(void *)bounds;
- (id)elementsSceneFromScene:(id)scene;
@end

@implementation TSCH3DChartAddBoundsSceneObjectMode

+ (id)mode
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (id)elementsSceneFromScene:(id)scene
{
  v6 = objc_msgSend_clone(scene, a2, v3, v4, v5);
  objc_msgSend_resetDelegates(v6, v7, v8, v9, v10);
  objc_msgSend_resetObjects(v6, v11, v12, v13, v14);
  v19 = objc_msgSend_main(v6, v15, v16, v17, v18);
  objc_msgSend_addObject_(v6, v20, v21, v22, v23, v19);

  return v6;
}

- (BOOL)hasObjectBoundsForScene:(id)scene pipeline:(id)pipeline returningObjectBounds:(void *)bounds
{
  sceneCopy = scene;
  pipelineCopy = pipeline;
  v48 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v9, v10, v11, v12, sceneCopy);
  v17 = objc_msgSend_pipelineWithScene_(TSCH3DGetBoundsPipeline, v13, v14, v15, v16, sceneCopy);
  v22 = objc_msgSend_setup(pipelineCopy, v18, v19, v20, v21);
  objc_msgSend_setSetup_(v17, v23, v24, v25, v26, v22);

  v31 = objc_msgSend_processor(v17, v27, v28, v29, v30);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_2761BF5CC;
  v51[3] = &unk_27A6B6558;
  v32 = v48;
  v52 = v32;
  v33 = sceneCopy;
  v53 = v33;
  v34 = v17;
  v54 = v34;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v35, v36, v37, v38, v31, v51);

  v42 = objc_msgSend_bounds(v34, v39, v40, v41);
  if (byte_280A46430 == 1)
  {
    v43 = objc_opt_class();
    v44 = NSStringFromSelector(a2);
    v45 = sub_276165634(v42);
    NSLog(&cfstr_PObjectBounds.isa, v43, self, v44, v45);
  }

  if (bounds)
  {
    *bounds = *v42;
    *(bounds + 1) = *(v42 + 4);
    *(bounds + 2) = *(v42 + 8);
    *(bounds + 3) = *(v42 + 12);
    *(bounds + 4) = *(v42 + 16);
    *(bounds + 5) = *(v42 + 20);
    *(bounds + 6) = *(v42 + 24);
    *(bounds + 7) = *(v42 + 28);
    *(bounds + 8) = *(v42 + 32);
    *(bounds + 9) = *(v42 + 36);
    *(bounds + 10) = *(v42 + 40);
    *(bounds + 11) = *(v42 + 44);
    *(bounds + 12) = *(v42 + 48);
    *(bounds + 13) = *(v42 + 52);
    *(bounds + 14) = *(v42 + 56);
    *(bounds + 15) = *(v42 + 60);
    *(bounds + 16) = *(v42 + 64);
    *(bounds + 17) = *(v42 + 68);
    if (v42 != bounds)
    {
      sub_2761C12D0(bounds + 9, *(v42 + 72), *(v42 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(v42 + 80) - *(v42 + 72)) >> 3));
    }
  }

  v46 = sub_276155178(v42);

  return v46 ^ 1;
}

@end