@interface AXSDDetectorQueueManager
- (AXSDDetectorQueueManager)init;
- (AXSDDetectorQueueManagerDelegate)delegate;
- (BOOL)containsListenType:(id)type;
- (BOOL)prepareToListen;
- (id)currentDetectionTypes;
- (id)detectorManager;
- (void)_dequeueListenType:(id)type;
- (void)_queueListenType:(id)type;
- (void)addDetector:(id)detector;
- (void)addListenType:(id)type;
- (void)detectorStore:(id)store detectorsNeedUpdate:(id)update toDetectors:(id)detectors;
- (void)detectorsReadyForDetectorStore:(id)store;
- (void)prepareToListen;
- (void)removeAllListenTypes;
- (void)removeDetector:(id)detector;
- (void)removeListenType:(id)type;
- (void)stopListening;
@end

@implementation AXSDDetectorQueueManager

- (AXSDDetectorQueueManager)init
{
  v9.receiver = self;
  v9.super_class = AXSDDetectorQueueManager;
  v2 = [(AXSDDetectorQueueManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_ready = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    detectorQueue = v3->_detectorQueue;
    v3->_detectorQueue = v4;

    v6 = +[AXSDDetectorStore sharedInstance];
    [v6 addObserver:v3];

    v7 = +[AXSDDetectorStore sharedInstance];
    [v7 loadDetectors];
  }

  return v3;
}

- (id)detectorManager
{
  delegate = [(AXSDDetectorQueueManager *)self delegate];
  detectorManager = [delegate detectorManager];

  return detectorManager;
}

- (void)addListenType:(id)type
{
  typeCopy = type;
  v5 = +[AXSDDetectorStore sharedInstance];
  self->_ready = [v5 areDetectorsReady];

  if (self->_ready)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__AXSDDetectorQueueManager_addListenType___block_invoke;
    v7[3] = &unk_278BDD2C0;
    v7[4] = self;
    v8 = typeCopy;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  else
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorQueueManager addListenType:];
    }

    [(AXSDDetectorQueueManager *)self _queueListenType:typeCopy];
  }
}

void __42__AXSDDetectorQueueManager_addListenType___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __42__AXSDDetectorQueueManager_addListenType___block_invoke_cold_1();
  }

  v4 = [*(a1 + 32) delegate];
  v5 = [v4 detectorManager];
  v6 = [v5 addDetectorType:*(a1 + 40)];

  if ((v6 & 1) == 0)
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __42__AXSDDetectorQueueManager_addListenType___block_invoke_cold_2();
    }
  }
}

- (void)addDetector:(id)detector
{
  detectorCopy = detector;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__AXSDDetectorQueueManager_addDetector___block_invoke;
  v6[3] = &unk_278BDD2C0;
  v6[4] = self;
  v7 = detectorCopy;
  v5 = detectorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __40__AXSDDetectorQueueManager_addDetector___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __40__AXSDDetectorQueueManager_addDetector___block_invoke_cold_1();
  }

  v4 = [*(a1 + 32) delegate];
  v5 = [v4 detectorManager];
  v6 = [v5 addDetector:*(a1 + 40)];

  if ((v6 & 1) == 0)
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __40__AXSDDetectorQueueManager_addDetector___block_invoke_cold_2();
    }
  }
}

- (void)removeListenType:(id)type
{
  typeCopy = type;
  v5 = +[AXSDDetectorStore sharedInstance];
  self->_ready = [v5 areDetectorsReady];

  if (self->_ready)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__AXSDDetectorQueueManager_removeListenType___block_invoke;
    v7[3] = &unk_278BDD2C0;
    v7[4] = self;
    v8 = typeCopy;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  else
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorQueueManager removeListenType:v6];
    }

    [(AXSDDetectorQueueManager *)self _dequeueListenType:typeCopy];
  }
}

void __45__AXSDDetectorQueueManager_removeListenType___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __45__AXSDDetectorQueueManager_removeListenType___block_invoke_cold_1();
  }

  v4 = [*(a1 + 32) delegate];
  v5 = [v4 detectorManager];
  v6 = [v5 removeDetectorType:*(a1 + 40)];

  if ((v6 & 1) == 0)
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __45__AXSDDetectorQueueManager_removeListenType___block_invoke_cold_2();
    }
  }
}

- (BOOL)containsListenType:(id)type
{
  typeCopy = type;
  delegate = [(AXSDDetectorQueueManager *)self delegate];
  detectorManager = [delegate detectorManager];
  currentDetectors = [detectorManager currentDetectors];
  v8 = [currentDetectors containsObject:typeCopy];

  return v8;
}

- (void)removeDetector:(id)detector
{
  detectorCopy = detector;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__AXSDDetectorQueueManager_removeDetector___block_invoke;
  v6[3] = &unk_278BDD2C0;
  v6[4] = self;
  v7 = detectorCopy;
  v5 = detectorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __43__AXSDDetectorQueueManager_removeDetector___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __43__AXSDDetectorQueueManager_removeDetector___block_invoke_cold_1();
  }

  v4 = [*(a1 + 32) delegate];
  v5 = [v4 detectorManager];
  v6 = [v5 addDetector:*(a1 + 40)];

  if ((v6 & 1) == 0)
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __43__AXSDDetectorQueueManager_removeDetector___block_invoke_cold_2();
    }
  }
}

- (void)removeAllListenTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__AXSDDetectorQueueManager_removeAllListenTypes__block_invoke;
  block[3] = &unk_278BDD248;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__AXSDDetectorQueueManager_removeAllListenTypes__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __48__AXSDDetectorQueueManager_removeAllListenTypes__block_invoke_cold_1(a1);
  }

  v4 = [*(a1 + 32) delegate];
  v5 = [v4 detectorManager];
  [v5 removeAllDetectors];
}

- (BOOL)prepareToListen
{
  v3 = +[AXSDDetectorStore sharedInstance];
  [v3 addObserver:self];

  v4 = +[AXSDDetectorStore sharedInstance];
  self->_ready = [v4 areDetectorsReady];

  ready = self->_ready;
  if (!ready)
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(AXSDDetectorQueueManager *)self prepareToListen];
    }
  }

  return ready;
}

- (void)stopListening
{
  v3 = +[AXSDDetectorStore sharedInstance];
  [v3 removeObserver:self];
}

- (id)currentDetectionTypes
{
  v2 = MEMORY[0x277CBEB98];
  delegate = [(AXSDDetectorQueueManager *)self delegate];
  detectorManager = [delegate detectorManager];
  currentDetectors = [detectorManager currentDetectors];
  v6 = [v2 setWithArray:currentDetectors];

  return v6;
}

- (void)_queueListenType:(id)type
{
  typeCopy = type;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorQueueManager _queueListenType:];
  }

  [(NSMutableSet *)self->_detectorQueue addObject:typeCopy];
}

- (void)_dequeueListenType:(id)type
{
  typeCopy = type;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorQueueManager _dequeueListenType:];
  }

  [(NSMutableSet *)self->_detectorQueue removeObject:typeCopy];
}

- (void)detectorsReadyForDetectorStore:(id)store
{
  v14 = *MEMORY[0x277D85DE8];
  self->_ready = 1;
  v4 = AXLogUltron();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = objc_opt_class();
    v5 = v13;
    _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_INFO, "[%@]: detectors ready", buf, 0xCu);
  }

  v6 = [(NSMutableSet *)self->_detectorQueue count];
  v7 = AXLogUltron();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorQueueManager detectorsReadyForDetectorStore:];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__AXSDDetectorQueueManager_detectorsReadyForDetectorStore___block_invoke;
    block[3] = &unk_278BDD248;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      *buf = 138412290;
      v13 = v9;
      v10 = v9;
      _os_log_impl(&dword_23D62D000, v8, OS_LOG_TYPE_INFO, "[%@]: assets ready but no detectors in queue to start", buf, 0xCu);
    }
  }
}

void __59__AXSDDetectorQueueManager_detectorsReadyForDetectorStore___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v28 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  v4 = [v3 detectorQueue];
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v34;
    *&v6 = 138412802;
    v27 = v6;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        v11 = +[AXSDDetectorStore sharedInstance];
        v12 = [v11 detectorWithIdentifier:v10];

        v13 = AXLogUltron();
        v14 = v13;
        if (!v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            __59__AXSDDetectorQueueManager_detectorsReadyForDetectorStore___block_invoke_cold_2();
          }

          goto LABEL_24;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15 = objc_opt_class();
          *buf = v27;
          v39 = v15;
          v40 = 2112;
          v41 = v10;
          v42 = 2112;
          v43 = v12;
          v16 = v15;
          _os_log_impl(&dword_23D62D000, v14, OS_LOG_TYPE_INFO, "[%@]: adding listen type: %@. with asset: %@", buf, 0x20u);
        }

        v17 = [*v2 delegate];
        v18 = [v17 detectorManager];
        v19 = [v18 addDetector:v12];

        if ((v19 & 1) == 0)
        {
          v14 = AXLogUltron();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            __59__AXSDDetectorQueueManager_detectorsReadyForDetectorStore___block_invoke_cold_1();
          }

LABEL_24:

          goto LABEL_25;
        }

        [v28 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v33 objects:v44 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = v28;
  v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      v24 = 0;
      do
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v29 + 1) + 8 * v24);
        v26 = [*v2 detectorQueue];
        [v26 removeObject:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v22);
  }

  v4 = [*v2 delegate];
  [v4 assetsReadyAndDetectorsAdded];
LABEL_25:
}

- (void)detectorStore:(id)store detectorsNeedUpdate:(id)update toDetectors:(id)detectors
{
  v41 = *MEMORY[0x277D85DE8];
  detectorsCopy = detectors;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [detectorsCopy countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v32;
    *&v8 = 138412546;
    v26 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(detectorsCopy);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        isInstalled = [v12 isInstalled];
        v14 = AXLogUltron();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
        if (isInstalled)
        {
          if (v15)
          {
            v16 = objc_opt_class();
            *buf = v26;
            v37 = v16;
            v38 = 2112;
            v39 = v12;
            v17 = v16;
            _os_log_impl(&dword_23D62D000, v14, OS_LOG_TYPE_INFO, "[%@]: Swapping updated dtector: %@", buf, 0x16u);
          }

          identifier = [v12 identifier];
          [(AXSDDetectorQueueManager *)self removeListenType:identifier];

          [(AXSDDetectorQueueManager *)self addDetector:v12];
        }

        else
        {
          if (v15)
          {
            v19 = objc_opt_class();
            *buf = v26;
            v37 = v19;
            v38 = 2112;
            v39 = v12;
            v20 = v19;
            _os_log_impl(&dword_23D62D000, v14, OS_LOG_TYPE_INFO, "[%@]: Detector is new but not installed: %@", buf, 0x16u);
          }
        }
      }

      v9 = [detectorsCopy countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v9);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = detectorsCopy;
  v22 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v28;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(AXSDDetectorQueueManager *)self removeDetector:*(*(&v27 + 1) + 8 * j)];
      }

      v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v23);
  }
}

- (AXSDDetectorQueueManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addListenType:.cold.1()
{
  OUTLINED_FUNCTION_7();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __42__AXSDDetectorQueueManager_addListenType___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v1 = OUTLINED_FUNCTION_11(v0);
  v2 = OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __42__AXSDDetectorQueueManager_addListenType___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_3();
  v2 = OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_9(v2);
  v3 = [OUTLINED_FUNCTION_12() delegate];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_3_0(&dword_23D62D000, v4, v5, "[%@]: unable to add listen type: %@ to %@", v6, v7, v8, v9);

  OUTLINED_FUNCTION_15();
}

void __40__AXSDDetectorQueueManager_addDetector___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v1 = OUTLINED_FUNCTION_11(v0);
  v2 = OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __40__AXSDDetectorQueueManager_addDetector___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_3();
  v2 = OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_9(v2);
  v3 = [OUTLINED_FUNCTION_12() delegate];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_3_0(&dword_23D62D000, v4, v5, "[%@]: unable to add detector to listen engine: %@ to %@", v6, v7, v8, v9);

  OUTLINED_FUNCTION_15();
}

void __45__AXSDDetectorQueueManager_removeListenType___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v1 = OUTLINED_FUNCTION_11(v0);
  v2 = OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __45__AXSDDetectorQueueManager_removeListenType___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_3();
  v2 = OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_9(v2);
  v3 = [OUTLINED_FUNCTION_12() delegate];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_3_0(&dword_23D62D000, v4, v5, "[%@]: unable to remove listen type: %@ from %@", v6, v7, v8, v9);

  OUTLINED_FUNCTION_15();
}

void __43__AXSDDetectorQueueManager_removeDetector___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v1 = OUTLINED_FUNCTION_11(v0);
  v2 = OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __43__AXSDDetectorQueueManager_removeDetector___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_3();
  v2 = OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_9(v2);
  v3 = [OUTLINED_FUNCTION_12() delegate];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_3_0(&dword_23D62D000, v4, v5, "[%@]: unable to remove detector from listen engine: %@ to %@", v6, v7, v8, v9);

  OUTLINED_FUNCTION_15();
}

void __48__AXSDDetectorQueueManager_removeAllListenTypes__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1);
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)prepareToListen
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_queueListenType:.cold.1()
{
  OUTLINED_FUNCTION_7();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_dequeueListenType:.cold.1()
{
  OUTLINED_FUNCTION_7();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)detectorsReadyForDetectorStore:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v1 = objc_opt_class();
  v2 = *v0;
  v3 = v1;
  [v2 count];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __59__AXSDDetectorQueueManager_detectorsReadyForDetectorStore___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_3();
  v2 = OUTLINED_FUNCTION_10(v1);
  v3 = *v0;
  v4 = v2;
  v5 = [v3 delegate];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_0(&dword_23D62D000, v6, v7, "[%@]: unable to add listen type %@ to %@", v8, v9, v10, v11);

  OUTLINED_FUNCTION_15();
}

void __59__AXSDDetectorQueueManager_detectorsReadyForDetectorStore___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_3();
  v2 = OUTLINED_FUNCTION_10(v1);
  v3 = *v0;
  v4 = v2;
  v5 = [v3 delegate];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_0(&dword_23D62D000, v6, v7, "[%@]: no installed detector found for type: %@ unable to add to %@", v8, v9, v10, v11);

  OUTLINED_FUNCTION_15();
}

@end