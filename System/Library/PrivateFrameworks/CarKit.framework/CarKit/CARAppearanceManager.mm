@interface CARAppearanceManager
+ (id)_descriptionForAppearanceSetting:(int64_t)setting;
+ (int64_t)_carUserInterfaceStyleForAppearanceMode:(unint64_t)mode;
- (BOOL)_useVehicleDataProtocolAppearance:(id)appearance;
- (BOOL)effectiveGlobalNightMode;
- (BOOL)locationBasedNightMode;
- (CARAppearanceManager)initWithScreens:(id)screens initialSystemNightMode:(BOOL)mode initialLocationBasedNightMode:(BOOL)nightMode delegate:(id)delegate;
- (CARAppearanceManagerDelegate)delegate;
- (id)_mainScreenInfo;
- (id)_screenInfoForScreenUUID:(id)d;
- (int64_t)effectiveStyleForMapAppearanceForScreenUUID:(id)d;
- (int64_t)effectiveStyleForUIAppearanceForScreenUUID:(id)d;
- (void)_resolveMapsStylesAndNotify:(BOOL)notify;
- (void)_resolveUIStylesAndNotify:(BOOL)notify;
- (void)_setInitialDisplayNightModeForScreen:(id)screen;
- (void)_setInitialMapAppearanceNumberForScreen:(id)screen;
- (void)_setInitialUIAppearanceNumberForScreen:(id)screen;
- (void)handleChangeAppearance:(int64_t)appearance screenID:(id)d;
- (void)handleLocationBasedNightModeUpdate:(BOOL)update;
- (void)handleMapAppearanceUpdateWithParameters:(id)parameters;
- (void)handleNightModeUpdateWithParameters:(id)parameters;
- (void)handleUIAppearanceUpdateWithParameters:(id)parameters;
- (void)setDisableLocationNightMode;
@end

@implementation CARAppearanceManager

void __39__CARAppearanceManager__mainScreenInfo__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (![v7 screenType])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)locationBasedNightMode
{
  locationNightModeDisabled = [(CARAppearanceManager *)self locationNightModeDisabled];
  if (locationNightModeDisabled)
  {
    v4 = CarAppearanceLogging(locationNightModeDisabled);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "Location night mode is disabled, ignoring actual value", v7, 2u);
    }

    return 0;
  }

  else
  {
    return self->_locationBasedNightMode;
  }
}

- (id)_mainScreenInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  screens = [(CARAppearanceManager *)self screens];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__CARAppearanceManager__mainScreenInfo__block_invoke;
  v5[3] = &unk_1E82FCD38;
  v5[4] = &v6;
  [screens enumerateObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)effectiveGlobalNightMode
{
  _mainScreenInfo = [(CARAppearanceManager *)self _mainScreenInfo];
  identifier = [_mainScreenInfo identifier];
  v5 = [(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:identifier];

  if (v5)
  {
    targetAppearanceModes = self->_targetAppearanceModes;
    identifier2 = [_mainScreenInfo identifier];
    v8 = [(NSMutableDictionary *)targetAppearanceModes objectForKeyedSubscript:identifier2];
    v9 = [v8 integerValue] == 2;
  }

  else
  {
    nightModeDictionary = [(CARAppearanceManager *)self nightModeDictionary];
    identifier3 = [_mainScreenInfo identifier];
    v12 = [nightModeDictionary objectForKey:identifier3];
    bOOLValue = [v12 BOOLValue];

    v9 = [(CARAppearanceManager *)self locationBasedNightMode]| bOOLValue;
  }

  return v9 & 1;
}

- (CARAppearanceManager)initWithScreens:(id)screens initialSystemNightMode:(BOOL)mode initialLocationBasedNightMode:(BOOL)nightMode delegate:(id)delegate
{
  screensCopy = screens;
  delegateCopy = delegate;
  v39.receiver = self;
  v39.super_class = CARAppearanceManager;
  v12 = [(CARAppearanceManager *)&v39 init];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    appearanceModeDictionary = v12->_appearanceModeDictionary;
    v12->_appearanceModeDictionary = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    appearanceModeSettingDictionary = v12->_appearanceModeSettingDictionary;
    v12->_appearanceModeSettingDictionary = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    currentEffectiveMapStyle = v12->_currentEffectiveMapStyle;
    v12->_currentEffectiveMapStyle = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    currentEffectiveUIStyle = v12->_currentEffectiveUIStyle;
    v12->_currentEffectiveUIStyle = v19;

    objc_storeWeak(&v12->_delegate, delegateCopy);
    v12->_locationBasedNightMode = nightMode;
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mapAppearanceModeDictionary = v12->_mapAppearanceModeDictionary;
    v12->_mapAppearanceModeDictionary = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mapAppearanceModeSettingDictionary = v12->_mapAppearanceModeSettingDictionary;
    v12->_mapAppearanceModeSettingDictionary = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    nightModeDictionary = v12->_nightModeDictionary;
    v12->_nightModeDictionary = v25;

    v27 = [screensCopy copy];
    screens = v12->_screens;
    v12->_screens = v27;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    targetAppearanceModes = v12->_targetAppearanceModes;
    v12->_targetAppearanceModes = dictionary;

    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __102__CARAppearanceManager_initWithScreens_initialSystemNightMode_initialLocationBasedNightMode_delegate___block_invoke;
    v36 = &unk_1E82FD698;
    v31 = v12;
    v37 = v31;
    modeCopy = mode;
    [screensCopy enumerateObjectsUsingBlock:&v33];
    [(CARAppearanceManager *)v31 _resolveUIStylesAndNotify:0, v33, v34, v35, v36];
    [(CARAppearanceManager *)v31 _resolveMapsStylesAndNotify:0];
  }

  return v12;
}

void __102__CARAppearanceManager_initWithScreens_initialSystemNightMode_initialLocationBasedNightMode_delegate___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) nightModeDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v5 = [v6 identifier];
  [v3 setObject:v4 forKey:v5];

  if ([v6 supportsAppearanceMode])
  {
    [*(a1 + 32) _setInitialUIAppearanceNumberForScreen:v6];
  }

  if ([v6 supportsPerDisplayNightMode] && objc_msgSend(v6, "screenType"))
  {
    [*(a1 + 32) _setInitialDisplayNightModeForScreen:v6];
  }

  if ([v6 supportsMapAppearanceMode])
  {
    [*(a1 + 32) _setInitialMapAppearanceNumberForScreen:v6];
  }
}

- (int64_t)effectiveStyleForUIAppearanceForScreenUUID:(id)d
{
  dCopy = d;
  if ([(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:dCopy])
  {
    v5 = [(NSMutableDictionary *)self->_targetAppearanceModes objectForKeyedSubscript:dCopy];
    integerValue = [v5 integerValue];
  }

  else
  {
    v5 = [(CARAppearanceManager *)self _screenInfoForScreenUUID:dCopy];
    physicalDisplay = [v5 physicalDisplay];
    if ([v5 screenType] && (objc_msgSend(physicalDisplay, "supportsDDPContent") & 1) != 0)
    {
      integerValue = 2;
    }

    else
    {
      currentEffectiveUIStyle = [(CARAppearanceManager *)self currentEffectiveUIStyle];
      v9 = [currentEffectiveUIStyle objectForKey:dCopy];
      integerValue = [v9 integerValue];
    }
  }

  return integerValue;
}

- (int64_t)effectiveStyleForMapAppearanceForScreenUUID:(id)d
{
  dCopy = d;
  if ([(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:dCopy])
  {
    currentEffectiveMapStyle = [(NSMutableDictionary *)self->_targetAppearanceModes objectForKeyedSubscript:dCopy];
    integerValue = [currentEffectiveMapStyle integerValue];
  }

  else
  {
    currentEffectiveMapStyle = [(CARAppearanceManager *)self currentEffectiveMapStyle];
    v7 = [currentEffectiveMapStyle objectForKey:dCopy];
    integerValue = [v7 integerValue];
  }

  return integerValue;
}

- (void)handleNightModeUpdateWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKey:@"DisplayUUID"];
  if (!v5)
  {
    v5 = [parametersCopy objectForKey:@"uuid"];
  }

  if (![(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:v5])
  {
    v6 = [parametersCopy objectForKey:@"IsNightMode"];
    screens = [(CARAppearanceManager *)self screens];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__CARAppearanceManager_handleNightModeUpdateWithParameters___block_invoke;
    v9[3] = &unk_1E82FD6C0;
    v10 = v5;
    v11 = v6;
    selfCopy = self;
    v8 = v6;
    [screens enumerateObjectsUsingBlock:v9];

    [(CARAppearanceManager *)self _resolveUIStylesAndNotify:1];
    [(CARAppearanceManager *)self _resolveMapsStylesAndNotify:1];
  }
}

void __60__CARAppearanceManager_handleNightModeUpdateWithParameters___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 identifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
  }

  else
  {
    v6 = [v3 supportsPerDisplayNightMode];

    if (v6)
    {
      goto LABEL_12;
    }
  }

  v7 = CarAppearanceLogging(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = [v8 BOOLValue];
      v10 = @"NO";
      if (v9)
      {
        v10 = @"YES";
      }
    }

    else
    {
      v10 = @"unset";
    }

    v14 = 138543618;
    v15 = v3;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "Updating night mode for screenInfo: %{public}@, night mode: %{public}@", &v14, 0x16u);
  }

  v11 = [*(a1 + 48) nightModeDictionary];
  v12 = *(a1 + 40);
  v13 = [v3 identifier];
  [v11 setObject:v12 forKey:v13];

LABEL_12:
}

- (void)handleUIAppearanceUpdateWithParameters:(id)parameters
{
  v30 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKey:@"uuid"];
  v6 = [(CARAppearanceManager *)self _screenInfoForScreenUUID:v5];
  if (![(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:v5])
  {
    supportsAppearanceMode = [v6 supportsAppearanceMode];
    if (supportsAppearanceMode)
    {
      v8 = [parametersCopy objectForKey:@"appearanceMode"];

      if (v8)
      {
        v9 = [parametersCopy objectForKey:@"appearanceMode"];
        unsignedIntegerValue = [v9 unsignedIntegerValue];

        v11 = [objc_opt_class() _carUserInterfaceStyleForAppearanceMode:unsignedIntegerValue];
        v12 = CarAppearanceLogging(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v11];
          v26 = 138543618;
          v27 = v6;
          v28 = 2114;
          v29 = v13;
          _os_log_impl(&dword_1C81FC000, v12, OS_LOG_TYPE_DEFAULT, "UI Appearance update for screen: %{public}@ has style: %{public}@", &v26, 0x16u);
        }
      }

      else
      {
        v11 = -1;
      }

      v15 = [parametersCopy objectForKey:@"appearanceSetting"];

      if (v15)
      {
        v17 = [parametersCopy objectForKey:@"appearanceSetting"];
        integerValue = [v17 integerValue];

        v20 = CarAppearanceLogging(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [objc_opt_class() _descriptionForAppearanceSetting:integerValue];
          v26 = 138543618;
          v27 = v6;
          v28 = 2114;
          v29 = v21;
          _os_log_impl(&dword_1C81FC000, v20, OS_LOG_TYPE_DEFAULT, "UI Appearance update for screen: %{public}@ has setting: %{public}@", &v26, 0x16u);
        }

        if ((v11 - 1) <= 1 && integerValue <= 2)
        {
          appearanceModeDictionary = [(CARAppearanceManager *)self appearanceModeDictionary];
          v23 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
          [appearanceModeDictionary setObject:v23 forKey:v5];

          appearanceModeSettingDictionary = [(CARAppearanceManager *)self appearanceModeSettingDictionary];
          v25 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
          [appearanceModeSettingDictionary setObject:v25 forKey:v5];

          [(CARAppearanceManager *)self _resolveUIStylesAndNotify:1];
          goto LABEL_19;
        }
      }

      v14 = CarAppearanceLogging(v16);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [CARAppearanceManager handleUIAppearanceUpdateWithParameters:];
      }
    }

    else
    {
      v14 = CarAppearanceLogging(supportsAppearanceMode);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [CARAppearanceManager handleUIAppearanceUpdateWithParameters:];
      }
    }
  }

LABEL_19:
}

- (void)handleMapAppearanceUpdateWithParameters:(id)parameters
{
  v30 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKey:@"uuid"];
  v6 = [(CARAppearanceManager *)self _screenInfoForScreenUUID:v5];
  if (![(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:v5])
  {
    supportsMapAppearanceMode = [v6 supportsMapAppearanceMode];
    if (supportsMapAppearanceMode)
    {
      v8 = [parametersCopy objectForKey:@"appearanceMode"];

      if (v8)
      {
        v9 = [parametersCopy objectForKey:@"appearanceMode"];
        unsignedIntegerValue = [v9 unsignedIntegerValue];

        v11 = [objc_opt_class() _carUserInterfaceStyleForAppearanceMode:unsignedIntegerValue];
        v12 = CarAppearanceLogging(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v11];
          v26 = 138543618;
          v27 = v6;
          v28 = 2114;
          v29 = v13;
          _os_log_impl(&dword_1C81FC000, v12, OS_LOG_TYPE_DEFAULT, "Map Appearance update for screen: %{public}@ has style: %{public}@", &v26, 0x16u);
        }
      }

      else
      {
        v11 = -1;
      }

      v15 = [parametersCopy objectForKey:@"appearanceSetting"];

      if (v15)
      {
        v17 = [parametersCopy objectForKey:@"appearanceSetting"];
        integerValue = [v17 integerValue];

        v20 = CarAppearanceLogging(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [objc_opt_class() _descriptionForAppearanceSetting:integerValue];
          v26 = 138543618;
          v27 = v6;
          v28 = 2114;
          v29 = v21;
          _os_log_impl(&dword_1C81FC000, v20, OS_LOG_TYPE_DEFAULT, "Map Appearance update for screen: %{public}@ has setting: %{public}@", &v26, 0x16u);
        }

        if ((v11 - 1) <= 1 && integerValue <= 2)
        {
          mapAppearanceModeDictionary = [(CARAppearanceManager *)self mapAppearanceModeDictionary];
          v23 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
          [mapAppearanceModeDictionary setObject:v23 forKey:v5];

          mapAppearanceModeSettingDictionary = [(CARAppearanceManager *)self mapAppearanceModeSettingDictionary];
          v25 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
          [mapAppearanceModeSettingDictionary setObject:v25 forKey:v5];

          [(CARAppearanceManager *)self _resolveMapsStylesAndNotify:1];
          goto LABEL_19;
        }
      }

      v14 = CarAppearanceLogging(v16);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [CARAppearanceManager handleMapAppearanceUpdateWithParameters:];
      }
    }

    else
    {
      v14 = CarAppearanceLogging(supportsMapAppearanceMode);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [CARAppearanceManager handleMapAppearanceUpdateWithParameters:];
      }
    }
  }

LABEL_19:
}

- (void)handleLocationBasedNightModeUpdate:(BOOL)update
{
  updateCopy = update;
  v13 = *MEMORY[0x1E69E9840];
  _mainScreenInfo = [(CARAppearanceManager *)self _mainScreenInfo];
  identifier = [_mainScreenInfo identifier];
  v7 = [(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:identifier];

  if (!v7)
  {
    v9 = CarAppearanceLogging(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromBOOL();
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_DEFAULT, "Location night mode update: %{public}@", &v11, 0xCu);
    }

    [(CARAppearanceManager *)self setLocationBasedNightMode:updateCopy];
    [(CARAppearanceManager *)self _resolveUIStylesAndNotify:1];
    [(CARAppearanceManager *)self _resolveMapsStylesAndNotify:1];
  }
}

- (void)handleChangeAppearance:(int64_t)appearance screenID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = CarAppearanceLogging(dCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "CarDDPAppearance Received new target appearance: %{public}@, screenID: %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
  [(NSMutableDictionary *)self->_targetAppearanceModes setObject:v9 forKeyedSubscript:dCopy];

  delegate = [(CARAppearanceManager *)self delegate];
  v15 = dCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  [delegate appearanceManager:self didUpdateMapAppearanceStyle:appearance forScreenUUIDs:v11];

  delegate2 = [(CARAppearanceManager *)self delegate];
  v14 = dCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  [delegate2 appearanceManager:self didUpdateUIAppearanceStyle:appearance forScreenUUIDs:v13];
}

- (void)setDisableLocationNightMode
{
  _mainScreenInfo = [(CARAppearanceManager *)self _mainScreenInfo];
  identifier = [_mainScreenInfo identifier];
  v5 = [(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:identifier];

  if (!v5)
  {
    v7 = CarAppearanceLogging(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "Disabling location night mode, further updates will be ignored", v8, 2u);
    }

    [(CARAppearanceManager *)self setLocationNightModeDisabled:1];
    [(CARAppearanceManager *)self _resolveUIStylesAndNotify:0];
    [(CARAppearanceManager *)self _resolveMapsStylesAndNotify:0];
  }
}

+ (int64_t)_carUserInterfaceStyleForAppearanceMode:(unint64_t)mode
{
  v3 = 2;
  if (mode != 1)
  {
    v3 = -1;
  }

  if (mode)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

- (id)_screenInfoForScreenUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  screens = [(CARAppearanceManager *)self screens];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__CARAppearanceManager__screenInfoForScreenUUID___block_invoke;
  v9[3] = &unk_1E82FCD10;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [screens enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__CARAppearanceManager__screenInfoForScreenUUID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_setInitialDisplayNightModeForScreen:(id)screen
{
  v19 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  screenInfoResponse = [screenCopy screenInfoResponse];
  v6 = [screenInfoResponse objectForKey:@"nightMode"];

  if (v6)
  {
    v7 = [screenInfoResponse objectForKey:@"nightMode"];
    bOOLValue = [v7 BOOLValue];

    v10 = CarAppearanceLogging(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromBOOL();
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = screenCopy;
      _os_log_impl(&dword_1C81FC000, v10, OS_LOG_TYPE_DEFAULT, "Screen has nightMode key with value: %{public}@ for screenInfo: %{public}@", &v15, 0x16u);
    }

    nightModeDictionary = [(CARAppearanceManager *)self nightModeDictionary];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
    identifier = [screenCopy identifier];
    [nightModeDictionary setObject:v13 forKey:identifier];
  }
}

- (void)_setInitialUIAppearanceNumberForScreen:(id)screen
{
  v33 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  screenInfoResponse = [screenCopy screenInfoResponse];
  v6 = [screenInfoResponse objectForKey:@"uiAppearanceMode"];
  if (v6 && (v7 = v6, [screenInfoResponse objectForKey:@"uiAppearanceSetting"], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = CarAppearanceLogging(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      v28 = screenCopy;
      _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_DEFAULT, "Screen has appearanceMode key: %{public}@", &v27, 0xCu);
    }

    v10 = objc_opt_class();
    v11 = [screenInfoResponse objectForKey:@"uiAppearanceMode"];
    v12 = [v10 _carUserInterfaceStyleForAppearanceMode:{objc_msgSend(v11, "unsignedIntegerValue")}];

    v13 = [screenInfoResponse objectForKey:@"uiAppearanceSetting"];
    integerValue = [v13 integerValue];

    v16 = CarAppearanceLogging(v15);
    appearanceModeSettingDictionary = v16;
    if ((v12 - 1) > 1 || integerValue > 2)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v27 = 134349570;
        v28 = v12;
        v29 = 2050;
        v30 = integerValue;
        v31 = 2112;
        v32 = screenCopy;
        _os_log_fault_impl(&dword_1C81FC000, appearanceModeSettingDictionary, OS_LOG_TYPE_FAULT, "Invalid initial style (%{public}lu), setting (%{public}lu) for screenInfo: %@", &v27, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v12];
        v21 = [objc_opt_class() _descriptionForAppearanceSetting:integerValue];
        v27 = 138543874;
        v28 = v20;
        v29 = 2114;
        v30 = v21;
        v31 = 2114;
        v32 = screenCopy;
        _os_log_impl(&dword_1C81FC000, appearanceModeSettingDictionary, OS_LOG_TYPE_DEFAULT, "Initial ui appearance style is: %{public}@, setting: %{public}@, for screenInfo: %{public}@", &v27, 0x20u);
      }

      appearanceModeDictionary = [(CARAppearanceManager *)self appearanceModeDictionary];
      v23 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
      identifier = [screenCopy identifier];
      [appearanceModeDictionary setObject:v23 forKey:identifier];

      appearanceModeSettingDictionary = [(CARAppearanceManager *)self appearanceModeSettingDictionary];
      v25 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
      identifier2 = [screenCopy identifier];
      [appearanceModeSettingDictionary setObject:v25 forKey:identifier2];
    }
  }

  else
  {
    appearanceModeSettingDictionary = CarAppearanceLogging(v6);
    if (os_log_type_enabled(appearanceModeSettingDictionary, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      v28 = screenCopy;
      _os_log_impl(&dword_1C81FC000, appearanceModeSettingDictionary, OS_LOG_TYPE_DEFAULT, "No initial appearance mode for screenInfo: %{public}@", &v27, 0xCu);
    }
  }
}

- (void)_setInitialMapAppearanceNumberForScreen:(id)screen
{
  v33 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  screenInfoResponse = [screenCopy screenInfoResponse];
  v6 = [screenInfoResponse objectForKey:@"mapAppearanceMode"];
  if (v6 && (v7 = v6, [screenInfoResponse objectForKey:@"mapAppearanceSetting"], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = CarAppearanceLogging(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      v28 = screenCopy;
      _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_DEFAULT, "Screen has mapAppearanceMode key: %{public}@", &v27, 0xCu);
    }

    v10 = objc_opt_class();
    v11 = [screenInfoResponse objectForKey:@"mapAppearanceMode"];
    v12 = [v10 _carUserInterfaceStyleForAppearanceMode:{objc_msgSend(v11, "unsignedIntegerValue")}];

    v13 = [screenInfoResponse objectForKey:@"mapAppearanceSetting"];
    integerValue = [v13 integerValue];

    v16 = CarAppearanceLogging(v15);
    mapAppearanceModeSettingDictionary = v16;
    if ((v12 - 1) > 1 || integerValue > 2)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v27 = 134349570;
        v28 = v12;
        v29 = 2050;
        v30 = integerValue;
        v31 = 2114;
        v32 = screenCopy;
        _os_log_fault_impl(&dword_1C81FC000, mapAppearanceModeSettingDictionary, OS_LOG_TYPE_FAULT, "Invalid initial map appearance style (%{public}lu), setting (%{public}lu) for screenInfo: %{public}@", &v27, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v12];
        v21 = [objc_opt_class() _descriptionForAppearanceSetting:integerValue];
        v27 = 138543874;
        v28 = v20;
        v29 = 2114;
        v30 = v21;
        v31 = 2114;
        v32 = screenCopy;
        _os_log_impl(&dword_1C81FC000, mapAppearanceModeSettingDictionary, OS_LOG_TYPE_DEFAULT, "Initial map appearance style is: %{public}@, setting: %{public}@, for screenInfo: %{public}@", &v27, 0x20u);
      }

      mapAppearanceModeDictionary = [(CARAppearanceManager *)self mapAppearanceModeDictionary];
      v23 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
      identifier = [screenCopy identifier];
      [mapAppearanceModeDictionary setObject:v23 forKey:identifier];

      mapAppearanceModeSettingDictionary = [(CARAppearanceManager *)self mapAppearanceModeSettingDictionary];
      v25 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
      identifier2 = [screenCopy identifier];
      [mapAppearanceModeSettingDictionary setObject:v25 forKey:identifier2];
    }
  }

  else
  {
    mapAppearanceModeSettingDictionary = CarAppearanceLogging(v6);
    if (os_log_type_enabled(mapAppearanceModeSettingDictionary, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      v28 = screenCopy;
      _os_log_impl(&dword_1C81FC000, mapAppearanceModeSettingDictionary, OS_LOG_TYPE_DEFAULT, "No initial map appearance mode for screenInfo: %{public}@", &v27, 0xCu);
    }
  }
}

- (void)_resolveUIStylesAndNotify:(BOOL)notify
{
  screens = [(CARAppearanceManager *)self screens];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CARAppearanceManager__resolveUIStylesAndNotify___block_invoke;
  v6[3] = &unk_1E82FD698;
  v6[4] = self;
  notifyCopy = notify;
  [screens enumerateObjectsUsingBlock:v6];
}

void __50__CARAppearanceManager__resolveUIStylesAndNotify___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 identifier];
  if (([*(a1 + 32) _useVehicleDataProtocolAppearance:v4] & 1) == 0)
  {
    v5 = [*(a1 + 32) currentEffectiveUIStyle];
    v6 = [v5 objectForKey:v4];
    v36 = [v6 integerValue];

    v7 = [*(a1 + 32) locationBasedNightMode];
    v8 = [*(a1 + 32) nightModeDictionary];
    v9 = [v8 objectForKey:v4];
    v10 = [v9 BOOLValue];

    v11 = [*(a1 + 32) appearanceModeDictionary];
    v12 = [v11 objectForKey:v4];

    v13 = [*(a1 + 32) appearanceModeSettingDictionary];
    v14 = [v13 objectForKey:v4];

    v15 = [v14 integerValue];
    v37 = v14;
    if (v12 && v14)
    {
      v16 = [v12 integerValue];
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16 == 1;
      }

      v18 = v17;
      v19 = 1;
      if (v7)
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      if ((v10 | v7))
      {
        v19 = 2;
      }

      if (v16 == -1)
      {
        v16 = v19;
      }
    }

    else
    {
      v18 = 0;
      if (v7)
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      if ((v10 | v7))
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }
    }

    if (v18)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    v22 = CarAppearanceLogging(v16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v21];
      v24 = [objc_opt_class() _descriptionForAppearanceSetting:v15];
      v25 = NSStringFromBOOL();
      v26 = NSStringFromBOOL();
      *buf = 138544642;
      v40 = v23;
      v41 = 2114;
      v42 = v3;
      v43 = 2114;
      v44 = v12;
      v45 = 2114;
      v46 = v24;
      v47 = 2114;
      v48 = v25;
      v49 = 2114;
      v50 = v26;
      _os_log_impl(&dword_1C81FC000, v22, OS_LOG_TYPE_DEFAULT, "Resolved ui style: %{public}@ for screen: %{public}@ with ui appearance value: %{public}@, appearance setting: %{public}@, location night mode: %{public}@, display night mode: %{public}@", buf, 0x3Eu);
    }

    if (v21 != v36)
    {
      v28 = CarAppearanceLogging(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v21];
        v30 = NSStringFromBOOL();
        *buf = 138543618;
        v40 = v29;
        v41 = 2114;
        v42 = v30;
        _os_log_impl(&dword_1C81FC000, v28, OS_LOG_TYPE_DEFAULT, "UI Style has been updated, setting effective style to %{public}@, will notify: %{public}@", buf, 0x16u);
      }

      v31 = [*(a1 + 32) currentEffectiveUIStyle];
      v32 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
      [v31 setObject:v32 forKey:v4];

      if (*(a1 + 40) == 1)
      {
        v33 = [*(a1 + 32) delegate];
        v34 = *(a1 + 32);
        v38 = v4;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
        [v33 appearanceManager:v34 didUpdateUIAppearanceStyle:v21 forScreenUUIDs:v35];
      }
    }

    [*(a1 + 32) _resolveMapsStylesAndNotify:*(a1 + 40)];
  }
}

- (void)_resolveMapsStylesAndNotify:(BOOL)notify
{
  screens = [(CARAppearanceManager *)self screens];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__CARAppearanceManager__resolveMapsStylesAndNotify___block_invoke;
  v6[3] = &unk_1E82FD698;
  v6[4] = self;
  notifyCopy = notify;
  [screens enumerateObjectsUsingBlock:v6];
}

void __52__CARAppearanceManager__resolveMapsStylesAndNotify___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 identifier];
  if (([*(a1 + 32) _useVehicleDataProtocolAppearance:v4] & 1) == 0)
  {
    v5 = [*(a1 + 32) currentEffectiveMapStyle];
    v6 = [v5 objectForKey:v4];
    v35 = [v6 integerValue];

    v7 = [*(a1 + 32) locationBasedNightMode];
    v8 = [*(a1 + 32) nightModeDictionary];
    v9 = [v8 objectForKey:v4];
    v10 = [v9 BOOLValue];

    v11 = [*(a1 + 32) mapAppearanceModeDictionary];
    v12 = [v11 objectForKey:v4];

    v13 = [*(a1 + 32) mapAppearanceModeSettingDictionary];
    v14 = [v13 objectForKey:v4];

    if (v12 && v14)
    {
      v15 = [v12 integerValue];
      v16 = v15;
      v17 = 1;
      if ((v10 | v7))
      {
        v17 = 2;
      }

      if (v15 == -1)
      {
        v16 = v17;
      }
    }

    else if ((v10 | v7))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    if (v16 == 2)
    {
      v18 = [*(a1 + 32) currentEffectiveUIStyle];
      v19 = [v18 objectForKey:v4];
      v20 = [v19 integerValue];

      if (v20 == 1)
      {
        v21 = CarAppearanceLogging(v15);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C81FC000, v21, OS_LOG_TYPE_DEFAULT, "Map Style is dark but ui appearance is light, setting effective map style light to match", buf, 2u);
        }

        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }

    v22 = CarAppearanceLogging(v15);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v16];
      v24 = NSStringFromBOOL();
      v25 = NSStringFromBOOL();
      *buf = 138544386;
      v38 = v23;
      v39 = 2114;
      v40 = v3;
      v41 = 2114;
      v42 = v12;
      v43 = 2114;
      v44 = v24;
      v45 = 2114;
      v46 = v25;
      _os_log_impl(&dword_1C81FC000, v22, OS_LOG_TYPE_DEFAULT, "Resolved map style: %{public}@ for screen: %{public}@ with ui appearance value: %{public}@, location night mode: %{public}@, display night mode: %{public}@", buf, 0x34u);
    }

    if (v16 != v35)
    {
      v27 = CarAppearanceLogging(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v16];
        v29 = NSStringFromBOOL();
        *buf = 138543618;
        v38 = v28;
        v39 = 2114;
        v40 = v29;
        _os_log_impl(&dword_1C81FC000, v27, OS_LOG_TYPE_DEFAULT, "Map Style has been updated, setting effective style to %{public}@, will notify: %{public}@", buf, 0x16u);
      }

      v30 = [*(a1 + 32) currentEffectiveMapStyle];
      v31 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
      [v30 setObject:v31 forKey:v4];

      if (*(a1 + 40) == 1)
      {
        v32 = [*(a1 + 32) delegate];
        v33 = *(a1 + 32);
        v36 = v4;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
        [v32 appearanceManager:v33 didUpdateMapAppearanceStyle:v16 forScreenUUIDs:v34];
      }
    }
  }
}

+ (id)_descriptionForAppearanceSetting:(int64_t)setting
{
  if (setting > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E82FD6E0[setting];
  }
}

- (BOOL)_useVehicleDataProtocolAppearance:(id)appearance
{
  v3 = [(NSMutableDictionary *)self->_targetAppearanceModes objectForKeyedSubscript:appearance];
  v4 = v3 != 0;

  return v4;
}

- (CARAppearanceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end