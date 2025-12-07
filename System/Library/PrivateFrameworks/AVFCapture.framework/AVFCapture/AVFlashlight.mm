@interface AVFlashlight
+ (BOOL)hasFlashlight;
+ (void)initialize;
- (AVFlashlight)init;
- (BOOL)isAvailable;
- (BOOL)isOverheated;
- (BOOL)setFlashlightLevel:(float)level withError:(id *)error;
- (BOOL)turnPowerOnWithError:(id *)error;
- (float)beamWidth;
- (float)flashlightLevel;
- (void)_handleNotification:(id)notification payload:(id)payload;
- (void)_reconnectToServer;
- (void)_setupFlashlight;
- (void)_teardownFlashlight;
- (void)dealloc;
- (void)setBeamWidth:(float)width;
- (void)turnPowerOff;
@end

@implementation AVFlashlight

- (BOOL)isOverheated
{
  FigSimpleMutexLock();
  LOBYTE(self) = self->_internal->overheated;
  FigSimpleMutexUnlock();
  return self;
}

- (BOOL)isAvailable
{
  FigSimpleMutexLock();
  LOBYTE(self) = self->_internal->available;
  FigSimpleMutexUnlock();
  return self;
}

- (void)turnPowerOff
{
  if (dword_1ED806880)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  flashlight = self->_internal->flashlight;
  if (flashlight)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v5)
    {
      v5(flashlight);
    }
  }

  FigSimpleMutexUnlock();
}

+ (BOOL)hasFlashlight
{
  if (hasFlashlight_onceToken != -1)
  {
    +[AVFlashlight hasFlashlight];
  }

  return hasFlashlight_hasFlashlight;
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

uint64_t __29__AVFlashlight_hasFlashlight__block_invoke()
{
  result = MGGetBoolAnswer();
  hasFlashlight_hasFlashlight = result;
  return result;
}

- (void)_setupFlashlight
{
  v3 = FigSimpleMutexCheckIsLockedOnThisThread();
  if (AVCaptureIsRunningInMediaserverd(v3, v4))
  {
    if (FigFlashlightCreate())
    {
LABEL_8:
      [AVFlashlight _setupFlashlight];
      return;
    }
  }

  else if (FigFlashlightRemoteCreate())
  {
    v5 = 2;
    while (1)
    {
      usleep(0x3D090u);
      if (!FigFlashlightRemoteCreate())
      {
        break;
      }

      if (!--v5)
      {
        goto LABEL_8;
      }
    }
  }

  v6 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v6 addListenerWithWeakReference:self->_internal->weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909D0] object:self->_internal->flashlight flags:0];
  [v6 addListenerWithWeakReference:self->_internal->weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909E8] object:self->_internal->flashlight flags:0];
  [v6 addListenerWithWeakReference:self->_internal->weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909E0] object:self->_internal->flashlight flags:0];
  [v6 addListenerWithWeakReference:self->_internal->weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909D8] object:self->_internal->flashlight flags:0];
  internal = self->_internal;
  v8 = *MEMORY[0x1E69909F0];
  weakReference = internal->weakReference;
  flashlight = internal->flashlight;

  [v6 addListenerWithWeakReference:weakReference callback:avflashlightNotification name:v8 object:flashlight flags:0];
}

- (void)_teardownFlashlight
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (self->_internal->flashlight)
  {
    v3 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    internal = self->_internal;
    weakReference = internal->weakReference;
    [v3 removeListenerWithWeakReference:weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909D0] object:internal->flashlight];
    [v3 removeListenerWithWeakReference:weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909E8] object:self->_internal->flashlight];
    [v3 removeListenerWithWeakReference:weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909E0] object:self->_internal->flashlight];
    [v3 removeListenerWithWeakReference:weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909D8] object:self->_internal->flashlight];
    [v3 removeListenerWithWeakReference:weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909F0] object:self->_internal->flashlight];
    flashlight = self->_internal->flashlight;
    if (flashlight)
    {
      CFRelease(flashlight);
      self->_internal->flashlight = 0;
    }
  }
}

- (AVFlashlight)init
{
  if (!+[AVFlashlight hasFlashlight])
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

    if (AVCaptureShouldThrowForAPIViolations(v14, v15))
    {
      objc_exception_throw(v13);
    }

    NSLog(&cfstr_SuppressingExc.isa, v13);
    return 0;
  }

  v17.receiver = self;
  v17.super_class = AVFlashlight;
  v3 = [(AVFlashlight *)&v17 init];
  if (v3)
  {
    v3->_internal = objc_alloc_init(AVFlashlightInternal);
    v3->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v3];
    v3->_internal->lock = FigSimpleMutexCreate();
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3->_internal->serverReconnectQueue = dispatch_queue_create("com.apple.avfoundation.avflashlight-server-reconnect", v4);
    FigSimpleMutexLock();
    [(AVFlashlight *)v3 _setupFlashlight];
    *&v3->_internal->available = 1;
    flashlight = v3->_internal->flashlight;
    if (flashlight)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v7)
      {
        v7(flashlight);
      }
    }

    v3->_internal->flashlightLevel = 0.0;
    v3->_internal->minBeamWidth = AVGestaltGetFloatAnswer(@"AVGQTorchMinBeamWidth", v5);
    FloatAnswer = AVGestaltGetFloatAnswer(@"AVGQTorchMaxBeamWidth", v8);
    v10 = 0;
    v3->_internal->maxBeamWidth = FloatAnswer;
    internal = v3->_internal;
    if (internal->minBeamWidth > 0.0)
    {
      v10 = internal->maxBeamWidth > 0.0;
    }

    internal->beamWidthControlSupported = v10;
    v12 = v3->_internal;
    if (v12->beamWidthControlSupported && v12->minBeamWidth > v12->maxBeamWidth)
    {
      v12->beamWidthControlSupported = 0;
      v12 = v3->_internal;
    }

    v12->beamWidth = v12->minBeamWidth;
    FigSimpleMutexUnlock();
    if (!v3->_internal->flashlight)
    {

      return 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  if (self->_internal)
  {
    FigSimpleMutexLock();
    [(AVFlashlight *)self _teardownFlashlight];
    FigSimpleMutexUnlock();
    FigSimpleMutexDestroy();
  }

  v3.receiver = self;
  v3.super_class = AVFlashlight;
  [(AVFlashlight *)&v3 dealloc];
}

- (BOOL)turnPowerOnWithError:(id *)error
{
  if (dword_1ED806880)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  flashlight = self->_internal->flashlight;
  if (flashlight)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v8 = v7(flashlight);
    }

    else
    {
      v8 = -12782;
    }
  }

  else
  {
    v8 = -16450;
  }

  FigSimpleMutexUnlock();
  if (error && v8)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus();
  }

  return v8 == 0;
}

- (BOOL)setFlashlightLevel:(float)level withError:(id *)error
{
  if (dword_1ED806880)
  {
    v20 = 0;
    v19 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (level != 3.4028e38 && (level < 0.0 || level > 1.0))
  {
    v9 = 0;
    if (error)
    {
      *error = AVLocalizedError();
    }

    return v9;
  }

  FigSimpleMutexLock();
  internal = self->_internal;
  flashlightLevel = internal->flashlightLevel;
  v12 = flashlightLevel != 1.0 || level != 3.4028e38;
  v13 = flashlightLevel != level && v12;
  if (!v13)
  {
    goto LABEL_24;
  }

  flashlight = internal->flashlight;
  if (!flashlight)
  {
    if (!error)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v15 || v15(flashlight, level))
  {
    if (error)
    {
LABEL_23:
      *error = AVLocalizedErrorWithUnderlyingOSStatus();
    }

LABEL_24:
    v9 = !v13;
    FigSimpleMutexUnlock();
    return v9;
  }

  if (level == 3.4028e38)
  {
    v17 = self->_internal->flashlight;
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    level = 0.0;
    if (v18)
    {
      level = v18(v17);
    }
  }

  FigSimpleMutexUnlock();
  [(AVFlashlight *)self willChangeValueForKey:@"flashlightLevel"];
  FigSimpleMutexLock();
  self->_internal->flashlightLevel = level;
  FigSimpleMutexUnlock();
  [(AVFlashlight *)self didChangeValueForKey:@"flashlightLevel"];
  return 1;
}

- (float)flashlightLevel
{
  FigSimpleMutexLock();
  flashlightLevel = self->_internal->flashlightLevel;
  FigSimpleMutexUnlock();
  return flashlightLevel;
}

- (void)setBeamWidth:(float)width
{
  internal = self->_internal;
  if (internal->beamWidthControlSupported)
  {
    if (internal->minBeamWidth <= width && internal->maxBeamWidth >= width)
    {
      if (dword_1ED806880)
      {
        v19 = 0;
        v18 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigSimpleMutexLock();
      v12 = self->_internal;
      if (v12->beamWidth != width && (flashlight = v12->flashlight) != 0 && (minBeamWidth = v12->minBeamWidth, maxBeamWidth = v12->maxBeamWidth, (v16 = *(*(CMBaseObjectGetVTable() + 16) + 56)) != 0))
      {
        v17 = v16(flashlight, (width - minBeamWidth) / (maxBeamWidth - minBeamWidth));
        FigSimpleMutexUnlock();
        if (!v17)
        {
          [(AVFlashlight *)self willChangeValueForKey:@"beamWidth"];
          FigSimpleMutexLock();
          self->_internal->beamWidth = width;
          FigSimpleMutexUnlock();
          [(AVFlashlight *)self didChangeValueForKey:@"beamWidth"];
        }
      }

      else
      {
        FigSimpleMutexUnlock();
      }

      return;
    }

    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695DA20];
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D920];
  }

  v9 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations(v9, v10))
  {
    objc_exception_throw(v9);
  }

  NSLog(&cfstr_SuppressingExc.isa, v9);
}

- (float)beamWidth
{
  FigSimpleMutexLock();
  beamWidth = self->_internal->beamWidth;
  FigSimpleMutexUnlock();
  return beamWidth;
}

- (void)_handleNotification:(id)notification payload:(id)payload
{
  FigSimpleMutexLock();
  internal = self->_internal;
  available = internal->available;
  overheated = internal->overheated;
  flashlightLevel = internal->flashlightLevel;
  beamWidth = internal->beamWidth;
  if ([notification isEqualToString:*MEMORY[0x1E69909D0]])
  {
    bOOLValue = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
    if (bOOLValue)
    {
      v13 = flashlightLevel;
    }

    else
    {
      v13 = 0.0;
    }

    goto LABEL_5;
  }

  if ([notification isEqualToString:*MEMORY[0x1E69909E8]])
  {
    bOOLValue2 = [objc_msgSend_objectForKeyedSubscript_(payload) BOOLValue];
    bOOLValue = available;
LABEL_8:
    v13 = flashlightLevel;
    goto LABEL_9;
  }

  if ([notification isEqualToString:*MEMORY[0x1E69909E0]])
  {
    [objc_msgSend_objectForKeyedSubscript_(payload) floatValue];
    v13 = v16;
    bOOLValue = available;
LABEL_5:
    bOOLValue2 = overheated;
LABEL_9:
    v15 = beamWidth;
    goto LABEL_10;
  }

  if (![notification isEqualToString:*MEMORY[0x1E69909D8]])
  {
    bOOLValue = available;
    bOOLValue2 = overheated;
    goto LABEL_8;
  }

  [objc_msgSend_objectForKeyedSubscript_(payload) floatValue];
  v15 = self->_internal->minBeamWidth + (v17 * (self->_internal->maxBeamWidth - self->_internal->minBeamWidth));
  bOOLValue = available;
  bOOLValue2 = overheated;
  v13 = flashlightLevel;
LABEL_10:
  FigSimpleMutexUnlock();
  if (v13 != flashlightLevel)
  {
    [(AVFlashlight *)self willChangeValueForKey:@"flashlightLevel"];
  }

  if (v15 != beamWidth)
  {
    [(AVFlashlight *)self willChangeValueForKey:@"beamWidth"];
  }

  if (available != bOOLValue)
  {
    [(AVFlashlight *)self willChangeValueForKey:@"available"];
  }

  if (overheated != bOOLValue2)
  {
    [(AVFlashlight *)self willChangeValueForKey:@"overheated"];
  }

  FigSimpleMutexLock();
  self->_internal->flashlightLevel = v13;
  self->_internal->beamWidth = v15;
  self->_internal->available = bOOLValue;
  self->_internal->overheated = bOOLValue2;
  FigSimpleMutexUnlock();
  if (overheated != bOOLValue2)
  {
    [(AVFlashlight *)self didChangeValueForKey:@"overheated"];
  }

  if (available != bOOLValue)
  {
    [(AVFlashlight *)self didChangeValueForKey:@"available"];
  }

  if (v13 != flashlightLevel)
  {
    [(AVFlashlight *)self didChangeValueForKey:@"flashlightLevel"];
  }

  if (v15 != beamWidth)
  {

    [(AVFlashlight *)self didChangeValueForKey:@"BeamWidth"];
  }
}

- (void)_reconnectToServer
{
  FigSimpleMutexLock();
  flashlightLevel = self->_internal->flashlightLevel;
  FigSimpleMutexUnlock();
  v4 = block;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AVFlashlight__reconnectToServer__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  if (flashlightLevel <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
    v5 = v4;
  }

  dispatch_async(self->_internal->serverReconnectQueue, v4);
}

uint64_t __34__AVFlashlight__reconnectToServer__block_invoke(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  [*(a1 + 32) _teardownFlashlight];
  [*(a1 + 32) _setupFlashlight];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v3 + 44);
    if (v5 > 0.0)
    {
      v6 = *(v3 + 36);
      v7 = *(v3 + 40);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v8)
      {
        v8(v4, (v5 - v6) / (v7 - v6));
      }
    }

    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 28);
    if (v10 > 0.0)
    {
      v11 = *(v9 + 16);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v12)
      {
        v12(v11, v10);
      }
    }

    v13 = *(*(*(a1 + 32) + 8) + 16);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v14)
    {
      v14(v13);
    }
  }

  return FigSimpleMutexUnlock();
}

@end