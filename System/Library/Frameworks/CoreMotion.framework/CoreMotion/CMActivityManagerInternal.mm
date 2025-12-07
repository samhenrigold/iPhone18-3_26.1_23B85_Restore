@interface CMActivityManagerInternal
- (CMActivityManagerInternal)init;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)overrideOscarSideband:(BOOL)sideband withState:(int64_t)state;
- (void)simulateMotionState:(BOOL)state withState:(int64_t)withState withHint:(int64_t)hint;
- (void)simulateMotionStateYouthWithState:(int64_t)state;
- (void)startActivityUpdatesWithHandlerPrivate:(id)private;
- (void)stopActivityUpdatesPrivate;
@end

@implementation CMActivityManagerInternal

- (CMActivityManagerInternal)init
{
  v4.receiver = self;
  v4.super_class = CMActivityManagerInternal;
  v2 = [(CMActivityManagerInternal *)&v4 init];
  if (v2)
  {
    v2->fPrivateQueue = dispatch_queue_create("com.apple.CoreMotion.CMActivityManagerPrivateQueue", 0);
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend_disconnect(self, a2, v2);
  fActivityHandler = self->fActivityHandler;
  if (fActivityHandler)
  {

    self->fActivityHandler = 0;
  }

  dispatch_release(self->fPrivateQueue);
  self->fPrivateQueue = 0;
  fSidebandOverrideSemaphore = self->fSidebandOverrideSemaphore;
  if (fSidebandOverrideSemaphore)
  {
    dispatch_release(fSidebandOverrideSemaphore);
  }

  fSidebandOverrideQueue = self->fSidebandOverrideQueue;
  if (fSidebandOverrideQueue)
  {
    dispatch_release(fSidebandOverrideQueue);
  }

  v7.receiver = self;
  v7.super_class = CMActivityManagerInternal;
  [(CMActivityManagerInternal *)&v7 dealloc];
}

- (void)connect
{
  if (!self->fLocationdConnection)
  {
    operator new();
  }
}

- (void)disconnect
{
  fLocationdConnection = self->fLocationdConnection;
  if (fLocationdConnection)
  {
    v4 = MEMORY[0x19EAE71C0](fLocationdConnection, a2);
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
    self->fLocationdConnection = 0;
  }
}

- (void)startActivityUpdatesWithHandlerPrivate:(id)private
{
  v14[1] = *MEMORY[0x1E69E9840];
  fActivityHandler = self->fActivityHandler;
  if (fActivityHandler != private)
  {

    self->fActivityHandler = objc_msgSend_copy(private, v6, v7);
    objc_msgSend_connect(self, v8, v9);
    if (!self->fSubscribedToMotionState)
    {
      v13 = @"kCLConnectionMessageSubscribeKey";
      v14[0] = MEMORY[0x1E695E118];
      v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v14, &v13, 1);
      sub_19B6C0E58(&v11, &v12);
    }
  }
}

- (void)stopActivityUpdatesPrivate
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self->fActivityHandler)
  {
    v4 = @"kCLConnectionMessageSubscribeKey";
    v5[0] = MEMORY[0x1E695E110];
    v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, &v4, 1);
    sub_19B6C0E58(&v2, &v3);
  }
}

- (void)overrideOscarSideband:(BOOL)sideband withState:(int64_t)state
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (!self->fSidebandOverrideSemaphore)
  {
    __assert_rtn("[CMActivityManagerInternal overrideOscarSideband:withState:]", "CMActivityManager.mm", 219, "fSidebandOverrideSemaphore && fSidbandOverrideSemaphore not initialized.");
  }

  sidebandCopy = sideband;
  objc_msgSend_connect(self, a2, sideband);
  if (self->fLocationdConnection)
  {
    v11[0] = @"CMOverrideSidebandOverride";
    v12[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v7, sidebandCopy);
    v11[1] = @"CMStateSidebandState";
    v12[1] = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, state);
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v12, v11, 2);
    self->fSidebandOverrideWaiting = 1;
    sub_19B686A4C();
  }

  self->fSidebandOverrideResult = 3;
  fSidebandOverrideSemaphore = self->fSidebandOverrideSemaphore;

  dispatch_semaphore_signal(fSidebandOverrideSemaphore);
}

- (void)simulateMotionState:(BOOL)state withState:(int64_t)withState withHint:(int64_t)hint
{
  v15[3] = *MEMORY[0x1E69E9840];
  if (!self->fMotionStateSimSemaphore)
  {
    __assert_rtn("[CMActivityManagerInternal simulateMotionState:withState:withHint:]", "CMActivityManager.mm", 238, "fMotionStateSimSemaphore && fMotionStateSimSemaphore not initialized.");
  }

  stateCopy = state;
  objc_msgSend_connect(self, a2, state);
  if (self->fLocationdConnection)
  {
    v14[0] = @"CMMotionStateSim";
    v15[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v9, stateCopy);
    v14[1] = @"CMMotionStateSimState";
    v15[1] = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v10, withState);
    v14[2] = @"CMMotionStateSimHint";
    v15[2] = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v11, hint);
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v15, v14, 3);
    self->fMotionStateSimWaiting = 1;
    sub_19B6C0F30();
  }

  self->fMotionStateSimResult = 3;
  fMotionStateSimSemaphore = self->fMotionStateSimSemaphore;

  dispatch_semaphore_signal(fMotionStateSimSemaphore);
}

- (void)simulateMotionStateYouthWithState:(int64_t)state
{
  v8[1] = *MEMORY[0x1E69E9840];
  objc_msgSend_connect(self, a2, state);
  if (self->fLocationdConnection)
  {
    v7 = @"CMMotionStateSimState";
    v8[0] = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v5, state);
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v8, &v7, 1);
    sub_19B5D12C8();
  }

  self->fMotionStateYouthSimResult = 3;
}

@end