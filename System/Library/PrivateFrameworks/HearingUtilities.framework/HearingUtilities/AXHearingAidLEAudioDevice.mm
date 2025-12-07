@interface AXHearingAidLEAudioDevice
- (BOOL)addPeripheral:(id)peripheral;
- (BOOL)addPeripheral:(id)peripheral asLeft:(BOOL)left;
- (BOOL)didLoadPersistentProperties;
- (id)discoveringServiceUUIDs;
- (id)peripheral:(id)peripheral characteristicForUUID:(id)d;
- (int)earForPeripheral:(id)peripheral;
- (unint64_t)availablePropertiesForPeripheral:(id)peripheral;
- (unint64_t)availablePropertiesFromDISForPeripheral:(id)peripheral;
- (void)connect;
- (void)connectionDidChange;
- (void)dealloc;
- (void)delayWriteProperty:(unint64_t)property forPeripheral:(id)peripheral;
- (void)didLoadPersistentProperties;
- (void)disconnectAndUnpair:(BOOL)unpair;
- (void)loadBasicProperties;
- (void)loadProperties:(unint64_t)properties forPeripheral:(id)peripheral withRetryPeriod:(double)period;
- (void)loadRequiredProperties;
- (void)peripheralDidUpdateDeviceInfo;
- (void)processBTPresetsUpdate:(id)update activePreset:(id)preset forEar:(int)ear;
- (void)sessionDidUpdateLocations:(id)locations;
- (void)sessionDidUpdateValue:(id)value forProperty:(unint64_t)property;
- (void)setBasicPropertiesLoaded;
- (void)setNotify:(BOOL)notify forPeripheral:(id)peripheral;
- (void)setValue:(id)value forProperty:(unint64_t)property;
- (void)setupLoadingProperties;
- (void)setupUpdatesHandlerForLEAudioPeripheral:(id)peripheral;
- (void)updateName;
- (void)writeValueForProperty:(unint64_t)property;
@end

@implementation AXHearingAidLEAudioDevice

- (void)dealloc
{
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  [leftPeripheral setUpdateHandler:0];

  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  [rightPeripheral setUpdateHandler:0];

  v5.receiver = self;
  v5.super_class = AXHearingAidLEAudioDevice;
  [(AXHearingAidDevice *)&v5 dealloc];
}

- (id)discoveringServiceUUIDs
{
  if (discoveringServiceUUIDs_onceToken != -1)
  {
    [AXHearingAidLEAudioDevice discoveringServiceUUIDs];
  }

  v3 = discoveringServiceUUIDs_discoveringServiceUUIDs;

  return v3;
}

void __52__AXHearingAidLEAudioDevice_discoveringServiceUUIDs__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF70]);
  v3 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180a"];
  v1 = [v0 initWithObjects:{v3, 0}];
  v2 = discoveringServiceUUIDs_discoveringServiceUUIDs;
  discoveringServiceUUIDs_discoveringServiceUUIDs = v1;
}

- (void)setupLoadingProperties
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: setupLoadingProperties for %@", &v6, 0xCu);
  }

  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  [(AXHearingAidLEAudioDevice *)self setupUpdatesHandlerForLEAudioPeripheral:leftPeripheral];

  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  [(AXHearingAidLEAudioDevice *)self setupUpdatesHandlerForLEAudioPeripheral:rightPeripheral];
}

- (void)setBasicPropertiesLoaded
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: setBasicPropertiesLoaded for %@", &v10, 0xCu);
  }

  if ([(AXHearingAidDevice *)self leftAvailable])
  {
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    identifier = [leftPeripheral identifier];
    uUIDString = [identifier UUIDString];

    [(AXHearingAidDevice *)self setLeftUUID:uUIDString];
    [(AXHearingAidLEAudioDevice *)self setLeftLoadedProperties:[(AXHearingAidLEAudioDevice *)self leftLoadedProperties]| 0x30];
    [(AXHearingAidDevice *)self setAvailableEars:[(AXHearingAidDevice *)self availableEars]| 2];
  }

  if ([(AXHearingAidDevice *)self rightAvailable])
  {
    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
    identifier2 = [rightPeripheral identifier];
    uUIDString2 = [identifier2 UUIDString];

    [(AXHearingAidDevice *)self setRightUUID:uUIDString2];
    [(AXHearingAidLEAudioDevice *)self setRightLoadedProperties:[(AXHearingAidLEAudioDevice *)self rightLoadedProperties]| 0x30];
    [(AXHearingAidDevice *)self setAvailableEars:[(AXHearingAidDevice *)self availableEars]| 4];
  }
}

- (void)sessionDidUpdateValue:(id)value forProperty:(unint64_t)property
{
  valueCopy = value;
  if (property == 0x4000000000)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = HCLogHearingAids();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AXHearingAidLEAudioDevice sessionDidUpdateValue:forProperty:];
      }

      goto LABEL_10;
    }

    [valueCopy floatValue];
    v8 = (v7 / 255.0);
    [(AXHearingAidDevice *)self leftMixedVolume];
    v10 = v9;
    [(AXHearingAidDevice *)self rightMixedVolume];
    v12 = v11;
    [(AXHearingAidDevice *)self setLeftMixedVolume:v8];
    [(AXHearingAidDevice *)self setRightMixedVolume:v8];
    [(AXHearingAidLEAudioDevice *)self setLeftLoadedProperties:[(AXHearingAidLEAudioDevice *)self leftLoadedProperties]| 0x4000000000];
    [(AXHearingAidLEAudioDevice *)self setRightLoadedProperties:[(AXHearingAidLEAudioDevice *)self rightLoadedProperties]| 0x4000000000];
    if (v10 != v8 || v12 != v8)
    {
      v14 = +[AXHearingAidDeviceController sharedController];
      [v14 device:self didUpdateProperty:0x4000000000];
LABEL_10:
    }
  }
}

- (void)sessionDidUpdateLocations:(id)locations
{
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__AXHearingAidLEAudioDevice_sessionDidUpdateLocations___block_invoke;
    v5[3] = &unk_1E85CA0B8;
    v5[4] = self;
    [locationsCopy enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void __55__AXHearingAidLEAudioDevice_sessionDidUpdateLocations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 integerValue];
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 UUIDString];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    v10 = v9;
    if (v6 < 0x2000)
    {
      if (v6 > 63)
      {
        if (v6 <= 511)
        {
          switch(v6)
          {
            case 0x40:
              v11 = "FrontLeftOfCenter";
              goto LABEL_73;
            case 0x80:
              v11 = "FrontRightOfCenter";
              goto LABEL_73;
            case 0x100:
              v11 = "BackCenter";
              goto LABEL_73;
          }
        }

        else if (v6 > 2047)
        {
          if (v6 == 2048)
          {
            v11 = "SideRight";
            goto LABEL_73;
          }

          if (v6 == 4096)
          {
            v11 = "TopFrontLeft";
            goto LABEL_73;
          }
        }

        else
        {
          if (v6 == 512)
          {
            v11 = "LowFrequencyEffects2";
            goto LABEL_73;
          }

          if (v6 == 1024)
          {
            v11 = "SideLeft";
            goto LABEL_73;
          }
        }
      }

      else if (v6 <= 3)
      {
        switch(v6)
        {
          case 0:
            v11 = "NotAllowed";
            goto LABEL_73;
          case 1:
            v11 = "FrontLeft";
            goto LABEL_73;
          case 2:
            v11 = "FrontRight";
            goto LABEL_73;
        }
      }

      else if (v6 > 15)
      {
        if (v6 == 16)
        {
          v11 = "BackLeft";
          goto LABEL_73;
        }

        if (v6 == 32)
        {
          v11 = "BackRight";
          goto LABEL_73;
        }
      }

      else
      {
        if (v6 == 4)
        {
          v11 = "FrontCenter";
          goto LABEL_73;
        }

        if (v6 == 8)
        {
          v11 = "LowFrequencyEffects1";
          goto LABEL_73;
        }
      }
    }

    else if (v6 < 0x100000)
    {
      if (v6 < 0x10000)
      {
        switch(v6)
        {
          case 0x2000:
            v11 = "TopFrontRight";
            goto LABEL_73;
          case 0x4000:
            v11 = "TopFrontCenter";
            goto LABEL_73;
          case 0x8000:
            v11 = "TopCenter";
            goto LABEL_73;
        }
      }

      else if (v6 >= 0x40000)
      {
        if (v6 == 0x40000)
        {
          v11 = "TopSideLeft";
          goto LABEL_73;
        }

        if (v6 == 0x80000)
        {
          v11 = "TopSideRight";
          goto LABEL_73;
        }
      }

      else
      {
        if (v6 == 0x10000)
        {
          v11 = "TopBackLeft";
          goto LABEL_73;
        }

        if (v6 == 0x20000)
        {
          v11 = "TopBackRight";
          goto LABEL_73;
        }
      }
    }

    else if (v6 > 0xFFFFFF)
    {
      if (v6 > 0x3FFFFFF)
      {
        if (v6 == 0x4000000)
        {
          v11 = "LeftSurround";
          goto LABEL_73;
        }

        if (v6 == 0x8000000)
        {
          v11 = "RightSurround";
          goto LABEL_73;
        }
      }

      else
      {
        if (v6 == 0x1000000)
        {
          v11 = "FrontLeftWide";
          goto LABEL_73;
        }

        if (v6 == 0x2000000)
        {
          v11 = "FrontRightWide";
          goto LABEL_73;
        }
      }
    }

    else if (v6 >= 0x400000)
    {
      if (v6 == 0x400000)
      {
        v11 = "BottomFrontLeft";
        goto LABEL_73;
      }

      if (v6 == 0x800000)
      {
        v11 = "BottomFrontRight";
        goto LABEL_73;
      }
    }

    else
    {
      if (v6 == 0x100000)
      {
        v11 = "TopBackCenter";
        goto LABEL_73;
      }

      if (v6 == 0x200000)
      {
        v11 = "BottomFrontCenter";
LABEL_73:
        v24 = 138412802;
        v25 = v8;
        v26 = 2112;
        v27 = v9;
        v28 = 2080;
        v29 = v11;
        _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: sessionDidUpdateLocations, session location %@ %@ %s", &v24, 0x20u);

        goto LABEL_74;
      }
    }

    v11 = "?";
    goto LABEL_73;
  }

LABEL_74:

  v12 = [*(a1 + 32) leftPeripheral];
  v13 = [v12 identifier];
  v14 = [v5 isEqual:v13];

  v15 = *(a1 + 32);
  if (v14)
  {
    v16 = [v15 leftPeripheral];
    v17 = [*(a1 + 32) isLeftEventHandlerSet];
    v18 = [*(a1 + 32) isRightEventHandlerSet];
    goto LABEL_78;
  }

  v19 = [v15 rightPeripheral];
  v20 = [v19 identifier];
  v21 = [v5 isEqual:v20];

  if (v21)
  {
    v16 = [*(a1 + 32) rightPeripheral];
    v17 = [*(a1 + 32) isRightEventHandlerSet];
    v18 = [*(a1 + 32) isLeftEventHandlerSet];
LABEL_78:
    v22 = v18;
    if (v6 == 2)
    {
      [*(a1 + 32) swapPeripheral:v16 toEar:4];
      [*(a1 + 32) setRightLoadedProperties:{objc_msgSend(*(a1 + 32), "rightLoadedProperties") | 8}];
      [*(a1 + 32) setAvailableEars:{objc_msgSend(*(a1 + 32), "availableEars") | 4}];
      [*(a1 + 32) setIsRightEventHandlerSet:v17];
      [*(a1 + 32) setIsLeftEventHandlerSet:v22];
    }

    else if (v6 == 1)
    {
      [*(a1 + 32) swapPeripheral:v16 toEar:2];
      [*(a1 + 32) setLeftLoadedProperties:{objc_msgSend(*(a1 + 32), "leftLoadedProperties") | 8}];
      [*(a1 + 32) setAvailableEars:{objc_msgSend(*(a1 + 32), "availableEars") | 2}];
      [*(a1 + 32) setIsLeftEventHandlerSet:v17];
      [*(a1 + 32) setIsRightEventHandlerSet:v22];
    }

    else
    {
      v23 = HCLogHearingAids();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __55__AXHearingAidLEAudioDevice_sessionDidUpdateLocations___block_invoke_cold_2();
      }
    }

    goto LABEL_87;
  }

  v16 = HCLogHearingAids();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __55__AXHearingAidLEAudioDevice_sessionDidUpdateLocations___block_invoke_cold_1(v5);
  }

LABEL_87:
}

- (void)connect
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: Connect to %@", buf, 0xCu);
  }

  v4 = +[AXHearingAidDeviceController sharedController];
  [v4 stopSearching];

  [(AXHearingAidLEAudioDevice *)self setupLoadingProperties];
  v5.receiver = self;
  v5.super_class = AXHearingAidLEAudioDevice;
  [(AXHearingAidDevice *)&v5 connect];
}

- (void)disconnectAndUnpair:(BOOL)unpair
{
  unpairCopy = unpair;
  v30 = *MEMORY[0x1E69E9840];
  if (unpair)
  {
LABEL_9:
    v11 = HCLogHearingAids();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v23 = unpairCopy;
      v24 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: disconnectAndUnpair(%d) from \n%@", buf, 0x12u);
    }

    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    [leftPeripheral setUpdateHandler:0];

    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
    [rightPeripheral setUpdateHandler:0];

    [(AXHearingAidLEAudioDevice *)self setIsLeftEventHandlerSet:0];
    [(AXHearingAidLEAudioDevice *)self setIsRightEventHandlerSet:0];
    v21.receiver = self;
    v21.super_class = AXHearingAidLEAudioDevice;
    [(AXHearingAidDevice *)&v21 disconnectAndUnpair:unpairCopy];
    return;
  }

  leftPeripheral2 = [(AXHearingAidDevice *)self leftPeripheral];
  if (leftPeripheral2)
  {
    leftPeripheral3 = [(AXHearingAidDevice *)self leftPeripheral];
    if ([leftPeripheral3 state])
    {

      goto LABEL_9;
    }
  }

  rightPeripheral2 = [(AXHearingAidDevice *)self rightPeripheral];
  if (rightPeripheral2)
  {
    v8 = rightPeripheral2;
    rightPeripheral3 = [(AXHearingAidDevice *)self rightPeripheral];
    state = [rightPeripheral3 state];

    if (leftPeripheral2)
    {
    }

    if (state)
    {
      goto LABEL_9;
    }
  }

  else if (leftPeripheral2)
  {
  }

  v14 = HCLogHearingAids();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = MEMORY[0x1E696AD98];
    leftPeripheral4 = [(AXHearingAidDevice *)self leftPeripheral];
    v17 = [v15 numberWithInteger:{objc_msgSend(leftPeripheral4, "state")}];
    v18 = MEMORY[0x1E696AD98];
    rightPeripheral4 = [(AXHearingAidDevice *)self rightPeripheral];
    v20 = [v18 numberWithInteger:{objc_msgSend(rightPeripheral4, "state")}];
    *buf = 67109890;
    v23 = 0;
    v24 = 2112;
    selfCopy = v17;
    v26 = 2112;
    v27 = v20;
    v28 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: disconnectAndUnpair(%d), SKIP disconnecting/unpairing from %@ %@\n%@", buf, 0x26u);
  }
}

- (void)connectionDidChange
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    isConnecting = [(AXHearingAidDevice *)self isConnecting];
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: connectionDidChange, isConnecting %d %@", buf, 0x12u);
  }

  v4.receiver = self;
  v4.super_class = AXHearingAidLEAudioDevice;
  [(AXHearingAidDevice *)&v4 connectionDidChange];
}

- (BOOL)addPeripheral:(id)peripheral
{
  v16 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  v9.receiver = self;
  v9.super_class = AXHearingAidLEAudioDevice;
  v5 = [(AXHearingAidDevice *)&v9 addPeripheral:peripheralCopy];
  v6 = HCLogHearingAids();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    identifier = [peripheralCopy identifier];
    *buf = 138412802;
    v11 = identifier;
    v12 = 1024;
    v13 = v5;
    v14 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEBUG, "HearingAidLEA3Device LEA 3: addPeripheral: %@, didAdd: %d\n%@", buf, 0x1Cu);
  }

  return v5;
}

- (BOOL)addPeripheral:(id)peripheral asLeft:(BOOL)left
{
  leftCopy = left;
  v21 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  v12.receiver = self;
  v12.super_class = AXHearingAidLEAudioDevice;
  v7 = [(AXHearingAidDevice *)&v12 addPeripheral:peripheralCopy asLeft:leftCopy];
  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (leftCopy)
    {
      v9 = @"L";
    }

    else
    {
      v9 = @"R";
    }

    identifier = [peripheralCopy identifier];
    *buf = 138413058;
    v14 = v9;
    v15 = 2112;
    v16 = identifier;
    v17 = 1024;
    v18 = v7;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: addPeripheral %@ %@ didAdd: %d to device:\n%@", buf, 0x26u);
  }

  return v7;
}

- (void)loadBasicProperties
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(AXHearingAidDevice *)self name];
    v5 = 138412290;
    v6 = name;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: loadBasicProperties SKIP for %@", &v5, 0xCu);
  }
}

- (void)loadRequiredProperties
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(AXHearingAidDevice *)self name];
    v5 = 138412290;
    v6 = name;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: loadRequiredProperties SKIP for %@", &v5, 0xCu);
  }
}

- (BOOL)didLoadPersistentProperties
{
  name = [(AXHearingAidDevice *)self name];
  v4 = [name length];
  v7 = v4 && (-[AXHearingAidDevice deviceUUID](self, "deviceUUID"), v5 = ;
  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AXHearingAidLEAudioDevice didLoadPersistentProperties];
  }

  return v7;
}

- (unint64_t)availablePropertiesForPeripheral:(id)peripheral
{
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AXHearingAidLEAudioDevice availablePropertiesForPeripheral:?];
  }

  return 0x4000D80538;
}

- (void)setNotify:(BOOL)notify forPeripheral:(id)peripheral
{
  notifyCopy = notify;
  v21 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AXHearingAidLEAudioDevice setNotify:? forPeripheral:?];
  }

  if (peripheralCopy)
  {
    v8 = HCLogHearingAids();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      services = [peripheralCopy services];
      *buf = 67109634;
      v16 = notifyCopy;
      v17 = 2112;
      v18 = peripheralCopy;
      v19 = 2112;
      v20 = services;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: peripheral setting notify %d for peripheral: %@ - %@", buf, 0x1Cu);
    }

    v10 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180a"];
    services2 = [peripheralCopy services];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__AXHearingAidLEAudioDevice_setNotify_forPeripheral___block_invoke;
    v13[3] = &unk_1E85CA0E0;
    v14 = v10;
    v12 = v10;
    [services2 enumerateObjectsUsingBlock:v13];
  }
}

void __53__AXHearingAidLEAudioDevice_setNotify_forPeripheral___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  if (a1)
  {
    v4 = HCLogHearingAids();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "LEA 3: peripheral DIS", v5, 2u);
    }
  }
}

- (void)loadProperties:(unint64_t)properties forPeripheral:(id)peripheral withRetryPeriod:(double)period
{
  peripheralCopy = peripheral;
  v6 = HCLogHearingAids();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AXHearingAidLEAudioDevice loadProperties:forPeripheral:withRetryPeriod:];
  }
}

- (void)updateName
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1DA5E2000, v0, OS_LOG_TYPE_DEBUG, "HearingAidLEA3Device LEA 3: updated name %@", v1, 0xCu);
}

- (void)peripheralDidUpdateDeviceInfo
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    isPaired = [(AXHearingAidDevice *)self isPaired];
    keepInSync = [(AXHearingAidDevice *)self keepInSync];
    name = [(AXHearingAidDevice *)self name];
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    name2 = [leftPeripheral name];
    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
    name3 = [rightPeripheral name];
    v11[0] = 67110402;
    v11[1] = isPaired;
    v12 = 1024;
    v13 = keepInSync;
    v14 = 2048;
    selfCopy = self;
    v16 = 2112;
    v17 = name;
    v18 = 2112;
    v19 = name2;
    v20 = 2112;
    v21 = name3;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: peripheralDidUpdateDeviceInfo, (paired: %d %d) device info updated: %p %@, left: %@, right: %@", v11, 0x36u);
  }

  [(AXHearingAidLEAudioDevice *)self updateName];
}

- (void)setValue:(id)value forProperty:(unint64_t)property
{
  v17 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    name = [(AXHearingAidDevice *)self name];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:property];
    *buf = 138412802;
    v12 = name;
    v13 = 2112;
    v14 = valueCopy;
    v15 = 2112;
    v16 = v9;
    _os_log_debug_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEBUG, "HearingAidLEA3Device LEA 3: setValue, %@ %@ %@", buf, 0x20u);
  }

  v10.receiver = self;
  v10.super_class = AXHearingAidLEAudioDevice;
  [(AXHearingAidDevice *)&v10 setValue:valueCopy forProperty:property];
}

- (void)delayWriteProperty:(unint64_t)property forPeripheral:(id)peripheral
{
  v29 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  v7 = [(AXHearingAidLEAudioDevice *)self earForPeripheral:peripheralCopy];
  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:property];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
    identifier = [peripheralCopy identifier];
    name = [(AXHearingAidDevice *)self name];
    v21 = 138413058;
    v22 = v17;
    v23 = 2112;
    v24 = v18;
    v25 = 2112;
    v26 = identifier;
    v27 = 2112;
    v28 = name;
    _os_log_debug_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEBUG, "HearingAidLEA3Device LEA 3: delayWriteProperty %@ ear %@ peripheral %@ device name %@", &v21, 0x2Au);
  }

  if (v7)
  {
    if ((property & 0x400) != 0)
    {
      if (v7 == 2)
      {
        [(AXHearingAidDevice *)self leftSelectedProgram];
      }

      else
      {
        [(AXHearingAidDevice *)self rightSelectedProgram];
      }
      v9 = ;
      v10 = HCLogHearingAids();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v9;
        _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: setActivePreset %@", &v21, 0xCu);
      }

      [peripheralCopy setActivePreset:0 OptionalPresetIndex:objc_msgSend(v9 withResponse:{"index"), &__block_literal_global_49}];
    }

    if ((property & 0x4000000000) != 0)
    {
      if (v7 == 2)
      {
        [(AXHearingAidDevice *)self leftMixedVolume];
      }

      else
      {
        [(AXHearingAidDevice *)self rightMixedVolume];
      }

      v12 = v11;
      v13 = (v11 * 255.0);
      v14 = HCLogHearingAids();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v13];
        v21 = 138412546;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: setVolume %@ adjusted %@", &v21, 0x16u);
      }

      [peripheralCopy setVolume:v13 withResponse:&__block_literal_global_52];
    }
  }
}

void __62__AXHearingAidLEAudioDevice_delayWriteProperty_forPeripheral___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = HCLogHearingAids();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __62__AXHearingAidLEAudioDevice_delayWriteProperty_forPeripheral___block_invoke_cold_1();
    }
  }
}

void __62__AXHearingAidLEAudioDevice_delayWriteProperty_forPeripheral___block_invoke_50(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = HCLogHearingAids();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __62__AXHearingAidLEAudioDevice_delayWriteProperty_forPeripheral___block_invoke_50_cold_1();
    }
  }
}

- (void)writeValueForProperty:(unint64_t)property
{
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AXHearingAidLEAudioDevice writeValueForProperty:?];
  }
}

- (id)peripheral:(id)peripheral characteristicForUUID:(id)d
{
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXHearingAidLEAudioDevice peripheral:? characteristicForUUID:?];
  }

  return 0;
}

- (int)earForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];

  if (leftPeripheral == peripheralCopy)
  {
    v8 = 2;
  }

  else
  {
    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];

    if (rightPeripheral == peripheralCopy)
    {
      v8 = 4;
    }

    else
    {
      v7 = HCLogHearingAids();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [AXHearingAidLEAudioDevice earForPeripheral:peripheralCopy];
      }

      v8 = 0;
    }
  }

  return v8;
}

- (void)setupUpdatesHandlerForLEAudioPeripheral:(id)peripheral
{
  v16 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  if (!peripheralCopy)
  {
    goto LABEL_14;
  }

  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];

  if (leftPeripheral == peripheralCopy)
  {
    if ([(AXHearingAidLEAudioDevice *)self isLeftEventHandlerSet])
    {
      goto LABEL_14;
    }

    [(AXHearingAidLEAudioDevice *)self setIsLeftEventHandlerSet:1];
  }

  else
  {
    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];

    if (rightPeripheral != peripheralCopy)
    {
      v7 = HCLogHearingAids();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [AXHearingAidLEAudioDevice setupUpdatesHandlerForLEAudioPeripheral:peripheralCopy];
      }

      goto LABEL_14;
    }

    if ([(AXHearingAidLEAudioDevice *)self isRightEventHandlerSet])
    {
      goto LABEL_14;
    }

    [(AXHearingAidLEAudioDevice *)self setIsRightEventHandlerSet:1];
  }

  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [peripheralCopy identifier];
    *buf = 138412546;
    v13 = identifier;
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: setup update handler for peripheral %@, device: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__AXHearingAidLEAudioDevice_setupUpdatesHandlerForLEAudioPeripheral___block_invoke;
  v10[3] = &unk_1E85CA128;
  v10[4] = self;
  objc_copyWeak(&v11, buf);
  [peripheralCopy setUpdateHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
LABEL_14:
}

void __69__AXHearingAidLEAudioDevice_setupUpdatesHandlerForLEAudioPeripheral___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 identifier];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "deviceType")}];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "eventType")}];
    v11 = [v6 description];
    v12 = *(a1 + 32);
    *buf = 138413570;
    v58 = v8;
    v59 = 2112;
    v60 = v9;
    v61 = 2112;
    v62 = v10;
    v63 = 2112;
    v64 = v6;
    v65 = 2112;
    v66 = v11;
    v67 = 2112;
    v68 = v12;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: updateHandler %@ deviceType: %@, event type: %@, event: %@\n %@device: %@", buf, 0x3Eu);
  }

  v13 = v6;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v15 = [WeakRetained earForPeripheral:v5];

  if ([v13 eventType] == 8)
  {
    v16 = HCLogHearingAids();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 identifier];
      v18 = MEMORY[0x1E696AD98];
      v19 = [v13 presetResults];
      v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
      v21 = [v13 updatedValue];
      *buf = 138412802;
      v58 = v17;
      v59 = 2112;
      v60 = v20;
      v61 = 2112;
      v62 = v21;
      _os_log_impl(&dword_1DA5E2000, v16, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: update %@, presets %@, active preset index %@", buf, 0x20u);
    }

    v22 = objc_loadWeakRetained((a1 + 40));
    v23 = [v13 presetResults];
    v24 = [v13 activePreset];
    [v22 processBTPresetsUpdate:v23 activePreset:v24 forEar:v15];

    goto LABEL_7;
  }

  if ([v13 eventType] == 9)
  {
    v25 = HCLogHearingAids();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v5 identifier];
      v27 = [v13 updatedValue];
      *buf = 138412546;
      v58 = v26;
      v59 = 2112;
      v60 = v27;
      _os_log_impl(&dword_1DA5E2000, v25, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: update %@, active preset %@", buf, 0x16u);
    }

    v28 = [v13 updatedValue];

    if (v28)
    {
      v29 = [v13 updatedValue];
      v30 = [v29 integerValue];

      v31 = *(a1 + 32);
      if (v15 == 2)
      {
        [v31 leftPrograms];
      }

      else
      {
        [v31 rightPrograms];
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v22 = v53 = 0u;
      v44 = [v22 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v53;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v53 != v46)
            {
              objc_enumerationMutation(v22);
            }

            v48 = *(*(&v52 + 1) + 8 * i);
            [v48 setIsSelected:{v30 == objc_msgSend(v48, "index", v52)}];
            if ([v48 isSelected])
            {
              v49 = *(a1 + 32);
              if (v15 == 4)
              {
                [v49 setRightSelectedProgram:v48];
              }

              else
              {
                [v49 setLeftSelectedProgram:v48];
              }
            }
          }

          v45 = [v22 countByEnumeratingWithState:&v52 objects:v56 count:16];
        }

        while (v45);
      }

      v50 = +[AXHearingAidDeviceController sharedController];
      [v50 device:*(a1 + 32) didUpdateProperty:1024];

      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ([v13 eventType] == 10)
  {
    v22 = HCLogHearingAids();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v23 = [v5 identifier];
    v32 = [v13 updatedValue];
    *buf = 138412546;
    v58 = v23;
    v59 = 2112;
    v60 = v32;
    v33 = "HearingAidLEA3Device peripheral LEA 3: update %@, name preset at index: %@";
    goto LABEL_17;
  }

  if ([v13 eventType] != 1)
  {
    if ([v13 eventType] != 7)
    {
      goto LABEL_37;
    }

    v22 = HCLogHearingAids();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v23 = [v5 identifier];
    v32 = [v13 updatedValue];
    *buf = 138412546;
    v58 = v23;
    v59 = 2112;
    v60 = v32;
    v33 = "HearingAidLEA3Device peripheral LEA 3: update %@, HA features %@";
LABEL_17:
    _os_log_impl(&dword_1DA5E2000, v22, OS_LOG_TYPE_DEFAULT, v33, buf, 0x16u);

LABEL_7:
LABEL_36:

    goto LABEL_37;
  }

  v34 = HCLogHearingAids();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v5 identifier];
    v36 = [v13 updatedValue];
    *buf = 138412546;
    v58 = v35;
    v59 = 2112;
    v60 = v36;
    _os_log_impl(&dword_1DA5E2000, v34, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: update %@, volume %@", buf, 0x16u);
  }

  v37 = [v13 updatedValue];
  [v37 floatValue];
  v39 = v38;

  v40 = *(a1 + 32);
  v41 = v39 / 255.0;
  if (v15 == 2)
  {
    [v40 leftMixedVolume];
    v43 = v42;
    [*(a1 + 32) setLeftMixedVolume:v41];
    [*(a1 + 32) setLeftLoadedProperties:{objc_msgSend(*(a1 + 32), "leftLoadedProperties") | 0x4000000000}];
  }

  else
  {
    [v40 rightMixedVolume];
    v43 = v51;
    [*(a1 + 32) setRightMixedVolume:v41];
    [*(a1 + 32) setRightLoadedProperties:{objc_msgSend(*(a1 + 32), "rightLoadedProperties") | 0x4000000000}];
  }

  if (v43 != v41)
  {
    v22 = +[AXHearingAidDeviceController sharedController];
    [v22 device:*(a1 + 32) didUpdateProperty:0x4000000000];
    goto LABEL_36;
  }

LABEL_37:
}

- (void)processBTPresetsUpdate:(id)update activePreset:(id)preset forEar:(int)ear
{
  v5 = *&ear;
  v49 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  presetCopy = preset;
  array = [MEMORY[0x1E695DF70] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = updateCopy;
  v8 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v43;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = HCLogHearingAids();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v13;
          _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: preset - %@ ", buf, 0xCu);
        }

        v15 = HCLogHearingAids();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          presetName = [v13 presetName];
          uTF8String = [presetName UTF8String];
          *buf = 136315138;
          v47 = uTF8String;
          _os_log_impl(&dword_1DA5E2000, v15, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: preset name: %s", buf, 0xCu);
        }

        v18 = HCLogHearingAids();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          presetIndex = [v13 presetIndex];
          *buf = 67109120;
          LODWORD(v47) = presetIndex;
          _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: preset index: %d", buf, 8u);
        }

        v20 = HCLogHearingAids();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          isWritable = [v13 isWritable];
          *buf = 67109120;
          LODWORD(v47) = isWritable;
          _os_log_impl(&dword_1DA5E2000, v20, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: preset writable: %d", buf, 8u);
        }

        v22 = HCLogHearingAids();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          isAvailable = [v13 isAvailable];
          *buf = 67109120;
          LODWORD(v47) = isAvailable;
          _os_log_impl(&dword_1DA5E2000, v22, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: preset available %d", buf, 8u);
        }

        v24 = objc_alloc_init(AXHearingAidMode);
        presetName2 = [v13 presetName];
        [(AXHearingAidMode *)v24 setName:presetName2];

        [(AXHearingAidMode *)v24 setCategory:1];
        -[AXHearingAidMode setIndex:](v24, "setIndex:", [v13 presetIndex]);
        [(AXHearingAidMode *)v24 setEar:v5];
        if (v13 == presetCopy)
        {
          v26 = v24;

          [(AXHearingAidMode *)v26 setIsSelected:1];
          v10 = v26;
        }

        [array addObject:v24];
      }

      v9 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if ([array count])
  {
    v27 = v10 == 0;
  }

  else
  {
    v27 = 0;
  }

  if (v27)
  {
    v10 = [array objectAtIndexedSubscript:0];
    v28 = [array objectAtIndexedSubscript:0];
    [v28 setIsSelected:1];
  }

  if (v5 == 2)
  {
    [(AXHearingAidDevice *)self setLeftPrograms:array];
    [(AXHearingAidLEAudioDevice *)self setLeftLoadedProperties:[(AXHearingAidLEAudioDevice *)self leftLoadedProperties]| 0x500];
    [(AXHearingAidDevice *)self setLeftSelectedProgram:v10];
  }

  else
  {
    [(AXHearingAidDevice *)self setRightPrograms:array];
    [(AXHearingAidLEAudioDevice *)self setRightLoadedProperties:[(AXHearingAidLEAudioDevice *)self rightLoadedProperties]| 0x500];
    [(AXHearingAidDevice *)self setRightSelectedProgram:v10];
  }

  v29 = HCLogHearingAids();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    leftPrograms = [(AXHearingAidDevice *)self leftPrograms];
    *buf = 138412290;
    v47 = leftPrograms;
    _os_log_impl(&dword_1DA5E2000, v29, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: LeftPrograms %@", buf, 0xCu);
  }

  v31 = HCLogHearingAids();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    leftSelectedProgram = [(AXHearingAidDevice *)self leftSelectedProgram];
    *buf = 138412290;
    v47 = leftSelectedProgram;
    _os_log_impl(&dword_1DA5E2000, v31, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: leftSelectedProgram %@", buf, 0xCu);
  }

  v33 = HCLogHearingAids();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    rightPrograms = [(AXHearingAidDevice *)self rightPrograms];
    *buf = 138412290;
    v47 = rightPrograms;
    _os_log_impl(&dword_1DA5E2000, v33, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: RightPrograms %@", buf, 0xCu);
  }

  v35 = HCLogHearingAids();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    rightSelectedProgram = [(AXHearingAidDevice *)self rightSelectedProgram];
    *buf = 138412290;
    v47 = rightSelectedProgram;
    _os_log_impl(&dword_1DA5E2000, v35, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: rightSelectedProgram %@", buf, 0xCu);
  }

  v37 = +[AXHearingAidDeviceController sharedController];
  [v37 device:self didUpdateProperty:1280];
}

- (unint64_t)availablePropertiesFromDISForPeripheral:(id)peripheral
{
  v25 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180a"];
  services = [peripheralCopy services];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__AXHearingAidLEAudioDevice_availablePropertiesFromDISForPeripheral___block_invoke;
  v13[3] = &unk_1E85CA178;
  v7 = v5;
  selfCopy = self;
  v16 = &v17;
  v14 = v7;
  [services enumerateObjectsUsingBlock:v13];

  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v18[3]];
    identifier = [peripheralCopy identifier];
    *buf = 138412546;
    v22 = v9;
    v23 = 2112;
    v24 = identifier;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: availablePropertiesFromDIS %@ for Peripheral %@", buf, 0x16u);
  }

  v11 = v18[3];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __69__AXHearingAidLEAudioDevice_availablePropertiesFromDISForPeripheral___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 UUID];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 characteristics];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__AXHearingAidLEAudioDevice_availablePropertiesFromDISForPeripheral___block_invoke_2;
    v7[3] = &unk_1E85CA150;
    v8 = *(a1 + 40);
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

uint64_t __69__AXHearingAidLEAudioDevice_availablePropertiesFromDISForPeripheral___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) propertyForCharacteristic:a2];
  *(*(*(a1 + 40) + 8) + 24) |= result;
  return result;
}

- (void)sessionDidUpdateValue:forProperty:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v0 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x4000000000];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void __55__AXHearingAidLEAudioDevice_sessionDidUpdateLocations___block_invoke_cold_1(void *a1)
{
  v1 = [a1 UUIDString];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __55__AXHearingAidLEAudioDevice_sessionDidUpdateLocations___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v1];
  v3 = [v0 UUIDString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)didLoadPersistentProperties
{
  OUTLINED_FUNCTION_4();
  name = [v1 name];
  leftPeripheralUUID = [v0 leftPeripheralUUID];
  rightPeripheralUUID = [v0 rightPeripheralUUID];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);
}

- (void)availablePropertiesForPeripheral:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setNotify:(void *)a1 forPeripheral:.cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)loadProperties:forPeripheral:withRetryPeriod:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v2 = [v1 name];
  v3 = [v0 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __62__AXHearingAidLEAudioDevice_delayWriteProperty_forPeripheral___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_1DA5E2000, v0, OS_LOG_TYPE_ERROR, "HearingAidLEA3Device peripheral LEA 3: setActivePreset error %@", v1, 0xCu);
}

void __62__AXHearingAidLEAudioDevice_delayWriteProperty_forPeripheral___block_invoke_50_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_1DA5E2000, v0, OS_LOG_TYPE_ERROR, "HearingAidLEA3Device peripheral LEA 3: setVolume error %@", v1, 0xCu);
}

- (void)writeValueForProperty:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)peripheral:(void *)a1 characteristicForUUID:.cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)earForPeripheral:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setupUpdatesHandlerForLEAudioPeripheral:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end