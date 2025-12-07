@interface TSCH3DChartStageSceneObject
+ (id)objectWithMain:(id)main;
- (TSCH3DChartStageSceneObject)initWithMain:(id)main;
- (void)getBounds:(id)bounds;
- (void)getSceneObjectElementsBounds:(id)bounds;
- (void)getSelectionKnobsPositions:(id)positions;
- (void)rayPick:(id)pick;
- (void)render:(id)render;
- (void)renderScene:(id)scene usingProcessor:(id)processor block:(id)block;
@end

@implementation TSCH3DChartStageSceneObject

+ (id)objectWithMain:(id)main
{
  mainCopy = main;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithMain_(v5, v6, v7, v8, v9, mainCopy);

  return v10;
}

- (TSCH3DChartStageSceneObject)initWithMain:(id)main
{
  mainCopy = main;
  v9.receiver = self;
  v9.super_class = TSCH3DChartStageSceneObject;
  v6 = [(TSCH3DChartStageSceneObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_main, main);
  }

  return v7;
}

- (void)renderScene:(id)scene usingProcessor:(id)processor block:(id)block
{
  sceneCopy = scene;
  processorCopy = processor;
  blockCopy = block;
  v14 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v10, v11, v12, v13, sceneCopy);
  v18 = v14;
  if (byte_280A46430 == 1)
  {
    if (v14)
    {
      objc_msgSend_infoChartScale(v14, v15, v16, v17);
      v19 = *&v50;
      v20 = *(&v50 + 1);
      v21 = *&v51;
      v22 = *(&v51 + 1);
    }

    else
    {
      v50 = 0;
      v51 = 0;
      v22 = 0.0;
      v21 = 0.0;
      v20 = 0.0;
      v19 = 0.0;
    }

    v23 = MEMORY[0x277CCACA8];
    sub_276152FD4(v52, "vec4(%f, %f, %f, %f)", v19, v20, v21, v22);
    if (v53 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v23, v24, v25, v26, v27, v52);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v23, v24, v25, v26, v27, v52[0]);
    }
    v28 = ;
    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    NSLog(&cfstr_ChartScale.isa, v28);

    if (byte_280A46430)
    {
      if (v18)
      {
        objc_msgSend_stageScale(v18, v29, v30, v31);
        v32 = *&v50;
        v33 = *(&v50 + 1);
        v34 = *&v51;
      }

      else
      {
        LODWORD(v51) = 0;
        v50 = 0;
        v34 = 0.0;
        v33 = 0.0;
        v32 = 0.0;
      }

      v35 = MEMORY[0x277CCACA8];
      sub_276152FD4(v52, "vec3(%f, %f, %f)", v32, v33, v34);
      if (v53 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v35, v36, v37, v38, v39, v52);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v35, v36, v37, v38, v39, v52[0]);
      }
      v40 = ;
      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      NSLog(&cfstr_StageScale.isa, v40);
    }
  }

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_2761BDB34;
  v47[3] = &unk_27A6B67C8;
  v41 = v18;
  v48 = v41;
  v42 = blockCopy;
  v49 = v42;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v43, v44, v45, v46, processorCopy, v47);
}

- (void)render:(id)render
{
  renderCopy = render;
  v9 = objc_msgSend_scene(renderCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_processor(renderCopy, v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2761BDCC0;
  v20[3] = &unk_27A6B6338;
  v20[4] = self;
  v15 = renderCopy;
  v21 = v15;
  objc_msgSend_renderScene_usingProcessor_block_(self, v16, v17, v18, v19, v9, v14, v20);
}

- (void)getBounds:(id)bounds
{
  boundsCopy = bounds;
  v9 = objc_msgSend_scene(boundsCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_processor(boundsCopy, v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2761BDDDC;
  v20[3] = &unk_27A6B6338;
  v20[4] = self;
  v15 = boundsCopy;
  v21 = v15;
  objc_msgSend_renderScene_usingProcessor_block_(self, v16, v17, v18, v19, v9, v14, v20);
}

- (void)rayPick:(id)pick
{
  pickCopy = pick;
  v9 = objc_msgSend_scene(pickCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_processor(pickCopy, v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2761BDEF8;
  v20[3] = &unk_27A6B6338;
  v20[4] = self;
  v15 = pickCopy;
  v21 = v15;
  objc_msgSend_renderScene_usingProcessor_block_(self, v16, v17, v18, v19, v9, v14, v20);
}

- (void)getSelectionKnobsPositions:(id)positions
{
  positionsCopy = positions;
  v9 = objc_msgSend_scene(positionsCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_processor(positionsCopy, v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2761BE014;
  v20[3] = &unk_27A6B6338;
  v20[4] = self;
  v15 = positionsCopy;
  v21 = v15;
  objc_msgSend_renderScene_usingProcessor_block_(self, v16, v17, v18, v19, v9, v14, v20);
}

- (void)getSceneObjectElementsBounds:(id)bounds
{
  boundsCopy = bounds;
  v9 = objc_msgSend_scene(boundsCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_processor(boundsCopy, v10, v11, v12, v13);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2761BE130;
  v20[3] = &unk_27A6B6338;
  v20[4] = self;
  v15 = boundsCopy;
  v21 = v15;
  objc_msgSend_renderScene_usingProcessor_block_(self, v16, v17, v18, v19, v9, v14, v20);
}

@end