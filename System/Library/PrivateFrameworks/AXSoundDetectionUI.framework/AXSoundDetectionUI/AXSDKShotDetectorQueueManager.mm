@interface AXSDKShotDetectorQueueManager
- (AXSDKShotDetectorQueueManager)init;
- (BOOL)currentGeneralDetectorIsValid;
- (void)addGeneralApplianceDetector;
- (void)assetsNotReadyForUltronManager:(id)manager;
- (void)assetsReadyForUltronManager:(id)manager;
- (void)removeGeneralApplianceDetector;
@end

@implementation AXSDKShotDetectorQueueManager

- (AXSDKShotDetectorQueueManager)init
{
  v7.receiver = self;
  v7.super_class = AXSDKShotDetectorQueueManager;
  v2 = [(AXSDDetectorQueueManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_ready = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    detectorQueue = v3->_detectorQueue;
    v3->_detectorQueue = v4;

    v3->_queueGeneralDetector = 0;
  }

  return v3;
}

- (void)addGeneralApplianceDetector
{
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D62D000, v3, OS_LOG_TYPE_DEFAULT, "Detector Queue manager: Add General Appliance Detector", buf, 2u);
  }

  if (self->_ready)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__AXSDKShotDetectorQueueManager_addGeneralApplianceDetector__block_invoke;
    block[3] = &unk_278BDD248;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v4 = AXLogUltronKShot();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_DEFAULT, "Controller: Queue general detector", buf, 2u);
    }

    self->_queueGeneralDetector = 1;
  }
}

void __60__AXSDKShotDetectorQueueManager_addGeneralApplianceDetector__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_23D62D000, v3, OS_LOG_TYPE_DEFAULT, "Controller: add general detector", v15, 2u);
  }

  v4 = [*(a1 + 32) delegate];
  v5 = [v4 detectorManager];
  v6 = [v5 addGeneralApplianceDetector];

  if ((v6 & 1) == 0)
  {
    v7 = AXLogUltronKShot();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__AXSDKShotDetectorQueueManager_addGeneralApplianceDetector__block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (void)removeGeneralApplianceDetector
{
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D62D000, v3, OS_LOG_TYPE_DEFAULT, "Detector Queue manager: Remove General Appliance Detector", buf, 2u);
  }

  if (self->_ready)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__AXSDKShotDetectorQueueManager_removeGeneralApplianceDetector__block_invoke;
    block[3] = &unk_278BDD248;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v4 = AXLogUltronKShot();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_DEFAULT, "Controller: Dequeue general detector", buf, 2u);
    }

    self->_queueGeneralDetector = 0;
  }
}

void __63__AXSDKShotDetectorQueueManager_removeGeneralApplianceDetector__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_23D62D000, v3, OS_LOG_TYPE_DEFAULT, "Controller: remove general detector", v15, 2u);
  }

  v4 = [*(a1 + 32) delegate];
  v5 = [v4 detectorManager];
  v6 = [v5 removeGeneralApplianceDetector];

  if ((v6 & 1) == 0)
  {
    v7 = AXLogUltronKShot();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__AXSDKShotDetectorQueueManager_removeGeneralApplianceDetector__block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (BOOL)currentGeneralDetectorIsValid
{
  delegate = [(AXSDDetectorQueueManager *)self delegate];
  detectorManager = [delegate detectorManager];
  currentGeneralApplianceRequest = [detectorManager currentGeneralApplianceRequest];
  v5 = currentGeneralApplianceRequest != 0;

  return v5;
}

- (void)assetsReadyForUltronManager:(id)manager
{
  self->_ready = 1;
  v4 = AXLogUltron();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_DEFAULT, "KShot Controller Received: assetsReadyForUltronManager", buf, 2u);
  }

  if (self->_queueGeneralDetector)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__AXSDKShotDetectorQueueManager_assetsReadyForUltronManager___block_invoke;
    block[3] = &unk_278BDD248;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __61__AXSDKShotDetectorQueueManager_assetsReadyForUltronManager___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 detectorManager];
  v4 = [v3 addGeneralApplianceDetector];

  if ((v4 & 1) == 0)
  {
    v5 = AXLogUltron();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __61__AXSDKShotDetectorQueueManager_assetsReadyForUltronManager___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(*(a1 + 32) + 41) = 0;
  v13 = [*(a1 + 32) delegate];
  [v13 assetsReadyAndDetectorsAdded];
}

- (void)assetsNotReadyForUltronManager:(id)manager
{
  v19 = *MEMORY[0x277D85DE8];
  self->_ready = 0;
  v4 = AXLogUltron();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_DEFAULT, "Controller: Assets are not ready will add current detectors to queue.", buf, 2u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  currentDetectionTypes = [(AXSDDetectorQueueManager *)self currentDetectionTypes];
  v6 = [currentDetectionTypes countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(currentDetectionTypes);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = AXLogUltron();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v10;
          _os_log_impl(&dword_23D62D000, v11, OS_LOG_TYPE_DEFAULT, "Controller: Adding %@ to queue.", buf, 0xCu);
        }

        [(AXSDDetectorQueueManager *)self addListenType:v10];
      }

      v7 = [currentDetectionTypes countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v7);
  }

  [(AXSDDetectorQueueManager *)self removeAllListenTypes];
  if ([(AXSDKShotDetectorQueueManager *)self currentGeneralDetectorIsValid])
  {
    self->_queueGeneralDetector = 1;
  }
}

@end