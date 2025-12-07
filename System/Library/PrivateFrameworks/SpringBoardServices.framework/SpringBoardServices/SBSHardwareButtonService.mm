@interface SBSHardwareButtonService
+ (SBSHardwareButtonService)sharedInstance;
- (BOOL)getAssociatedHintViewsSupported;
- (id)_viableConsumerForButtonKind:(int64_t)kind event:(int64_t)event priority:(int64_t)priority;
- (id)acquireCaptureButtonSuppressionAssertionWithOptions:(unint64_t)options reason:(id)reason;
- (id)beginConsumingPressesForButtonKind:(int64_t)kind eventConsumer:(id)consumer priority:(int64_t)priority;
- (id)deferHIDEventsForButtonKind:(int64_t)kind toToken:(id)token;
- (id)description;
- (id)registerAssociatedHintViewContextId:(unsigned int)id layerRenderId:(unint64_t)renderId layerSize:(CGSize)size forButtonKind:(int64_t)kind;
- (int64_t)toggleStateForButtonKind:(int64_t)kind;
- (void)_addEventConsumerInfo:(id)info;
- (void)_mainQueue_handleButtonPressMessage:(int64_t)message forButtonKind:(int64_t)kind priority:(int64_t)priority;
- (void)_resetEventMaskForButtonKind:(int64_t)kind;
- (void)_setApplicationClientEventMask:(unint64_t)mask buttonKind:(int64_t)kind priority:(int64_t)priority;
- (void)acquireHomeHardwareButtonHintSuppressionAssertionForReason:(id)reason completion:(id)completion;
- (void)consumerInfoWillInvalidate:(id)invalidate;
- (void)fetchHapticTypeForButtonKind:(int64_t)kind completion:(id)completion;
- (void)handleButtonPressMessage:(int64_t)message forButtonKind:(int64_t)kind priority:(int64_t)priority;
- (void)requestSystemGlowEffectWithInitialStyle:(int64_t)style completion:(id)completion;
- (void)setHapticType:(int64_t)type forButtonKind:(int64_t)kind;
- (void)updateHintViewContentVisibility:(int64_t)visibility forButton:(int64_t)button animationSettings:(id)settings;
- (void)updateSystemGlowStyle:(int64_t)style;
@end

@implementation SBSHardwareButtonService

+ (SBSHardwareButtonService)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SBSHardwareButtonService_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __42__SBSHardwareButtonService_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  sharedInstance_instance = v1;

  return MEMORY[0x1EEE66BB8](v1);
}

- (void)acquireHomeHardwareButtonHintSuppressionAssertionForReason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  reasonCopy = reason;
  callbackQueue = [(SBSAbstractFacilityService *)self callbackQueue];
  client = [(SBSAbstractSystemService *)self client];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__SBSHardwareButtonService_acquireHomeHardwareButtonHintSuppressionAssertionForReason_completion___block_invoke;
  v12[3] = &unk_1E735F818;
  v13 = callbackQueue;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = callbackQueue;
  [client acquireAssertionOfType:0 forReason:reasonCopy withCompletion:v12];
}

void __98__SBSHardwareButtonService_acquireHomeHardwareButtonHintSuppressionAssertionForReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__SBSHardwareButtonService_acquireHomeHardwareButtonHintSuppressionAssertionForReason_completion___block_invoke_2;
  v7[3] = &unk_1E735F120;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_buttonConfigurationsPerKind withName:@"buttonConfigurationsPerKind" skipIfNil:0];
  v5 = [v3 appendObject:self->_consumersPerKind withName:@"consumersPerKind" skipIfNil:0];
  build = [v3 build];

  return build;
}

- (void)_setApplicationClientEventMask:(unint64_t)mask buttonKind:(int64_t)kind priority:(int64_t)priority
{
  client = [(SBSAbstractSystemService *)self client];
  [client setEventMask:mask forButtonKind:kind priority:priority];
}

- (void)_resetEventMaskForButtonKind:(int64_t)kind
{
  v36 = *MEMORY[0x1E69E9840];
  buttonConfigurationsPerKind = self->_buttonConfigurationsPerKind;
  if (!buttonConfigurationsPerKind)
  {
    v6 = objc_alloc_init(MEMORY[0x1E698E6E0]);
    v7 = self->_buttonConfigurationsPerKind;
    self->_buttonConfigurationsPerKind = v6;

    buttonConfigurationsPerKind = self->_buttonConfigurationsPerKind;
  }

  v8 = [(BSMutableIntegerMap *)buttonConfigurationsPerKind objectForKey:kind];
  eventMask = [v8 eventMask];
  maximumPriority = [v8 maximumPriority];
  [(BSMutableIntegerMap *)self->_consumersPerKind objectForKey:kind];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v30 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v14 = *v28;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v28 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v27 + 1) + 8 * v15);
      if ([v16 buttonKind] == kind)
      {
        v13 |= [v16 eventMask];
        eventPriority = [v16 eventPriority];
        if (eventPriority > v12)
        {
          v12 = eventPriority;
        }

        if ((v13 & 0x10000) != 0)
        {
          break;
        }
      }

      if (v11 == ++v15)
      {
        v11 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (eventMask == v13)
  {
    v19 = maximumPriority;
    if (maximumPriority == v12)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v20 = SBLogCommon(v18);
    v19 = maximumPriority;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = NSStringFromSBSHardwareButtonKind(kind);
      *buf = 134218498;
      *v32 = eventMask;
      *&v32[8] = 2048;
      *v33 = v13;
      *&v33[8] = 2114;
      v34 = v21;
      _os_log_impl(&dword_19169D000, v20, OS_LOG_TYPE_DEFAULT, "changing event mask from:%lX to:%lX for buttonKind %{public}@", buf, 0x20u);
    }

    if (maximumPriority == v12)
    {
      goto LABEL_25;
    }
  }

  v22 = SBLogCommon(v18);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = NSStringFromSBSHardwareButtonKind(kind);
    *buf = 67109634;
    *v32 = v19;
    *&v32[4] = 1024;
    *&v32[6] = v12;
    *v33 = 2114;
    *&v33[2] = v23;
    _os_log_impl(&dword_19169D000, v22, OS_LOG_TYPE_DEFAULT, "changing priority from:%d to:%d for buttonKind %{public}@", buf, 0x18u);
  }

LABEL_25:
  v24 = objc_alloc_init(_SBSHardwareButtonEventConfiguration);
  [(_SBSHardwareButtonEventConfiguration *)v24 setEventMask:v13];
  [(_SBSHardwareButtonEventConfiguration *)v24 setMaximumPriority:v12];
  [(BSMutableIntegerMap *)self->_buttonConfigurationsPerKind setObject:v24 forKey:kind];
  [(SBSHardwareButtonService *)self _setApplicationClientEventMask:v13 buttonKind:kind priority:v12];

LABEL_26:
}

- (id)_viableConsumerForButtonKind:(int64_t)kind event:(int64_t)event priority:(int64_t)priority
{
  eventCopy = event;
  v21 = *MEMORY[0x1E69E9840];
  [(BSMutableIntegerMap *)self->_consumersPerKind objectForKey:kind];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    v11 = (1 << eventCopy) | 0x10000;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 eventPriority] >= priority && (objc_msgSend(v13, "eventMask") & v11) != 0)
        {
          v14 = v13;
          goto LABEL_12;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (void)_addEventConsumerInfo:(id)info
{
  infoCopy = info;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [infoCopy setService:self];
  buttonKind = [infoCopy buttonKind];
  consumersPerKind = self->_consumersPerKind;
  if (!consumersPerKind)
  {
    v6 = objc_alloc_init(MEMORY[0x1E698E6E0]);
    v7 = self->_consumersPerKind;
    self->_consumersPerKind = v6;

    consumersPerKind = self->_consumersPerKind;
  }

  v8 = [(BSMutableIntegerMap *)consumersPerKind objectForKey:buttonKind];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(BSMutableIntegerMap *)self->_consumersPerKind setObject:v8 forKey:buttonKind];
  }

  [v8 insertObject:infoCopy atIndex:0];
  -[SBSHardwareButtonService _resetEventMaskForButtonKind:](self, "_resetEventMaskForButtonKind:", [infoCopy buttonKind]);
}

- (void)_mainQueue_handleButtonPressMessage:(int64_t)message forButtonKind:(int64_t)kind priority:(int64_t)priority
{
  v26 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v10 = [(SBSHardwareButtonService *)self _viableConsumerForButtonKind:kind event:message priority:priority];
  v11 = SBLogCommon(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    *v23 = message;
    *&v23[4] = 2114;
    *&v23[6] = v10;
    v24 = 1024;
    LODWORD(v25) = priority;
    _os_log_impl(&dword_19169D000, v11, OS_LOG_TYPE_INFO, "dispatch eventType:%d to consumer:%{public}@ at priority:%d", buf, 0x18u);
  }

  if (v10)
  {
    eventMask = [v10 eventMask];
    consumer = [v10 consumer];
    v15 = consumer;
    if (((eventMask >> message) & 1) == 0)
    {
      if ((eventMask & 0x10000) != 0)
      {
        goto LABEL_19;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBSHardwareButtonService.m" lineNumber:362 description:{@"Invalid parameter not satisfying: %@", @"NO"}];
    }

    if (message > 3)
    {
      if (message <= 5)
      {
        if (message == 4)
        {
          [v15 consumeTriplePressUpForButtonKind:kind];
        }

        else
        {
          [v15 consumeLongPressForButtonKind:kind];
        }

        goto LABEL_32;
      }

      switch(message)
      {
        case 8:
          v19 = v15;
          v20 = 0;
          break;
        case 7:
          v19 = v15;
          v20 = 1;
          break;
        case 6:
          [v15 consumeSinglePressDownForButtonKind:kind];
          goto LABEL_32;
        default:
          goto LABEL_29;
      }

      [v19 consumeStateChange:v20 forButtonKind:kind];
      goto LABEL_32;
    }

    if (message > 1)
    {
      if (message == 2)
      {
        [v15 consumeDoublePressDownForButtonKind:kind];
      }

      else
      {
        [v15 consumeDoublePressUpForButtonKind:kind];
      }

      goto LABEL_32;
    }

    if (message)
    {
      if (message == 1)
      {
        [v15 consumeSinglePressUpForButtonKind:kind];
        goto LABEL_32;
      }

LABEL_29:
      v21 = SBLogCommon(consumer);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SBSHardwareButtonService _mainQueue_handleButtonPressMessage:message forButtonKind:v21 priority:?];
      }

      goto LABEL_32;
    }

LABEL_19:
    [v15 consumeAnyPressEventForButtonKind:kind];
    goto LABEL_32;
  }

  v15 = SBLogCommon(v12);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v17 = NSStringFromSBSHardwareButtonKind(kind);
    v18 = [(BSMutableIntegerMap *)self->_consumersPerKind objectForKey:kind];
    *buf = 138543874;
    *v23 = v17;
    *&v23[8] = 1024;
    *&v23[10] = message;
    v24 = 2114;
    v25 = v18;
    _os_log_error_impl(&dword_19169D000, v15, OS_LOG_TYPE_ERROR, "no viable consumer for button:%{public}@ eventType:%d -- consumers:%{public}@", buf, 0x1Cu);
  }

LABEL_32:
}

- (id)beginConsumingPressesForButtonKind:(int64_t)kind eventConsumer:(id)consumer priority:(int64_t)priority
{
  consumerCopy = consumer;
  if ((kind - 1) >= 6)
  {
    [SBSHardwareButtonService beginConsumingPressesForButtonKind:a2 eventConsumer:self priority:?];
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v10 = [_SBSHardwareButtonEventConsumerInfo infoWithConsumer:consumerCopy];
  [v10 setButtonKind:kind];
  [v10 setEventPriority:priority];
  [(SBSHardwareButtonService *)self _addEventConsumerInfo:v10];

  return v10;
}

- (int64_t)toggleStateForButtonKind:(int64_t)kind
{
  if (kind != 6)
  {
    return -1;
  }

  client = [(SBSAbstractSystemService *)self client];
  v4 = [client toggleStateForButtonKind:6];

  return v4;
}

- (id)deferHIDEventsForButtonKind:(int64_t)kind toToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    [SBSHardwareButtonService deferHIDEventsForButtonKind:a2 toToken:self];
  }

  if (kind != 7)
  {
    [SBSHardwareButtonService deferHIDEventsForButtonKind:a2 toToken:self];
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  requestHIDAssertionsPerKind = self->_requestHIDAssertionsPerKind;
  if (!requestHIDAssertionsPerKind)
  {
    v9 = objc_alloc_init(MEMORY[0x1E698E6E0]);
    v10 = self->_requestHIDAssertionsPerKind;
    self->_requestHIDAssertionsPerKind = v9;

    requestHIDAssertionsPerKind = self->_requestHIDAssertionsPerKind;
  }

  v11 = [(BSMutableIntegerMap *)requestHIDAssertionsPerKind objectForKey:kind];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(BSMutableIntegerMap *)self->_requestHIDAssertionsPerKind setObject:v11 forKey:kind];
  }

  v12 = objc_alloc(MEMORY[0x1E698E778]);
  v13 = MEMORY[0x1E696AEC0];
  v14 = NSStringFromSBSHardwareButtonKind(kind);
  v15 = [v13 stringWithFormat:@"I wanna %@", v14];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__SBSHardwareButtonService_deferHIDEventsForButtonKind_toToken___block_invoke;
  v21[3] = &unk_1E735F840;
  v16 = v11;
  v22 = v16;
  selfCopy = self;
  v17 = tokenCopy;
  v24 = v17;
  kindCopy = kind;
  v18 = [v12 initWithIdentifier:@"HID event request" forReason:v15 invalidationBlock:v21];

  [v16 addObject:v18];
  if ([v16 count] == 1)
  {
    client = [(SBSAbstractSystemService *)self client];
    [client setRequestsHIDEvents:1 token:v17 forButtonKind:kind];
  }

  return v18;
}

void __64__SBSHardwareButtonService_deferHIDEventsForButtonKind_toToken___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) removeObject:a2];
  if (![*(a1 + 32) count])
  {
    v3 = [*(a1 + 40) client];
    [v3 setRequestsHIDEvents:0 token:*(a1 + 48) forButtonKind:*(a1 + 56)];
  }
}

- (void)setHapticType:(int64_t)type forButtonKind:(int64_t)kind
{
  client = [(SBSAbstractSystemService *)self client];
  [client setHapticType:type forButtonKind:kind];
}

- (void)fetchHapticTypeForButtonKind:(int64_t)kind completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    callbackQueue = [(SBSAbstractFacilityService *)self callbackQueue];
    client = [(SBSAbstractSystemService *)self client];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__SBSHardwareButtonService_fetchHapticTypeForButtonKind_completion___block_invoke;
    v10[3] = &unk_1E735F890;
    v11 = callbackQueue;
    v12 = completionCopy;
    v9 = callbackQueue;
    [client fetchHapticTypeForButtonKind:kind completion:v10];
  }
}

void __68__SBSHardwareButtonService_fetchHapticTypeForButtonKind_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__SBSHardwareButtonService_fetchHapticTypeForButtonKind_completion___block_invoke_2;
  v4[3] = &unk_1E735F868;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (BOOL)getAssociatedHintViewsSupported
{
  client = [(SBSAbstractSystemService *)self client];
  getAssociatedHintViewsSupported = [client getAssociatedHintViewsSupported];

  return getAssociatedHintViewsSupported;
}

- (id)registerAssociatedHintViewContextId:(unsigned int)id layerRenderId:(unint64_t)renderId layerSize:(CGSize)size forButtonKind:(int64_t)kind
{
  height = size.height;
  width = size.width;
  v10 = *&id;
  if (kind > 0xA || ((1 << kind) & 0x51C) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBSHardwareButtonService.m" lineNumber:480 description:{@"Invalid parameter not satisfying: %@", @"_SBSHardwareButtonServiceIsSupportedHintViewButtonKind(buttonKind)"}];
  }

  client = [(SBSAbstractSystemService *)self client];
  v14 = [client registerAssociatedHintViewContextId:v10 layerRenderId:renderId layerSize:kind forButtonKind:{width, height}];

  return v14;
}

- (void)updateHintViewContentVisibility:(int64_t)visibility forButton:(int64_t)button animationSettings:(id)settings
{
  settingsCopy = settings;
  client = [(SBSAbstractSystemService *)self client];
  [client updateHintViewContentVisibility:visibility forButton:button animationSettings:settingsCopy];
}

- (void)requestSystemGlowEffectWithInitialStyle:(int64_t)style completion:(id)completion
{
  completionCopy = completion;
  client = [(SBSAbstractSystemService *)self client];
  [client requestSystemGlowEffectWithInitialStyle:style completion:completionCopy];
}

- (void)updateSystemGlowStyle:(int64_t)style
{
  client = [(SBSAbstractSystemService *)self client];
  [client updateSystemGlowStyle:style];
}

- (id)acquireCaptureButtonSuppressionAssertionWithOptions:(unint64_t)options reason:(id)reason
{
  reasonCopy = reason;
  captureButtonRestrictionService = self->_captureButtonRestrictionService;
  if (!captureButtonRestrictionService)
  {
    v8 = objc_alloc_init(SBSCaptureButtonRestrictionService);
    v9 = self->_captureButtonRestrictionService;
    self->_captureButtonRestrictionService = v8;

    captureButtonRestrictionService = self->_captureButtonRestrictionService;
  }

  v10 = [(SBSCaptureButtonRestrictionService *)captureButtonRestrictionService acquireCaptureButtonSuppressionAssertionWithOptions:options reason:reasonCopy];

  return v10;
}

- (void)handleButtonPressMessage:(int64_t)message forButtonKind:(int64_t)kind priority:(int64_t)priority
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__SBSHardwareButtonService_handleButtonPressMessage_forButtonKind_priority___block_invoke;
  v5[3] = &unk_1E735F8B8;
  v5[4] = self;
  v5[5] = message;
  v5[6] = kind;
  v5[7] = priority;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)consumerInfoWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  buttonKind = [invalidateCopy buttonKind];
  v5 = [(BSMutableIntegerMap *)self->_consumersPerKind objectForKey:buttonKind];
  [v5 removeObject:invalidateCopy];
  if (![v5 count])
  {
    [(BSMutableIntegerMap *)self->_consumersPerKind removeObjectForKey:buttonKind];
  }

  -[SBSHardwareButtonService _resetEventMaskForButtonKind:](self, "_resetEventMaskForButtonKind:", [invalidateCopy buttonKind]);
}

- (void)_mainQueue_handleButtonPressMessage:(int)a1 forButtonKind:(NSObject *)a2 priority:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_19169D000, a2, OS_LOG_TYPE_ERROR, "unsupported event type:%d", v2, 8u);
}

- (void)beginConsumingPressesForButtonKind:(uint64_t)a1 eventConsumer:(uint64_t)a2 priority:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSHardwareButtonService.m" lineNumber:409 description:{@"Invalid parameter not satisfying: %@", @"_SBSHardwareButtonServiceIsSupportedConsumerButtonKind(buttonKind)"}];
}

- (void)deferHIDEventsForButtonKind:(uint64_t)a1 toToken:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSHardwareButtonService.m" lineNumber:431 description:{@"Invalid parameter not satisfying: %@", @"token != nil"}];
}

- (void)deferHIDEventsForButtonKind:(uint64_t)a1 toToken:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSHardwareButtonService.m" lineNumber:432 description:{@"Invalid parameter not satisfying: %@", @"_SBSHardwareButtonServiceIsSupportedDeferringButtonKind(kind)"}];
}

@end