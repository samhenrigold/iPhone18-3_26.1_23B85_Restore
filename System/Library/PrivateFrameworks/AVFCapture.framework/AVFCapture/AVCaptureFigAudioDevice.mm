@interface AVCaptureFigAudioDevice
+ (id)_devicesWithPriorRegisteredDevices:(id)devices;
+ (id)_newFigCaptureSources;
+ (void)_reconnectDevices:(id)devices;
+ (void)initialize;
- (AVCaptureFigAudioDevice)init;
- (BOOL)_currentAudioInputRouteIsBuiltInMic;
- (BOOL)_systemHasAudioInputDevice;
- (BOOL)isAudioCaptureModeSupported:(int64_t)supported;
- (BOOL)isAudioInputRouteBuiltInMic;
- (BOOL)isBuiltInStereoAudioCaptureSupported;
- (BOOL)isConnected;
- (BOOL)isWindNoiseRemovalSupported;
- (OpaqueCMClock)deviceClock;
- (id)_copyFigCaptureSourceProperty:(__CFString *)property;
- (id)_currentAudioInputDeviceLocalizedName:(id)name;
- (id)_initWithFigCaptureSource:(OpaqueFigCaptureSource *)source;
- (id)clientAudioClockDeviceUID;
- (id)figCaptureSourceAudioSettingsForSessionPreset:(id)preset;
- (id)localizedName;
- (id)preferredIOBufferDuration;
- (int64_t)fallbackAudioCaptureModeIfApplicableForCurrentRoute:(int64_t)route;
- (void)_handleNotification:(__CFString *)notification payload:(id)payload;
- (void)_reconnectToFigCaptureSource:(OpaqueFigCaptureSource *)source;
- (void)_setFigCaptureSource:(OpaqueFigCaptureSource *)source;
- (void)_updateStateForInputDevice:(id)device;
- (void)audioInputDeviceDidChangeHandler:(id)handler;
- (void)audioServicesWereResetHandler:(id)handler;
- (void)dealloc;
- (void)setAllowsBluetoothHighQualityRecording:(BOOL)recording;
@end

@implementation AVCaptureFigAudioDevice

- (id)localizedName
{
  dispatch_group_wait(self->_audioRoutesInfoFirstQueryGroup, 0xFFFFFFFFFFFFFFFFLL);
  os_unfair_lock_lock(&self->_localizedNameLock);
  v3 = self->_localizedName;
  os_unfair_lock_unlock(&self->_localizedNameLock);
  return v3;
}

+ (id)_newFigCaptureSources
{
  if (AVCaptureIsRunningInMediaserverd(self, a2))
  {

    return FigCaptureSourceCopySources();
  }

  else
  {

    return FigCaptureSourceRemoteCopyCaptureSources();
  }
}

- (BOOL)isConnected
{
  dispatch_group_wait(self->_audioRoutesInfoFirstQueryGroup, 0xFFFFFFFFFFFFFFFFLL);
  os_unfair_lock_lock(&self->_isConnectedLock);
  isConnected = self->_isConnected;
  os_unfair_lock_unlock(&self->_isConnectedLock);
  return isConnected;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (OpaqueCMClock)deviceClock
{
  if (!AVCaptureAudiomxdSupportEnabled())
  {
    v4 = [(AVCaptureFigAudioDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990668]];
    if (v4)
    {
      goto LABEL_6;
    }

    return 0;
  }

  sharedAVAudioSessionClock = self->_sharedAVAudioSessionClock;
  if (!sharedAVAudioSessionClock)
  {
    [MEMORY[0x1E6958460] sharedInstance];
    FigAudioSessionClockCreateForAVAudioSession();
    sharedAVAudioSessionClock = self->_sharedAVAudioSessionClock;
    if (!sharedAVAudioSessionClock)
    {
      return 0;
    }
  }

  v4 = CFRetain(sharedAVAudioSessionClock);
LABEL_6:

  return CFAutorelease(v4);
}

- (BOOL)isWindNoiseRemovalSupported
{
  v2 = objc_msgSend_objectForKeyedSubscript_(self->_attributes, a2, *MEMORY[0x1E69902E8]);

  return [v2 BOOLValue];
}

- (id)clientAudioClockDeviceUID
{
  v2 = [(NSString *)self->_clientAudioClockDeviceUID copy];

  return v2;
}

- (id)preferredIOBufferDuration
{
  v2 = [(NSNumber *)self->_preferredIOBufferDuration copy];

  return v2;
}

+ (id)_devicesWithPriorRegisteredDevices:(id)devices
{
  array = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = +[AVCaptureFigAudioDevice _newFigCaptureSources];
  v4 = [obj countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    v19 = *MEMORY[0x1E69905E0];
    v18 = *MEMORY[0x1E695E480];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        if ([devices count])
        {
          v27 = 0;
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v9)
          {
            v9(v8, v19, v18, &v27);
          }

          v10 = objc_msgSend_objectForKeyedSubscript_(v27);

          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v11 = [devices countByEnumeratingWithState:&v23 objects:v22 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v24;
LABEL_11:
            v14 = 0;
            while (1)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(devices);
              }

              v15 = *(*(&v23 + 1) + 8 * v14);
              if ([objc_msgSend(v15 "uniqueID")])
              {
                break;
              }

              if (v12 == ++v14)
              {
                v12 = [devices countByEnumeratingWithState:&v23 objects:v22 count:16];
                if (v12)
                {
                  goto LABEL_11;
                }

                goto LABEL_17;
              }
            }

            v16 = v15;

            if (v16)
            {
              goto LABEL_20;
            }
          }

          else
          {
LABEL_17:
          }
        }

        v16 = [[AVCaptureFigAudioDevice alloc] _initWithFigCaptureSource:v8];
LABEL_20:
        [array addObject:v16];
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v5);
  }

  return array;
}

+ (void)_reconnectDevices:(id)devices
{
  if (AVCaptureIsRunningInMediaserverd(self, a2))
  {
    v4 = FigCaptureSourceCopySources();
  }

  else
  {
    v4 = FigCaptureSourceRemoteCopyCaptureSources();
  }

  v5 = v4;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v20 = *v29;
    v18 = *MEMORY[0x1E69905E0];
    v17 = *MEMORY[0x1E695E480];
    obj = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v26 = 0;
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v10)
        {
          v10(v9, v18, v17, &v26);
        }

        v11 = objc_msgSend_objectForKeyedSubscript_(v26, v17, v18);

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = [devices countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(devices);
              }

              if (v11)
              {
                v16 = *(*(&v22 + 1) + 8 * j);
                if ([objc_msgSend(v16 "uniqueID")])
                {
                  [v16 _reconnectToFigCaptureSource:v9];
                  goto LABEL_22;
                }
              }
            }

            v13 = [devices countByEnumeratingWithState:&v22 objects:v21 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:
      }

      v5 = obj;
      v7 = [obj countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v7);
  }
}

- (AVCaptureFigAudioDevice)init
{
  v7.receiver = self;
  v7.super_class = AVCaptureFigAudioDevice;
  v2 = [(AVCaptureDevice *)&v7 init];
  if (v2)
  {
    v3 = v2;
    if (getCameraCaptureLegacyLog_cameraCaptureLegacyLogOnceToken_5 != -1)
    {
      [AVCaptureFigAudioDevice init];
    }

    v4 = getCameraCaptureLegacyLog_cameraCaptureLegacyLog_5;
    if (os_log_type_enabled(getCameraCaptureLegacyLog_cameraCaptureLegacyLog_5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A917C000, v4, OS_LOG_TYPE_DEFAULT, "[AVCaptureDevice init] - Cannot directly instantiate a AVCaptureDevice object.", v6, 2u);
    }
  }

  return 0;
}

- (id)_initWithFigCaptureSource:(OpaqueFigCaptureSource *)source
{
  v9.receiver = self;
  v9.super_class = AVCaptureFigAudioDevice;
  initSubclass = [(AVCaptureDevice *)&v9 initSubclass];
  if (initSubclass)
  {
    *(initSubclass + 19) = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:initSubclass];
    *(initSubclass + 5) = dispatch_queue_create("com.apple.avfoundation.audiocapturedevice.source_queue", 0);
    *(initSubclass + 20) = dispatch_semaphore_create(0);
    [initSubclass _setFigCaptureSource:source];
    *(initSubclass + 7) = [initSubclass _copyFigCaptureSourceProperty:*MEMORY[0x1E69905E0]];
    *(initSubclass + 96) = 0;
    *(initSubclass + 25) = 0;
    *(initSubclass + 105) = 0;
    *(initSubclass + 27) = 0;
    *(initSubclass + 15) = FigDispatchQueueCreateWithPriority();
    *(initSubclass + 32) = 0;
    v5 = dispatch_group_create();
    *(initSubclass + 17) = v5;
    dispatch_group_enter(v5);
    v6 = *(initSubclass + 15);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__AVCaptureFigAudioDevice__initWithFigCaptureSource___block_invoke;
    block[3] = &unk_1E786EC08;
    block[4] = initSubclass;
    dispatch_async(v6, block);
  }

  return initSubclass;
}

void __53__AVCaptureFigAudioDevice__initWithFigCaptureSource___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 80) = [objc_alloc(MEMORY[0x1E6958460]) initAuxiliarySession];
  v2 = *(a1 + 32);
  if (*(v2 + 192))
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  [*(v2 + 80) setCategory:*MEMORY[0x1E6958060] withOptions:v3 error:0];
  *(*(a1 + 32) + 72) = [MEMORY[0x1E69587D8] sharedSystemAudioInputContext];
  *(*(a1 + 32) + 64) = [objc_alloc(MEMORY[0x1E69587E8]) initWithDeviceFeatures:1];
  [*(*(a1 + 32) + 64) setAudioSessionID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(*(*(a1 + 32) + 80), "opaqueSessionID"))}];
  [*(*(a1 + 32) + 64) setDiscoveryMode:2 forClientIdentifiers:MEMORY[0x1E695E0F0]];
  *(*(a1 + 32) + 104) = [*(a1 + 32) _systemHasAudioInputDevice];
  *(*(a1 + 32) + 144) = [*(a1 + 32) _currentAudioInputRouteIsBuiltInMic];
  *(*(a1 + 32) + 112) = [*(a1 + 32) _currentAudioInputDeviceLocalizedName:*(*(a1 + 32) + 56)];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:sel_audioInputDeviceDidChangeHandler_ name:*MEMORY[0x1E6958650] object:*(*(a1 + 32) + 72)];
  [v4 addObserver:*(a1 + 32) selector:sel_audioServicesWereResetHandler_ name:*MEMORY[0x1E6958128] object:*(*(a1 + 32) + 80)];
  v5 = *(*(a1 + 32) + 136);

  dispatch_group_leave(v5);
}

- (void)dealloc
{
  [(AVCaptureFigAudioDevice *)self _setFigCaptureSource:0];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  dispatch_release(self->_audioRoutesInfoFirstQueryGroup);
  sharedAVAudioSessionClock = self->_sharedAVAudioSessionClock;
  if (sharedAVAudioSessionClock)
  {
    CFRelease(sharedAVAudioSessionClock);
  }

  v4.receiver = self;
  v4.super_class = AVCaptureFigAudioDevice;
  [(AVCaptureDevice *)&v4 dealloc];
}

- (void)_setFigCaptureSource:(OpaqueFigCaptureSource *)source
{
  fcsQueue = self->_fcsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__AVCaptureFigAudioDevice__setFigCaptureSource___block_invoke;
  v4[3] = &unk_1E786ECD0;
  v4[4] = self;
  v4[5] = source;
  dispatch_sync(fcsQueue, v4);
}

void *__48__AVCaptureFigAudioDevice__setFigCaptureSource___block_invoke(void *result, uint64_t a2)
{
  v2 = result[5];
  v3 = *(result[4] + 48);
  if (v2 != v3)
  {
    v4 = result;
    if (v3)
    {
      if (v2 && (AVCaptureIsRunningInMediaserverd(result, a2) & 1) == 0)
      {
        v13 = 0;
        v5 = *(v4[4] + 48);
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v6)
        {
          if (!v6(v5, *MEMORY[0x1E6990880], *MEMORY[0x1E695E480], &v13) && v13 != 0)
          {
            v8 = [v13 intValue];
            if (v8 >= 1)
            {
              v9 = v8;
              do
              {
                v10 = v4[5];
                v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (v11)
                {
                  v11(v10);
                }

                --v9;
              }

              while (v9);
            }
          }
        }
      }

      [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", *(v4[4] + 152), fad_figCaptureSourceNotificationHandler, 0, *(v4[4] + 48)}];
      v12 = *(v4[4] + 48);
      if (v12)
      {
        CFRelease(v12);
        *(v4[4] + 48) = 0;
      }
    }

    result = v4[5];
    if (result)
    {
      *(v4[4] + 48) = CFRetain(result);
      return [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "addListenerWithWeakReference:callback:name:object:flags:", *(v4[4] + 152), fad_figCaptureSourceNotificationHandler, 0, v4[5], 0}];
    }
  }

  return result;
}

- (id)figCaptureSourceAudioSettingsForSessionPreset:(id)preset
{
  v3 = objc_msgSend_objectForKeyedSubscript_(self->_attributes, a2, *MEMORY[0x1E69900A8]);

  return objc_msgSend_objectForKeyedSubscript_(v3);
}

- (BOOL)isBuiltInStereoAudioCaptureSupported
{
  v2 = objc_msgSend_objectForKeyedSubscript_(self->_attributes, a2, *MEMORY[0x1E69900D8]);

  return [v2 BOOLValue];
}

- (BOOL)isAudioCaptureModeSupported:(int64_t)supported
{
  if (supported > 3)
  {
    v4 = supported == 6 || supported == 7;
    v5 = supported == 4 || supported == 5;
    if (supported <= 5)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (supported > 1)
    {
      if (supported != 2)
      {
        return 1;
      }

      v3 = objc_msgSend_objectForKeyedSubscript_(self->_attributes, a2, *MEMORY[0x1E69900F0]);
    }

    else
    {
      if (!supported)
      {
        return 1;
      }

      if (supported != 1)
      {
        return 0;
      }

      v3 = objc_msgSend_objectForKeyedSubscript_(self->_attributes, a2, *MEMORY[0x1E69900D8]);
    }

    return [v3 BOOLValue];
  }
}

- (int64_t)fallbackAudioCaptureModeIfApplicableForCurrentRoute:(int64_t)route
{
  routeCopy = route;
  if ((route | 4) == 6 && ![(AVCaptureFigAudioDevice *)self isAudioInputRouteBuiltInMic])
  {
    if (dword_1ED806960)
    {
      v7 = 0;
      v6 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  return routeCopy;
}

- (BOOL)isAudioInputRouteBuiltInMic
{
  dispatch_group_wait(self->_audioRoutesInfoFirstQueryGroup, 0xFFFFFFFFFFFFFFFFLL);
  os_unfair_lock_lock(&self->_audioRoutesInfoLock);
  audioInputRouteIsBuiltInMic = self->_audioInputRouteIsBuiltInMic;
  os_unfair_lock_unlock(&self->_audioRoutesInfoLock);
  return audioInputRouteIsBuiltInMic;
}

- (void)setAllowsBluetoothHighQualityRecording:(BOOL)recording
{
  audioRoutesInfoUpdateQueue = self->_audioRoutesInfoUpdateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__AVCaptureFigAudioDevice_setAllowsBluetoothHighQualityRecording___block_invoke;
  v4[3] = &unk_1E786EE40;
  recordingCopy = recording;
  v4[4] = self;
  dispatch_async(audioRoutesInfoUpdateQueue, v4);
}

void *__66__AVCaptureFigAudioDevice_setAllowsBluetoothHighQualityRecording___block_invoke(void *result)
{
  v1 = *(result + 40);
  v2 = result[4];
  if (v1 != *(v2 + 192))
  {
    v3 = result;
    if (dword_1ED806960)
    {
      v8 = 0;
      v7 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      LOBYTE(v1) = *(v3 + 40);
      v2 = v3[4];
    }

    *(v2 + 192) = v1;
    if (*(v3 + 40))
    {
      v5 = 0x80000;
    }

    else
    {
      v5 = 0;
    }

    [*(v3[4] + 80) setCategory:*MEMORY[0x1E6958060] withOptions:v5 error:0];
    result = [objc_msgSend(MEMORY[0x1E6958460] "sharedInstance")];
    if ((result & 1) == 0 && (v3[5] & 1) == 0)
    {
      v6 = *(v3[4] + 88);
      result = [v6 deviceType];
      if (!result)
      {
        result = [v6 supportsHighQualityContentCapture];
        if (result)
        {
          result = [v6 isHighQualityContentCaptureEnabled];
          if (result)
          {

            *(v3[4] + 88) = 0;
            return [v3[4] _updateStateForInputDevice:0];
          }
        }
      }
    }
  }

  return result;
}

- (id)_copyFigCaptureSourceProperty:(__CFString *)property
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__11;
  fcsQueue = self->_fcsQueue;
  v11 = __Block_byref_object_dispose__11;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__AVCaptureFigAudioDevice__copyFigCaptureSourceProperty___block_invoke;
  block[3] = &unk_1E7870018;
  block[5] = &v7;
  block[6] = property;
  block[4] = self;
  dispatch_sync(fcsQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __57__AVCaptureFigAudioDevice__copyFigCaptureSourceProperty___block_invoke(void *a1)
{
  v1 = *(a1[4] + 48);
  v2 = a1[6];
  v3 = *(a1[5] + 8);
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = *MEMORY[0x1E695E480];

    return v7(v1, v2, v8, v3 + 40);
  }

  return result;
}

- (BOOL)_currentAudioInputRouteIsBuiltInMic
{
  committedInputDevice = self->_committedInputDevice;
  if (committedInputDevice)
  {
    LOBYTE(v3) = [(AVInputDevice *)self->_committedInputDevice deviceType]== 2 && [(AVInputDevice *)committedInputDevice deviceSubType]== 1;
  }

  else
  {
    availableInputDevices = [(AVInputDeviceDiscoverySession *)self->_inputDeviceDiscoverySession availableInputDevices];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [availableInputDevices countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v3)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(availableInputDevices);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          if ([v7 deviceType] == 2 && objc_msgSend(v7, "deviceSubType") == 1)
          {
            LOBYTE(v3) = 1;
            goto LABEL_16;
          }
        }

        v3 = [availableInputDevices countByEnumeratingWithState:&v10 objects:v9 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
    if (![availableInputDevices count])
    {
      LOBYTE(v3) = fad_isRunningOnDeviceClass(@"iPhone") || fad_isRunningOnDeviceClass(@"iPad");
    }
  }

  return v3;
}

- (BOOL)_systemHasAudioInputDevice
{
  if (self->_committedInputDevice || [-[AVInputDeviceDiscoverySession availableInputDevices](self->_inputDeviceDiscoverySession "availableInputDevices")] > 0 || fad_isRunningOnDeviceClass(@"iPhone"))
  {
    return 1;
  }

  return fad_isRunningOnDeviceClass(@"iPad");
}

- (id)_currentAudioInputDeviceLocalizedName:(id)name
{
  if (self->_committedInputDevice)
  {
    committedInputDevice = self->_committedInputDevice;

    return [(AVInputDevice *)committedInputDevice deviceName];
  }

  else
  {
    v17 = v3;
    v18 = v4;
    availableInputDevices = [(AVInputDeviceDiscoverySession *)self->_inputDeviceDiscoverySession availableInputDevices];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    result = [availableInputDevices countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (result)
    {
      v8 = result;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(availableInputDevices);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if ([v11 deviceType] == 2 && objc_msgSend(v11, "deviceSubType") == 1)
          {
            return [v11 deviceName];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        result = [availableInputDevices countByEnumeratingWithState:&v13 objects:v12 count:16];
        v8 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (void)audioInputDeviceDidChangeHandler:(id)handler
{
  v4 = [objc_msgSend(handler "object")];
  audioRoutesInfoUpdateQueue = self->_audioRoutesInfoUpdateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__AVCaptureFigAudioDevice_audioInputDeviceDidChangeHandler___block_invoke;
  v6[3] = &unk_1E786EAA8;
  v6[4] = self;
  v6[5] = v4;
  dispatch_sync(audioRoutesInfoUpdateQueue, v6);
}

- (void)_updateStateForInputDevice:(id)device
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [AVCaptureFigAudioDevice _updateStateForInputDevice:];
  }

  if (dword_1ED806960)
  {
    v62 = 0;
    v61 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  availableInputDevices = [(AVInputDeviceDiscoverySession *)self->_inputDeviceDiscoverySession availableInputDevices];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = availableInputDevices;
  v6 = [availableInputDevices countByEnumeratingWithState:&v56 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v57;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v57 != v9)
        {
          objc_enumerationMutation(obj);
        }

        if (dword_1ED806960)
        {
          v11 = *(*(&v56 + 1) + 8 * i);
          v62 = 0;
          v61 = OS_LOG_TYPE_DEFAULT;
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v13 = v62;
          v14 = v61;
          if (os_log_type_enabled(v12, v61))
          {
            v15 = v13;
          }

          else
          {
            v15 = v13 & 0xFFFFFFFE;
          }

          if (v15)
          {
            v16 = _inputDeviceString(v11);
            v49 = 136315906;
            v50 = "[AVCaptureFigAudioDevice _updateStateForInputDevice:]";
            v51 = 2048;
            selfCopy4 = self;
            v53 = 1024;
            v54[0] = v8;
            LOWORD(v54[1]) = 2112;
            *(&v54[1] + 2) = v16;
            LODWORD(v38) = 38;
            _os_log_send_and_compose_impl(v15, 0, v60, 128, &dword_1A917C000, v12, v14, "<<<< AVCaptureFigAudioDevice >>>> %s: [Routing] %p discoverySession:[%d] %@", &v49, v38);
            ++v8;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v7 = [obj countByEnumeratingWithState:&v56 objects:v55 count:16];
    }

    while (v7);
  }

  deviceCopy = device;
  if (device || !self->_committedInputDevice)
  {
    goto LABEL_20;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v22 = [obj countByEnumeratingWithState:&v45 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v46;
    while (2)
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v46 != v24)
        {
          objc_enumerationMutation(obj);
        }

        if ([(AVInputDevice *)self->_committedInputDevice isEqualToInputDevice:*(*(&v45 + 1) + 8 * j)])
        {
          if (dword_1ED806960)
          {
            v62 = 0;
            v61 = OS_LOG_TYPE_DEFAULT;
            v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v31 = v62;
            v32 = v61;
            if (os_log_type_enabled(v30, v61))
            {
              v33 = v31;
            }

            else
            {
              v33 = v31 & 0xFFFFFFFE;
            }

            if (v33)
            {
              v49 = 136315394;
              v50 = "[AVCaptureFigAudioDevice _updateStateForInputDevice:]";
              v51 = 2048;
              selfCopy4 = self;
              LODWORD(v38) = 22;
              _os_log_send_and_compose_impl(v33, 0, v60, 128, &dword_1A917C000, v30, v32, "<<<< AVCaptureFigAudioDevice >>>> %s: [Routing] %p Input device changed to nil, found last committed in DS available inputs, so keeping it", &v49, v38);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          return;
        }
      }

      v23 = [obj countByEnumeratingWithState:&v45 objects:v44 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  if ([obj count])
  {
    if (dword_1ED806960)
    {
      v62 = 0;
      v61 = OS_LOG_TYPE_DEFAULT;
      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v27 = v62;
      v28 = v61;
      if (os_log_type_enabled(v26, v61))
      {
        v29 = v27;
      }

      else
      {
        v29 = v27 & 0xFFFFFFFE;
      }

      if (v29)
      {
        v49 = 136315394;
        v50 = "[AVCaptureFigAudioDevice _updateStateForInputDevice:]";
        v51 = 2048;
        selfCopy4 = self;
        LODWORD(v38) = 22;
        _os_log_send_and_compose_impl(v29, 0, v60, 128, &dword_1A917C000, v26, v28, "<<<< AVCaptureFigAudioDevice >>>> %s: [Routing] %p Input device changed to nil, and last committed wasn't found in discovery session available inputs, so we're forgetting it", &v49, v38);
      }

LABEL_51:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      deviceCopy = 0;
    }
  }

  else if (dword_1ED806960)
  {
    v62 = 0;
    v61 = OS_LOG_TYPE_DEFAULT;
    v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v35 = v62;
    v36 = v61;
    if (os_log_type_enabled(v34, v61))
    {
      v37 = v35;
    }

    else
    {
      v37 = v35 & 0xFFFFFFFE;
    }

    if (v37)
    {
      v49 = 136315394;
      v50 = "[AVCaptureFigAudioDevice _updateStateForInputDevice:]";
      v51 = 2048;
      selfCopy4 = self;
      LODWORD(v38) = 22;
      _os_log_send_and_compose_impl(v37, 0, v60, 128, &dword_1A917C000, v34, v36, "<<<< AVCaptureFigAudioDevice >>>> %s: [Routing] %p Input device changed to nil, DS available inputs count is 0, so we're *forgetting* last committed", &v49, v38);
    }

    goto LABEL_51;
  }

LABEL_20:
  v18 = deviceCopy;

  self->_committedInputDevice = deviceCopy;
  v19 = [(AVCaptureFigAudioDevice *)self _currentAudioInputDeviceLocalizedName:self->_attributes];
  _currentAudioInputRouteIsBuiltInMic = [(AVCaptureFigAudioDevice *)self _currentAudioInputRouteIsBuiltInMic];
  _systemHasAudioInputDevice = [(AVCaptureFigAudioDevice *)self _systemHasAudioInputDevice];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AVCaptureFigAudioDevice__updateStateForInputDevice___block_invoke;
  block[3] = &unk_1E7876628;
  block[4] = self;
  block[5] = v19;
  v42 = _currentAudioInputRouteIsBuiltInMic;
  v43 = _systemHasAudioInputDevice;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void *__54__AVCaptureFigAudioDevice__updateStateForInputDevice___block_invoke(uint64_t a1)
{
  if (([objc_msgSend(*(a1 + 32) "localizedName")] & 1) == 0)
  {
    if (dword_1ED806960)
    {
      v24 = 0;
      v23 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [*(a1 + 32) willChangeValueForKey:@"localizedName"];
    os_unfair_lock_lock((*(a1 + 32) + 108));
    v3 = *(a1 + 40);

    *(*(a1 + 32) + 112) = *(a1 + 40);
    os_unfair_lock_unlock((*(a1 + 32) + 108));
    [*(a1 + 32) didChangeValueForKey:@"localizedName"];
  }

  if (*(a1 + 48) != [*(a1 + 32) isAudioInputRouteBuiltInMic])
  {
    if (dword_1ED806960)
    {
      v24 = 0;
      v23 = OS_LOG_TYPE_DEFAULT;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [*(a1 + 32) willChangeValueForKey:@"audioInputRouteIsBuiltInMic"];
    os_unfair_lock_lock((*(a1 + 32) + 128));
    *(*(a1 + 32) + 144) = *(a1 + 48);
    os_unfair_lock_unlock((*(a1 + 32) + 128));
    [*(a1 + 32) didChangeValueForKey:@"audioInputRouteIsBuiltInMic"];
  }

  result = [*(a1 + 32) isConnected];
  if (*(a1 + 49) != result)
  {
    if (dword_1ED806960)
    {
      v6 = result;
      v24 = 0;
      v23 = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v8 = v24;
      v9 = v23;
      if (os_log_type_enabled(v7, v23))
      {
        v10 = v8;
      }

      else
      {
        v10 = v8 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = *(a1 + 32);
        v12 = *(a1 + 49);
        v14 = 136315906;
        v15 = "[AVCaptureFigAudioDevice _updateStateForInputDevice:]_block_invoke";
        v16 = 2048;
        v17 = v11;
        v18 = 1024;
        v19 = v6;
        v20 = 1024;
        v21 = v12;
        _os_log_send_and_compose_impl(v10, 0, v22, 128, &dword_1A917C000, v7, v9, "<<<< AVCaptureFigAudioDevice >>>> %s: [Routing] %p Changing isConnected from %d to %d", &v14, 34);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (*(a1 + 49))
      {
        goto LABEL_19;
      }
    }

    else if (*(a1 + 49))
    {
LABEL_19:
      v13 = @"AVCaptureDeviceWasConnectedNotification";
      *(*(a1 + 32) + 105) = 0;
      goto LABEL_20;
    }

    v13 = @"AVCaptureDeviceWasDisconnectedNotification";
LABEL_20:
    [*(a1 + 32) willChangeValueForKey:@"connected"];
    os_unfair_lock_lock((*(a1 + 32) + 100));
    *(*(a1 + 32) + 104) = *(a1 + 49);
    os_unfair_lock_unlock((*(a1 + 32) + 100));
    [*(a1 + 32) didChangeValueForKey:@"connected"];
    return [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return result;
}

- (void)audioServicesWereResetHandler:(id)handler
{
  audioRoutesInfoUpdateQueue = self->_audioRoutesInfoUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__AVCaptureFigAudioDevice_audioServicesWereResetHandler___block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  dispatch_async(audioRoutesInfoUpdateQueue, block);
}

double __57__AVCaptureFigAudioDevice_audioServicesWereResetHandler___block_invoke(uint64_t a1)
{
  if (dword_1ED806960)
  {
    v37 = 0;
    v36 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 32);
  if (*(v3 + 192))
  {
    v4 = 0x80000;
  }

  else
  {
    v4 = 0;
  }

  [*(v3 + 80) setCategory:*MEMORY[0x1E6958060] withOptions:v4 error:0];
  [*(*(a1 + 32) + 64) setAudioSessionID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(*(*(a1 + 32) + 80), "opaqueSessionID"))}];
  v5 = [*(*(a1 + 32) + 64) availableInputDevices];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
LABEL_8:
    v9 = 0;
    while (1)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v31 + 1) + 8 * v9);
      if ([v10 deviceType] == 2 && objc_msgSend(v10, "deviceSubType") == 1)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v31 objects:v30 count:16];
        if (v7)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }
    }

    if (v10)
    {
      goto LABEL_26;
    }
  }

  if (![v5 count])
  {
    goto LABEL_27;
  }

LABEL_17:
  v10 = [v5 objectAtIndexedSubscript:0];
  if (dword_1ED806960)
  {
    v37 = 0;
    v36 = OS_LOG_TYPE_DEFAULT;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v13 = v37;
    v14 = v36;
    if (os_log_type_enabled(v12, v36))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v16 = *(a1 + 32);
      v17 = _inputDeviceString(v10);
      v24 = 136315650;
      v25 = "[AVCaptureFigAudioDevice audioServicesWereResetHandler:]_block_invoke";
      v26 = 2048;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      _os_log_send_and_compose_impl(v15, 0, v35, 128, &dword_1A917C000, v12, v14, "<<<< AVCaptureFigAudioDevice >>>> %s: [Routing] %p After audiomxd crash, no built-in mic detected, so setting current mic to %@", &v24, 32);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v10)
  {
LABEL_26:
    [*(a1 + 32) _updateStateForInputDevice:v10];
  }

  else
  {
LABEL_27:
    if (dword_1ED806960)
    {
      v37 = 0;
      v36 = OS_LOG_TYPE_DEFAULT;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = v37;
      v20 = v36;
      if (os_log_type_enabled(v18, v36))
      {
        v21 = v19;
      }

      else
      {
        v21 = v19 & 0xFFFFFFFE;
      }

      if (v21)
      {
        v22 = *(a1 + 32);
        v24 = 136315394;
        v25 = "[AVCaptureFigAudioDevice audioServicesWereResetHandler:]_block_invoke";
        v26 = 2048;
        v27 = v22;
        LODWORD(v23) = 22;
        _os_log_send_and_compose_impl(v21, 0, v35, 128, &dword_1A917C000, v18, v20, "<<<< AVCaptureFigAudioDevice >>>> %s: [Routing] %p After audiomxd crash, no available input devices reported by AVIDDS", &v24, v23);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

- (void)_reconnectToFigCaptureSource:(OpaqueFigCaptureSource *)source
{
  v5 = [(AVCaptureFigAudioDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990888]];
  if (v5 == *MEMORY[0x1E695E4D0])
  {
    dispatch_semaphore_wait(self->_serverConnectionDiedSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  [(AVCaptureFigAudioDevice *)self _setFigCaptureSource:source];
}

- (void)_handleNotification:(__CFString *)notification payload:(id)payload
{
  if (CFEqual(notification, *MEMORY[0x1E6990540]))
  {
    v5 = [(AVCaptureFigAudioDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990888]];
    if (v5 != *MEMORY[0x1E695E4C0])
    {
      v6 = v5;
      dispatch_semaphore_signal(self->_serverConnectionDiedSemaphore);
      if (v6)
      {

        CFRelease(v6);
      }
    }
  }
}

@end