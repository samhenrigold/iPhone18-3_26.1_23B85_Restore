@interface MNAudioManager
- (BOOL)_deviceIsMuted;
- (BOOL)_deviceSettingsAllowSpeech;
- (BOOL)vibrateForShortPrompt:(unint64_t)prompt;
- (BOOL)voiceGuidanceEnabled;
- (MNAudioManager)initWithTransportType:(int)type voiceLanguage:(id)language guidanceLevelOverride:(unint64_t)override;
- (int)_supportedTransportTypeForTransportType:(int)type;
- (void)audioSystemOptions:(id)options didChangeGuidanceLevel:(unint64_t)level transportType:(int)type;
- (void)changeTransportType:(int)type;
- (void)dealloc;
- (void)registerObserver:(id)observer;
- (void)requestSpeech:(id)speech guidanceLevel:(unint64_t)level modifier:(unint64_t)modifier shortPromptType:(unint64_t)type completionHandler:(id)handler;
- (void)unregisterObserver:(id)observer;
@end

@implementation MNAudioManager

- (BOOL)voiceGuidanceEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  if (![(MNAudioManager *)self voiceGuidanceLevel])
  {
    v3 = GetAudioLogForMNAudioManagerCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      transportType = self->_transportType;
      if (transportType >= 7)
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_transportType];
      }

      else
      {
        v5 = *(&off_1E8430CD0 + transportType);
      }

      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "ⓜ Voice guidance not enabled - voice guidance for this transport type (%@) is None", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (self->_transportType == 1)
  {
    v3 = GetAudioLogForMNAudioManagerCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "ⓜ Voice guidance not enabled - for Transit", buf, 2u);
    }

LABEL_14:
    LOBYTE(_deviceSettingsAllowSpeech) = 0;
    goto LABEL_15;
  }

  _deviceSettingsAllowSpeech = [(MNAudioManager *)self _deviceSettingsAllowSpeech];
  v3 = GetAudioLogForMNAudioManagerCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = "not";
    if (_deviceSettingsAllowSpeech)
    {
      v7 = "is";
    }

    *buf = 136315138;
    v10 = v7;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "ⓜ Voice guidance %s enabled", buf, 0xCu);
  }

LABEL_15:

  return _deviceSettingsAllowSpeech;
}

- (BOOL)_deviceSettingsAllowSpeech
{
  v19 = *MEMORY[0x1E69E9840];
  if ((self->_transportType & 0xFFFFFFFE) == 2)
  {
    v2 = +[MNAudioHardwareEngine headphonesAreInUse];
    mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
    v4 = [mEMORY[0x1E69AED10] attributeForKey:*MEMORY[0x1E69AEA90]];
    bOOLValue = [v4 BOOLValue];

    v6 = v2 | bOOLValue ^ 1;
    v7 = GetAudioLogForMNAudioManagerCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = "DO NOT";
      v13 = 136315650;
      if ((v2 | bOOLValue ^ 1))
      {
        v8 = "DO";
      }

      v14 = v8;
      v15 = 1024;
      v16 = v2;
      v17 = 1024;
      v18 = bOOLValue & 1;
      v9 = "ⓜ Device settings %s allow speech, headphonesInUse=%d, systemIsMuted=%d";
      v10 = v7;
      v11 = 24;
      goto LABEL_8;
    }
  }

  else
  {
    v7 = GetAudioLogForMNAudioManagerCategory();
    v6 = 1;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v9 = "ⓜ Device settings allow speech";
      v10 = v7;
      v11 = 2;
LABEL_8:
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_INFO, v9, &v13, v11);
    }
  }

  return v6 & 1;
}

- (void)audioSystemOptions:(id)options didChangeGuidanceLevel:(unint64_t)level transportType:(int)type
{
  if (self->_transportType == type)
  {
    [(GEOObserverHashTable *)self->_observers audioManager:self didChangeVoiceGuidanceLevel:level];
  }
}

- (BOOL)vibrateForShortPrompt:(unint64_t)prompt
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_transportType <= 1u)
  {
    v4 = GetAudioLogForMNAudioManagerCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      transportType = self->_transportType;
      if (transportType >= 7)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_transportType];
      }

      else
      {
        v6 = *(&off_1E8430CD0 + transportType);
      }

      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "ⓜ Vibration ignored - transport type doesn't support vibration: %@", buf, 0xCu);
    }

LABEL_13:

    return 0;
  }

  if (![(MNAudioManager *)self voiceGuidanceEnabled])
  {
    v4 = GetAudioLogForMNAudioManagerCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "ⓜ Vibration ignored - voice guidance is muted", buf, 2u);
    }

    goto LABEL_13;
  }

  audioEngine = self->_audioEngine;

  return [(MNAudioHardwareEngine *)audioEngine vibrateForShortPrompt:prompt];
}

- (void)requestSpeech:(id)speech guidanceLevel:(unint64_t)level modifier:(unint64_t)modifier shortPromptType:(unint64_t)type completionHandler:(id)handler
{
  speechCopy = speech;
  handlerCopy = handler;
  if (![speechCopy length])
  {
    v14 = GetAudioLogForMNAudioManagerCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v15 = "⒨ String is empty";
      v16 = buf;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  if (self->_transportType == 1)
  {
    v14 = GetAudioLogForMNAudioManagerCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = 0;
      v15 = "ⓜ Voice guidance not enabled - for Transit";
      v16 = &v18;
LABEL_7:
      _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_INFO, v15, v16, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (modifier == 1)
  {
    type |= 0x40uLL;
  }

  _navigation_stringByMarkingAsNavigationText = [speechCopy _navigation_stringByMarkingAsNavigationText];
  [(MNAudioHardwareEngine *)self->_audioEngine requestSpeech:_navigation_stringByMarkingAsNavigationText guidanceLevel:level shortPromptType:type completionHandler:handlerCopy];

LABEL_12:
}

- (BOOL)_deviceIsMuted
{
  v16 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v3 = [mEMORY[0x1E69AED10] attributeForKey:*MEMORY[0x1E69AEA90]];
  bOOLValue = [v3 BOOLValue];

  mEMORY[0x1E69AED10]2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  getSilentMode = [mEMORY[0x1E69AED10]2 getSilentMode];

  v7 = GetAudioLogForMNAudioManagerCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = "not";
    v10 = 136315650;
    if ((bOOLValue | getSilentMode))
    {
      v8 = "is";
    }

    v11 = v8;
    v12 = 1024;
    v13 = bOOLValue;
    v14 = 1024;
    v15 = (getSilentMode & 1) == 0;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "ⓜ Device %s muted, systemMuted=%d, ringerSwitchEnabled=%d", &v10, 0x18u);
  }

  return (bOOLValue | getSilentMode) & 1;
}

- (int)_supportedTransportTypeForTransportType:(int)type
{
  if ((type & 0xFFFFFFFE) == 2)
  {
    return type;
  }

  else
  {
    return 0;
  }
}

- (void)changeTransportType:(int)type
{
  v3 = *&type;
  v19 = *MEMORY[0x1E69E9840];
  [(MNAudioManager *)self clearAllAnnouncements];
  transportType = self->_transportType;
  self->_transportType = [(MNAudioManager *)self _supportedTransportTypeForTransportType:v3];
  v6 = GetAudioLogForMNAudioManagerCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = self->_transportType;
    if (v7 >= 7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_transportType];
    }

    else
    {
      v8 = *(&off_1E8430CD0 + v7);
    }

    v9 = v8;
    if (v3 >= 7)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v3];
    }

    else
    {
      v10 = *(&off_1E8430CD0 + v3);
    }

    v11 = v10;
    if (transportType >= 7)
    {
      transportType = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", transportType];
    }

    else
    {
      transportType = *(&off_1E8430CD0 + transportType);
    }

    *buf = 138412802;
    v14 = v9;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = transportType;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "ⓜ Changing transport type to %@ (from transport type of %@); previous type was %@", buf, 0x20u);
  }

  [(MNAudioHardwareEngine *)self->_audioEngine changeTransportType:self->_transportType];
}

- (void)unregisterObserver:(id)observer
{
  v12 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    v6 = [observerCopy conformsToProtocol:&unk_1F4EFDF00];
    v7 = GetAudioLogForMNAudioManagerCategory();
    observers = v7;
    if ((v6 & 1) == 0)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1D311E000, observers, OS_LOG_TYPE_ERROR, "⒨ Object isn't a MNAudioManagerObserver : %@", &v10, 0xCu);
      }

      goto LABEL_11;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1D311E000, observers, OS_LOG_TYPE_DEBUG, "ⓜ Removing observer : %@", &v10, 0xCu);
    }

    [(GEOObserverHashTable *)self->_observers unregisterObserver:v5];
    if (([(GEOObserverHashTable *)self->_observers hasObservers]& 1) == 0)
    {
      v9 = GetAudioLogForMNAudioManagerCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEBUG, "ⓜ Observer table empty; destroying", &v10, 2u);
      }

      observers = self->_observers;
      self->_observers = 0;
LABEL_11:
    }
  }
}

- (void)registerObserver:(id)observer
{
  v15 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    if ([observerCopy conformsToProtocol:&unk_1F4EFDF00])
    {
      if (!self->_observers)
      {
        v6 = GetAudioLogForMNAudioManagerCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "ⓜ Creating observer table", &v13, 2u);
        }

        v7 = objc_alloc(MEMORY[0x1E69A22D8]);
        v8 = MNNavigationQueue();
        v9 = [v7 initWithProtocol:&unk_1F4EFDF00 queue:v8];
        observers = self->_observers;
        self->_observers = v9;
      }

      v11 = GetAudioLogForMNAudioManagerCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEBUG, "ⓜ Adding observer : %@", &v13, 0xCu);
      }

      [(GEOObserverHashTable *)self->_observers registerObserver:v5];
    }

    else
    {
      v12 = GetAudioLogForMNAudioManagerCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "⒨ Object isn't a MNAudioManagerObserver : %@", &v13, 0xCu);
      }
    }
  }
}

- (void)dealloc
{
  [(MNAudioSystemOptions *)self->_audioSystemOptions unregisterObserver:self];
  [(MNAudioHardwareEngine *)self->_audioEngine unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = MNAudioManager;
  [(MNAudioManager *)&v3 dealloc];
}

- (MNAudioManager)initWithTransportType:(int)type voiceLanguage:(id)language guidanceLevelOverride:(unint64_t)override
{
  v6 = *&type;
  v33 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if ([languageCopy length])
  {
    v28.receiver = self;
    v28.super_class = MNAudioManager;
    v9 = [(MNAudioManager *)&v28 init];
    v10 = v9;
    if (v9)
    {
      v9->_transportType = [(MNAudioManager *)v9 _supportedTransportTypeForTransportType:v6];
      v11 = GetAudioLogForMNAudioManagerCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        transportType = v10->_transportType;
        if (transportType >= 7)
        {
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10->_transportType];
        }

        else
        {
          v13 = *(&off_1E8430CD0 + transportType);
        }

        v15 = v13;
        if (v6 >= 7)
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
        }

        else
        {
          v16 = *(&off_1E8430CD0 + v6);
        }

        *buf = 138412546;
        v30 = v15;
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "ⓜ Initialization: setting transport type to %@ (from transport type of %@)", buf, 0x16u);
      }

      v17 = +[MNUserOptionsEngine sharedInstance];
      options = [v17 options];
      v19 = [options copy];
      options = v10->_options;
      v10->_options = v19;

      v21 = GetAudioLogForMNAudioManagerCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = v10->_options;
        *buf = 138412546;
        v30 = languageCopy;
        v31 = 2112;
        v32 = v22;
        _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_INFO, "ⓜ Initialization: using voice language '%@' and setting these user options : %@", buf, 0x16u);
      }

      v23 = [[MNAudioSystemOptions alloc] initWithTempUserOptions:v10->_options];
      audioSystemOptions = v10->_audioSystemOptions;
      v10->_audioSystemOptions = v23;

      [(MNAudioSystemOptions *)v10->_audioSystemOptions registerObserver:v10];
      [(MNAudioSystemOptions *)v10->_audioSystemOptions setGuidanceLevelOverride:override transportType:v6];
      v25 = [[MNAudioHardwareEngine alloc] initWithAudioSystemOptions:v10->_audioSystemOptions voiceLanguage:languageCopy transportType:v10->_transportType];
      audioEngine = v10->_audioEngine;
      v10->_audioEngine = v25;

      [(MNAudioHardwareEngine *)v10->_audioEngine registerObserver:v10];
    }
  }

  else
  {
    v14 = GetAudioLogForMNAudioManagerCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_INFO, "⒨ Initialization: voice language is nil or empty", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

@end