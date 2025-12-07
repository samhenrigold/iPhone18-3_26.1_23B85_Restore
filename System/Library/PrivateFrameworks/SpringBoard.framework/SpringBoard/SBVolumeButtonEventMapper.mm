@interface SBVolumeButtonEventMapper
+ (BOOL)isVolumeButtonRemappingSupported;
+ (BOOL)shouldInvertVolumeButtonsOnEdge:(unint64_t)edge forInterfaceOrientation:(int64_t)orientation userInterfaceLayoutDirection:(int64_t)direction;
- (BOOL)isVolumeButtonEventInvertible:(id)invertible withPressType:(int64_t)type;
- (BOOL)shouldInvertVolumeButtonsForEvent:(id)event withPressType:(int64_t)type;
- (SBVolumeButtonEventMapper)init;
- (int64_t)effectiveInterfaceOrientation;
- (void)_hardwareDefaultsChanged;
- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation;
- (void)dealloc;
- (void)setVolumeButtonRemappingEnabled:(BOOL)enabled;
@end

@implementation SBVolumeButtonEventMapper

- (SBVolumeButtonEventMapper)init
{
  v18.receiver = self;
  v18.super_class = SBVolumeButtonEventMapper;
  v2 = [(SBVolumeButtonEventMapper *)&v18 init];
  if (v2)
  {
    v3 = SBHScreenTypeForCurrentDevice();
    v4 = 8;
    if (v3 == 105)
    {
      v4 = 1;
    }

    v2->_effectiveInterfaceOrientation = 0;
    v2->_buttonsEdge = v4;
    v2->_layoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
    v5 = +[SBDefaults localDefaults];
    hardwareDefaults = [v5 hardwareDefaults];

    objc_initWeak(&location, v2);
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"disableNaturalVolumeButtonOrientation"];
    v8 = MEMORY[0x277D85CD0];
    v9 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __33__SBVolumeButtonEventMapper_init__block_invoke;
    v15 = &unk_2783A8C68;
    objc_copyWeak(&v16, &location);
    v10 = [hardwareDefaults observeDefault:v7 onQueue:v8 withBlock:&v12];

    [(SBVolumeButtonEventMapper *)v2 _hardwareDefaultsChanged:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __33__SBVolumeButtonEventMapper_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hardwareDefaultsChanged];
}

- (void)dealloc
{
  [(SBVolumeButtonEventMapper *)self setVolumeButtonRemappingEnabled:0];
  v3.receiver = self;
  v3.super_class = SBVolumeButtonEventMapper;
  [(SBVolumeButtonEventMapper *)&v3 dealloc];
}

+ (BOOL)isVolumeButtonRemappingSupported
{
  if (__sb__runningInSpringBoard())
  {
    return SBFEffectiveDeviceClass() == 2;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v2 = [currentDevice userInterfaceIdiom] == 1;

  return v2;
}

+ (BOOL)shouldInvertVolumeButtonsOnEdge:(unint64_t)edge forInterfaceOrientation:(int64_t)orientation userInterfaceLayoutDirection:(int64_t)direction
{
  if (edge == 8)
  {
    if (direction == 1)
    {
      return [self _shouldInvertVolumeButtonsForRTLRightEdgePadInInterfaceOrientation:orientation];
    }

    else
    {
      return [self _shouldInvertVolumeButtonsForLTRRightEdgePadInInterfaceOrientation:orientation];
    }
  }

  else if (edge == 1)
  {
    if (direction == 1)
    {
      return [self _shouldInvertVolumeButtonsForRTLTopEdgePadInInterfaceOrientation:orientation];
    }

    else
    {
      return [self _shouldInvertVolumeButtonsForLTRTopEdgePadInInterfaceOrientation:orientation];
    }
  }

  else
  {
    return 0;
  }
}

- (BOOL)isVolumeButtonEventInvertible:(id)invertible withPressType:(int64_t)type
{
  v4 = 0;
  v18 = *MEMORY[0x277D85DE8];
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 0x66 && self->_volumeButtonRemappingEnabled)
  {
    _hidEvent = [invertible _hidEvent];
    if ((IOHIDEventGetIntegerValue() - 233) > 1)
    {
      return 0;
    }

    else
    {
      Type = IOHIDEventGetType();
      v4 = 0;
      if (_hidEvent && Type == 3)
      {
        v7 = BKSHIDEventGetBaseAttributes();
        source = [v7 source];
        if (source)
        {
          v9 = SBLogButtonsVolume(source);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = NSStringFromBKSHIDEventSource();
            v16 = 138543362;
            v17 = v10;
            _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "will not remap presses from source: %{public}@", &v16, 0xCu);
          }

          v4 = 0;
        }

        else
        {
          SenderID = IOHIDEventGetSenderID();
          v12 = SBHIDIsAccessibilitySenderID(SenderID);
          v13 = v12;
          if (v12)
          {
            v14 = SBLogButtonsVolume(v12);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v16 = 134217984;
              v17 = SenderID;
              _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "will not remap presses from accessibility sender: %llX", &v16, 0xCu);
            }
          }

          v4 = v13 ^ 1;
        }
      }
    }
  }

  return v4;
}

- (BOOL)shouldInvertVolumeButtonsForEvent:(id)event withPressType:(int64_t)type
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(SBVolumeButtonEventMapper *)self isVolumeButtonEventInvertible:event withPressType:type])
  {
    effectiveInterfaceOrientation = [(SBVolumeButtonEventMapper *)self effectiveInterfaceOrientation];
    layoutDirection = self->_layoutDirection;
    v7 = [objc_opt_class() shouldInvertVolumeButtonsOnEdge:self->_buttonsEdge forInterfaceOrientation:effectiveInterfaceOrientation userInterfaceLayoutDirection:layoutDirection];
    v8 = SBLogButtonsVolume(v7);
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = BSInterfaceOrientationDescription();
        v11 = v10;
        v12 = self->_buttonsEdge - 1;
        if (v12 > 7)
        {
          v13 = @"(unknown)";
        }

        else
        {
          v13 = off_2783BF060[v12];
        }

        v17 = @"LTR";
        v23 = 138543874;
        v24 = v10;
        v25 = 2114;
        if (layoutDirection == 1)
        {
          v17 = @"RTL";
        }

        v26 = v13;
        v27 = 2114;
        v28 = v17;
        v18 = "we will remap presses in %{public}@ on a device with buttons on the %{public}@ in %{public}@";
        v19 = v9;
        v20 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
        _os_log_impl(&dword_21ED4E000, v19, v20, v18, &v23, 0x20u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = BSInterfaceOrientationDescription();
      v11 = v14;
      v15 = self->_buttonsEdge - 1;
      if (v15 > 7)
      {
        v16 = @"(unknown)";
      }

      else
      {
        v16 = off_2783BF060[v15];
      }

      v21 = @"LTR";
      v23 = 138543874;
      v24 = v14;
      v25 = 2114;
      if (layoutDirection == 1)
      {
        v21 = @"RTL";
      }

      v26 = v16;
      v27 = 2114;
      v28 = v21;
      v18 = "presses in %{public}@ don't need remapping on a device with buttons on the %{public}@ in %{public}@";
      v19 = v9;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

    return v7;
  }

  LOBYTE(v7) = 0;
  return v7;
}

- (void)setVolumeButtonRemappingEnabled:(BOOL)enabled
{
  if (self->_volumeButtonRemappingEnabled != enabled)
  {
    self->_volumeButtonRemappingEnabled = enabled;
    if (enabled)
    {
      [SBApp addActiveOrientationObserver:self];

      [(SBVolumeButtonEventMapper *)self _resetEffectiveInterfaceOrientation];
    }

    else
    {
      [SBApp removeActiveOrientationObserver:self];
      self->_effectiveInterfaceOrientation = 0;
    }
  }
}

- (int64_t)effectiveInterfaceOrientation
{
  v3 = +[SBBacklightController sharedInstance];
  screenIsOn = [v3 screenIsOn];

  if (screenIsOn)
  {
    return self->_effectiveInterfaceOrientation;
  }

  return BKHIDServicesGetNonFlatDeviceOrientation();
}

- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation
{
  objc_initWeak(&location, self);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __118__SBVolumeButtonEventMapper_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke;
  v13 = &unk_2783BF040;
  objc_copyWeak(v14, &location);
  v14[1] = orientation;
  v14[2] = fromOrientation;
  v8 = MEMORY[0x223D6F7F0](&v10);
  v9 = v8;
  if (duration <= 0.0)
  {
    (*(v8 + 16))(v8, 1);
  }

  else
  {
    [MEMORY[0x277D75D18] animateWithDuration:&__block_literal_global_324 animations:v8 completion:{duration, v10, v11, v12, v13}];
  }

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __118__SBVolumeButtonEventMapper_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained[2];
  v4 = [WeakRetained isPreventingEffectiveInterfaceOrientationChanges];
  if (v4)
  {
    v5 = SBLogButtonsVolume(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = BSInterfaceOrientationDescription();
      v7 = BSInterfaceOrientationDescription();
      v14 = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "effective interface orientation for volume button remapping NOT changing from: %{public}@ to: %{public}@ (it's disabled!)", &v14, 0x16u);
    }

LABEL_9:

    goto LABEL_10;
  }

  WeakRetained[2] = *(a1 + 40);
  v8 = SBLogButtonsVolume(v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = BSInterfaceOrientationDescription();
    v10 = BSInterfaceOrientationDescription();
    v14 = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "effective interface orientation for volume button remapping changing from: %{public}@ to: %{public}@", &v14, 0x16u);
  }

  if (*(a1 + 48) != v3)
  {
    v5 = SBLogButtonsVolume(v11);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = BSInterfaceOrientationDescription();
      v13 = BSInterfaceOrientationDescription();
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "effective interface orientation for volume button remapping - update had a fromOrientation mismatch, got: %{public}@, expected: %{public}@", &v14, 0x16u);
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)_hardwareDefaultsChanged
{
  v11 = *MEMORY[0x277D85DE8];
  isVolumeButtonRemappingEnabled = [(SBVolumeButtonEventMapper *)self isVolumeButtonRemappingEnabled];
  v4 = +[SBDefaults localDefaults];
  hardwareDefaults = [v4 hardwareDefaults];
  -[SBVolumeButtonEventMapper setVolumeButtonRemappingEnabled:](self, "setVolumeButtonRemappingEnabled:", [hardwareDefaults isNaturalVolumeButtonOrientationEnabled]);

  isVolumeButtonRemappingEnabled2 = [(SBVolumeButtonEventMapper *)self isVolumeButtonRemappingEnabled];
  if (isVolumeButtonRemappingEnabled != isVolumeButtonRemappingEnabled2)
  {
    v7 = SBLogButtonsVolume(isVolumeButtonRemappingEnabled2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_volumeButtonRemappingEnabled)
      {
        v8 = @"enabled";
      }

      else
      {
        v8 = @"disabled";
      }

      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "volume button remapping is now %{public}@", &v9, 0xCu);
    }
  }
}

@end