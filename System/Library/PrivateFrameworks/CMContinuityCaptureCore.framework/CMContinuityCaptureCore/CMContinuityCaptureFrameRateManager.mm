@interface CMContinuityCaptureFrameRateManager
- (CMContinuityCaptureFrameRateManager)init;
- (id)allowedFrameRateRangeForDevice:(id)device;
- (id)throttledFrameRateByActiveStreamingEntities;
- (id)throttledFrameRateByThermalLevelAndLowPowerMode;
- (void)dealloc;
- (void)lowPowerModeChanged:(id)changed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reportStreamStatus:(BOOL)status forDevice:(id)device;
- (void)updateAllowedFPS;
@end

@implementation CMContinuityCaptureFrameRateManager

- (CMContinuityCaptureFrameRateManager)init
{
  v15.receiver = self;
  v15.super_class = CMContinuityCaptureFrameRateManager;
  v2 = [(CMContinuityCaptureFrameRateManager *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    objc_sync_enter(v4);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    activeStreamingDevices = v4->_activeStreamingDevices;
    v4->_activeStreamingDevices = weakObjectsHashTable;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    allowedFrameRateRangeForDevice = v4->_allowedFrameRateRangeForDevice;
    v4->_allowedFrameRateRangeForDevice = weakToStrongObjectsMapTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    clientRequestedFrameRateRangeForDevice = v4->_clientRequestedFrameRateRangeForDevice;
    v4->_clientRequestedFrameRateRangeForDevice = weakToStrongObjectsMapTable2;

    v11 = +[CMContinuityCaptureThermalMonitor sharedInstance];
    [v11 addObserver:? forKeyPath:? options:? context:?];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:? selector:? name:? object:?];

    v4->_currentThermalLevel = 1;
    objc_sync_exit(v4);

    v13 = v4;
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[CMContinuityCaptureThermalMonitor sharedInstance];
  [v3 removeObserver:? forKeyPath:? context:?];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:? name:? object:?];

  v5.receiver = self;
  v5.super_class = CMContinuityCaptureFrameRateManager;
  [(CMContinuityCaptureFrameRateManager *)&v5 dealloc];
}

- (id)allowedFrameRateRangeForDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMapTable *)selfCopy->_allowedFrameRateRangeForDevice objectForKey:?];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([pathCopy isEqualToString:?])
  {
    v13 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [changeCopy objectForKeyedSubscript:?];
      v15 = [changeCopy objectForKeyedSubscript:?];
      v16 = 138543874;
      v17 = selfCopy;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Evaluate FPS Throttle due to change in thermal level(%@ -> %@)", &v16, 0x20u);
    }

    [(CMContinuityCaptureFrameRateManager *)selfCopy updateAllowedFPS];
  }

  objc_sync_exit(selfCopy);
}

- (void)lowPowerModeChanged:(id)changed
{
  name = [changed name];
  v5 = [name isEqualToString:?];

  if (v5)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

    v8 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      selfCopy = self;
      v11 = 1024;
      v12 = isLowPowerModeEnabled;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Device PowerState has changed - lowPowerModeEnabled(%d)", &v9, 0x12u);
    }

    [(CMContinuityCaptureFrameRateManager *)self updateAllowedFPS];
  }
}

- (id)throttledFrameRateByThermalLevelAndLowPowerMode
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  v5 = +[CMContinuityCaptureThermalMonitor sharedInstance];
  thermalLevel = [v5 thermalLevel];
  currentThermalLevel = self->_currentThermalLevel;

  if (thermalLevel > currentThermalLevel)
  {
    v8 = +[CMContinuityCaptureThermalMonitor sharedInstance];
    self->_currentThermalLevel = [v8 thermalLevel];
  }

  v9 = self->_currentThermalLevel;
  v10 = v9 > 3;
  v11 = (v9 == 3) | isLowPowerModeEnabled & 1;
  if (v10)
  {
    v11 = 2;
  }

  if (v11 == 1)
  {
    v12 = &unk_2854ECAA0;
  }

  else
  {
    if (v11 != 2)
    {
      return 0;
    }

    v12 = &unk_2854ECAB8;
  }

  v13 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    selfCopy = self;
    v17 = 1024;
    v18 = isLowPowerModeEnabled;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Throttle Reason: Thermal/LPM (%d). Throttled frame rate: %@", &v15, 0x1Cu);
  }

  return v12;
}

- (id)throttledFrameRateByActiveStreamingEntities
{
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = self->_activeStreamingDevices;
  v4 = [NSHashTable countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v4)
  {
    v5 = v4;
    selfCopy = self;
    v6 = 0;
    v7 = 0;
    v8 = *v33;
    v25 = *v33;
    do
    {
      v9 = 0;
      v27 = v5;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        activeConfiguration = [v10 activeConfiguration];
        entity = [activeConfiguration entity];

        if (entity == 2)
        {
          v7 = 1;
        }

        else
        {
          activeConfiguration2 = [v10 activeConfiguration];
          if ([activeConfiguration2 entity] == 1)
          {
            videoDevice = [v10 videoDevice];
            deviceType = [videoDevice deviceType];
            if ([deviceType isEqualToString:?])
            {
              companionDevice = [v10 companionDevice];
              videoDevice2 = [companionDevice videoDevice];
              [videoDevice2 deviceType];
              v18 = v7;
              v19 = v6;
              v21 = v20 = v3;
              v26 = [v21 isEqualToString:?];

              v3 = v20;
              LODWORD(v20) = v19;
              v7 = v18;
              v8 = v25;

              v6 = v26 | v20;
            }

            v5 = v27;
          }
        }

        v9 = (v9 + 1);
      }

      while (v5 != v9);
      v5 = [NSHashTable countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v5);

    if ((v7 & v6 & 1) == 0)
    {
      return 0;
    }

    v3 = CMContinuityCaptureLog(0);
    v22 = &unk_2854ECAD0;
    if (os_log_type_enabled(&v3->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = selfCopy;
      v30 = 2112;
      v31 = &unk_2854ECAD0;
      _os_log_impl(&dword_242545000, &v3->super, OS_LOG_TYPE_DEFAULT, "%{public}@ Throttle Reason: DeskCam. Throttled frame rate: %@", buf, 0x16u);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)updateAllowedFPS
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v43 = selfCopy;
  throttledFrameRateByThermalLevelAndLowPowerMode = [(CMContinuityCaptureFrameRateManager *)selfCopy throttledFrameRateByThermalLevelAndLowPowerMode];
  v4 = throttledFrameRateByThermalLevelAndLowPowerMode;
  if (throttledFrameRateByThermalLevelAndLowPowerMode)
  {
    unsignedIntValue = [throttledFrameRateByThermalLevelAndLowPowerMode unsignedIntValue];
  }

  else
  {
    unsignedIntValue = -1;
  }

  throttledFrameRateByActiveStreamingEntities = [(CMContinuityCaptureFrameRateManager *)v43 throttledFrameRateByActiveStreamingEntities];
  v7 = throttledFrameRateByActiveStreamingEntities;
  if (throttledFrameRateByActiveStreamingEntities)
  {
    unsignedIntValue2 = [throttledFrameRateByActiveStreamingEntities unsignedIntValue];
    if (unsignedIntValue2 < unsignedIntValue)
    {
      unsignedIntValue = unsignedIntValue2;
    }
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v43->_activeStreamingDevices;
  v9 = [NSHashTable countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
  v32 = v7;
  v33 = v4;
  if (v9)
  {
    v42 = 0;
    v40 = *v61;
    v39 = unsignedIntValue;
    do
    {
      v10 = 0;
      v41 = v9;
      do
      {
        if (*v61 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v60 + 1) + 8 * v10);
        v12 = [(NSMapTable *)v43->_clientRequestedFrameRateRangeForDevice objectForKey:v32, v33];
        v13 = v12;
        if (v12)
        {
          maxFrameRate = [v12 maxFrameRate];
          unsignedIntValue3 = [maxFrameRate unsignedIntValue];

          minFrameRate = [v13 minFrameRate];
          [minFrameRate unsignedIntValue];

          v17 = unsignedIntValue < unsignedIntValue3;
          allowedFrameRateRangeForDevice = v43->_allowedFrameRateRangeForDevice;
          v19 = [CMContinuityCaptureFrameRateRange frameRateRangeWithMinRate:"frameRateRangeWithMinRate:maxFrameRate:" maxFrameRate:?];
          [NSMapTable setObject:"setObject:forKey:" forKey:?];

          v20 = CMContinuityCaptureLog(2);
          v42 |= v17;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            activeConfiguration = [v11 activeConfiguration];
            v21 = CMContinuityCaptureStringForEntity([activeConfiguration entity]);
            v37 = [(NSMapTable *)v43->_clientRequestedFrameRateRangeForDevice objectForKey:?];
            minFrameRate2 = [v37 minFrameRate];
            v22 = [(NSMapTable *)v43->_clientRequestedFrameRateRangeForDevice objectForKey:?];
            maxFrameRate2 = [v22 maxFrameRate];
            v24 = [(NSMapTable *)v43->_allowedFrameRateRangeForDevice objectForKey:?];
            minFrameRate3 = [v24 minFrameRate];
            v26 = [(NSMapTable *)v43->_allowedFrameRateRangeForDevice objectForKey:?];
            maxFrameRate3 = [v26 maxFrameRate];
            if (v39 == -1)
            {
              v28 = @"INT_MAX";
            }

            else
            {
              v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
              v28 = v35;
            }

            *buf = 138545154;
            v45 = v43;
            v46 = 2112;
            v47 = v21;
            v48 = 2112;
            v49 = minFrameRate2;
            v50 = 2112;
            v51 = maxFrameRate2;
            v52 = 2112;
            v53 = minFrameRate3;
            v54 = 2112;
            v55 = maxFrameRate3;
            v56 = 1024;
            v57 = v42 & 1;
            v58 = 2112;
            v59 = v28;
            _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ - client requested frame rate min: %@ max: %@, allowed frame rate min: %@ max: %@. Throttled: %d systemThrottledMaxFrameRate: %@", buf, 0x4Eu);
            if (v39 != -1)
            {
            }

            unsignedIntValue = v39;
          }
        }

        else
        {
          v20 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v45 = v43;
            _os_log_error_impl(&dword_242545000, v20, OS_LOG_TYPE_ERROR, "%{public}@ device not found in clientRequestedFrameRateRange dict", buf, 0xCu);
          }
        }

        v10 = (v10 + 1);
      }

      while (v41 != v10);
      v9 = [NSHashTable countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
    }

    while (v9);
  }

  else
  {
    v42 = 0;
  }

  v29 = v43;
  v30 = atomic_load(&v43->_throttled);

  objc_sync_exit(v29);
  if ((v30 & 1) != 0 || ((v30 | v42 ^ 1) & 1) == 0)
  {
    v31 = v43;
    [(CMContinuityCaptureFrameRateManager *)v43 willChangeValueForKey:v32];
    atomic_store(v42 & 1, &v43->_throttled);
    [(CMContinuityCaptureFrameRateManager *)v31 didChangeValueForKey:?];
  }
}

- (void)reportStreamStatus:(BOOL)status forDevice:(id)device
{
  statusCopy = status;
  deviceCopy = device;
  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    activeConfiguration = [deviceCopy activeConfiguration];
    v9 = CMContinuityCaptureStringForEntity([activeConfiguration entity]);
    v21 = 138543874;
    selfCopy = self;
    v23 = 1024;
    v24 = statusCopy;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ report stream status %d for device %@", &v21, 0x1Cu);
  }

  videoDevice = [deviceCopy videoDevice];

  if (!videoDevice)
  {
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureFrameRateManager reportStreamStatus:v11 forDevice:?];
    }
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  activeStreamingDevices = selfCopy2->_activeStreamingDevices;
  if (statusCopy)
  {
    [(NSHashTable *)activeStreamingDevices addObject:?];
    clientRequestedFrameRateRangeForDevice = selfCopy2->_clientRequestedFrameRateRangeForDevice;
    activeConfiguration2 = [deviceCopy activeConfiguration];
    [activeConfiguration2 minFrameRate];
    activeConfiguration3 = [deviceCopy activeConfiguration];
    [activeConfiguration3 maxFrameRate];
    activeConfiguration5 = [CMContinuityCaptureFrameRateRange frameRateRangeWithMinRate:"frameRateRangeWithMinRate:maxFrameRate:" maxFrameRate:?];
    [NSMapTable setObject:"setObject:forKey:" forKey:?];
  }

  else
  {
    [(NSHashTable *)activeStreamingDevices removeObject:?];
    v18 = [(NSMapTable *)selfCopy2->_clientRequestedFrameRateRangeForDevice objectForKey:?];
    activeConfiguration2 = v18;
    if (!v18)
    {
      goto LABEL_12;
    }

    maxFrameRate = [v18 maxFrameRate];
    [maxFrameRate unsignedIntValue];
    activeConfiguration4 = [deviceCopy activeConfiguration];
    [activeConfiguration4 setMaxFrameRate:?];

    activeConfiguration3 = [activeConfiguration2 minFrameRate];
    [activeConfiguration3 unsignedIntValue];
    activeConfiguration5 = [deviceCopy activeConfiguration];
    [activeConfiguration5 setMinFrameRate:?];
  }

LABEL_12:
  if (![(NSHashTable *)selfCopy2->_activeStreamingDevices count])
  {
    selfCopy2->_currentThermalLevel = 1;
    selfCopy2->_throttledDeskCamMultipleCamerasInUse = 0;
  }

  objc_sync_exit(selfCopy2);

  if ([(NSHashTable *)selfCopy2->_activeStreamingDevices count])
  {
    [(CMContinuityCaptureFrameRateManager *)selfCopy2 updateAllowedFPS];
  }
}

- (void)reportStreamStatus:(uint64_t)a1 forDevice:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_242545000, a2, OS_LOG_TYPE_ERROR, "%{public}@ reportStreamStatus called but no videoDevice exists for device", &v2, 0xCu);
}

@end