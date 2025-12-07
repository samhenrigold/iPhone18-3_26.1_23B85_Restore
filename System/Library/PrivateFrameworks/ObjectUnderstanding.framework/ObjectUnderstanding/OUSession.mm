@interface OUSession
- (OUSessionDelegate)delegate;
- (id)init:(BOOL)init;
- (void)generateOfflineObjectAsset:(id)asset onlineObjects:(id)objects block:(id)block;
- (void)generateOfflineObjects:(id)objects onlineObjects:(id)onlineObjects;
- (void)generateOfflineObjects:(id)objects onlineObjects:(id)onlineObjects block:(id)block;
- (void)runWithConfiguration:(id)configuration;
- (void)stop;
- (void)updateWithFrame:(id)frame;
- (void)updateWithKeyframes:(__n128)keyframes currentCameraPose:(__n128)pose;
- (void)updateWithKeyframes:(id)keyframes ouframe:(id)ouframe;
@end

@implementation OUSession

- (id)init:(BOOL)init
{
  initCopy = init;
  v25.receiver = self;
  v25.super_class = OUSession;
  v4 = [(OUSession *)&v25 init];
  v5 = v4;
  if (v4)
  {
    v4->isOnline_ = initCopy;
    if (initCopy)
    {
      v6 = objc_alloc_init(OUPipelineOnline);
      v7 = 24;
    }

    else
    {
      v6 = [[OU3DObjectDetector alloc] init:0];
      v7 = 16;
    }

    v8 = *(&v5->super.isa + v7);
    *(&v5->super.isa + v7) = v6;

    v9 = dispatch_semaphore_create(1);
    detSemaphore = v5->detSemaphore_;
    v5->detSemaphore_ = v9;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    allKeyframes = v5->allKeyframes_;
    v5->allKeyframes_ = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    skipedKeyframes = v5->skipedKeyframes_;
    v5->skipedKeyframes_ = dictionary2;

    v15 = CreateWorkGroup("OU_OnlineOD3d_TG");
    workgroupOD = v5->_workgroupOD;
    v5->_workgroupOD = v15;

    v17 = CreateFixedPrioritySerialDispatchQueue("com.apple.ObjectUnderstanding.onlineOD3d", 0x11, 0, 1, &v5->_workgroupOD);
    detQueue = v5->detQueue_;
    v5->detQueue_ = v17;

    v19 = CreateWorkGroup("OU_UpdateFrame_TG");
    workgroupFrame = v5->_workgroupFrame;
    v5->_workgroupFrame = v19;

    v21 = CreateFixedPrioritySerialDispatchQueue("com.apple.ObjectUnderstanding.updateFrame", 0x11, 0, 1, &v5->_workgroupFrame);
    ouframeQueue = v5->ouframeQueue_;
    v5->ouframeQueue_ = v21;
  }

  v23 = v5;

  return v23;
}

- (void)runWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [configurationCopy copy];
  configuration = self->configuration_;
  self->configuration_ = v5;

  if (self->isOnline_)
  {
    [(OUPipelineOnline *)self->ouPipeline_ clear];
    v7 = objc_alloc_init(OUPipelineOnlineConfig);
    -[OUPipelineOnlineConfig setEnableRgbRefinement:](v7, "setEnableRgbRefinement:", [configurationCopy enableRgbRefinement]);
    -[OUPipelineOnlineConfig setEnable3DOROnline:](v7, "setEnable3DOROnline:", [configurationCopy enable3DOR]);
    v8 = [[OUPipelineOnline alloc] initWithConfig:v7];
    ouPipeline = self->ouPipeline_;
    self->ouPipeline_ = v8;
  }

  else
  {
    [(OU3DObjectDetector *)self->det3d_ clear];
    -[OU3DObjectDetector setRgbRefinementEnabled:](self->det3d_, "setRgbRefinementEnabled:", [configurationCopy enableRgbRefinement]);
    -[OU3DObjectDetector setObjectRepresentationEnabled:](self->det3d_, "setObjectRepresentationEnabled:", [configurationCopy enable3DOR]);
  }

  [(OUConfiguration *)self->configuration_ maxFramerate];
  self->_minFrameInterval = 1.0 / v10;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  allKeyframes = self->allKeyframes_;
  self->allKeyframes_ = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  skipedKeyframes = self->skipedKeyframes_;
  self->skipedKeyframes_ = dictionary2;
}

- (void)updateWithKeyframes:(__n128)keyframes currentCameraPose:(__n128)pose
{
  poseCopy = pose;
  v26 = a5;
  v23 = a2;
  keyframesCopy = keyframes;
  v40 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = a7;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v9)
  {
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = *(self + 96);
        identifier = [v12 identifier];
        [v13 setObject:v12 forKeyedSubscript:identifier];

        v15 = *(self + 104);
        identifier2 = [v12 identifier];
        [v15 setObject:v12 forKeyedSubscript:identifier2];
      }

      v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v9);
  }

  if (!dispatch_semaphore_wait(*(self + 48), 0xFFFFFFFFFFFFFFFELL))
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:*(self + 64)];
    v19 = v18 < *(self + 60);

    if (v19)
    {
      dispatch_semaphore_signal(*(self + 48));
    }

    else
    {
      objc_initWeak(&location, self);
      allValues = [*(self + 104) allValues];
      [*(self + 104) removeAllObjects];
      v21 = *(self + 32);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__OUSession_updateWithKeyframes_currentCameraPose___block_invoke;
      block[3] = &unk_2799C4210;
      objc_copyWeak(v33, &location);
      v32 = allValues;
      v28 = v23;
      v29 = keyframesCopy;
      v30 = poseCopy;
      v31 = v26;
      v22 = allValues;
      dispatch_async(v21, block);

      objc_destroyWeak(v33);
      objc_destroyWeak(&location);
    }
  }
}

void __51__OUSession_updateWithKeyframes_currentCameraPose___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = *(WeakRetained + 8);
    *(WeakRetained + 8) = v3;

    v5 = [*(WeakRetained + 3) updatePipelineWithKeyframes:*(a1 + 96) currentCameraPose:{*(a1 + 32), *(a1 + 48), *(a1 + 64), *(a1 + 80)}];
    v6 = *(WeakRetained + 10);
    *(WeakRetained + 10) = v5;

    v7 = [*(WeakRetained + 10) objects];
    v8 = *(WeakRetained + 9);
    *(WeakRetained + 9) = v7;

    v11 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [*(WeakRetained + 10) objects];
      v16 = 134217984;
      v17 = [v12 count];
      _os_log_impl(&dword_25D1DB000, v11, OS_LOG_TYPE_INFO, "[OD] Detected objects number: %lu", &v16, 0xCu);
    }

    v13 = [WeakRetained delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [WeakRetained delegate];
      [v15 session:WeakRetained didUpdateDetectedObjects:*(WeakRetained + 9)];
    }

    dispatch_semaphore_signal(*(WeakRetained + 6));
  }
}

- (void)updateWithKeyframes:(id)keyframes ouframe:(id)ouframe
{
  v54 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  keyframesCopy = keyframes;
  v6 = [keyframesCopy countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v6)
  {
    v7 = *v42;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(keyframesCopy);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        allKeyframes = self->allKeyframes_;
        identifier = [v9 identifier];
        [(NSMutableDictionary *)allKeyframes setObject:v9 forKeyedSubscript:identifier];

        skipedKeyframes = self->skipedKeyframes_;
        identifier2 = [v9 identifier];
        [(NSMutableDictionary *)skipedKeyframes setObject:v9 forKeyedSubscript:identifier2];
      }

      v6 = [keyframesCopy countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v6);
  }

  if (!dispatch_semaphore_wait(self->detSemaphore_, 0xFFFFFFFFFFFFFFFELL))
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_detStartDate];
    v16 = v15 < self->_minFrameInterval;

    if (v16)
    {
      dispatch_semaphore_signal(self->detSemaphore_);
    }

    else
    {
      objc_initWeak(&location, self);
      v38[0] = 0;
      v38[1] = v38;
      v38[2] = 0x3032000000;
      v38[3] = __Block_byref_object_copy__0;
      v38[4] = __Block_byref_object_dispose__0;
      v39 = 0;
      ouframeQueue = self->ouframeQueue_;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__OUSession_updateWithKeyframes_ouframe___block_invoke;
      block[3] = &unk_2799C4238;
      objc_copyWeak(&v37, &location);
      block[4] = self;
      block[5] = v38;
      dispatch_sync(ouframeQueue, block);
      allValues = [(NSMutableDictionary *)self->skipedKeyframes_ allValues];
      [(NSMutableDictionary *)self->skipedKeyframes_ removeAllObjects];
      detQueue = self->detQueue_;
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __41__OUSession_updateWithKeyframes_ouframe___block_invoke_2;
      v31 = &unk_2799C4260;
      objc_copyWeak(&v35, &location);
      v20 = allValues;
      selfCopy = self;
      v34 = v38;
      v32 = v20;
      dispatch_async(detQueue, &v28);
      v23 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [(NSArray *)self->objects_ count:v28];
        v25 = [(NSMutableDictionary *)self->allKeyframes_ count];
        v26 = [keyframesCopy count];
        v27 = [v20 count];
        *buf = 134218752;
        v46 = v24;
        v47 = 2048;
        v48 = v25;
        v49 = 2048;
        v50 = v26;
        v51 = 2048;
        v52 = v27;
        _os_log_impl(&dword_25D1DB000, v23, OS_LOG_TYPE_INFO, "[OD] Detected objects number: %lu in %lu keyframes (%lu, %lu)", buf, 0x2Au);
      }

      objc_destroyWeak(&v35);
      objc_destroyWeak(&v37);
      _Block_object_dispose(v38, 8);

      objc_destroyWeak(&location);
    }
  }
}

void __41__OUSession_updateWithKeyframes_ouframe___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 112));
    WeakRetained = v3;
  }
}

void __41__OUSession_updateWithKeyframes_ouframe___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = *(WeakRetained + 8);
    *(WeakRetained + 8) = v3;

    v5 = [*(WeakRetained + 3) updatePipelineWithKeyframes:*(a1 + 32) ouframe:*(*(*(a1 + 48) + 8) + 40)];
    v6 = *(WeakRetained + 10);
    *(WeakRetained + 10) = v5;

    v7 = [*(WeakRetained + 10) objects];
    v8 = *(WeakRetained + 9);
    *(WeakRetained + 9) = v7;

    v9 = [WeakRetained delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [WeakRetained delegate];
      [v11 session:WeakRetained didUpdateDetectedObjects:*(*(a1 + 40) + 72)];
    }

    v12 = [WeakRetained delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [WeakRetained delegate];
      [v14 session:WeakRetained didUpdateObjectAsset:*(*(a1 + 40) + 80)];
    }

    dispatch_semaphore_signal(*(WeakRetained + 6));
  }
}

- (void)updateWithFrame:(id)frame
{
  frameCopy = frame;
  sceneCamera = [frameCopy sceneCamera];

  if (sceneCamera)
  {
    objc_initWeak(&location, self);
    ouframeQueue = self->ouframeQueue_;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__OUSession_updateWithFrame___block_invoke;
    block[3] = &unk_2799C4288;
    objc_copyWeak(&v9, &location);
    v8 = frameCopy;
    dispatch_async(ouframeQueue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __29__OUSession_updateWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 14, *(a1 + 32));
    WeakRetained = v3;
  }
}

- (void)generateOfflineObjects:(id)objects onlineObjects:(id)onlineObjects
{
  objectsCopy = objects;
  onlineObjectsCopy = onlineObjects;
  if (!dispatch_semaphore_wait(self->detSemaphore_, 0xFFFFFFFFFFFFFFFELL))
  {
    objc_initWeak(&location, self);
    detQueue = self->detQueue_;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__OUSession_generateOfflineObjects_onlineObjects___block_invoke;
    block[3] = &unk_2799C42B0;
    objc_copyWeak(&v13, &location);
    v10 = objectsCopy;
    v11 = onlineObjectsCopy;
    selfCopy = self;
    dispatch_async(detQueue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __50__OUSession_generateOfflineObjects_onlineObjects___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[2] generateOfflineObjects:*(a1 + 32) onlineObjects:*(a1 + 40)];
    v5 = v3[11];
    v3[11] = v4;

    v8 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __50__OUSession_generateOfflineObjects_onlineObjects___block_invoke_cold_2(buf, [v3[11] count], v8);
    }

    v9 = [v3 delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [v3 delegate];
      [v11 session:v3 didGeneratedOfflineObjects:*(*(a1 + 48) + 88)];
    }

    v12 = [v3 delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [v3 delegate];
      [v14 session:v3 didGeneratedOfflineObjectAsset:v3[10]];
    }

    dispatch_semaphore_signal(v3[6]);
  }
}

- (void)generateOfflineObjects:(id)objects onlineObjects:(id)onlineObjects block:(id)block
{
  objectsCopy = objects;
  onlineObjectsCopy = onlineObjects;
  blockCopy = block;
  detQueue = self->detQueue_;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__OUSession_generateOfflineObjects_onlineObjects_block___block_invoke;
  v15[3] = &unk_2799C42D8;
  v15[4] = self;
  v16 = objectsCopy;
  v17 = onlineObjectsCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = onlineObjectsCopy;
  v14 = objectsCopy;
  dispatch_async(detQueue, v15);
}

uint64_t __56__OUSession_generateOfflineObjects_onlineObjects_block___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 16) generateOfflineObjects:*(a1 + 40) onlineObjects:*(a1 + 48)];
  v4 = *(*v2 + 88);
  *(*v2 + 88) = v3;

  v7 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(*(a1 + 32) + 88) count];
    v9 = [*(a1 + 40) count];
    v10 = [*(a1 + 48) count];
    v12 = 134218496;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    v16 = 2048;
    v17 = v10;
    _os_log_impl(&dword_25D1DB000, v7, OS_LOG_TYPE_INFO, "[OD] Offline detected objects number: %lu, from %lu keyframes and %lu online objects", &v12, 0x20u);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 88));
  }

  return result;
}

- (void)generateOfflineObjectAsset:(id)asset onlineObjects:(id)objects block:(id)block
{
  assetCopy = asset;
  objectsCopy = objects;
  blockCopy = block;
  detQueue = self->detQueue_;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__OUSession_generateOfflineObjectAsset_onlineObjects_block___block_invoke;
  v15[3] = &unk_2799C42D8;
  v15[4] = self;
  v16 = assetCopy;
  v17 = objectsCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = objectsCopy;
  v14 = assetCopy;
  dispatch_async(detQueue, v15);
}

uint64_t __60__OUSession_generateOfflineObjectAsset_onlineObjects_block___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 16) generateOfflineObjects:*(a1 + 40) onlineObjects:*(a1 + 48)];
  v4 = *(*v2 + 88);
  *(*v2 + 88) = v3;

  v5 = [*(*v2 + 16) getObjectAsset];
  v6 = *(*v2 + 80);
  *(*v2 + 80) = v5;

  v9 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(*(a1 + 32) + 88) count];
    v11 = [*(a1 + 40) count];
    v12 = [*(a1 + 48) count];
    v14 = 134218496;
    v15 = v10;
    v16 = 2048;
    v17 = v11;
    v18 = 2048;
    v19 = v12;
    _os_log_impl(&dword_25D1DB000, v9, OS_LOG_TYPE_INFO, "[OD] Offline detected objects number: %lu, from %lu keyframes and %lu online objects", &v14, 0x20u);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 80));
  }

  return result;
}

- (void)stop
{
  objc_initWeak(&location, self);
  detQueue = self->detQueue_;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __17__OUSession_stop__block_invoke;
  v4[3] = &unk_2799C4300;
  objc_copyWeak(&v5, &location);
  dispatch_async(detQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __17__OUSession_stop__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[2] clear];
    v5 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6[0] = 0;
      _os_log_impl(&dword_25D1DB000, v5, OS_LOG_TYPE_INFO, "Detected objects session ends.", v6, 2u);
    }
  }
}

- (OUSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init:(void *)a1 .cold.1(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  v3 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v1, v2);
  if (OUTLINED_FUNCTION_2_0(v3))
  {
    OUTLINED_FUNCTION_4();
    (*(v4 + 16))(v1);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_2(&dword_25D1DB000, v5, v6, "OUOffline Error: (init) %s", v7, v8, v9, v10);
  }
}

- (void)init:(void *)a1 .cold.2(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  v3 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v1, v2);
  if (OUTLINED_FUNCTION_2_0(v3))
  {
    OUTLINED_FUNCTION_4();
    (*(v4 + 16))(v1);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_2(&dword_25D1DB000, v5, v6, "OUOnline Error: (init) %s", v7, v8, v9, v10);
  }
}

- (void)runWithConfiguration:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  v4 = __cxa_begin_catch(a1);
  *a3 = v4;
  v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v4, v5);
  if (OUTLINED_FUNCTION_2_0(v6))
  {
    OUTLINED_FUNCTION_4();
    (*(v7 + 16))(v4);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_2(&dword_25D1DB000, v8, v9, "OUError: (run) %s", v10, v11, v12, v13);
  }
}

- (void)runWithConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  (*(v0 + 16))();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_25D1DB000, v1, v2, "OUError: (init) %s", v3, v4, v5, v6);
}

- (void)runWithConfiguration:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  (*(v0 + 16))();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_25D1DB000, v1, v2, "OUError: (run) %s", v3, v4, v5, v6);
}

void __41__OUSession_updateWithKeyframes_ouframe___block_invoke_2_cold_1(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  v3 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v1, v2);
  if (OUTLINED_FUNCTION_2_0(v3))
  {
    OUTLINED_FUNCTION_4();
    (*(v4 + 16))(v1);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_2(&dword_25D1DB000, v5, v6, "OUError: (online) %s", v7, v8, v9, v10);
  }
}

void __50__OUSession_generateOfflineObjects_onlineObjects___block_invoke_cold_1(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  v3 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v1, v2);
  if (OUTLINED_FUNCTION_2_0(v3))
  {
    OUTLINED_FUNCTION_4();
    (*(v4 + 16))(v1);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0_2(&dword_25D1DB000, v5, v6, "OUError: (offline) %s", v7, v8, v9, v10);
  }
}

void __50__OUSession_generateOfflineObjects_onlineObjects___block_invoke_cold_2(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&dword_25D1DB000, log, OS_LOG_TYPE_ERROR, "[OD] Offline detected objects number: %lu", buf, 0xCu);
}

@end