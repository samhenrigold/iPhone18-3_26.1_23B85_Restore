@interface SBUIFlashlightController
+ (id)sharedInstance;
- (BOOL)deviceSupportsDynamicFlashlightInterface;
- (SBUIFlashlightController)init;
- (SBUIFlashlightController)initWithFlashlight:(id)flashlight;
- (int)_hasRunningFlashlightAnimation;
- (unint64_t)_loadFlashlightLevel;
- (unint64_t)level;
- (void)_applyPowerChange:(unint64_t)change;
- (void)_beginFlashlightAnimation;
- (void)_endFlashlightAnimation;
- (void)_loadFlashlightIntensity:(float *)intensity width:(float *)width;
- (void)_postAvailabilityChangeNotification:(BOOL)notification;
- (void)_postLevelChangeNotification:(unint64_t)notification;
- (void)_postOverheatedChangeNotification:(BOOL)notification;
- (void)_setFlashlightBeamWidth:(float)width;
- (void)_setFlashlightLevel:(float)level;
- (void)_setIntensity:(double)intensity width:(double)width animated:(BOOL)animated withPowerChange:(unint64_t)change;
- (void)_storeFlashlightLevel:(unint64_t)level;
- (void)_turnPowerOff;
- (void)_turnPowerOn;
- (void)_updateLevelForIntensityChange;
- (void)_updateObservedAvailability:(BOOL)availability isOverheated:(BOOL)overheated;
- (void)_updateObservedBeamWidth:(float)width;
- (void)_updateObservedFlashlightLevel:(float)level;
- (void)addObserver:(id)observer;
- (void)coolDown;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setLevel:(unint64_t)level;
- (void)storeFlashlightIntensity:(float)intensity width:(float)width;
- (void)turnFlashlightOffForReason:(id)reason withCoolDown:(BOOL)down;
- (void)turnFlashlightOnForReason:(id)reason;
- (void)warmUp;
@end

@implementation SBUIFlashlightController

- (void)_updateLevelForIntensityChange
{
  intensity = self->_intensity;
  if (intensity == 0.0)
  {
    v4 = 0;
  }

  else if (intensity >= 0.5)
  {
    v5 = 4;
    if (intensity < 1.0)
    {
      v5 = 3;
    }

    if (intensity >= 0.85)
    {
      v4 = v5;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 1;
  }

  if (self->_level != v4)
  {
    self->_level = v4;
    [(SBUIFlashlightController *)self _postLevelChangeNotification:v4];
    if (!self->_dynamicInterfaceEnabled)
    {

      [(SBUIFlashlightController *)self _storeFlashlightLevel:v4];
    }
  }
}

- (void)_turnPowerOff
{
  [(SBUIFlashlightController *)self _setFlashlightLevel:0.0];
  flashlightQueue = self->_flashlightQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SBUIFlashlightController__turnPowerOff__block_invoke;
  block[3] = &unk_27836AFB0;
  block[4] = self;
  dispatch_async(flashlightQueue, block);
}

- (unint64_t)level
{
  intensity = self->_intensity;
  if (intensity == 0.0)
  {
    return 0;
  }

  if (intensity < 0.5)
  {
    return 1;
  }

  if (intensity < 0.85)
  {
    return 2;
  }

  if (intensity >= 1.0)
  {
    return 4;
  }

  return 3;
}

uint64_t __41__SBUIFlashlightController__turnPowerOff__block_invoke(uint64_t a1)
{
  v2 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21E74E000, v2, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] Power Off", v4, 2u);
  }

  return [*(*(a1 + 32) + 8) turnPowerOff];
}

- (void)coolDown
{
  v3 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21E74E000, v3, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] coolDown", v4, 2u);
  }

  if (self->_intensity <= 0.0)
  {
    if (self->_pendingPowerChange)
    {
      self->_pendingPowerChange = 2;
    }

    else
    {
      [(SBUIFlashlightController *)self _turnPowerOff];
    }
  }

  else
  {
    [(SBUIFlashlightController *)self _setIntensity:0 width:2 animated:0.0 withPowerChange:self->_width];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SBUIFlashlightController sharedInstance];
  }

  v3 = sharedInstance__instance;

  return v3;
}

- (BOOL)deviceSupportsDynamicFlashlightInterface
{
  v2 = SBSIsSystemApertureAvailable();
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x282203478]("SpringBoard", "DynamicFlashlight");
  }

  return v2;
}

- (void)dealloc
{
  [(AVFlashlight *)self->_flashlight removeObserver:self forKeyPath:@"available"];
  [(AVFlashlight *)self->_flashlight removeObserver:self forKeyPath:@"overheated"];
  [(AVFlashlight *)self->_flashlight removeObserver:self forKeyPath:@"flashlightLevel"];
  if (self->_beamWidthSupported)
  {
    [(AVFlashlight *)self->_flashlight removeObserver:self forKeyPath:@"beamWidth"];
  }

  v3.receiver = self;
  v3.super_class = SBUIFlashlightController;
  [(SBUIFlashlightController *)&v3 dealloc];
}

- (SBUIFlashlightController)init
{
  v3 = objc_alloc_init(MEMORY[0x277CE5B78]);
  v4 = [(SBUIFlashlightController *)self initWithFlashlight:v3];

  return v4;
}

- (SBUIFlashlightController)initWithFlashlight:(id)flashlight
{
  v42[1] = *MEMORY[0x277D85DE8];
  flashlightCopy = flashlight;
  v41.receiver = self;
  v41.super_class = SBUIFlashlightController;
  v6 = [(SBUIFlashlightController *)&v41 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_26;
  }

  *&v6->_lock._os_unfair_lock_opaque = 0;
  objc_storeStrong(&v6->_flashlight, flashlight);
  [(AVFlashlight *)v7->_flashlight addObserver:v7 forKeyPath:@"available" options:1 context:0];
  [(AVFlashlight *)v7->_flashlight addObserver:v7 forKeyPath:@"overheated" options:1 context:0];
  [(AVFlashlight *)v7->_flashlight addObserver:v7 forKeyPath:@"flashlightLevel" options:1 context:0];
  v7->_overheated = [(AVFlashlight *)v7->_flashlight isOverheated];
  if ([(AVFlashlight *)v7->_flashlight isAvailable])
  {
    v8 = !v7->_overheated;
  }

  else
  {
    v8 = 0;
  }

  v7->_available = v8;
  [(AVFlashlight *)v7->_flashlight flashlightLevel];
  v7->_intensity = v9;
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  else if (v9 >= 0.5)
  {
    v10 = 2;
    v11 = 4;
    if (v9 < 1.0)
    {
      v11 = 3;
    }

    if (v9 >= 0.85)
    {
      v10 = v11;
    }
  }

  else
  {
    v10 = 1;
  }

  v7->_level = v10;
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);

  v14 = dispatch_queue_create("com.apple.ControlCenter.FlashlightModule.AVFlashlight", v13);
  flashlightQueue = v7->_flashlightQueue;
  v7->_flashlightQueue = v14;

  if (!CCUILogFlashlightModule)
  {
    v16 = os_log_create("com.apple.ControlCenter", "Flashlight");
    v17 = CCUILogFlashlightModule;
    CCUILogFlashlightModule = v16;
  }

  if (![(SBUIFlashlightController *)v7 deviceSupportsDynamicFlashlightInterface])
  {
    p_beamWidthSupported = &v7->_beamWidthSupported;
LABEL_21:
    *p_beamWidthSupported = 0;
    goto LABEL_22;
  }

  beamWidthControlSupported = [(AVFlashlight *)v7->_flashlight beamWidthControlSupported];
  v7->_beamWidthSupported = beamWidthControlSupported;
  p_beamWidthSupported = &v7->_beamWidthSupported;
  if (beamWidthControlSupported)
  {
    [(AVFlashlight *)v7->_flashlight minBeamWidth];
    v7->_minBeamWidth = v20;
    [(AVFlashlight *)v7->_flashlight maxBeamWidth];
    v7->_maxBeamWidth = v21;
    if (v21 != v7->_minBeamWidth)
    {
      [(AVFlashlight *)v7->_flashlight addObserver:v7 forKeyPath:@"beamWidth" options:1 context:0];
      [(AVFlashlight *)v7->_flashlight beamWidth];
      v23 = v22;
      v24 = fmax(fmin((v22 - v7->_minBeamWidth) / (v7->_maxBeamWidth - v7->_minBeamWidth), 1.0), 0.0);
      v7->_width = v24;
      if (v7->_beamWidthSupported)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_22:
  *&v7->_minBeamWidth = 0x3F80000000000000;
  v7->_width = 1.0;
  v23 = 1.0;
LABEL_23:
  deviceSupportsDynamicFlashlightInterface = [(SBUIFlashlightController *)v7 deviceSupportsDynamicFlashlightInterface];
  v7->_dynamicInterfaceEnabled = deviceSupportsDynamicFlashlightInterface;
  if (deviceSupportsDynamicFlashlightInterface)
  {
    v26 = [MEMORY[0x277D75D48] behaviorWithDampingRatio:1.0 response:0.3];
    springBehavior = v7->_springBehavior;
    v7->_springBehavior = v26;

    v28 = [objc_alloc(MEMORY[0x277D75D50]) initWithLength:2];
    animatableProperties = v7->_animatableProperties;
    v7->_animatableProperties = v28;

    v30 = v7->_animatableProperties;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __47__SBUIFlashlightController_initWithFlashlight___block_invoke;
    v38[3] = &unk_27836B398;
    v31 = v7;
    v39 = v31;
    v40 = v23;
    [(UIViewVectorAnimatableProperty *)v30 _mutateValue:v38];
    objc_initWeak(&location, v31);
    v32 = MEMORY[0x277D75D18];
    v42[0] = v7->_animatableProperties;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __47__SBUIFlashlightController_initWithFlashlight___block_invoke_2;
    v35[3] = &unk_27836B3C0;
    objc_copyWeak(&v36, &location);
    [v32 _createTransformerWithInputAnimatableProperties:v33 presentationValueChangedCallback:v35];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

LABEL_26:
  return v7;
}

double __47__SBUIFlashlightController_initWithFlashlight___block_invoke(uint64_t a1, double *a2)
{
  result = *(*(a1 + 32) + 108);
  v3 = *(a1 + 40);
  *a2 = result;
  a2[1] = v3;
  return result;
}

void __47__SBUIFlashlightController_initWithFlashlight___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained[9] _presentationValue];
    v3 = *v2;
    *&v3 = *v2;
    [v5 _setFlashlightLevel:v3];
    v4 = *(v2 + 8);
    *&v4 = v4;
    [v5 _setFlashlightBeamWidth:v4];
    WeakRetained = v5;
  }
}

uint64_t __42__SBUIFlashlightController_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance__instance;
  sharedInstance__instance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)turnFlashlightOnForReason:(id)reason
{
  v11 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  intensity = self->_intensity;
  v6 = CCUILogFlashlightModule;
  v7 = os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT);
  if (intensity <= 0.0)
  {
    if (v7)
    {
      *buf = 5.7779e-34;
      v10 = reasonCopy;
      _os_log_impl(&dword_21E74E000, v6, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] turnFlashlightOnForReason: %@", buf, 0xCu);
    }

    if (self->_dynamicInterfaceEnabled)
    {
      v8 = 0.0;
      *buf = 0.0;
      [(SBUIFlashlightController *)self _loadFlashlightIntensity:buf width:&v8];
      [(SBUIFlashlightController *)self _setIntensity:1 width:0 animated:*buf withPowerChange:v8];
    }

    else
    {
      [(SBUIFlashlightController *)self setLevel:[(SBUIFlashlightController *)self _loadFlashlightLevel]];
    }
  }

  else if (v7)
  {
    *buf = 5.7779e-34;
    v10 = reasonCopy;
    _os_log_impl(&dword_21E74E000, v6, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] Already turned on, got redundant request: %@", buf, 0xCu);
  }
}

- (void)turnFlashlightOffForReason:(id)reason withCoolDown:(BOOL)down
{
  downCopy = down;
  v16 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  pendingPowerChange = self->_pendingPowerChange;
  v8 = CCUILogFlashlightModule;
  v9 = os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT);
  if (pendingPowerChange)
  {
    if (v9)
    {
      v12 = 138412290;
      v13 = reasonCopy;
      _os_log_impl(&dword_21E74E000, v8, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] Already turning off, got redundant request: %@", &v12, 0xCu);
    }

    if (downCopy)
    {
      self->_pendingPowerChange = 2;
    }
  }

  else
  {
    if (v9)
    {
      v10 = &stru_282FD6FB8;
      if (downCopy)
      {
        v10 = @" (with coolDown)";
      }

      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = reasonCopy;
      _os_log_impl(&dword_21E74E000, v8, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] turnFlashlightOffForReason%@: %@", &v12, 0x16u);
    }

    if (downCopy)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    if (self->_intensity <= 0.0)
    {
      [(SBUIFlashlightController *)self _applyPowerChange:v11];
    }

    else
    {
      [(SBUIFlashlightController *)self _setIntensity:1 width:v11 animated:0.0 withPowerChange:self->_width];
    }
  }
}

- (void)setLevel:(unint64_t)level
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    levelCopy = level;
    _os_log_impl(&dword_21E74E000, v5, OS_LOG_TYPE_INFO, "[Flashlight Controller] setLevel: %lu", &v7, 0xCu);
  }

  v6 = 0.0;
  if (level - 1 <= 3)
  {
    v6 = dbl_21E76A9E0[level - 1];
  }

  [(SBUIFlashlightController *)self _setIntensity:v6];
}

- (void)warmUp
{
  v3 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21E74E000, v3, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] warmUp", v4, 2u);
  }

  [(SBUIFlashlightController *)self _turnPowerOn];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:5];
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v50 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (observeValueForKeyPath_ofObject_change_context__onceToken != -1)
  {
    [SBUIFlashlightController observeValueForKeyPath:ofObject:change:context:];
  }

  if (![observeValueForKeyPath_ofObject_change_context__flashlightKVOKeySet containsObject:pathCopy])
  {
    goto LABEL_8;
  }

  if (dispatch_queue_get_label(0) != "com.apple.ControlCenter.FlashlightModule.AVFlashlight")
  {
    if ([(SBUIFlashlightController *)self _hasRunningFlashlightAnimation])
    {
      v13 = CCUILogFlashlightModule;
      if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = pathCopy;
        _os_log_impl(&dword_21E74E000, v13, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] Ignoring KVO change during flashlight animation for %@", buf, 0xCu);
      }

      goto LABEL_48;
    }

LABEL_8:
    if ([pathCopy isEqualToString:@"flashlightLevel"])
    {
      v14 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
      v15 = objc_opt_class();
      v16 = v14;
      if (v15)
      {
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v26 = v17;

      if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEBUG))
      {
        [SBUIFlashlightController observeValueForKeyPath:ofObject:change:context:];
      }

      [v26 floatValue];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __75__SBUIFlashlightController_observeValueForKeyPath_ofObject_change_context___block_invoke_35;
      v46[3] = &unk_27836B3E8;
      v46[4] = self;
      v47 = v27;
      v28 = MEMORY[0x277D85CD0];
      v29 = v46;
    }

    else if ([pathCopy isEqualToString:@"beamWidth"])
    {
      v18 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
      v19 = objc_opt_class();
      v20 = v18;
      if (v19)
      {
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v26 = v21;

      if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEBUG))
      {
        [SBUIFlashlightController observeValueForKeyPath:ofObject:change:context:];
      }

      [v26 floatValue];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __75__SBUIFlashlightController_observeValueForKeyPath_ofObject_change_context___block_invoke_36;
      v44[3] = &unk_27836B3E8;
      v44[4] = self;
      v45 = v34;
      v28 = MEMORY[0x277D85CD0];
      v29 = v44;
    }

    else if ([pathCopy isEqualToString:@"available"])
    {
      v22 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
      v23 = objc_opt_class();
      v24 = v22;
      if (v23)
      {
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      v35 = CCUILogFlashlightModule;
      if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v26;
        _os_log_impl(&dword_21E74E000, v35, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] observed available change to: %@", buf, 0xCu);
      }

      bOOLValue = [v26 BOOLValue];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __75__SBUIFlashlightController_observeValueForKeyPath_ofObject_change_context___block_invoke_37;
      v42[3] = &unk_27836B410;
      v42[4] = self;
      v43 = bOOLValue;
      v28 = MEMORY[0x277D85CD0];
      v29 = v42;
    }

    else
    {
      if (![pathCopy isEqualToString:@"overheated"])
      {
        v39.receiver = self;
        v39.super_class = SBUIFlashlightController;
        [(SBUIFlashlightController *)&v39 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
        goto LABEL_48;
      }

      v30 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
      v31 = objc_opt_class();
      v32 = v30;
      if (v31)
      {
        if (objc_opt_isKindOfClass())
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        v33 = 0;
      }

      v26 = v33;

      v37 = CCUILogFlashlightModule;
      if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v26;
        _os_log_impl(&dword_21E74E000, v37, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] observed overheated change to: %@", buf, 0xCu);
      }

      bOOLValue2 = [v26 BOOLValue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __75__SBUIFlashlightController_observeValueForKeyPath_ofObject_change_context___block_invoke_38;
      block[3] = &unk_27836B410;
      block[4] = self;
      v41 = bOOLValue2;
      v28 = MEMORY[0x277D85CD0];
      v29 = block;
    }

    dispatch_async(v28, v29);

    goto LABEL_48;
  }

  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEBUG))
  {
    [SBUIFlashlightController observeValueForKeyPath:ofObject:change:context:];
  }

LABEL_48:
}

uint64_t __75__SBUIFlashlightController_observeValueForKeyPath_ofObject_change_context___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"flashlightLevel", @"beamWidth", 0}];
  v1 = observeValueForKeyPath_ofObject_change_context__flashlightKVOKeySet;
  observeValueForKeyPath_ofObject_change_context__flashlightKVOKeySet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __75__SBUIFlashlightController_observeValueForKeyPath_ofObject_change_context___block_invoke_37(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1[1] isOverheated];

  return [v1 _updateObservedAvailability:v2 isOverheated:v3];
}

uint64_t __75__SBUIFlashlightController_observeValueForKeyPath_ofObject_change_context___block_invoke_38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2[1] isAvailable];
  v4 = *(a1 + 40);

  return [v2 _updateObservedAvailability:v3 isOverheated:v4];
}

- (void)_updateObservedAvailability:(BOOL)availability isOverheated:(BOOL)overheated
{
  overheatedCopy = overheated;
  overheated = self->_overheated;
  if (overheated != overheated)
  {
    self->_overheated = overheated;
  }

  v7 = availability & ~overheated;
  available = self->_available;
  if (available != v7)
  {
    self->_available = availability & ~overheated;
    if ((availability & ~overheated & 1) == 0)
    {
      v9 = CCUILogFlashlightModule;
      if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_21E74E000, v9, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] Flashlight became unavailable", v10, 2u);
      }

      [(SBUIFlashlightController *)self _setIntensity:0 width:2 animated:0.0 withPowerChange:self->_width];
    }
  }

  if (overheated != overheatedCopy)
  {
    [(SBUIFlashlightController *)self _postOverheatedChangeNotification:overheatedCopy];
  }

  if (available != v7)
  {
    [(SBUIFlashlightController *)self _postAvailabilityChangeNotification:v7];
  }
}

- (void)_updateObservedFlashlightLevel:(float)level
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    levelCopy = level;
    _os_log_impl(&dword_21E74E000, v5, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] Got KVO intensity change to: %f", &v6, 0xCu);
  }

  if (self->_intensity != level)
  {
    self->_intensity = level;
    [(SBUIFlashlightController *)self _updateLevelForIntensityChange];
  }
}

- (void)_updateObservedBeamWidth:(float)width
{
  v15 = *MEMORY[0x277D85DE8];
  minBeamWidth = self->_minBeamWidth;
  maxBeamWidth = self->_maxBeamWidth;
  v5 = self->_width * maxBeamWidth + (1.0 - self->_width) * minBeamWidth;
  if (v5 != width && self->_beamWidthSupported)
  {
    widthCopy = width;
    v8 = fmax(fmin((width - minBeamWidth) / (maxBeamWidth - minBeamWidth), 1.0), 0.0);
    self->_width = v8;
    v9 = CCUILogFlashlightModule;
    if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
    {
      width = self->_width;
      v11 = 134218240;
      widthCopy2 = width;
      v13 = 2048;
      v14 = widthCopy;
      _os_log_impl(&dword_21E74E000, v9, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] Got KVO width change to: %f beamWidth: %f", &v11, 0x16u);
    }
  }
}

- (void)_postOverheatedChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  v19 = *MEMORY[0x277D85DE8];
  v5 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = notificationCopy;
    _os_log_impl(&dword_21E74E000, v5, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] posting overheated change to: %u", buf, 8u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 flashlightOverheatedDidChange:notificationCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_postAvailabilityChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  v18 = *MEMORY[0x277D85DE8];
  v5 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = notificationCopy;
    _os_log_impl(&dword_21E74E000, v5, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] posting available change to: %u", buf, 8u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) flashlightAvailabilityDidChange:notificationCopy];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_postLevelChangeNotification:(unint64_t)notification
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    notificationCopy = notification;
    _os_log_impl(&dword_21E74E000, v5, OS_LOG_TYPE_INFO, "[Flashlight Controller] posting level change to: %lu", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) flashlightLevelDidChange:notification];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_setIntensity:(double)intensity width:(double)width animated:(BOOL)animated withPowerChange:(unint64_t)change
{
  animatedCopy = animated;
  v37 = *MEMORY[0x277D85DE8];
  v11 = fmin(fmax(intensity, 0.0), 1.0);
  v12 = fmin(fmax(width, 0.0), 1.0);
  v13 = v11;
  self->_intensity = v13;
  self->_pendingPowerChange = change;
  if (self->_beamWidthSupported)
  {
    maxBeamWidth = v12 * self->_maxBeamWidth + (1.0 - v12) * self->_minBeamWidth;
  }

  else
  {
    maxBeamWidth = self->_maxBeamWidth;
  }

  v15 = v12;
  self->_width = v15;
  [(SBUIFlashlightController *)self _updateLevelForIntensityChange];
  v16 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219264;
    intensityCopy = intensity;
    v27 = 2048;
    v28 = v11;
    v29 = 2048;
    widthCopy = width;
    v31 = 2048;
    v32 = maxBeamWidth;
    v33 = 1024;
    v34 = animatedCopy;
    v35 = 2048;
    changeCopy = change;
    _os_log_debug_impl(&dword_21E74E000, v16, OS_LOG_TYPE_DEBUG, "[Flashlight Controller] _setIntensity:%0.3f(%0.3f) width:%0.3f(%0.3f) animated:%{BOOL}u withPowerChange:%lu", buf, 0x3Au);
  }

  if (!animatedCopy)
  {
    if (self->_dynamicInterfaceEnabled)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_44;
      v20[3] = &unk_27836B458;
      v20[4] = self;
      *&v20[5] = v11;
      v21 = maxBeamWidth;
      [MEMORY[0x277D75D18] performWithoutAnimation:v20];
      if (!change)
      {
        return;
      }

LABEL_15:
      [(SBUIFlashlightController *)self _applyPowerChange:change];
      return;
    }

LABEL_14:
    *&v17 = v11;
    [(SBUIFlashlightController *)self _setFlashlightLevel:v17];
    if (!change)
    {
      return;
    }

    goto LABEL_15;
  }

  if (!self->_dynamicInterfaceEnabled)
  {
    goto LABEL_14;
  }

  animationCount = self->_animationCount;
  self->_animationCount = animationCount + 1;
  if (!animationCount)
  {
    [(SBUIFlashlightController *)self _beginFlashlightAnimation];
  }

  springBehavior = self->_springBehavior;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke;
  v23[3] = &unk_27836B458;
  v23[4] = self;
  *&v23[5] = v11;
  v24 = maxBeamWidth;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_3;
  v22[3] = &unk_27836B480;
  v22[4] = self;
  v22[5] = change;
  [MEMORY[0x277D75D18] _animateUsingSpringBehavior:springBehavior tracking:0 animations:v23 completion:v22];
}

uint64_t __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_2;
  v3[3] = &__block_descriptor_44_e9_v16__0_d8l;
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 _mutateValue:v3];
}

double __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_2(uint64_t a1, double *a2)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = result;
  a2[1] = v3;
  return result;
}

void __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1 + 32;
  --*(*(a1 + 32) + 80);
  v2 = *(a1 + 32);
  if (!*(v2 + 80))
  {
    v4 = *(v2 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_4;
    block[3] = &unk_27836AFB0;
    block[4] = v2;
    dispatch_async(v4, block);
    v5 = CCUILogFlashlightModule;
    if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEBUG))
    {
      __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_3_cold_1(v1, v5, v6, v7, v8, v9, v10, v11);
    }

    v12 = *v1;
    if (*(*v1 + 88))
    {
      if (v12[27] == 0.0)
      {
        [v12 _applyPowerChange:?];
      }

      else
      {
        v13 = CCUILogFlashlightModule;
        if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 40);
          v15 = *(*(a1 + 32) + 108);
          *buf = 134218240;
          v18 = v14;
          v19 = 2048;
          v20 = v15;
          _os_log_impl(&dword_21E74E000, v13, OS_LOG_TYPE_DEFAULT, "Aborting requested power change (%lu) because intensity is nonzero: %0.3f", buf, 0x16u);
        }

        *(*v1 + 88) = 0;
      }
    }
  }
}

uint64_t __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_44(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_2_45;
  v3[3] = &__block_descriptor_44_e9_v16__0_d8l;
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 _mutateValue:v3];
}

double __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_2_45(uint64_t a1, double *a2)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = result;
  a2[1] = v3;
  return result;
}

- (void)_beginFlashlightAnimation
{
  os_unfair_lock_lock(&self->_lock);
  ++self->_lock_flashlightAnimationCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_endFlashlightAnimation
{
  os_unfair_lock_lock(&self->_lock);
  --self->_lock_flashlightAnimationCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (int)_hasRunningFlashlightAnimation
{
  os_unfair_lock_lock(&self->_lock);
  lock_flashlightAnimationCount = self->_lock_flashlightAnimationCount;
  os_unfair_lock_unlock(&self->_lock);
  return lock_flashlightAnimationCount > 0;
}

- (void)_applyPowerChange:(unint64_t)change
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    changeCopy = change;
    _os_log_impl(&dword_21E74E000, v5, OS_LOG_TYPE_DEFAULT, "Applying power change: %lu", &v6, 0xCu);
  }

  if (change == 2)
  {
    [(SBUIFlashlightController *)self _turnPowerOff];
  }

  else if (change == 1)
  {
    [(SBUIFlashlightController *)self _setFlashlightLevel:0.0];
  }

  self->_pendingPowerChange = 0;
}

- (void)_setFlashlightLevel:(float)level
{
  flashlightQueue = self->_flashlightQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SBUIFlashlightController__setFlashlightLevel___block_invoke;
  v4[3] = &unk_27836B3E8;
  v4[4] = self;
  levelCopy = level;
  dispatch_async(flashlightQueue, v4);
}

void __48__SBUIFlashlightController__setFlashlightLevel___block_invoke(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 32) + 8);
  LODWORD(a2) = *(a1 + 40);
  v5 = 0;
  v3 = [v2 setFlashlightLevel:&v5 withError:a2];
  v4 = v5;
  if ((v3 & 1) == 0 && os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_ERROR))
  {
    __48__SBUIFlashlightController__setFlashlightLevel___block_invoke_cold_1();
  }
}

- (void)_setFlashlightBeamWidth:(float)width
{
  if (self->_beamWidthSupported)
  {
    v9 = v3;
    v10 = v4;
    v5 = fmaxf(self->_minBeamWidth, fminf(width, self->_maxBeamWidth));
    flashlightQueue = self->_flashlightQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__SBUIFlashlightController__setFlashlightBeamWidth___block_invoke;
    v7[3] = &unk_27836B3E8;
    v7[4] = self;
    v8 = v5;
    dispatch_async(flashlightQueue, v7);
  }
}

- (void)_turnPowerOn
{
  v3 = CCUILogFlashlightModule;
  if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21E74E000, v3, OS_LOG_TYPE_DEFAULT, "[Flashlight Controller] Power On", buf, 2u);
  }

  flashlightQueue = self->_flashlightQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SBUIFlashlightController__turnPowerOn__block_invoke;
  block[3] = &unk_27836AFB0;
  block[4] = self;
  dispatch_async(flashlightQueue, block);
}

void __40__SBUIFlashlightController__turnPowerOn__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v4 = 0;
  v2 = [v1 turnPowerOnWithError:&v4];
  v3 = v4;
  if ((v2 & 1) == 0 && os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_ERROR))
  {
    __40__SBUIFlashlightController__turnPowerOn__block_invoke_cold_1();
  }
}

- (void)_storeFlashlightLevel:(unint64_t)level
{
  if (level)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setInteger:level forKey:@"FlashlightLevel"];
  }
}

- (unint64_t)_loadFlashlightLevel
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"FlashlightLevel"];

  if (v3 - 1 >= 4)
  {
    return SBUIFlashlightLevelDefault;
  }

  else
  {
    return v3;
  }
}

- (void)storeFlashlightIntensity:(float)intensity width:(float)width
{
  v19 = *MEMORY[0x277D85DE8];
  if (intensity > 0.0)
  {
    intensityCopy = intensity;
    v8 = CCUILogFlashlightModule;
    if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_INFO))
    {
      v15 = 134218240;
      v16 = intensityCopy;
      v17 = 2048;
      widthCopy = width;
      _os_log_impl(&dword_21E74E000, v8, OS_LOG_TYPE_INFO, "[Flashlight Controller] Persisting intensity: %f, width: %f", &v15, 0x16u);
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    *&v10 = intensity;
    [standardUserDefaults setFloat:@"FlashlightIntensity" forKey:v10];

    if (intensity >= 0.5)
    {
      v12 = 4;
      if (intensity < 1.0)
      {
        v12 = 3;
      }

      if (intensityCopy >= 0.85)
      {
        v11 = v12;
      }

      else
      {
        v11 = 2;
      }
    }

    else
    {
      v11 = 1;
    }

    [(SBUIFlashlightController *)self _storeFlashlightLevel:v11];
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    *&v14 = width;
    [standardUserDefaults2 setFloat:@"FlashlightWidth" forKey:v14];
  }
}

- (void)_loadFlashlightIntensity:(float *)intensity width:(float *)width
{
  v20 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = standardUserDefaults;
  if (intensity)
  {
    v8 = [standardUserDefaults objectForKey:@"FlashlightIntensity"];

    if (v8)
    {
      [v7 floatForKey:@"FlashlightIntensity"];
      v10 = fminf(fmaxf(v9, 0.0), 1.0);
    }

    else
    {
      v10 = 1.0;
    }

    *intensity = v10;
    v11 = CCUILogFlashlightModule;
    if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_INFO))
    {
      v12 = *intensity;
      v18 = 134217984;
      v19 = v12;
      _os_log_impl(&dword_21E74E000, v11, OS_LOG_TYPE_INFO, "[Flashlight Controller] Loaded intensity: %f", &v18, 0xCu);
    }
  }

  if (width)
  {
    v13 = [v7 objectForKey:@"FlashlightWidth"];

    if (v13)
    {
      [v7 floatForKey:@"FlashlightWidth"];
      v15 = fminf(fmaxf(v14, 0.0), 1.0);
    }

    else
    {
      v15 = 0.5;
    }

    *width = v15;
    v16 = CCUILogFlashlightModule;
    if (os_log_type_enabled(CCUILogFlashlightModule, OS_LOG_TYPE_INFO))
    {
      v17 = *width;
      v18 = 134217984;
      v19 = v17;
      _os_log_impl(&dword_21E74E000, v16, OS_LOG_TYPE_INFO, "[Flashlight Controller] Loaded width: %f", &v18, 0xCu);
    }
  }
}

double __73__SBUIFlashlightController__setIntensity_width_animated_withPowerChange___block_invoke_3_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v9) = 134217984;
  *(&v9 + 4) = *(*a1 + 108);
  OUTLINED_FUNCTION_0_0(&dword_21E74E000, a2, a3, "[Flashlight Controller] Animations Finished; _intensity = %f", a5, a6, a7, a8, v9, DWORD2(v9));
  return result;
}

void __48__SBUIFlashlightController__setFlashlightLevel___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_21E74E000, v0, OS_LOG_TYPE_ERROR, "Error setting flashlight level: %@", v1, 0xCu);
}

void __40__SBUIFlashlightController__turnPowerOn__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_21E74E000, v0, OS_LOG_TYPE_ERROR, "Error turning on flashlight power: %@", v1, 0xCu);
}

@end