@interface AudioPreferences
- (AudioPreferences)initWithCopy:(id)copy;
- (AudioPreferences)initWithDefaults:(id)defaults;
- (BOOL)_migratedMutedValue;
- (id)_values;
- (id)writtenDefaults;
- (unint64_t)cyclingVoiceGuidance;
- (unint64_t)drivingVoiceGuidance;
- (unint64_t)guidanceLevelForTransportType:(int)type;
- (unint64_t)walkingVoiceGuidance;
- (void)_commonInit;
- (void)_migrateVolumeSettings;
- (void)dealloc;
- (void)loadValuesFromDefaults;
- (void)setCyclingVoiceGuidance:(unint64_t)guidance;
- (void)setDrivingVoiceGuidance:(unint64_t)guidance;
- (void)setGuidanceLevel:(unint64_t)level forTransportType:(int)type;
- (void)setWalkingVoiceGuidance:(unint64_t)guidance;
- (void)synchronize;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation AudioPreferences

- (AudioPreferences)initWithDefaults:(id)defaults
{
  v6.receiver = self;
  v6.super_class = AudioPreferences;
  v3 = [(WatchSyncedPreferences *)&v6 initWithDefaults:defaults];
  v4 = v3;
  if (v3)
  {
    [(AudioPreferences *)v3 _commonInit];
  }

  return v4;
}

- (AudioPreferences)initWithCopy:(id)copy
{
  copyCopy = copy;
  v10.receiver = self;
  v10.super_class = AudioPreferences;
  v5 = [(WatchSyncedPreferences *)&v10 initWithCopy:copyCopy];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (copyCopy && (isKindOfClass & 1) != 0)
    {
      objc_storeStrong(&v5->_drivingModernPreference, copyCopy[6]);
      v7 = copyCopy;
      objc_storeStrong(&v5->_walkingModernPreference, v7[7]);
      objc_storeStrong(&v5->_cyclingModernPreference, v7[8]);
      v5->_drivingVoiceGuidance = [v7 drivingVoiceGuidance];
      v5->_walkingVoiceGuidance = [v7 walkingVoiceGuidance];
      cyclingVoiceGuidance = [v7 cyclingVoiceGuidance];

      v5->_cyclingVoiceGuidance = cyclingVoiceGuidance;
    }

    [(AudioPreferences *)v5 _commonInit];
  }

  return v5;
}

- (void)_commonInit
{
  _GEOConfigAddDelegateListenerForKey();
  _GEOConfigAddDelegateListenerForKey();

  _GEOConfigAddDelegateListenerForKey();
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = AudioPreferences;
  [(AudioPreferences *)&v3 dealloc];
}

- (unint64_t)drivingVoiceGuidance
{
  drivingModernPreference = self->_drivingModernPreference;
  if (!drivingModernPreference)
  {
    [(AudioPreferences *)self _migrateVolumeSettings];
    drivingModernPreference = self->_drivingModernPreference;
  }

  return [(NSNumber *)drivingModernPreference unsignedIntegerValue];
}

- (unint64_t)walkingVoiceGuidance
{
  walkingModernPreference = self->_walkingModernPreference;
  if (!walkingModernPreference)
  {
    [(AudioPreferences *)self _migrateVolumeSettings];
    walkingModernPreference = self->_walkingModernPreference;
  }

  return [(NSNumber *)walkingModernPreference unsignedIntegerValue];
}

- (unint64_t)cyclingVoiceGuidance
{
  cyclingModernPreference = self->_cyclingModernPreference;
  if (!cyclingModernPreference)
  {
    [(AudioPreferences *)self _migrateVolumeSettings];
    cyclingModernPreference = self->_cyclingModernPreference;
  }

  return [(NSNumber *)cyclingModernPreference unsignedIntegerValue];
}

- (void)_migrateVolumeSettings
{
  _migratedMutedValue = [(AudioPreferences *)self _migratedMutedValue];
  v4 = _migratedMutedValue;
  v5 = sub_10005329C(_migratedMutedValue);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Migrating old volume setting to mute", &v13, 2u);
    }

    v7 = &off_10008BF40;
  }

  else
  {
    if (v6)
    {
      defaults = [(WatchSyncedPreferences *)self defaults];
      v9 = [defaults objectForKey:@"VoiceIsMute"];
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Migrating old volume setting to full, isMute: %@", &v13, 0xCu);
    }

    v7 = &off_10008BF58;
  }

  drivingModernPreference = self->_drivingModernPreference;
  self->_drivingModernPreference = v7;

  walkingModernPreference = self->_walkingModernPreference;
  self->_walkingModernPreference = v7;

  cyclingModernPreference = self->_cyclingModernPreference;
  self->_cyclingModernPreference = v7;

  [(AudioPreferences *)self synchronize];
}

- (BOOL)_migratedMutedValue
{
  defaults = [(WatchSyncedPreferences *)self defaults];
  v3 = [defaults objectForKey:@"VoiceIsMute"];

  LOBYTE(defaults) = [v3 BOOLValue];
  return defaults;
}

- (unint64_t)guidanceLevelForTransportType:(int)type
{
  if (type == 2)
  {
    return [(AudioPreferences *)self walkingVoiceGuidance];
  }

  if (type == 3)
  {
    return [(AudioPreferences *)self cyclingVoiceGuidance];
  }

  return [(AudioPreferences *)self drivingVoiceGuidance];
}

- (void)setGuidanceLevel:(unint64_t)level forTransportType:(int)type
{
  if (type == 2)
  {
    [(AudioPreferences *)self setWalkingVoiceGuidance:level];
  }

  else if (type == 3)
  {
    [(AudioPreferences *)self setCyclingVoiceGuidance:level];
  }

  else
  {
    [(AudioPreferences *)self setDrivingVoiceGuidance:level];
  }
}

- (id)writtenDefaults
{
  defaults = [(WatchSyncedPreferences *)self defaults];
  v6[0] = defaults;
  v3 = +[NSUserDefaults __maps_groupUserDefaults];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (void)loadValuesFromDefaults
{
  defaults = [(WatchSyncedPreferences *)self defaults];
  v4 = [defaults objectForKey:@"NavigationVoiceGuidanceLevelDriving"];
  drivingModernPreference = self->_drivingModernPreference;
  self->_drivingModernPreference = v4;

  defaults2 = [(WatchSyncedPreferences *)self defaults];
  v7 = [defaults2 objectForKey:@"NavigationVoiceGuidanceLevelWalking"];
  walkingModernPreference = self->_walkingModernPreference;
  self->_walkingModernPreference = v7;

  defaults3 = [(WatchSyncedPreferences *)self defaults];
  v10 = [defaults3 objectForKey:@"NavigationVoiceGuidanceLevelCycling"];
  cyclingModernPreference = self->_cyclingModernPreference;
  self->_cyclingModernPreference = v10;

  [(AudioPreferences *)self synchronize];
  if (_GEOConfigHasValue())
  {
    self->_drivingVoiceGuidance = GEOConfigGetInteger();
  }

  else
  {
    integerValue = [(NSNumber *)self->_drivingModernPreference integerValue];
    self->_drivingVoiceGuidance = integerValue;
    v13 = sub_10005329C(integerValue);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_drivingVoiceGuidance + 1;
      if (v14 >= 4)
      {
        v15 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_drivingVoiceGuidance];
      }

      else
      {
        v15 = off_100085770[v14];
      }

      *buf = 138412290;
      v35 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating _drivingVoiceGuidance from old default to: %@", buf, 0xCu);
    }

    [(NSNumber *)self->_drivingModernPreference integerValue];
    GEOConfigSetInteger();
  }

  if (_GEOConfigHasValue())
  {
    self->_walkingVoiceGuidance = GEOConfigGetInteger();
  }

  else
  {
    integerValue2 = [(NSNumber *)self->_walkingModernPreference integerValue];
    self->_walkingVoiceGuidance = integerValue2;
    v17 = sub_10005329C(integerValue2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_walkingVoiceGuidance + 1;
      if (v18 >= 4)
      {
        v19 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_walkingVoiceGuidance];
      }

      else
      {
        v19 = off_100085770[v18];
      }

      *buf = 138412290;
      v35 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Updating _walkingVoiceGuidance from old default to: %@", buf, 0xCu);
    }

    [(NSNumber *)self->_walkingModernPreference integerValue];
    GEOConfigSetInteger();
  }

  if (_GEOConfigHasValue())
  {
    Integer = GEOConfigGetInteger();
    self->_cyclingVoiceGuidance = Integer;
  }

  else
  {
    integerValue3 = [(NSNumber *)self->_cyclingModernPreference integerValue];
    self->_cyclingVoiceGuidance = integerValue3;
    v22 = sub_10005329C(integerValue3);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_cyclingVoiceGuidance + 1;
      if (v23 >= 4)
      {
        v24 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_cyclingVoiceGuidance];
      }

      else
      {
        v24 = off_100085770[v23];
      }

      *buf = 138412290;
      v35 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Updating _cyclingVoiceGuidance from old default to: %@", buf, 0xCu);
    }

    [(NSNumber *)self->_cyclingModernPreference integerValue];
    Integer = GEOConfigSetInteger();
  }

  v25 = sub_10005329C(Integer);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_drivingVoiceGuidance + 1;
    if (v26 >= 4)
    {
      v27 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_drivingVoiceGuidance];
    }

    else
    {
      v27 = off_100085770[v26];
    }

    v28 = v27;
    v29 = self->_walkingVoiceGuidance + 1;
    if (v29 >= 4)
    {
      v30 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_walkingVoiceGuidance];
    }

    else
    {
      v30 = off_100085770[v29];
    }

    v31 = v30;
    v32 = self->_cyclingVoiceGuidance + 1;
    if (v32 >= 4)
    {
      v33 = [NSString stringWithFormat:@"UNKNOWN: %lu", self->_cyclingVoiceGuidance];
    }

    else
    {
      v33 = off_100085770[v32];
    }

    *buf = 138412802;
    v35 = v28;
    v36 = 2112;
    v37 = v31;
    v38 = 2112;
    v39 = v33;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Loaded values from defaults:\n\tDriving voice guidance: %@\n\tWalking voice guidance: %@\n\tCycling voice guidance: %@", buf, 0x20u);
  }
}

- (id)_values
{
  v3 = [NSNumber numberWithUnsignedInteger:[(AudioPreferences *)self drivingVoiceGuidance]];
  v4 = [NSNumber numberWithUnsignedInteger:[(AudioPreferences *)self walkingVoiceGuidance]];
  v8[1] = v4;
  v5 = [NSNumber numberWithUnsignedInteger:[(AudioPreferences *)self cyclingVoiceGuidance]];
  v8[2] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (void)synchronize
{
  v3.receiver = self;
  v3.super_class = AudioPreferences;
  [(WatchSyncedPreferences *)&v3 synchronize];
  [(AudioPreferences *)self drivingVoiceGuidance];
  GEOConfigSetInteger();
  [(AudioPreferences *)self walkingVoiceGuidance];
  GEOConfigSetInteger();
  [(AudioPreferences *)self cyclingVoiceGuidance];
  GEOConfigSetInteger();
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  if (key.var0 == LODWORD(NavigationConfig_SpokenGuidanceLevel_Driving[0]) && key.var1 == NavigationConfig_SpokenGuidanceLevel_Driving[1])
  {
    Integer = GEOConfigGetInteger();

    [(AudioPreferences *)self setDrivingVoiceGuidance:Integer];
  }

  else if (key.var0 == LODWORD(NavigationConfig_SpokenGuidanceLevel_Walking[0]) && key.var1 == NavigationConfig_SpokenGuidanceLevel_Walking[1])
  {
    v8 = GEOConfigGetInteger();

    [(AudioPreferences *)self setWalkingVoiceGuidance:v8];
  }

  else if (key.var0 == LODWORD(NavigationConfig_SpokenGuidanceLevel_Cycling[0]) && key.var1 == NavigationConfig_SpokenGuidanceLevel_Cycling[1])
  {
    v9 = GEOConfigGetInteger();

    [(AudioPreferences *)self setCyclingVoiceGuidance:v9];
  }
}

- (void)setDrivingVoiceGuidance:(unint64_t)guidance
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  drivingModernPreference = self->_drivingModernPreference;
  self->_drivingModernPreference = v5;

  if (self->_drivingVoiceGuidance != guidance)
  {
    self->_drivingVoiceGuidance = guidance;

    GEOConfigSetInteger();
  }
}

- (void)setWalkingVoiceGuidance:(unint64_t)guidance
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  walkingModernPreference = self->_walkingModernPreference;
  self->_walkingModernPreference = v5;

  if (self->_walkingVoiceGuidance != guidance)
  {
    self->_walkingVoiceGuidance = guidance;

    GEOConfigSetInteger();
  }
}

- (void)setCyclingVoiceGuidance:(unint64_t)guidance
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  cyclingModernPreference = self->_cyclingModernPreference;
  self->_cyclingModernPreference = v5;

  if (self->_cyclingVoiceGuidance != guidance)
  {
    self->_cyclingVoiceGuidance = guidance;

    GEOConfigSetInteger();
  }
}

@end