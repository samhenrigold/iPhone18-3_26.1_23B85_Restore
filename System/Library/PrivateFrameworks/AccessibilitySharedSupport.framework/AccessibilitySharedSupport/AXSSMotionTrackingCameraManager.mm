@interface AXSSMotionTrackingCameraManager
+ (id)_sortedAndFilteredCaptureDevicesFromDevices:(id)devices;
- (AVCaptureDevice)defaultCaptureDevice;
- (AXSSMotionTrackingCameraManager)init;
- (AXSSMotionTrackingCameraManagerDelegate)delegate;
- (NSArray)allCaptureDevices;
- (NSArray)compatibleCaptureDevices;
- (void)_allCaptureDevicesChanged:(id)changed;
- (void)_captureDeviceConnected:(id)connected;
- (void)_captureDeviceDisconnected:(id)disconnected;
- (void)_captureDeviceUpdated;
- (void)_resetDiscoverySession;
- (void)_startDiscoverySession;
- (void)_stopDiscoverySession;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation AXSSMotionTrackingCameraManager

- (AXSSMotionTrackingCameraManager)init
{
  v8.receiver = self;
  v8.super_class = AXSSMotionTrackingCameraManager;
  v2 = [(AXSSMotionTrackingCameraManager *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    compatibleCaptureDevices = v2->__compatibleCaptureDevices;
    v2->__compatibleCaptureDevices = array;

    array2 = [MEMORY[0x1E695DF70] array];
    allCaptureDevices = v2->__allCaptureDevices;
    v2->__allCaptureDevices = array2;
  }

  return v2;
}

- (void)dealloc
{
  if (self->__monitoring)
  {
    allCaptureDevices = self->__allCaptureDevices;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__AXSSMotionTrackingCameraManager_dealloc__block_invoke;
    v12[3] = &unk_1E8135558;
    v12[4] = self;
    [(NSMutableArray *)allCaptureDevices enumerateObjectsUsingBlock:v12];
    captureDeviceDiscoverySession = self->__captureDeviceDiscoverySession;
    v5 = NSStringFromSelector(sel_devices);
    [(AVCaptureDeviceDiscoverySession *)captureDeviceDiscoverySession removeObserver:self forKeyPath:v5 context:kCaptureDeviceDiscoverySessionKVOContext];

    v6 = NSStringFromSelector(sel_allCaptureDevices);
    [(AXSSMotionTrackingCameraManager *)self removeObserver:self forKeyPath:v6 context:kAllCaptureDevicesKVOContext];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = getAVCaptureDeviceWasConnectedNotification();
    [defaultCenter removeObserver:self name:v8 object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = getAVCaptureDeviceWasDisconnectedNotification();
    [defaultCenter2 removeObserver:self name:v10 object:0];
  }

  v11.receiver = self;
  v11.super_class = AXSSMotionTrackingCameraManager;
  [(AXSSMotionTrackingCameraManager *)&v11 dealloc];
}

- (void)startMonitoring
{
  _captureDeviceDiscoverySession = [self _captureDeviceDiscoverySession];
  [MEMORY[0x1E696AF00] isMainThread];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)stopMonitoring
{
  _captureDeviceDiscoverySession = [self _captureDeviceDiscoverySession];
  [MEMORY[0x1E696AF00] isMainThread];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void __49__AXSSMotionTrackingCameraManager_stopMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD88];
  v4 = a2;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:*(a1 + 32) name:v4 object:0];
}

- (NSArray)compatibleCaptureDevices
{
  _compatibleCaptureDevices = [(AXSSMotionTrackingCameraManager *)self _compatibleCaptureDevices];
  v3 = [_compatibleCaptureDevices copy];

  return v3;
}

- (NSArray)allCaptureDevices
{
  _allCaptureDevices = [(AXSSMotionTrackingCameraManager *)self _allCaptureDevices];
  v3 = [_allCaptureDevices copy];

  return v3;
}

- (AVCaptureDevice)defaultCaptureDevice
{
  AVCaptureDeviceClass = getAVCaptureDeviceClass();
  v4 = getAVMediaTypeVideo();
  v5 = [AVCaptureDeviceClass defaultDeviceWithMediaType:v4];

  if (v5 && (-[AXSSMotionTrackingCameraManager _compatibleCaptureDevices](self, "_compatibleCaptureDevices"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 containsObject:v5], v6, v7))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (kCaptureDeviceDiscoverySessionKVOContext == context)
  {
    v13 = AXSSLogForCategory(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [AXSSMotionTrackingCameraManager observeValueForKeyPath:ofObject:change:context:];
    }

    goto LABEL_15;
  }

  if (kAllCaptureDevicesKVOContext != context)
  {
    if (kCaptureDeviceSuspendedKVOContext == context)
    {
      v13 = AXSSLogForCategory(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [AXSSMotionTrackingCameraManager observeValueForKeyPath:ofObject:change:context:];
      }
    }

    else
    {
      if (kCaptureDeviceConnectedKVOContext != context)
      {
        v15.receiver = self;
        v15.super_class = AXSSMotionTrackingCameraManager;
        [(AXSSMotionTrackingCameraManager *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
        goto LABEL_16;
      }

      v13 = AXSSLogForCategory(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [AXSSMotionTrackingCameraManager observeValueForKeyPath:ofObject:change:context:];
      }
    }

LABEL_15:

    [(AXSSMotionTrackingCameraManager *)self _captureDeviceUpdated];
    goto LABEL_16;
  }

  v14 = AXSSLogForCategory(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [AXSSMotionTrackingCameraManager observeValueForKeyPath:ofObject:change:context:];
  }

  [(AXSSMotionTrackingCameraManager *)self _allCaptureDevicesChanged:changeCopy];
LABEL_16:
}

+ (id)_sortedAndFilteredCaptureDevicesFromDevices:(id)devices
{
  v3 = MEMORY[0x1E696AE18];
  devicesCopy = devices;
  v5 = [v3 predicateWithBlock:&__block_literal_global_13];
  v6 = [devicesCopy filteredArrayUsingPredicate:v5];

  if ([v6 count] > 1)
  {
    if (_sortedAndFilteredCaptureDevicesFromDevices__onceToken != -1)
    {
      +[AXSSMotionTrackingCameraManager _sortedAndFilteredCaptureDevicesFromDevices:];
    }

    AVCaptureDeviceClass = getAVCaptureDeviceClass();
    v9 = getAVMediaTypeVideo();
    v10 = [AVCaptureDeviceClass defaultDeviceWithMediaType:v9];

    v11 = [v6 mutableCopy];
    v12 = [v6 copy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__AXSSMotionTrackingCameraManager__sortedAndFilteredCaptureDevicesFromDevices___block_invoke_30;
    v15[3] = &unk_1E8135B30;
    v16 = v12;
    v13 = v12;
    [v11 sortUsingComparator:v15];
    v7 = [v11 copy];
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

uint64_t __79__AXSSMotionTrackingCameraManager__sortedAndFilteredCaptureDevicesFromDevices___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = getAVMediaTypeVideo();
  if ([v4 hasMediaType:v6])
  {
    v7 = 1;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v8 = getAVMediaTypeMetadataObjectSymbolLoc_ptr_0;
    v15 = getAVMediaTypeMetadataObjectSymbolLoc_ptr_0;
    if (!getAVMediaTypeMetadataObjectSymbolLoc_ptr_0)
    {
      v9 = AVFoundationLibrary_0();
      v13[3] = dlsym(v9, "AVMediaTypeMetadataObject");
      getAVMediaTypeMetadataObjectSymbolLoc_ptr_0 = v13[3];
      v8 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v8)
    {
      v11 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
      _Block_object_dispose(&v12, 8);
      _Unwind_Resume(v11);
    }

    v7 = [v4 hasMediaType:*v8];
  }

  return v7;
}

void __79__AXSSMotionTrackingCameraManager__sortedAndFilteredCaptureDevicesFromDevices___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = getAVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera(a1, a2, a3, a4);
  v30[0] = v4;
  v8 = getAVCaptureDeviceTypeBuiltInWideAngleMetadataCamera(v4, v5, v6, v7);
  v30[1] = v8;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v9 = getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_ptr;
  v29 = getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_ptr;
  if (!getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_ptr)
  {
    v10 = AVFoundationLibrary_0();
    v27[3] = dlsym(v10, "AVCaptureDeviceTypeBuiltInDualCamera");
    getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_ptr = v27[3];
    v9 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v9)
  {
    goto LABEL_11;
  }

  v11 = *v9;
  v30[2] = v11;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v12 = getAVCaptureDeviceTypeBuiltInTelephotoCameraSymbolLoc_ptr;
  v29 = getAVCaptureDeviceTypeBuiltInTelephotoCameraSymbolLoc_ptr;
  if (!getAVCaptureDeviceTypeBuiltInTelephotoCameraSymbolLoc_ptr)
  {
    v13 = AVFoundationLibrary_0();
    v27[3] = dlsym(v13, "AVCaptureDeviceTypeBuiltInTelephotoCamera");
    getAVCaptureDeviceTypeBuiltInTelephotoCameraSymbolLoc_ptr = v27[3];
    v12 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v12)
  {
    goto LABEL_11;
  }

  v14 = *v12;
  v30[3] = v14;
  v18 = getAVCaptureDeviceTypeBuiltInWideAngleCamera(v14, v15, v16, v17);
  v30[4] = v18;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v19 = getAVCaptureDeviceTypeBuiltInUltraWideCameraSymbolLoc_ptr;
  v29 = getAVCaptureDeviceTypeBuiltInUltraWideCameraSymbolLoc_ptr;
  if (!getAVCaptureDeviceTypeBuiltInUltraWideCameraSymbolLoc_ptr)
  {
    v20 = AVFoundationLibrary_0();
    v27[3] = dlsym(v20, "AVCaptureDeviceTypeBuiltInUltraWideCamera");
    getAVCaptureDeviceTypeBuiltInUltraWideCameraSymbolLoc_ptr = v27[3];
    v19 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v19)
  {
LABEL_11:
    +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    __break(1u);
  }

  v31 = *v19;
  v21 = MEMORY[0x1E695DEC8];
  v22 = v31;
  v23 = [v21 arrayWithObjects:v30 count:6];
  v24 = _sortedAndFilteredCaptureDevicesFromDevices__s_orderedDeviceTypes;
  _sortedAndFilteredCaptureDevicesFromDevices__s_orderedDeviceTypes = v23;

  v25 = _sortedAndFilteredCaptureDevicesFromDevices__s_orderedPositions;
  _sortedAndFilteredCaptureDevicesFromDevices__s_orderedPositions = &unk_1F4066678;
}

uint64_t __79__AXSSMotionTrackingCameraManager__sortedAndFilteredCaptureDevicesFromDevices___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6 && ([v5 isEqual:v6] & 1) != 0)
  {
    goto LABEL_27;
  }

  v8 = [v5 deviceType];
  if (!v8)
  {
LABEL_13:
    v23 = [v5 position];
    if (v23 != [v7 position])
    {
      v24 = _sortedAndFilteredCaptureDevicesFromDevices__s_orderedPositions;
      v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "position")}];
      if ([v24 containsObject:v25])
      {
        v26 = _sortedAndFilteredCaptureDevicesFromDevices__s_orderedPositions;
        v27 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "position")}];
        LODWORD(v26) = [v26 containsObject:v27];

        if (v26)
        {
          v28 = _sortedAndFilteredCaptureDevicesFromDevices__s_orderedPositions;
          v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "position")}];
          v20 = [v28 indexOfObject:v19];
          v21 = _sortedAndFilteredCaptureDevicesFromDevices__s_orderedPositions;
          v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "position")}];
          goto LABEL_17;
        }
      }

      else
      {
      }
    }

    if ([*(a1 + 32) containsObject:v5] && objc_msgSend(*(a1 + 32), "containsObject:", v7))
    {
      v31 = [*(a1 + 32) indexOfObject:v7];
      if (v31 > [*(a1 + 32) indexOfObject:v5])
      {
        v30 = -1;
      }

      else
      {
        v30 = 1;
      }

      goto LABEL_28;
    }

LABEL_27:
    v30 = 0;
    goto LABEL_28;
  }

  v9 = v8;
  v10 = [v7 deviceType];
  if (!v10)
  {
LABEL_12:

    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v5 deviceType];
  v13 = [v7 deviceType];
  if ([v12 isEqualToString:v13])
  {
LABEL_11:

    goto LABEL_12;
  }

  v14 = _sortedAndFilteredCaptureDevicesFromDevices__s_orderedDeviceTypes;
  v15 = [v5 deviceType];
  if (![v14 containsObject:v15])
  {

    goto LABEL_11;
  }

  v16 = _sortedAndFilteredCaptureDevicesFromDevices__s_orderedDeviceTypes;
  v17 = [v7 deviceType];
  LODWORD(v16) = [v16 containsObject:v17];

  if (!v16)
  {
    goto LABEL_13;
  }

  v18 = _sortedAndFilteredCaptureDevicesFromDevices__s_orderedDeviceTypes;
  v19 = [v7 deviceType];
  v20 = [v18 indexOfObject:v19];
  v21 = _sortedAndFilteredCaptureDevicesFromDevices__s_orderedDeviceTypes;
  v22 = [v5 deviceType];
LABEL_17:
  v29 = v22;
  if (v20 > [v21 indexOfObject:v22])
  {
    v30 = -1;
  }

  else
  {
    v30 = 1;
  }

LABEL_28:
  return v30;
}

- (void)_captureDeviceUpdated
{
  _compatibleCaptureDevices = [self _compatibleCaptureDevices];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __56__AXSSMotionTrackingCameraManager__captureDeviceUpdated__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) addObject:v3];
  if ((*(a1 + 48) - 1) > 1)
  {
    if ([v3 isConnected])
    {
      [*(a1 + 40) addObject:v3];
    }

    else
    {
      v6 = AXSSLogForCategory(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v3;
        _os_log_impl(&dword_1C0E8A000, v6, OS_LOG_TYPE_INFO, "AXSSMotionTrackingCameraManager: Skipping device %@ because it is not connected!", &v7, 0xCu);
      }
    }
  }

  else
  {
    v4 = AXSSLogForCategory(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 48);
      v7 = 138412546;
      v8 = v3;
      v9 = 2048;
      v10 = v5;
      _os_log_impl(&dword_1C0E8A000, v4, OS_LOG_TYPE_INFO, "AXSSMotionTrackingCameraManager: Skipping device %@ due to authorization status: %ld", &v7, 0x16u);
    }
  }
}

- (void)_allCaptureDevicesChanged:(id)changed
{
  v4 = *MEMORY[0x1E696A500];
  changedCopy = changed;
  v6 = [changedCopy objectForKeyedSubscript:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__AXSSMotionTrackingCameraManager__allCaptureDevicesChanged___block_invoke;
  v9[3] = &unk_1E8135558;
  v9[4] = self;
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = [changedCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__AXSSMotionTrackingCameraManager__allCaptureDevicesChanged___block_invoke_2;
  v8[3] = &unk_1E8135558;
  v8[4] = self;
  [v7 enumerateObjectsUsingBlock:v8];
}

- (void)_startDiscoverySession
{
  _captureDeviceDiscoverySession = [self _captureDeviceDiscoverySession];
  [MEMORY[0x1E696AF00] isMainThread];
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

- (void)_stopDiscoverySession
{
  _captureDeviceDiscoverySession = [self _captureDeviceDiscoverySession];
  [MEMORY[0x1E696AF00] isMainThread];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)_resetDiscoverySession
{
  _captureDeviceDiscoverySession = [(AXSSMotionTrackingCameraManager *)self _captureDeviceDiscoverySession];

  if (_captureDeviceDiscoverySession)
  {
    [(AXSSMotionTrackingCameraManager *)self _stopDiscoverySession];
    [(AXSSMotionTrackingCameraManager *)self _startDiscoverySession];

    [(AXSSMotionTrackingCameraManager *)self _captureDeviceUpdated];
  }
}

- (void)_captureDeviceConnected:(id)connected
{
  connectedCopy = connected;
  v5 = AXSSLogForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSSMotionTrackingCameraManager _captureDeviceConnected:];
  }

  [(AXSSMotionTrackingCameraManager *)self _resetDiscoverySession];
  [(AXSSMotionTrackingCameraManager *)self _captureDeviceUpdated];
}

- (void)_captureDeviceDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  v5 = AXSSLogForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSSMotionTrackingCameraManager _captureDeviceDisconnected:];
  }

  [(AXSSMotionTrackingCameraManager *)self _resetDiscoverySession];
  [(AXSSMotionTrackingCameraManager *)self _captureDeviceUpdated];
}

- (AXSSMotionTrackingCameraManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end