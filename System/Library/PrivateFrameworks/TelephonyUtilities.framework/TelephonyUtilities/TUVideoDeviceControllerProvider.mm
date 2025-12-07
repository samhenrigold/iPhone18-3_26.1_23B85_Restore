@interface TUVideoDeviceControllerProvider
+ (void)prewarm;
- (BOOL)hasAvailableDeskViewCameras;
- (BOOL)isBackgroundReplacementEnabled;
- (BOOL)isCameraBlurEnabled;
- (BOOL)isCinematicFramingEnabled;
- (BOOL)isPreviewRunning;
- (BOOL)isReactionEffectGestureEnabled;
- (BOOL)isStudioLightEnabled;
- (BOOL)supportsCameraBlurForDevice:(id)device;
- (NSArray)availableVideoEffects;
- (NSArray)inputDevices;
- (NSString)localCameraUID;
- (TUVideoDeviceControllerProvider)init;
- (TUVideoDeviceControllerProviderDelegate)delegate;
- (VideoAttributes)localVideoAttributes;
- (id)localScreenAttributesForVideoAttributes:(id)attributes;
- (id)localVideoLayer:(BOOL)layer;
- (id)queryAVCaptureDeviceWithType:(id)type mediaType:(id)mediaType position:(int64_t)position;
- (id)thumbnailImageForVideoEffectName:(id)name;
- (int64_t)currentBackgroundBlurControlMode;
- (void)beginPIPToPreviewAnimation;
- (void)beginPreviewToPIPAnimation;
- (void)cameraCinematicFramingAvailabilityDidChange:(BOOL)change;
- (void)cameraDidBecomeAvailableForUniqueID:(id)d;
- (void)cameraDidBecomeInterruptedForForUniqueID:(id)d reason:(int64_t)reason;
- (void)cameraZoomAvailabilityDidChange:(BOOL)change;
- (void)captureDevicesChanged:(id)changed;
- (void)centerStageAvailableChangedNotification:(id)notification;
- (void)dealloc;
- (void)didChangeLocalCameraUID:(id)d;
- (void)didChangeLocalVideoAttributes:(id)attributes;
- (void)didDetectSensitiveContentWithAnalysis:(id)analysis;
- (void)didGetSnapshot:(id)snapshot;
- (void)didPausePreview;
- (void)didReceiveErrorFromCameraUniqueID:(id)d error:(id)error;
- (void)didReceiveFirstPreviewFrameFromCameraUniqueID:(id)d;
- (void)didStartPreview;
- (void)didStopPreview;
- (void)endPIPToPreviewAnimation;
- (void)endPreviewToPIPAnimation;
- (void)getSnapshot;
- (void)notifyCenterStageEnabled:(BOOL)enabled;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pausePreview;
- (void)queryAVCaptureDeviceIfNeeded;
- (void)rampCameraZoomFactor:(double)factor withRate:(double)rate;
- (void)setBackgroundReplacementEnabled:(BOOL)enabled;
- (void)setCameraBlurEnabled:(BOOL)enabled;
- (void)setCameraZoomFactor:(double)factor;
- (void)setCinematicFramingEnabled:(BOOL)enabled;
- (void)setCurrentBackgroundBlurControlMode:(int64_t)mode;
- (void)setCurrentVideoEffect:(id)effect;
- (void)setLocalCameraWithUID:(id)d;
- (void)setLocalScreenAttributes:(id)attributes;
- (void)setLocalVideoAttributes:(id)attributes;
- (void)setLocalVideoLayer:(id)layer front:(BOOL)front;
- (void)setLocalVideoLayerHost:(id)host front:(BOOL)front;
- (void)setReactionEffectGestureEnabled:(BOOL)enabled;
- (void)setStudioLightEnabled:(BOOL)enabled;
- (void)startPreview;
- (void)stopPreview;
@end

@implementation TUVideoDeviceControllerProvider

+ (void)prewarm
{
  v2 = dispatch_get_global_queue(21, 0);
  dispatch_async(v2, &__block_literal_global_79);
}

void __42__TUVideoDeviceControllerProvider_prewarm__block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__pred__AVMediaTypeVideo != -1)
  {
    __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_cold_1();
  }

  v0 = CUTWeakLinkClass();
  if (TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__pred__AVCaptureDeviceTypeBuiltInTrueDepthCamera != -1)
  {
    __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_cold_2();
  }

  if (TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__pred__AVCaptureDeviceTypeBuiltInWideAngleCamera != -1)
  {
    __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_cold_3();
  }

  if (TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__pred__AVCaptureDeviceTypeBuiltInDualCamera != -1)
  {
    __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_cold_4();
  }

  v6[0] = TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v2 = [v0 discoverySessionWithDeviceTypes:v1 mediaType:TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVMediaTypeVideo position:2];

  v5 = TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVCaptureDeviceTypeBuiltInWideAngleCamera;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1];
  v4 = [v0 discoverySessionWithDeviceTypes:v3 mediaType:TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVMediaTypeVideo position:2];
}

- (TUVideoDeviceControllerProvider)init
{
  v12.receiver = self;
  v12.super_class = TUVideoDeviceControllerProvider;
  v2 = [(TUVideoDeviceControllerProvider *)&v12 init];
  if (v2)
  {
    aVConferencePreviewSingleton = [CUTWeakLinkClass() AVConferencePreviewSingleton];
    preview = v2->_preview;
    v2->_preview = aVConferencePreviewSingleton;

    [(AVConferencePreview *)v2->_preview setDelegate:v2];
    if (init__pred__AVCaptureDeviceWasConnectedNotification != -1)
    {
      [TUVideoDeviceControllerProvider init];
    }

    if (init__pred__AVCaptureDeviceWasDisconnectedNotification != -1)
    {
      [TUVideoDeviceControllerProvider init];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_captureDevicesChanged_ name:init__AVCaptureDeviceWasConnectedNotification object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_captureDevicesChanged_ name:init__AVCaptureDeviceWasDisconnectedNotification object:0];

    if (init__pred__AVControlCenterVideoEffectsUnavailableReasonsDidChangeNotification != -1)
    {
      [TUVideoDeviceControllerProvider init];
    }

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_centerStageAvailableChangedNotification_ name:init__AVControlCenterVideoEffectsUnavailableReasonsDidChangeNotification object:0];

    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__TUVideoDeviceControllerProvider_init__block_invoke_4;
    block[3] = &unk_1E7424950;
    v11 = v2;
    dispatch_async(v8, block);
  }

  return v2;
}

void __39__TUVideoDeviceControllerProvider_init__block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&init__AVCaptureDeviceWasConnectedNotification, v1);
}

- (NSString)localCameraUID
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  localCameraUID = [preview localCameraUID];

  return localCameraUID;
}

- (NSArray)inputDevices
{
  v68[2] = *MEMORY[0x1E69E9840];
  if (self->_cachedInputDevices)
  {
    v3 = TUDefaultLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      cachedInputDevices = self->_cachedInputDevices;
      *buf = 138412290;
      v62 = cachedInputDevices;
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "_cachedInputDevices = %@", buf, 0xCu);
    }

    v5 = self->_cachedInputDevices;
    goto LABEL_74;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (inputDevices__pred__AVMediaTypeVideo != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  CUTWeakLinkClass();
  v7 = CUTWeakLinkClass();
  if (inputDevices__pred__AVCaptureDeviceTypeBuiltInUltraWideCamera != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  if (inputDevices__pred__AVCaptureDeviceTypeBuiltInTrueDepthCamera != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  if (inputDevices__pred__AVCaptureDeviceTypeBuiltInWideAngleCamera != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  if (inputDevices__pred__AVCaptureDeviceTypeBuiltInTripleCamera != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  if (inputDevices__pred__AVCaptureDeviceTypeBuiltInDualWideCamera != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  if (inputDevices__pred__AVCaptureDeviceTypeBuiltInDualCamera != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  if (inputDevices__pred_AVCaptureDeviceTypeBuiltInUltraWideCamera != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  if (inputDevices__pred__AVCaptureDeviceTypeExternal != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  v8 = objc_alloc_init(TUFeatureFlags);
  v68[0] = inputDevices__AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  v68[1] = inputDevices__AVCaptureDeviceTypeBuiltInWideAngleCamera;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
  v67[0] = inputDevices__AVCaptureDeviceTypeBuiltInTripleCamera;
  v67[1] = inputDevices__AVCaptureDeviceTypeBuiltInDualWideCamera;
  v67[2] = inputDevices__AVCaptureDeviceTypeBuiltInDualCamera;
  v67[3] = inputDevices__AVCaptureDeviceTypeBuiltInWideAngleCamera;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:4];
  v51 = v8;
  wombatWisdomEnabled = [(TUFeatureFlags *)v8 wombatWisdomEnabled];
  if (wombatWisdomEnabled && ([MEMORY[0x1E699BE70] sharedInstance], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "deviceType"), v11, v12 != 2) && (objc_msgSend(v7, "systemPreferredCamera"), (wombatWisdomEnabled = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = wombatWisdomEnabled;
    v14 = 0;
  }

  else
  {
    v15 = TUDefaultLog(wombatWisdomEnabled);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "Didn't find a system-preferred camera", buf, 2u);
    }

    v13 = 0;
    v14 = 1;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  deviceType = [mEMORY[0x1E699BE70] deviceType];

  if ((v14 & 1) == 0)
  {
    position = [v13 position];
    if (position == 2 || ([v13 deviceType], v19 = objc_claimAutoreleasedReturnValue(), v20 = inputDevices__AVCaptureDeviceTypeExternal, v19, v19 == v20))
    {
      v22 = TUDefaultLog(position);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = [v13 uniqueID];
        *buf = 138412290;
        v62 = uniqueID;
        _os_log_impl(&dword_1956FD000, v22, OS_LOG_TYPE_DEFAULT, "Found a system-preferred camera, using it as the front capture device: %@", buf, 0xCu);
      }

      v21 = v13;
LABEL_38:
      v24 = v21;
      if (v21)
      {
        goto LABEL_50;
      }

      goto LABEL_39;
    }
  }

  if (deviceType == 2)
  {
    v21 = [(TUVideoDeviceControllerProvider *)self queryAVCaptureDeviceWithType:inputDevices__AVCaptureDeviceTypeBuiltInUltraWideCamera mediaType:inputDevices__AVMediaTypeVideo position:2];
    goto LABEL_38;
  }

LABEL_39:
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v25 = v52;
  v26 = [v25 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v58;
    while (2)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v58 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [(TUVideoDeviceControllerProvider *)self queryAVCaptureDeviceWithType:*(*(&v57 + 1) + 8 * i) mediaType:inputDevices__AVMediaTypeVideo position:2];
        if (v30)
        {
          v24 = v30;
          goto LABEL_49;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_49:

LABEL_50:
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v31 = v9;
  v32 = [v31 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v54;
    while (2)
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v54 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [(TUVideoDeviceControllerProvider *)self queryAVCaptureDeviceWithType:*(*(&v53 + 1) + 8 * j) mediaType:inputDevices__AVMediaTypeVideo position:1];
        if (v36)
        {
          v37 = v36;
          goto LABEL_60;
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v53 objects:v65 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }
  }

  v37 = 0;
LABEL_60:

  v39 = TUDefaultLog(v38);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID2 = [v24 uniqueID];
    uniqueID3 = [v37 uniqueID];
    *buf = 138412546;
    v62 = uniqueID2;
    v63 = 2112;
    v64 = uniqueID3;
    _os_log_impl(&dword_1956FD000, v39, OS_LOG_TYPE_DEFAULT, "preferredFrontCaptureDevice: %@, preferredBackCaptureDevice: %@", buf, 0x16u);
  }

  if (!v24)
  {
    v45 = TUDefaultLog(v42);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [(TUVideoDeviceControllerProvider *)v45 inputDevices];
    }

    if (v37)
    {
      goto LABEL_64;
    }

LABEL_68:
    v46 = TUDefaultLog(v43);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [(TUVideoDeviceControllerProvider *)v46 inputDevices];
    }

    goto LABEL_71;
  }

  v43 = [(NSArray *)array addObject:v24];
  if (!v37)
  {
    goto LABEL_68;
  }

LABEL_64:
  v44 = [(NSArray *)array addObject:v37];
LABEL_71:
  self->_isAVCaptureDeviceReady = 1;
  v47 = TUDefaultLog(v44);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = array;
    _os_log_impl(&dword_1956FD000, v47, OS_LOG_TYPE_DEFAULT, "inputDevices = %@", buf, 0xCu);
  }

  v48 = [(NSArray *)array copy];
  v49 = self->_cachedInputDevices;
  self->_cachedInputDevices = v48;

  v5 = self->_cachedInputDevices;
LABEL_74:

  return v5;
}

- (VideoAttributes)localVideoAttributes
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  localVideoAttributes = [preview localVideoAttributes];

  return localVideoAttributes;
}

- (TUVideoDeviceControllerProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __39__TUVideoDeviceControllerProvider_init__block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&init__AVCaptureDeviceWasDisconnectedNotification, v1);
}

void __39__TUVideoDeviceControllerProvider_init__block_invoke_3()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&init__AVControlCenterVideoEffectsUnavailableReasonsDidChangeNotification, v1);
}

uint64_t __39__TUVideoDeviceControllerProvider_init__block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = CUTWeakLinkClass();
  v3 = TUDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v2;
    v10 = 2112;
    v11 = @"backgroundBlurEnabled";
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Adding observer to %@ for key path %@", &v8, 0x16u);
  }

  [v2 addObserver:*(a1 + 32) forKeyPath:@"backgroundBlurEnabled" options:1 context:&TUVideoDeviceControllerProviderKeyValueObserverContext];
  v4 = TUDefaultLog([v2 addObserver:*(a1 + 32) forKeyPath:@"systemPreferredCamera" options:1 context:&TUVideoDeviceControllerProviderKeyValueObserverContext]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v2;
    v10 = 2112;
    v11 = @"centerStageEnabled";
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Adding observer to %@ for key path %@", &v8, 0x16u);
  }

  [v2 addObserver:*(a1 + 32) forKeyPath:@"centerStageEnabled" options:1 context:&TUVideoDeviceControllerProviderKeyValueObserverContext];
  v5 = TUDefaultLog([v2 addObserver:*(a1 + 32) forKeyPath:@"backgroundReplacementEnabled" options:1 context:&TUVideoDeviceControllerProviderKeyValueObserverContext]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v2;
    v10 = 2112;
    v11 = @"reactionEffectGesturesEnabled";
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Adding observer to %@ for key path %@", &v8, 0x16u);
  }

  v6 = TUDefaultLog([v2 addObserver:*(a1 + 32) forKeyPath:@"reactionEffectGesturesEnabled" options:1 context:&TUVideoDeviceControllerProviderKeyValueObserverContext]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v2;
    v10 = 2112;
    v11 = @"studioLightingEnabled";
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Adding observer to %@ for key path %@", &v8, 0x16u);
  }

  return [v2 addObserver:*(a1 + 32) forKeyPath:@"studioLightingEnabled" options:1 context:&TUVideoDeviceControllerProviderKeyValueObserverContext];
}

- (void)dealloc
{
  v3 = CUTWeakLinkClass();
  [v3 removeObserver:self forKeyPath:@"backgroundBlurEnabled"];
  [v3 removeObserver:self forKeyPath:@"backgroundReplacementEnabled"];
  [v3 removeObserver:self forKeyPath:@"systemPreferredCamera"];
  [v3 removeObserver:self forKeyPath:@"centerStageEnabled"];
  [v3 removeObserver:self forKeyPath:@"reactionEffectGesturesEnabled"];
  [v3 removeObserver:self forKeyPath:@"studioLightingEnabled"];
  v4.receiver = self;
  v4.super_class = TUVideoDeviceControllerProvider;
  [(TUVideoDeviceControllerProvider *)&v4 dealloc];
}

- (BOOL)isPreviewRunning
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  isPreviewRunning = [preview isPreviewRunning];

  return isPreviewRunning;
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVMediaTypeVideo, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVCaptureDeviceTypeBuiltInUltraWideCamera, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_3()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVCaptureDeviceTypeBuiltInTrueDepthCamera, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_4()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVCaptureDeviceTypeBuiltInWideAngleCamera, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_5()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVCaptureDeviceTypeBuiltInTripleCamera, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_6()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVCaptureDeviceTypeBuiltInDualWideCamera, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_7()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVCaptureDeviceTypeBuiltInDualCamera, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_8()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices_AVCaptureDeviceTypeBuiltInUltraWideCamera, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_9()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVCaptureDeviceTypeExternal, v1);
}

- (id)queryAVCaptureDeviceWithType:(id)type mediaType:(id)mediaType position:(int64_t)position
{
  v15[1] = *MEMORY[0x1E69E9840];
  mediaTypeCopy = mediaType;
  typeCopy = type;
  v9 = CUTWeakLinkClass();
  v15[0] = typeCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  v11 = [v9 discoverySessionWithDeviceTypes:v10 mediaType:mediaTypeCopy position:position];

  devices = [v11 devices];
  firstObject = [devices firstObject];

  return firstObject;
}

void __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVMediaTypeVideo, v1);
}

void __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_3()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVCaptureDeviceTypeBuiltInTrueDepthCamera, v1);
}

void __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_4()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVCaptureDeviceTypeBuiltInWideAngleCamera, v1);
}

void __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_5()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVCaptureDeviceTypeBuiltInDualCamera, v1);
}

- (void)setLocalVideoAttributes:(id)attributes
{
  attributesCopy = attributes;
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview setLocalVideoAttributes:attributesCopy];
}

- (void)setLocalCameraWithUID:(id)d
{
  dCopy = d;
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview setLocalCameraWithUID:dCopy];
}

- (id)localVideoLayer:(BOOL)layer
{
  layerCopy = layer;
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  v5 = [preview localVideoLayer:layerCopy];

  return v5;
}

- (void)setLocalVideoLayer:(id)layer front:(BOOL)front
{
  frontCopy = front;
  layerCopy = layer;
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview setLocalVideoLayer:layerCopy front:frontCopy];
}

- (void)setLocalVideoLayerHost:(id)host front:(BOOL)front
{
  frontCopy = front;
  hostCopy = host;
  v14 = hostCopy;
  v13 = frontCopy;
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  v8 = NSSelectorFromString(&cfstr_Setlocalvideol.isa);
  if (objc_opt_respondsToSelector())
  {
    v9 = MEMORY[0x1E695DF50];
    v10 = [preview methodSignatureForSelector:v8];
    v11 = [v9 invocationWithMethodSignature:v10];

    [v11 setSelector:v8];
    [v11 setTarget:preview];
    [v11 setArgument:&v14 atIndex:2];
    [v11 setArgument:&v13 atIndex:3];
    [v11 invoke];
  }

  else
  {
    preview2 = [(TUVideoDeviceControllerProvider *)self preview];
    [preview2 setLocalVideoLayer:hostCopy front:frontCopy];
  }
}

- (void)startPreview
{
  [(TUVideoDeviceControllerProvider *)self setCinematicFramingEnabled:[(TUVideoDeviceControllerProvider *)self isCinematicFramingEnabled]];
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview startPreview];
}

- (void)pausePreview
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview pausePreview];
}

- (void)stopPreview
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview stopPreview];
}

- (void)getSnapshot
{
  if ([(TUVideoDeviceControllerProvider *)self isPreviewRunning])
  {
    preview = [(TUVideoDeviceControllerProvider *)self preview];
    [preview getSnapshot];
  }

  else
  {
    preview = [(TUVideoDeviceControllerProvider *)self delegate];
    [preview provider:self didGetSnapshot:0];
  }
}

- (void)queryAVCaptureDeviceIfNeeded
{
  if (!self->_isAVCaptureDeviceReady)
  {
    v3 = CUTWeakLinkClass();
    v4 = v3;
    if (queryAVCaptureDeviceIfNeeded__pred__AVMediaTypeVideo == -1)
    {
      if (!v3)
      {
        return;
      }
    }

    else
    {
      [TUVideoDeviceControllerProvider queryAVCaptureDeviceIfNeeded];
      if (!v4)
      {
        return;
      }
    }

    if (queryAVCaptureDeviceIfNeeded__AVMediaTypeVideo)
    {
      v5 = [v4 devicesWithMediaType:?];
      self->_isAVCaptureDeviceReady = 1;
    }
  }
}

void __63__TUVideoDeviceControllerProvider_queryAVCaptureDeviceIfNeeded__block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&queryAVCaptureDeviceIfNeeded__AVMediaTypeVideo, v1);
}

- (BOOL)isCinematicFramingEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CUTWeakLinkClass();
  isCinematicFramingEnabled = objc_opt_respondsToSelector();
  if (isCinematicFramingEnabled)
  {
    [(TUVideoDeviceControllerProvider *)self queryAVCaptureDeviceIfNeeded];
    isCinematicFramingEnabled = [v3 isCinematicFramingEnabled];
    v5 = isCinematicFramingEnabled;
  }

  else
  {
    v5 = 0;
  }

  v6 = TUDefaultLog(isCinematicFramingEnabled);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Center Stage is enabled: %d", v8, 8u);
  }

  return v5;
}

- (void)setCinematicFramingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = enabledCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Setting center stage to: %d", v7, 8u);
  }

  preview = [(TUVideoDeviceControllerProvider *)self preview];
  if (objc_opt_respondsToSelector())
  {
    [preview setCinematicFramingEnabled:enabledCopy];
  }
}

- (void)notifyCenterStageEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = enabledCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Notifying center stage enabled to: %d", v7, 8u);
  }

  preview = [(TUVideoDeviceControllerProvider *)self preview];
  if (objc_opt_respondsToSelector())
  {
    [preview notifyCenterStageEnabled:enabledCopy];
  }
}

- (BOOL)isReactionEffectGestureEnabled
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CUTWeakLinkClass();
  [(TUVideoDeviceControllerProvider *)self queryAVCaptureDeviceIfNeeded];
  reactionEffectGesturesEnabled = [v3 reactionEffectGesturesEnabled];
  v5 = TUDefaultLog(reactionEffectGesturesEnabled);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = reactionEffectGesturesEnabled;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Reaction Effect Gestures are enabled: %d", v7, 8u);
  }

  return reactionEffectGesturesEnabled;
}

- (void)setReactionEffectGestureEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6 = *MEMORY[0x1E69E9840];
  v4 = TUDefaultLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = enabledCopy;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Setting Reaction Effect Gestures to: %d", v5, 8u);
  }

  [CUTWeakLinkClass() setReactionEffectGesturesEnabled:enabledCopy];
}

- (BOOL)isStudioLightEnabled
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CUTWeakLinkClass();
  [(TUVideoDeviceControllerProvider *)self queryAVCaptureDeviceIfNeeded];
  isStudioLightingEnabled = [v3 isStudioLightingEnabled];
  v5 = TUDefaultLog(isStudioLightingEnabled);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = isStudioLightingEnabled;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Studio Lighting is enabled: %d", v7, 8u);
  }

  return isStudioLightingEnabled;
}

- (void)setStudioLightEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7 = *MEMORY[0x1E69E9840];
  v4 = TUDefaultLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = enabledCopy;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Setting Studio Lighting to: %d", v6, 8u);
  }

  v5 = CUTWeakLinkClass();
  [v5 setStudioLightingControlMode:2];
  [v5 setStudioLightingEnabled:enabledCopy];
}

- (BOOL)supportsCameraBlurForDevice:(id)device
{
  activeFormat = [device activeFormat];
  isBackgroundBlurSupported = [activeFormat isBackgroundBlurSupported];

  return isBackgroundBlurSupported;
}

- (int64_t)currentBackgroundBlurControlMode
{
  v2 = CUTWeakLinkClass();

  return [v2 backgroundBlurControlMode];
}

- (void)setCurrentBackgroundBlurControlMode:(int64_t)mode
{
  v4 = CUTWeakLinkClass();

  [v4 setBackgroundBlurControlMode:mode];
}

- (BOOL)isCameraBlurEnabled
{
  v2 = CUTWeakLinkClass();

  return [v2 isBackgroundBlurEnabled];
}

- (void)setCameraBlurEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8 = *MEMORY[0x1E69E9840];
  v4 = CUTWeakLinkClass();
  backgroundBlurControlMode = [v4 backgroundBlurControlMode];
  if (backgroundBlurControlMode == 2)
  {

    [v4 setBackgroundBlurEnabled:enabledCopy];
  }

  else
  {
    v6 = TUDefaultLog(backgroundBlurControlMode);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = enabledCopy;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "AVCaptureDevice backgroundBlurControlMode is not in supported state. Ignoring to set %d", v7, 8u);
    }
  }
}

- (BOOL)isBackgroundReplacementEnabled
{
  v2 = CUTWeakLinkClass();

  return [v2 isBackgroundReplacementEnabled];
}

- (void)setBackgroundReplacementEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = CUTWeakLinkClass();

  [v4 setBackgroundReplacementEnabled:enabledCopy];
}

- (id)localScreenAttributesForVideoAttributes:(id)attributes
{
  attributesCopy = attributes;
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  v6 = [preview localScreenAttributesForVideoAttributes:attributesCopy];

  return v6;
}

- (void)setLocalScreenAttributes:(id)attributes
{
  attributesCopy = attributes;
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview setLocalScreenAttributes:attributesCopy];
}

- (void)beginPreviewToPIPAnimation
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview beginPreviewToPIPAnimation];
}

- (void)endPreviewToPIPAnimation
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview endPreviewToPIPAnimation];
}

- (void)beginPIPToPreviewAnimation
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview beginPIPToPreviewAnimation];
}

- (void)endPIPToPreviewAnimation
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview endPIPToPreviewAnimation];
}

- (void)rampCameraZoomFactor:(double)factor withRate:(double)rate
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview setCameraZoomFactor:factor withRate:rate];
}

- (void)setCameraZoomFactor:(double)factor
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview setCameraZoomFactor:factor];
}

- (BOOL)hasAvailableDeskViewCameras
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = CUTWeakLinkClass();
  if (hasAvailableDeskViewCameras__pred__AVCaptureDeviceTypeDeskViewCamera != -1)
  {
    [TUVideoDeviceControllerProvider hasAvailableDeskViewCameras];
  }

  if (hasAvailableDeskViewCameras__pred__AVMediaTypeVideo != -1)
  {
    [TUVideoDeviceControllerProvider hasAvailableDeskViewCameras];
  }

  v8[0] = hasAvailableDeskViewCameras__AVCaptureDeviceTypeDeskViewCamera;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v2 discoverySessionWithDeviceTypes:v3 mediaType:hasAvailableDeskViewCameras__AVMediaTypeVideo position:0];

  devices = [v4 devices];
  v6 = [devices count] != 0;

  return v6;
}

void __62__TUVideoDeviceControllerProvider_hasAvailableDeskViewCameras__block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&hasAvailableDeskViewCameras__AVCaptureDeviceTypeDeskViewCamera, v1);
}

void __62__TUVideoDeviceControllerProvider_hasAvailableDeskViewCameras__block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&hasAvailableDeskViewCameras__AVMediaTypeVideo, v1);
}

- (void)didReceiveErrorFromCameraUniqueID:(id)d error:(id)error
{
  errorCopy = error;
  dCopy = d;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self didReceiveErrorFromCameraUniqueID:dCopy error:errorCopy];
}

- (void)cameraDidBecomeAvailableForUniqueID:(id)d
{
  dCopy = d;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self cameraDidBecomeAvailableForUniqueID:dCopy];
}

- (void)didStartPreview
{
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate didStartPreviewForProvider:self];
}

- (void)didReceiveFirstPreviewFrameFromCameraUniqueID:(id)d
{
  dCopy = d;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self didReceiveFirstPreviewFrameFromCameraUniqueID:dCopy];
}

- (void)didChangeLocalCameraUID:(id)d
{
  dCopy = d;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self didChangeLocalCameraUID:dCopy];
}

- (void)didChangeLocalVideoAttributes:(id)attributes
{
  attributesCopy = attributes;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self didChangeLocalVideoAttributes:attributesCopy];
}

- (void)didStopPreview
{
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate didStopPreviewForProvider:self];
}

- (void)didPausePreview
{
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate didPausePreviewForProvider:self];
}

- (void)cameraZoomAvailabilityDidChange:(BOOL)change
{
  changeCopy = change;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self cameraZoomAvailabilityDidChange:changeCopy];
}

- (void)didGetSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self didGetSnapshot:snapshotCopy];
}

- (void)didDetectSensitiveContentWithAnalysis:(id)analysis
{
  analysisCopy = analysis;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self didDetectSensitiveContentWithAnalysis:analysisCopy];
}

- (void)cameraDidBecomeInterruptedForForUniqueID:(id)d reason:(int64_t)reason
{
  dCopy = d;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self cameraDidBecomeInterruptedForForUniqueID:dCopy reason:reason];
}

- (void)cameraCinematicFramingAvailabilityDidChange:(BOOL)change
{
  changeCopy = change;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self cameraCinematicFramingAvailabilityDidChange:changeCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v56 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = TUDefaultLog(changeCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v52 = 138412546;
    v53 = pathCopy;
    v54 = 2112;
    v55 = objectCopy;
    _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "Received a key-value observing notification for key path (%@) object (%@).", &v52, 0x16u);
  }

  if (context == &TUVideoDeviceControllerProviderKeyValueObserverContext)
  {
    delegate = [(TUVideoDeviceControllerProvider *)self delegate];
    v15 = [(__CFString *)pathCopy isEqualToString:@"backgroundBlurEnabled"];
    v16 = MEMORY[0x1E696A4F0];
    if (v15)
    {
      v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      bOOLValue = [v17 BOOLValue];

      v20 = TUDefaultLog(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = @"disabled";
        if (bOOLValue)
        {
          v21 = @"enabled";
        }

        v52 = 138412290;
        v53 = v21;
        _os_log_impl(&dword_1956FD000, v20, OS_LOG_TYPE_DEFAULT, "Camera blur changed to %@", &v52, 0xCu);
      }

      [delegate provider:self cameraBlurEnabledDidChange:bOOLValue];
    }

    if ([(__CFString *)pathCopy isEqualToString:@"userPreferredCamera"])
    {
      v22 = [changeCopy objectForKeyedSubscript:*v16];
      CUTWeakLinkClass();
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        isKindOfClass = [(__CFString *)v22 uniqueID];
        v24 = isKindOfClass;
      }

      else
      {
        v24 = 0;
      }

      v25 = TUDefaultLog(isKindOfClass);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v52 = 138412290;
        v53 = v22;
        _os_log_impl(&dword_1956FD000, v25, OS_LOG_TYPE_DEFAULT, "userPreferredCamera changed to %@", &v52, 0xCu);
      }

      [delegate provider:self userPreferredCameraUIDDidChange:v24];
    }

    if ([(__CFString *)pathCopy isEqualToString:@"systemPreferredCamera"])
    {
      mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
      deviceType = [mEMORY[0x1E699BE70] deviceType];

      if (deviceType != 2)
      {
        v28 = [changeCopy objectForKeyedSubscript:*v16];
        CUTWeakLinkClass();
        objc_opt_class();
        uniqueID = objc_opt_isKindOfClass();
        if (uniqueID)
        {
          uniqueID = [(__CFString *)v28 uniqueID];
          v30 = uniqueID;
        }

        else
        {
          v30 = 0;
        }

        v31 = TUDefaultLog(uniqueID);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v52 = 138412290;
          v53 = v28;
          _os_log_impl(&dword_1956FD000, v31, OS_LOG_TYPE_DEFAULT, "systemPreferredCamera changed to %@", &v52, 0xCu);
        }

        [delegate provider:self systemPreferredCameraUIDDidChange:v30];
      }
    }

    if ([(__CFString *)pathCopy isEqualToString:@"backgroundReplacementEnabled"])
    {
      v32 = [changeCopy objectForKeyedSubscript:*v16];
      bOOLValue2 = [v32 BOOLValue];

      v35 = TUDefaultLog(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = @"disabled";
        if (bOOLValue2)
        {
          v36 = @"enabled";
        }

        v52 = 138412290;
        v53 = v36;
        _os_log_impl(&dword_1956FD000, v35, OS_LOG_TYPE_DEFAULT, "Background replacement changed to %@", &v52, 0xCu);
      }

      [delegate provider:self backgroundReplacementEnabledDidChange:bOOLValue2];
    }

    if ([(__CFString *)pathCopy isEqualToString:@"centerStageEnabled"])
    {
      v37 = [changeCopy objectForKeyedSubscript:*v16];
      bOOLValue3 = [v37 BOOLValue];

      v40 = TUDefaultLog(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = @"disabled";
        if (bOOLValue3)
        {
          v41 = @"enabled";
        }

        v52 = 138412290;
        v53 = v41;
        _os_log_impl(&dword_1956FD000, v40, OS_LOG_TYPE_DEFAULT, "Center Stage changed to %@", &v52, 0xCu);
      }

      [(TUVideoDeviceControllerProvider *)self notifyCenterStageEnabled:bOOLValue3];
      [delegate provider:self cameraCinematicFramingEnabledDidChange:bOOLValue3];
    }

    if ([(__CFString *)pathCopy isEqualToString:@"reactionEffectGesturesEnabled"])
    {
      v42 = [changeCopy objectForKeyedSubscript:*v16];
      bOOLValue4 = [v42 BOOLValue];

      v45 = TUDefaultLog(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = @"disabled";
        if (bOOLValue4)
        {
          v46 = @"enabled";
        }

        v52 = 138412290;
        v53 = v46;
        _os_log_impl(&dword_1956FD000, v45, OS_LOG_TYPE_DEFAULT, "Reaction Effects changed to %@", &v52, 0xCu);
      }

      [delegate provider:self reactionEffectsEnabledDidChange:bOOLValue4];
    }

    if ([(__CFString *)pathCopy isEqualToString:@"studioLightingEnabled"])
    {
      v47 = [changeCopy objectForKeyedSubscript:*v16];
      bOOLValue5 = [v47 BOOLValue];

      v50 = TUDefaultLog(v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = @"disabled";
        if (bOOLValue5)
        {
          v51 = @"enabled";
        }

        v52 = 138412290;
        v53 = v51;
        _os_log_impl(&dword_1956FD000, v50, OS_LOG_TYPE_DEFAULT, "Studio Light changed to %@", &v52, 0xCu);
      }

      [delegate provider:self studioLightEnabledDidChange:bOOLValue5];
    }
  }
}

- (void)setCurrentVideoEffect:(id)effect
{
  effectCopy = effect;
  p_currentVideoEffect = &self->_currentVideoEffect;
  if (self->_currentVideoEffect != effectCopy)
  {
    v9 = effectCopy;
    preview = [(TUVideoDeviceControllerProvider *)self preview];
    name = [(TUVideoEffect *)v9 name];
    [preview setAnimoji:name];

    objc_storeStrong(p_currentVideoEffect, effect);
    effectCopy = v9;
  }
}

- (NSArray)availableVideoEffects
{
  v2 = CUTWeakLinkClass();

  return [v2 animojiNames];
}

- (id)thumbnailImageForVideoEffectName:(id)name
{
  nameCopy = name;
  v4 = [CUTWeakLinkClass() thumbnailForAnimojiNamed:nameCopy options:0];

  return v4;
}

- (void)captureDevicesChanged:(id)changed
{
  [(TUVideoDeviceControllerProvider *)self invalidateInputDevicesCache];
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate captureDevicesChangedForProvider:self];
}

- (void)centerStageAvailableChangedNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E6986B88]];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    unsignedIntegerValue = [v9 unsignedIntegerValue];
    v11 = TUDefaultLog(unsignedIntegerValue);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109120;
      v13[1] = unsignedIntegerValue == 128;
      _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "DockKit tracking changed to %d", v13, 8u);
    }

    delegate = [(TUVideoDeviceControllerProvider *)self delegate];
    [delegate provider:self dockKitTrackingDidChange:unsignedIntegerValue == 128];
  }
}

@end