@interface FigScreenCaptureController
+ (id)screenCaptureControllerWithCaptureConfiguration:(id)configuration;
+ (id)screenCaptureControllerWithDisplayConfiguration:(id)configuration;
+ (id)screenCaptureControllerWithFigVirtualDisplayOptions:(id)options;
+ (id)screenCaptureControllerWithSize:(CGSize)size minIntervalBetweenFrames:(id *)frames;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minIntervalBetweenFrames;
- (CGSize)size;
- (FigScreenCaptureController)initWithDisplayConfiguration:(id)configuration;
- (FigScreenCaptureController)initWithFigVirtualDisplayOptions:(id)options;
- (FigScreenCaptureController)initWithScreenCaptureConfiguration:(id)configuration;
- (FigScreenCaptureController)initWithSize:(CGSize)size minIntervalBetweenFrames:(id *)frames;
- (__CFDictionary)getFVDOptions;
- (double)resumeCapture;
- (double)startCapture;
- (double)suspendCapture;
- (id)description;
- (void)dealloc;
- (void)resumeCapture;
- (void)setFigVirtualDisplayOption:(id)option forKey:(id)key;
- (void)startCapture;
- (void)stopCapture;
- (void)suspendCapture;
@end

@implementation FigScreenCaptureController

+ (id)screenCaptureControllerWithSize:(CGSize)size minIntervalBetweenFrames:(id *)frames
{
  height = size.height;
  width = size.width;
  v7 = [FigScreenCaptureController alloc];
  v9 = *frames;
  return [(FigScreenCaptureController *)v7 initWithSize:&v9 minIntervalBetweenFrames:width, height];
}

+ (id)screenCaptureControllerWithFigVirtualDisplayOptions:(id)options
{
  v3 = [[FigScreenCaptureController alloc] initWithFigVirtualDisplayOptions:options];

  return v3;
}

+ (id)screenCaptureControllerWithCaptureConfiguration:(id)configuration
{
  v3 = [[FigScreenCaptureController alloc] initWithScreenCaptureConfiguration:configuration];

  return v3;
}

+ (id)screenCaptureControllerWithDisplayConfiguration:(id)configuration
{
  v3 = [[FigScreenCaptureController alloc] initWithDisplayConfiguration:configuration];

  return v3;
}

- (FigScreenCaptureController)initWithSize:(CGSize)size minIntervalBetweenFrames:(id *)frames
{
  height = size.height;
  width = size.width;
  v13[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = FigScreenCaptureController;
  v7 = [(FigScreenCaptureController *)&v11 init];
  if (v7)
  {
    v7->_lock = FigSimpleMutexCreate();
    v7->_options = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v14.width = width;
    v14.height = height;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v14);
    v12 = @"displaySizeInPixels";
    v13[0] = DictionaryRepresentation;
    CFDictionarySetValue(v7->_options, @"deviceInfo", [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1]);
    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }

    v10 = *frames;
    CMTimeGetSeconds(&v10);
    FigCFDictionarySetInt32();
    CFDictionarySetValue(v7->_options, @"usage", @"Uncompressed");
    CFDictionarySetValue(v7->_options, @"ScreenRecording", *MEMORY[0x1E695E4D0]);
    FigCFDictionarySetInt32();
    CFDictionarySetValue(v7->_options, @"DisplayLabel", @"ScreenCapture");
    v7->_mode = 0;
  }

  return v7;
}

- (FigScreenCaptureController)initWithFigVirtualDisplayOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = FigScreenCaptureController;
  v4 = [(FigScreenCaptureController *)&v8 init];
  if (v4)
  {
    v4->_lock = FigSimpleMutexCreate();
    v5 = *MEMORY[0x1E695E480];
    if (options)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, options);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v4->_options = MutableCopy;
    CFDictionaryAddValue(MutableCopy, @"DisplayLabel", @"AirPlay");
    v4->_mode = 0;
  }

  return v4;
}

- (FigScreenCaptureController)initWithScreenCaptureConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = FigScreenCaptureController;
  v4 = [(FigScreenCaptureController *)&v6 init];
  if (v4)
  {
    v4->_lock = [configuration getLock];
    v4->_screenCaptureConfiguration = configuration;
    v4->_mode = 1;
  }

  return v4;
}

- (FigScreenCaptureController)initWithDisplayConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = FigScreenCaptureController;
  v4 = [(FigScreenCaptureController *)&v6 init];
  if (v4)
  {
    v4->_lock = [configuration getLock];
    v4->_displayConfiguration = configuration;
    v4->_mode = 2;
  }

  return v4;
}

- (__CFDictionary)getFVDOptions
{
  mode = self->_mode;
  if (mode == 2)
  {
    displayConfiguration = self->_displayConfiguration;
    return [displayConfiguration getFVDOptions];
  }

  if (mode == 1)
  {
    displayConfiguration = self->_screenCaptureConfiguration;
    return [displayConfiguration getFVDOptions];
  }

  return self->_options;
}

- (void)setFigVirtualDisplayOption:(id)option forKey:(id)key
{
  getFVDOptions = [(FigScreenCaptureController *)self getFVDOptions];
  FigSimpleMutexLock();
  CFDictionarySetValue(getFVDOptions, key, option);

  FigSimpleMutexUnlock();
}

- (CGSize)size
{
  mode = self->_mode;
  if (mode == 2)
  {
    [(FigDisplayConfiguration *)self->_displayConfiguration maxDisplaySize];
  }

  else if (mode == 1)
  {
    [(FigScreenCaptureConfiguration *)self->_screenCaptureConfiguration size];
  }

  else if (mode)
  {
    v4 = 1920.0;
    v5 = 1080.0;
  }

  else
  {
    FigSimpleMutexLock();
    if (CFDictionaryGetValue(self->_options, @"deviceInfo"))
    {
      FigCFDictionaryGetCGSizeIfPresent();
    }

    FigSimpleMutexUnlock();
    v5 = 1080.0;
    v4 = 1920.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minIntervalBetweenFrames
{
  v9 = 60;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  retstr->var0 = 0;
  result = CMTimeMake(retstr, 1, 60);
  mode = self->_mode;
  if (mode == 2)
  {
    refreshRate = [(FigDisplayConfiguration *)self->_displayConfiguration refreshRate];
  }

  else
  {
    if (mode == 1)
    {
      result = self->_screenCaptureConfiguration;
      if (result)
      {
        result = objc_msgSend_minFrameInterval(result);
      }

      else
      {
        memset(&v8, 0, sizeof(v8));
      }

      goto LABEL_9;
    }

    if (mode)
    {
      return result;
    }

    FigSimpleMutexLock();
    FigCFDictionaryGetInt32IfPresent();
    FigSimpleMutexUnlock();
    refreshRate = v9;
  }

  result = CMTimeMake(&v8, 1, refreshRate);
LABEL_9:
  *retstr = v8;
  return result;
}

- (void)dealloc
{
  [(FigScreenCaptureController *)self stopCapture];
  if (!self->_mode)
  {
    options = self->_options;
    if (options)
    {
      CFRelease(options);
      self->_options = 0;
    }

    FigSimpleMutexDestroy();
    self->_lock = 0;
  }

  displayConfiguration = self->_displayConfiguration;
  if (displayConfiguration)
  {
  }

  screenCaptureConfiguration = self->_screenCaptureConfiguration;
  if (screenCaptureConfiguration)
  {
  }

  v6.receiver = self;
  v6.super_class = FigScreenCaptureController;
  [(FigScreenCaptureController *)&v6 dealloc];
}

- (id)description
{
  mode = self->_mode;
  if (mode > 2)
  {
    v4 = @"Invalid";
  }

  else
  {
    v4 = off_1E7479C00[mode];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  return [v5 stringWithFormat:@"<%@: %p, mode = %@, options = %p>", NSStringFromClass(v6), self, v4, -[FigScreenCaptureController getFVDOptions](self, "getFVDOptions")];
}

- (void)startCapture
{
  v32 = *MEMORY[0x1E69E9840];
  v24 = 0;
  cf = 0;
  getFVDOptions = [(FigScreenCaptureController *)self getFVDOptions];
  FigSimpleMutexLock();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PID%d]", getpid()];
  CFDictionarySetValue(getFVDOptions, @"logPrefix", v4);
  if (self->_session)
  {
    [FigScreenCaptureController startCapture];
    goto LABEL_21;
  }

  v30 = 0;
  type[0] = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (FVDUtilsSessionServerEnabled())
  {
    *v26 = 0;
    *&v26[8] = v26;
    *&v26[16] = 0x3052000000;
    *&v27 = __Block_byref_object_copy_;
    *(&v27 + 1) = __Block_byref_object_dispose_;
    selfCopy = self;
    v6 = *MEMORY[0x1E695E480];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __42__FigScreenCaptureController_startCapture__block_invoke;
    v23[3] = &unk_1E7479BB8;
    v23[4] = v26;
    if (FigVirtualDisplaySessionRemoteFrameReceiverCreate(v6, getFVDOptions, v23, &self->_session))
    {
      *type = 0;
      v21 = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      _Block_object_dispose(v26, 8);
      goto LABEL_21;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    _Block_object_dispose(v26, 8);
  }

  else
  {
    selfCopy = 0;
    v27 = 0u;
    *&v26[8] = 0u;
    if (!CFDictionaryContainsKey(getFVDOptions, @"clientName"))
    {
      v7 = getprogname();
      if (v7)
      {
        CFDictionarySetValue(getFVDOptions, @"clientName", [MEMORY[0x1E696AEC0] stringWithUTF8String:v7]);
      }
    }

    v8 = *MEMORY[0x1E695E480];
    if (FigVirtualDisplayProcessorCreate(*MEMORY[0x1E695E480], getFVDOptions, &cf))
    {
      *type = 0;
      v21 = OS_LOG_TYPE_DEFAULT;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_21;
    }

    *v26 = self;
    *&v27 = conduitFinalizeCallback;
    *(&v27 + 1) = conduitPushFrameCallback;
    v29 = conduitClearScreenCallback;
    if (FigVirtualDisplaySinkConduitCreate(v8, v26, getFVDOptions, &v24) || FigVirtualDisplaySessionCreateWithComponents(v8, 0, cf, v24, getFVDOptions, &self->_session))
    {
      *type = 0;
      v21 = OS_LOG_TYPE_DEFAULT;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_21;
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  session = self->_session;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __42__FigScreenCaptureController_startCapture__block_invoke_130;
  v20[3] = &unk_1E7479BE0;
  v20[4] = self;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v10)
  {
    v11 = v10(session, getFVDOptions, v20);
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v11 = -12782;
  }

  v30 = 0;
  type[0] = OS_LOG_TYPE_DEFAULT;
  v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v13 = v30;
  v14 = type[0];
  if (os_log_type_enabled(v12, type[0]))
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 & 0xFFFFFFFE;
  }

  if (v15)
  {
    *v26 = 136315650;
    *&v26[4] = "[FigScreenCaptureController startCapture]";
    *&v26[12] = 1024;
    *&v26[14] = 1392;
    *&v26[18] = 1024;
    *&v26[20] = v11;
    _os_log_send_and_compose_impl(v15, 0, v31, 128, &dword_1962D5000, v12, v14, "<<<< FigScreenCaptureController >>>> %s: %d: got error %d", v26, 24, v19);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_21:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }
}

uint64_t __42__FigScreenCaptureController_startCapture__block_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = [*(*(*(a1 + 32) + 8) + 40) delegate];
  if (a2)
  {
    v7 = *(*(*(a1 + 32) + 8) + 40);

    return [v6 screenCaptureController:v7 didReceiveSampleBuffer:a2 transformFlags:a3];
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v9 = [*(*(*(a1 + 32) + 8) + 40) delegate];
      v10 = *(*(*(a1 + 32) + 8) + 40);

      return [v9 screenCaptureControllerDidReceiveClearScreen:v10];
    }
  }

  return result;
}

uint64_t __42__FigScreenCaptureController_startCapture__block_invoke_130(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    [*(result + 32) delegate];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = [*(v3 + 32) delegate];
      v5 = *(v3 + 32);

      return [v4 screenCaptureController:v5 didFailWithStatus:a2];
    }
  }

  return result;
}

- (void)suspendCapture
{
  v6 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if (self->_session)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    session = self->_session;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v5)
    {
      v5(session);
    }
  }

  else
  {
    [FigScreenCaptureController suspendCapture];
  }

  FigSimpleMutexUnlock();
}

- (void)resumeCapture
{
  v6 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if (self->_session)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    session = self->_session;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v5)
    {
      v5(session);
    }
  }

  else
  {
    [FigScreenCaptureController resumeCapture];
  }

  FigSimpleMutexUnlock();
}

- (void)stopCapture
{
  v7 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if (self->_session)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    session = self->_session;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v5)
    {
      v5(session);
    }

    v6 = self->_session;
    if (v6)
    {
      CFRelease(v6);
      self->_session = 0;
    }
  }

  FigSimpleMutexUnlock();
}

- (double)startCapture
{
  OUTLINED_FUNCTION_5_14(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_4_19(v0, v1, v2, v3, v4, v5, v6, v7, v30, v32, v35, v38, *v41, *&v41[2], v41[4], v41[5]);
  v16 = OUTLINED_FUNCTION_103_0(v8, v9, v10, v11, v12, v13, v14, v15, v31, v33, v36, v39, v42, v43, v44);
  if (OUTLINED_FUNCTION_77_0(v16))
  {
    OUTLINED_FUNCTION_2_25(v45, 4.8151e-34);
    *(v17 + 14) = 1336;
    LODWORD(v34) = 18;
    OUTLINED_FUNCTION_1_24(v18, v19, v20, v21, &dword_1962D5000, v22, v23, "<<<< FigScreenCaptureController >>>> %s: %d: false condition", v45, v34, v37, v40);
  }

  OUTLINED_FUNCTION_6_13();
  return OUTLINED_FUNCTION_0_26(v24, v25, v26, v27, v28);
}

- (double)suspendCapture
{
  OUTLINED_FUNCTION_5_14(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_4_19(v0, v1, v2, v3, v4, v5, v6, v7, v30, v33, v36, v39, *v42, *&v42[2], v42[4], v42[5]);
  v16 = OUTLINED_FUNCTION_103_0(v8, v9, v10, v11, v12, v13, v14, v15, v31, v34, v37, v40, v43, v44, v45);
  if (OUTLINED_FUNCTION_77_0(v16))
  {
    OUTLINED_FUNCTION_2_25(v46, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v17);
    OUTLINED_FUNCTION_1_24(v18, v19, v20, v21, &dword_1962D5000, v22, v23, "<<<< FigScreenCaptureController >>>> %s: %d: false condition", v32, v35, v38, v41);
  }

  OUTLINED_FUNCTION_6_13();
  return OUTLINED_FUNCTION_0_26(v24, v25, v26, v27, v28);
}

- (double)resumeCapture
{
  OUTLINED_FUNCTION_5_14(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_4_19(v0, v1, v2, v3, v4, v5, v6, v7, v30, v33, v36, v39, *v42, *&v42[2], v42[4], v42[5]);
  v16 = OUTLINED_FUNCTION_103_0(v8, v9, v10, v11, v12, v13, v14, v15, v31, v34, v37, v40, v43, v44, v45);
  if (OUTLINED_FUNCTION_77_0(v16))
  {
    OUTLINED_FUNCTION_2_25(v46, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v17);
    OUTLINED_FUNCTION_1_24(v18, v19, v20, v21, &dword_1962D5000, v22, v23, "<<<< FigScreenCaptureController >>>> %s: %d: false condition", v32, v35, v38, v41);
  }

  OUTLINED_FUNCTION_6_13();
  return OUTLINED_FUNCTION_0_26(v24, v25, v26, v27, v28);
}

@end