@interface MNAudioSystemOptions
- (MNAudioSystemOptions)initWithTempUserOptions:(id)options;
- (NSString)description;
- (unint64_t)guidanceLevelForTransportType:(int)type;
- (void)_updateGuidanceLevelFromUserSetting:(unint64_t)setting transportType:(int)type;
- (void)dealloc;
- (void)setGuidanceLevelOverride:(unint64_t)override transportType:(int)type;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation MNAudioSystemOptions

- (void)valueChangedForGEOConfigKey:(id)key
{
  v17 = *MEMORY[0x1E69E9840];
  if (key.var0 == 156 && key.var1 == &NavigationConfig_SpokenGuidanceLevel_Driving_Metadata)
  {
    Integer = GEOConfigGetInteger();
    selfCopy3 = self;
    v6 = 0;
LABEL_10:

    [(MNAudioSystemOptions *)selfCopy3 _updateGuidanceLevelFromUserSetting:Integer transportType:v6];
    return;
  }

  if (key.var0 == 157 && key.var1 == &NavigationConfig_SpokenGuidanceLevel_Walking_Metadata)
  {
    Integer = GEOConfigGetInteger();
    selfCopy3 = self;
    v6 = 2;
    goto LABEL_10;
  }

  if (key.var0 == 158 && key.var1 == &NavigationConfig_SpokenGuidanceLevel_Cycling_Metadata)
  {
    Integer = GEOConfigGetInteger();
    selfCopy3 = self;
    v6 = 3;
    goto LABEL_10;
  }

  if (key.var0 == 160 && key.var1 == &NavigationConfig_SpokenGuidanceUseHFP_Metadata)
  {
    BOOL = GEOConfigGetBOOL();
    v8 = GetAudioLogForMNAudioSystemOptionsCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      useHFP = self->_useHFP;
      v13 = 67109376;
      v14 = useHFP;
      v15 = 1024;
      v16 = BOOL;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "UseHFP changed from %d to %d", &v13, 0xEu);
    }

    self->_useHFP = BOOL;
    [(GEOObserverHashTable *)self->_observers audioSystemOptions:self didUpdateUseHFP:BOOL];
  }

  else if (key.var0 == 159 && key.var1 == &NavigationConfig_SpokenGuidancePauseSpokenAudio_Metadata)
  {
    v10 = GEOConfigGetBOOL();
    v11 = GetAudioLogForMNAudioSystemOptionsCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      pauseSpokenAudio = self->_pauseSpokenAudio;
      v13 = 67109376;
      v14 = pauseSpokenAudio;
      v15 = 1024;
      v16 = v10;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "UseHFP changed from %d to %d", &v13, 0xEu);
    }

    self->_pauseSpokenAudio = v10;
    [(GEOObserverHashTable *)self->_observers audioSystemOptions:self didUpdatePauseSpokenAudio:v10];
  }
}

- (void)_updateGuidanceLevelFromUserSetting:(unint64_t)setting transportType:(int)type
{
  v4 = *&type;
  v25 = *MEMORY[0x1E69E9840];
  v7 = [(MNAudioSystemOptions *)self guidanceLevelForTransportType:*&type];
  v8 = GetAudioLogForMNAudioSystemOptionsCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v4 >= 7)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v9 = off_1E842B380[v4];
    }

    v10 = v9;
    if (v7 + 1 >= 4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", v7];
    }

    else
    {
      v11 = off_1E842B3B8[v7 + 1];
    }

    v12 = v11;
    if (setting + 1 >= 4)
    {
      setting = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", setting];
    }

    else
    {
      setting = off_1E842B3B8[setting + 1];
    }

    *buf = 138412802;
    v20 = v10;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = setting;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "Guidance level for %@ changed from %@ to %@", buf, 0x20u);
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:setting];
  guidanceLevels = self->_guidanceLevels;
  v16 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  [(NSMutableDictionary *)guidanceLevels setObject:v14 forKeyedSubscript:v16];

  guidanceLevelOverrides = self->_guidanceLevelOverrides;
  v18 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  [(NSMutableDictionary *)guidanceLevelOverrides removeObjectForKey:v18];

  if (v7 != setting)
  {
    [(GEOObserverHashTable *)self->_observers audioSystemOptions:self didChangeGuidanceLevel:setting transportType:v4];
  }
}

- (NSString)description
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(NSMutableDictionary *)self->_guidanceLevelOverrides objectForKeyedSubscript:&unk_1F4EE2410];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(NSMutableDictionary *)self->_guidanceLevels objectForKeyedSubscript:&unk_1F4EE2410];
  unsignedIntegerValue = [v6 unsignedIntegerValue];
  v8 = unsignedIntegerValue + 1;
  if (v4)
  {
    if (v8 >= 4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue];
    }

    else
    {
      v9 = off_1E842B3B8[v8];
    }

    unsignedIntegerValue2 = [v4 unsignedIntegerValue];
    if ((unsignedIntegerValue2 + 1) >= 4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue2];
    }

    else
    {
      v11 = off_1E842B3B8[unsignedIntegerValue2 + 1];
    }

    v12 = [v5 stringWithFormat:@"Driving guidance level: %@ | Override: %@", v9, v11];
    [array addObject:v12];
  }

  else
  {
    if (v8 >= 4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue];
    }

    else
    {
      v9 = off_1E842B3B8[v8];
    }

    v11 = [v5 stringWithFormat:@"Driving guidance level: %@", v9];
    [array addObject:v11];
  }

  v13 = [(NSMutableDictionary *)self->_guidanceLevelOverrides objectForKeyedSubscript:&unk_1F4EE2428];
  v14 = MEMORY[0x1E696AEC0];
  v15 = [(NSMutableDictionary *)self->_guidanceLevels objectForKeyedSubscript:&unk_1F4EE2428];
  unsignedIntegerValue3 = [v15 unsignedIntegerValue];
  v17 = unsignedIntegerValue3 + 1;
  if (v13)
  {
    if ((unsignedIntegerValue3 + 1) >= 4)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue3];
    }

    else
    {
      v18 = off_1E842B3B8[v17];
    }

    unsignedIntegerValue4 = [v13 unsignedIntegerValue];
    if ((unsignedIntegerValue4 + 1) >= 4)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue4];
    }

    else
    {
      v20 = off_1E842B3B8[unsignedIntegerValue4 + 1];
    }

    v21 = [v14 stringWithFormat:@"Walking guidance level: %@ | Override: %@", v18, v20];
    [array addObject:v21];
  }

  else
  {
    if ((unsignedIntegerValue3 + 1) >= 4)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue3];
    }

    else
    {
      v18 = off_1E842B3B8[v17];
    }

    v20 = [v14 stringWithFormat:@"Walking guidance level: %@", v18];
    [array addObject:v20];
  }

  v22 = [(NSMutableDictionary *)self->_guidanceLevelOverrides objectForKeyedSubscript:&unk_1F4EE2440];
  v23 = MEMORY[0x1E696AEC0];
  v24 = [(NSMutableDictionary *)self->_guidanceLevels objectForKeyedSubscript:&unk_1F4EE2440];
  unsignedIntegerValue5 = [v24 unsignedIntegerValue];
  v26 = unsignedIntegerValue5 + 1;
  if (v22)
  {
    if ((unsignedIntegerValue5 + 1) >= 4)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue5];
    }

    else
    {
      v27 = off_1E842B3B8[v26];
    }

    unsignedIntegerValue6 = [v22 unsignedIntegerValue];
    if ((unsignedIntegerValue6 + 1) >= 4)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue6];
    }

    else
    {
      v29 = off_1E842B3B8[unsignedIntegerValue6 + 1];
    }

    v30 = [v23 stringWithFormat:@"Cycling guidance level: %@ | Override: %@", v27, v29];
    [array addObject:v30];
  }

  else
  {
    if ((unsignedIntegerValue5 + 1) >= 4)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", unsignedIntegerValue5];
    }

    else
    {
      v27 = off_1E842B3B8[v26];
    }

    v29 = [v23 stringWithFormat:@"Cycling guidance level: %@", v27];
    [array addObject:v29];
  }

  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Use HFP: %d", self->_useHFP];
  [array addObject:v31];

  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Pause Spoken Audio: %d", self->_pauseSpokenAudio];
  [array addObject:v32];

  v33 = MEMORY[0x1E696AEC0];
  v34 = [array componentsJoinedByString:@"\n\t"];
  v35 = [v33 stringWithFormat:@"MNAudioSystemOptions:\n\t%@", v34];

  return v35;
}

- (void)setGuidanceLevelOverride:(unint64_t)override transportType:(int)type
{
  v4 = *&type;
  v7 = [(MNAudioSystemOptions *)self guidanceLevelForTransportType:*&type];
  guidanceLevelOverrides = self->_guidanceLevelOverrides;
  if (override == -1)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    [(NSMutableDictionary *)guidanceLevelOverrides removeObjectForKey:v11];
  }

  else
  {
    if (!guidanceLevelOverrides)
    {
      v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
      v10 = self->_guidanceLevelOverrides;
      self->_guidanceLevelOverrides = v9;
    }

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:override];
    v12 = self->_guidanceLevelOverrides;
    v13 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];
  }

  v14 = [(MNAudioSystemOptions *)self guidanceLevelForTransportType:v4];
  if (v14 != v7)
  {
    v15 = v14;
    observers = self->_observers;

    [(GEOObserverHashTable *)observers audioSystemOptions:self didChangeGuidanceLevel:v15 transportType:v4];
  }
}

- (unint64_t)guidanceLevelForTransportType:(int)type
{
  v3 = *&type;
  guidanceLevelOverrides = self->_guidanceLevelOverrides;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v7 = [(NSMutableDictionary *)guidanceLevelOverrides objectForKeyedSubscript:v6];

  if (v7)
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    guidanceLevels = self->_guidanceLevels;
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v11 = [(NSMutableDictionary *)guidanceLevels objectForKeyedSubscript:v10];

    if (v11)
    {
      integerValue = [v11 integerValue];
    }

    else
    {
      integerValue = 0;
    }
  }

  return integerValue;
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = MNAudioSystemOptions;
  [(MNAudioSystemOptions *)&v3 dealloc];
}

- (MNAudioSystemOptions)initWithTempUserOptions:(id)options
{
  v21[3] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = MNAudioSystemOptions;
  v3 = [(MNAudioSystemOptions *)&v17 init];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69A22D8]) initWithProtocol:&unk_1F4EEE158 queue:0];
    observers = v3->_observers;
    v3->_observers = v4;

    v6 = MEMORY[0x1E695DF90];
    v20[0] = &unk_1F4EE2410;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:GEOConfigGetInteger()];
    v21[0] = v7;
    v20[1] = &unk_1F4EE2428;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:GEOConfigGetInteger()];
    v21[1] = v8;
    v20[2] = &unk_1F4EE2440;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:GEOConfigGetInteger()];
    v21[2] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v11 = [v6 dictionaryWithDictionary:v10];
    guidanceLevels = v3->_guidanceLevels;
    v3->_guidanceLevels = v11;

    v3->_useHFP = GEOConfigGetBOOL();
    v3->_pauseSpokenAudio = GEOConfigGetBOOL();
    v13 = MEMORY[0x1E69E96A0];
    _GEOConfigAddDelegateListenerForKey();
    _GEOConfigAddDelegateListenerForKey();

    _GEOConfigAddDelegateListenerForKey();
    _GEOConfigAddDelegateListenerForKey();

    _GEOConfigAddDelegateListenerForKey();
    v14 = GetAudioLogForMNAudioSystemOptionsCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v3;
      _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEFAULT, "Initializing audio system options: %@", buf, 0xCu);
    }

    v15 = v3;
  }

  return v3;
}

@end