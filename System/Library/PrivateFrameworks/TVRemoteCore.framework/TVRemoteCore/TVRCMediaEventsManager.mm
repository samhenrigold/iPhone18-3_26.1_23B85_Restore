@interface TVRCMediaEventsManager
- (BOOL)volumeSupported;
- (NSSet)supportedMediaCommands;
- (TVRCMediaEventsManager)initWithCompanionLinkClient:(id)client supportsDirectCaptionQueries:(BOOL)queries eventHandler:(id)handler;
- (id)supportedCaptionEvents;
- (int)_captionSettingForButtonEvent:(id)event;
- (int)_commandForMediaButtonEvent:(id)event;
- (void)_refreshCaptionState;
- (void)_setupMediaCommands:(unint64_t)commands;
- (void)activateWithCompletionHandler:(id)handler;
- (void)invalidate;
- (void)sendMediaEvent:(id)event;
@end

@implementation TVRCMediaEventsManager

- (TVRCMediaEventsManager)initWithCompanionLinkClient:(id)client supportsDirectCaptionQueries:(BOOL)queries eventHandler:(id)handler
{
  clientCopy = client;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = TVRCMediaEventsManager;
  v10 = [(TVRCMediaEventsManager *)&v21 init];
  if (v10)
  {
    v11 = objc_alloc_init(TVRCMediaControlSession);
    [(TVRCMediaEventsManager *)v10 setMediaSession:v11];

    mediaSession = [(TVRCMediaEventsManager *)v10 mediaSession];
    [mediaSession setMessenger:clientCopy];

    v13 = [handlerCopy copy];
    eventHandler = v10->_eventHandler;
    v10->_eventHandler = v13;

    v10->_supportsDirectCaptionQueries = queries;
    objc_initWeak(&location, v10);
    mediaSession2 = [(TVRCMediaEventsManager *)v10 mediaSession];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __96__TVRCMediaEventsManager_initWithCompanionLinkClient_supportsDirectCaptionQueries_eventHandler___block_invoke;
    v17[3] = &unk_279D82FD0;
    objc_copyWeak(&v19, &location);
    v18 = clientCopy;
    [mediaSession2 setMediaControlFlagsChangedHandler:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __96__TVRCMediaEventsManager_initWithCompanionLinkClient_supportsDirectCaptionQueries_eventHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _TVRCMediaEventsLog(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v20 = v5;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "MediaControlFlagsChangedHandler called for companionLinkClient <%{public}@>", buf, 0xCu);
    }

    v6 = [v3 mediaSession];
    v7 = [v6 mediaControlFlags];

    v9 = _TVRCMediaEventsLog(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if ((v7 & 0x100) != 0)
    {
      if (v10)
      {
        v12 = *(a1 + 32);
        *buf = 138543362;
        v20 = v12;
        _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "MediaControlFlagsVolume available for <%{public}@>", buf, 0xCu);
      }

      v13 = [[TVRCButton alloc] _initWithButtonType:10];
      v14 = [[TVRCButton alloc] _initWithButtonType:11];
      v15 = [[TVRCButton alloc] _initWithButtonType:29];
      v16 = [MEMORY[0x277CBEB98] setWithObjects:{v13, v14, v15, 0}];
      [v3 setVolumeCommands:v16];
    }

    else
    {
      if (v10)
      {
        v11 = *(a1 + 32);
        *buf = 138543362;
        v20 = v11;
        _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "MediaControlFlagsVolume not available for companionLinkClient <%{public}@>", buf, 0xCu);
      }

      [v3 setVolumeCommands:0];
    }

    [v3 _setupMediaCommands:v7];
    v17 = [v3 eventHandler];

    if (v17)
    {
      v18 = [v3 eventHandler];
      v18[2]();
    }
  }
}

- (void)activateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_initWeak(&location, self);
  mediaSession = [(TVRCMediaEventsManager *)self mediaSession];
  messenger = [mediaSession messenger];

  mediaSession2 = [(TVRCMediaEventsManager *)self mediaSession];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__TVRCMediaEventsManager_activateWithCompletionHandler___block_invoke;
  v11[3] = &unk_279D830C0;
  v9 = messenger;
  v12 = v9;
  v10 = handlerCopy;
  v13 = v10;
  objc_copyWeak(&v14, &location);
  [mediaSession2 activateWithCompletion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __56__TVRCMediaEventsManager_activateWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TVRCMediaEventsLog(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__TVRCRapportMediaEventsManager_activateWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "MediaSession activated for companionLinkClient <%{public}@>", &v8, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _refreshCaptionState];
  }
}

- (void)invalidate
{
  mediaSession = [(TVRCMediaEventsManager *)self mediaSession];
  [mediaSession invalidate];

  v4 = _TVRCRapportLog([(TVRCMediaEventsManager *)self setMediaSession:0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Invalidated MediaManager", v5, 2u);
  }
}

- (NSSet)supportedMediaCommands
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  volumeCommands = [(TVRCMediaEventsManager *)self volumeCommands];

  if (volumeCommands)
  {
    volumeCommands2 = [(TVRCMediaEventsManager *)self volumeCommands];
    [v3 unionSet:volumeCommands2];
  }

  mediaCommands = [(TVRCMediaEventsManager *)self mediaCommands];

  if (mediaCommands)
  {
    mediaCommands2 = [(TVRCMediaEventsManager *)self mediaCommands];
    [v3 unionSet:mediaCommands2];
  }

  supportedCaptionEvents = [(TVRCMediaEventsManager *)self supportedCaptionEvents];
  [v3 unionSet:supportedCaptionEvents];

  v9 = [MEMORY[0x277CBEB98] setWithSet:v3];

  return v9;
}

- (BOOL)volumeSupported
{
  volumeCommands = [(TVRCMediaEventsManager *)self volumeCommands];
  v3 = volumeCommands != 0;

  return v3;
}

- (void)sendMediaEvent:(id)event
{
  v30 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  button = [eventCopy button];
  buttonType = [button buttonType];

  if ((buttonType - 16) > 2)
  {
    v9 = [(TVRCMediaEventsManager *)self _commandForMediaButtonEvent:eventCopy];
    if (v9 == 7)
    {
      if (buttonType == 31)
      {
        v10 = -9999999.0;
      }

      else
      {
        button2 = [eventCopy button];
        properties = [button2 properties];
        v16 = [properties objectForKey:@"TVRCButtonSkipInterval"];

        v10 = 10.0;
        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v16 doubleValue];
            v10 = v17;
          }
        }
      }

      v18 = _TVRCMediaEventsLog(v9);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *location = 136315394;
        *&location[4] = "SkipBy";
        v28 = 2048;
        v29 = v10;
        _os_log_impl(&dword_26CF7F000, v18, OS_LOG_TYPE_DEFAULT, "Sending %s with skipInterval=%f", location, 0x16u);
      }

      mediaSession = [(TVRCMediaEventsManager *)self mediaSession];
      v20 = *MEMORY[0x277D44228];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __41__TVRCMediaEventsManager_sendMediaEvent___block_invoke_6;
      v23[3] = &__block_descriptor_36_e17_v16__0__NSError_8l;
      v24 = 7;
      [mediaSession mediaSkipBySeconds:v20 destinationID:v23 completion:v10];
    }

    else
    {
      v11 = v9;
      mediaSession2 = [(TVRCMediaEventsManager *)self mediaSession];
      v13 = *MEMORY[0x277D44228];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __41__TVRCMediaEventsManager_sendMediaEvent___block_invoke_7;
      v21[3] = &__block_descriptor_36_e17_v16__0__NSError_8l;
      v22 = v11;
      [mediaSession2 mediaCommand:v11 destinationID:v13 completion:v21];
    }
  }

  else
  {
    v7 = [(TVRCMediaEventsManager *)self _captionSettingForButtonEvent:eventCopy];
    objc_initWeak(location, self);
    mediaSession3 = [(TVRCMediaEventsManager *)self mediaSession];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __41__TVRCMediaEventsManager_sendMediaEvent___block_invoke;
    v25[3] = &unk_279D82D38;
    objc_copyWeak(&v26, location);
    [mediaSession3 mediaCaptionSettingSet:v7 destinationID:*MEMORY[0x277D44228] completion:v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }
}

void __41__TVRCMediaEventsManager_sendMediaEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = _TVRCMediaEventsLog(WeakRetained);
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __48__TVRCRapportMediaEventsManager_sendMediaEvent___block_invoke_cold_1(v3, v7);
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Media caption setting set for RPDestinationIdentifierDirectPeer", v8, 2u);
      }

      [v5 _refreshCaptionState];
    }
  }
}

void __41__TVRCMediaEventsManager_sendMediaEvent___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _TVRCMediaEventsLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __41__TVRCMediaEventsManager_sendMediaEvent___block_invoke_6_cold_1();
    }
  }
}

void __41__TVRCMediaEventsManager_sendMediaEvent___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _TVRCMediaEventsLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __41__TVRCMediaEventsManager_sendMediaEvent___block_invoke_6_cold_1();
    }
  }
}

- (void)_setupMediaCommands:(unint64_t)commands
{
  commandsCopy = commands;
  v39 = *MEMORY[0x277D85DE8];
  v5 = _TVRCMediaEventsLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v38 = "[TVRCMediaEventsManager _setupMediaCommands:]";
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  mediaCommands = self->_mediaCommands;
  self->_mediaCommands = v6;

  v35[0] = @"_TVRCButtonLongPressBeginAction";
  v35[1] = @"_TVRCButtonLongPressEndAction";
  v36[0] = &unk_287E66BF8;
  v36[1] = &unk_287E66C10;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v9 = v8;
  if ((commandsCopy & 0x200) != 0)
  {
    v10 = [TVRCButton alloc];
    v33 = @"TVRCButtonSkipInterval";
    v34 = &unk_287E66D30;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v12 = [(TVRCButton *)v10 _initWithButtonType:6 hasTapAction:1 properties:v11];

    mediaCommands = [(TVRCMediaEventsManager *)self mediaCommands];
    [mediaCommands addObject:v12];

    if ((commandsCopy & 0x400) == 0)
    {
LABEL_5:
      if ((commandsCopy & 4) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      v18 = [TVRCButton alloc];
      if ((commandsCopy & 0x10) != 0)
      {
        v19 = v9;
      }

      else
      {
        v19 = MEMORY[0x277CBEC10];
      }

      v20 = [(TVRCButton *)v18 _initWithButtonType:8 hasTapAction:1 properties:v19];
      mediaCommands2 = [(TVRCMediaEventsManager *)self mediaCommands];
      [mediaCommands2 addObject:v20];

      if ((commandsCopy & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }
  }

  else if ((commandsCopy & 0x400) == 0)
  {
    goto LABEL_5;
  }

  v14 = [TVRCButton alloc];
  v31 = @"TVRCButtonSkipInterval";
  v32 = &unk_287E66D40;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v16 = [(TVRCButton *)v14 _initWithButtonType:7 hasTapAction:1 properties:v15];

  mediaCommands3 = [(TVRCMediaEventsManager *)self mediaCommands];
  [mediaCommands3 addObject:v16];

  if ((commandsCopy & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((commandsCopy & 8) != 0)
  {
LABEL_14:
    v22 = [TVRCButton alloc];
    if ((commandsCopy & 0x20) != 0)
    {
      v24 = 1;
      v23 = v9;
    }

    else
    {
      v23 = MEMORY[0x277CBEC10];
      v24 = 0;
    }

    v25 = [(TVRCButton *)v22 _initWithButtonType:9 hasTapAction:v24 properties:v23];
    mediaCommands4 = [(TVRCMediaEventsManager *)self mediaCommands];
    [mediaCommands4 addObject:v25];
  }

LABEL_18:
  v27 = _TVRCMediaEventsLog(v8);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    mediaCommands5 = [(TVRCMediaEventsManager *)self mediaCommands];
    allObjects = [mediaCommands5 allObjects];
    v30 = [allObjects componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v38 = v30;
    _os_log_impl(&dword_26CF7F000, v27, OS_LOG_TYPE_DEFAULT, "Supported media commands \n%{public}@", buf, 0xCu);
  }
}

- (int)_commandForMediaButtonEvent:(id)event
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  button = [eventCopy button];
  properties = [button properties];

  eventType = [eventCopy eventType];
  v7 = 0;
  if (eventType <= 1)
  {
    if (eventType)
    {
      if (eventType != 1)
      {
        goto LABEL_37;
      }

      v8 = _TVRCButtonLongPressBeginActionKey;
      goto LABEL_9;
    }

LABEL_7:
    button2 = [eventCopy button];
    buttonType = [button2 buttonType];
    goto LABEL_10;
  }

  if (eventType != 2)
  {
    if (eventType != 3)
    {
      goto LABEL_37;
    }

    goto LABEL_7;
  }

  v8 = _TVRCButtonLongPressEndActionKey;
LABEL_9:
  button2 = [properties objectForKey:*v8];
  buttonType = [button2 integerValue];
LABEL_10:
  v11 = buttonType;

  v7 = 0;
  if (v11 > 200)
  {
    if (v11 > 203)
    {
      switch(v11)
      {
        case 204:
          v7 = 1;
          break;
        case 205:
          v7 = 2;
          break;
        case 9999:
          goto LABEL_37;
      }
    }

    else if (v11 == 201)
    {
      v7 = 9;
    }

    else if (v11 == 202)
    {
      v7 = 10;
    }

    else
    {
      v7 = 11;
    }

    goto LABEL_34;
  }

  if (v11 > 8)
  {
    if (v11 == 9)
    {
      v7 = 4;
      goto LABEL_34;
    }

    if (v11 != 31)
    {
      if (v11 == 200)
      {
        v7 = 8;
      }

      goto LABEL_34;
    }
  }

  else if (v11 != 6 && v11 != 7)
  {
    if (v11 == 8)
    {
      v7 = 3;
    }

    goto LABEL_34;
  }

  v7 = 7;
LABEL_34:
  v13 = _TVRCMediaEventsLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = off_279D83640[v7];
    v16 = 136315650;
    v17 = "[TVRCMediaEventsManager _commandForMediaButtonEvent:]";
    v18 = 2114;
    v19 = eventCopy;
    v20 = 2080;
    v21 = v14;
    _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "%s event=%{public}@, command=%s", &v16, 0x20u);
  }

LABEL_37:
  return v7;
}

- (int)_captionSettingForButtonEvent:(id)event
{
  button = [event button];
  buttonType = [button buttonType];

  if ((buttonType - 16) > 2)
  {
    return 0;
  }

  else
  {
    return dword_26CFC8998[buttonType - 16];
  }
}

- (void)_refreshCaptionState
{
  v10 = *MEMORY[0x277D85DE8];
  supportsDirectCaptionQueries = [(TVRCMediaEventsManager *)self supportsDirectCaptionQueries];
  if ((supportsDirectCaptionQueries & 1) == 0)
  {
    v4 = _TVRCMediaEventsLog(supportsDirectCaptionQueries);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[TVRCMediaEventsManager _refreshCaptionState]";
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    mediaSession = [(TVRCMediaEventsManager *)self mediaSession];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__TVRCMediaEventsManager__refreshCaptionState__block_invoke;
    v6[3] = &unk_279D83108;
    objc_copyWeak(&v7, buf);
    [mediaSession mediaCaptionSettingGetFromDestinationID:*MEMORY[0x277D44228] completion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

void __46__TVRCMediaEventsManager__refreshCaptionState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _TVRCMediaEventsLog(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __53__TVRCRapportMediaEventsManager__refreshCaptionState__block_invoke_cold_1(v5, v7);
    }

LABEL_4:

    goto LABEL_5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 4)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_279D836A0[a2];
    }

    v12 = 136315138;
    v13 = v8;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Current caption setting is %s", &v12, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained setCurrentSetting:a2];
    v10 = [v7 eventHandler];

    if (v10)
    {
      v11 = [v7 eventHandler];
      v11[2]();
    }

    goto LABEL_4;
  }

LABEL_5:
}

- (id)supportedCaptionEvents
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  currentSetting = [(TVRCMediaEventsManager *)self currentSetting];
  if (currentSetting <= 3)
  {
    v5 = [[TVRCButton alloc] _initWithButtonType:qword_26CFC89A8[currentSetting] hasTapAction:1 properties:0];
    [v3 addObject:v5];
  }

  v6 = _TVRCMediaEventsLog(currentSetting);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentSetting2 = [(TVRCMediaEventsManager *)self currentSetting];
    if (currentSetting2 > 4)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_279D836A0[currentSetting2];
    }

    allObjects = [v3 allObjects];
    v10 = [allObjects componentsJoinedByString:@"\n"];
    v13 = 136315394;
    v14 = v8;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Supported Caption Events for current settings=%s, events=\n%{public}@", &v13, 0x16u);
  }

  v11 = [MEMORY[0x277CBEB98] setWithSet:v3];

  return v11;
}

@end