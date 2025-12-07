@interface HAENVolumeControl
+ (id)sharedInstance;
- ($C4267C7EEAC0F1C362AD94E813CFAD30)getStats;
- (BOOL)PME_enabled;
- (BOOL)_RLSAllowsMXVolumeLimit;
- (HAENVolumeControl)init;
- (float)computeLimitedVolume:(float)volume event:(id)event action:(unsigned int *)action;
- (float)getCurrentVolumeForCategory:(__CFString *)category route:(id *)route;
- (unsigned)limitVolume:(id)volume;
- (void)_fetchCategory:(__CFString *)category routeInfo:(id *)info;
- (void)_setMXVolumeLimit:(BOOL)limit;
- (void)_updateFlags;
- (void)_updateMXVolumeLimit;
- (void)applyVolumeLoweringAtNextSession;
- (void)limitVolumeTo:(float)to category:(__CFString *)category route:(id *)route actionResult:(unsigned int *)result;
- (void)setDeviceInfo:(id)info;
- (void)updateMXVolumeLimitStatus;
- (void)wiredHeadphoneConnected:(BOOL)connected;
@end

@implementation HAENVolumeControl

+ (id)sharedInstance
{
  if (+[HAENDefaults isCurrentProcessMediaserverd]&& sharedInstance_once_2 != -1)
  {
    +[HAENVolumeControl sharedInstance];
  }

  v2 = sharedInstance_instance_2;

  return v2;
}

uint64_t __35__HAENVolumeControl_sharedInstance__block_invoke()
{
  sharedInstance_instance_2 = objc_alloc_init(HAENVolumeControl);

  return MEMORY[0x2821F96F8]();
}

- (HAENVolumeControl)init
{
  v23 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HAENVolumeControl;
  v2 = [(HAENVolumeControl *)&v18 init];
  if (v2)
  {
    *(v2 + 2) = getpid();
    *(v2 + 10) = 0;
    v3 = +[HAENDefaults sharedInstance];
    v2[12] = [v3 isEUVolumeLimitOn];

    v4 = +[HAENDefaults sharedInstance];
    v2[13] = [v4 isSKVolumeLimitOn];

    v6 = HAENotificationsLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithBool:v2[12]];
      v8 = [MEMORY[0x277CCABB0] numberWithBool:v2[13]];
      *buf = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_25081E000, v6, OS_LOG_TYPE_DEFAULT, "HAENVolumeControl: EU VLT [%@], South Korea VLT [%@]", buf, 0x16u);
    }

    v9 = objc_alloc_init(MEMORY[0x277CEFB38]);
    v10 = [v9 getPreferenceFor:*MEMORY[0x277CEFB18]];
    v2[15] = [v10 BOOLValue];

    v2[16] = 0;
    __asm { FMOV            V0.2S, #-1.0 }

    *(v2 + 20) = _D0;
    v2[44] = 0;
    [v2 _updateFlags];
    if (v2[12])
    {
      v16 = 1;
    }

    else
    {
      v16 = v2[13];
    }

    [v2 _setMXVolumeLimit:v16 & 1];
  }

  return v2;
}

- (float)computeLimitedVolume:(float)volume event:(id)event action:(unsigned int *)action
{
  v8 = 1986817143;
  if ([event eventType] == 1818850917)
  {
    v9 = +[HAENDefaults sharedInstance];
    [v9 volumeReductionDelta];
    v11 = v10;

    v12 = volume - v11;
  }

  else
  {
    if ([(HAENVolumeControl *)self PME_enabled])
    {
      targetVolume80dB = 0.5;
      targetVolume74dB = 0.38;
    }

    else
    {
      targetVolume80dB = self->_targetVolume80dB;
      if (targetVolume80dB <= 0.0 || (targetVolume74dB = self->_targetVolume74dB, targetVolume74dB <= 0.0))
      {
        v15 = +[HAENUnknownDeviceManager sharedInstance];
        unknownWiredHeadsetConnectedThroughB204 = [v15 unknownWiredHeadsetConnectedThroughB204];

        targetVolume74dB = 0.5;
        if (!unknownWiredHeadsetConnectedThroughB204)
        {
          targetVolume74dB = 0.56;
        }

        targetVolume80dB = 0.63;
        if (unknownWiredHeadsetConnectedThroughB204)
        {
          targetVolume80dB = 0.59;
        }
      }
    }

    if (targetVolume74dB > volume)
    {
      targetVolume74dB = volume;
    }

    if (volume + -0.001 <= targetVolume80dB)
    {
      targetVolume80dB = targetVolume74dB;
    }

    v12 = targetVolume80dB;
    if (v12 + 0.001 >= volume)
    {
      v8 = 1986814576;
    }

    else
    {
      v8 = 1986817143;
    }
  }

  *action = v8;
  return fmin(fmax(v12, 0.0), 1.0);
}

- (float)getCurrentVolumeForCategory:(__CFString *)category route:(id *)route
{
  [HAENVolumeControl _fetchCategory:"_fetchCategory:routeInfo:" routeInfo:?];
  v4 = CMSessionManagerPerformVolumeOperationWithSequenceNumber();
  if (!v4)
  {
    return -1.0;
  }

  v5 = HAENotificationsLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [HAENVolumeControl getCurrentVolumeForCategory:route:];
  }

  return -1.0;
}

- (void)applyVolumeLoweringAtNextSession
{
  if (self->_lowerHeadphoneVolumeAtNextSession)
  {
    self->_lowerHeadphoneVolumeAtNextSession = 0;
    v3 = dispatch_get_global_queue(25, 0);
    dispatch_async(v3, &__block_literal_global_6);
  }
}

void __53__HAENVolumeControl_applyVolumeLoweringAtNextSession__block_invoke(double a1)
{
  v4 = *MEMORY[0x277D85DE8];
  LODWORD(a1) = 1057618919;
  v1 = HAENotificationsLog([MEMORY[0x277D26E70] applyVolumeReductionToHeadphoneRoutes:a1]);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 134217984;
    v3 = 0x3FE13F7CED916873;
    _os_log_impl(&dword_25081E000, v1, OS_LOG_TYPE_DEFAULT, "headphone volume will be lowered to %.2f at the next session", &v2, 0xCu);
  }
}

- (unsigned)limitVolume:(id)volume
{
  v4 = HAENotificationsLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25081E000, v4, OS_LOG_TYPE_DEFAULT, "headphone volume lowering will be delayed", v6, 2u);
  }

  self->_lowerHeadphoneVolumeAtNextSession = 1;
  return 1986814576;
}

- (void)limitVolumeTo:(float)to category:(__CFString *)category route:(id *)route actionResult:(unsigned int *)result
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = HAENotificationsLog(self);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    toCopy = to;
    v16 = 2112;
    toCopy2 = *&category;
    _os_log_impl(&dword_25081E000, v9, OS_LOG_TYPE_DEFAULT, ">>> limiting volume to %.2f for category %@, ", buf, 0x16u);
  }

  v10 = CMSessionManagerPerformVolumeOperationWithSequenceNumber();
  v11 = v10;
  v12 = HAENotificationsLog(v10);
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [HAENVolumeControl limitVolumeTo:category:route:actionResult:];
    }

    *result = 561409132;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      toCopy = *&category;
      v16 = 2048;
      toCopy2 = to;
      _os_log_impl(&dword_25081E000, v13, OS_LOG_TYPE_DEFAULT, "========> SET %@ volume to: %.2f", buf, 0x16u);
    }
  }
}

- (void)_fetchCategory:(__CFString *)category routeInfo:(id *)info
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = CMSessionMgrCopyDeviceRouteForRouteConfiguration();
  v7 = HAENotificationsLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    var0 = info->var0;
    var1 = info->var1;
    var2 = info->var2;
    v11 = 138413058;
    categoryCopy = category;
    v13 = 2112;
    v14 = var0;
    v15 = 2112;
    v16 = var1;
    v17 = 2112;
    v18 = var2;
    _os_log_impl(&dword_25081E000, v7, OS_LOG_TYPE_DEFAULT, ">>> category '%@', route: '%@', device: '%@', route subtype: '%@'", &v11, 0x2Au);
  }
}

- (void)_updateFlags
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = +[HAENDefaults sharedInstance];
  self->_haenFeatureEnabled = [v3 isHAENFeatureEnabled];

  v5 = HAENotificationsLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_haenFeatureEnabled];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_wiredHeadphoneConnected];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "HAENVolumeControl: HAEN Feature [%@], wired headphone connected[%@]", &v8, 0x16u);
  }
}

- (void)_setMXVolumeLimit:(BOOL)limit
{
  limitCopy = limit;
  v13 = *MEMORY[0x277D85DE8];
  self->_mxVolumeLimitOn = limit;
  v4 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v5 = *MEMORY[0x277CEFB18];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:limitCopy];
  v7 = [v4 setPreferenceFor:v5 value:v6];

  v9 = HAENotificationsLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "OFF";
    if (limitCopy)
    {
      v10 = "ON";
    }

    v11 = 136315138;
    v12 = v10;
    _os_log_impl(&dword_25081E000, v9, OS_LOG_TYPE_DEFAULT, "*** set MX VLT Status to [%s]", &v11, 0xCu);
  }
}

- (BOOL)_RLSAllowsMXVolumeLimit
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = +[HAENDefaults sharedInstance];
  isReduceLoudSoundEnabled = [v2 isReduceLoudSoundEnabled];

  v4 = +[HAENDefaults sharedInstance];
  getReduceLoudSoundThreshold = [v4 getReduceLoudSoundThreshold];

  v7 = HAENotificationsLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:isReduceLoudSoundEnabled];
    v10 = 138412546;
    v11 = v8;
    v12 = 1024;
    v13 = getReduceLoudSoundThreshold;
    _os_log_impl(&dword_25081E000, v7, OS_LOG_TYPE_DEFAULT, "RLS volume limit %@, threshold %d", &v10, 0x12u);
  }

  if (getReduceLoudSoundThreshold > 99)
  {
    return 1;
  }

  else
  {
    return isReduceLoudSoundEnabled ^ 1;
  }
}

- (void)updateMXVolumeLimitStatus
{
  os_unfair_lock_lock(&self->_lock);
  [(HAENVolumeControl *)self _updateFlags];
  [(HAENVolumeControl *)self _updateMXVolumeLimit];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_updateMXVolumeLimit
{
  selfCopy = self;
  if (self->_wiredHeadphoneConnected && (self->_haenFeatureEnabled || self->_EUVolumeLimitFlagOn || self->_SKVolumeLimitFlagOn) && (self = [(HAENVolumeControl *)self _RLSAllowsMXVolumeLimit], self))
  {
    if (selfCopy->_mxVolumeLimitOn)
    {
      v3 = HAENotificationsLog(self);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v4 = "mx volume limit is already on";
        v5 = &v9;
LABEL_13:
        _os_log_impl(&dword_25081E000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v6 = selfCopy;
    v7 = 1;
  }

  else
  {
    if (!selfCopy->_mxVolumeLimitOn)
    {
      v3 = HAENotificationsLog(self);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 0;
        v4 = "mx volume limit is already off";
        v5 = &v8;
        goto LABEL_13;
      }

LABEL_14:

      return;
    }

    v6 = selfCopy;
    v7 = 0;
  }

  [(HAENVolumeControl *)v6 _setMXVolumeLimit:v7];
}

- (void)wiredHeadphoneConnected:(BOOL)connected
{
  os_unfair_lock_lock(&self->_lock);
  self->_wiredHeadphoneConnected = connected;
  [(HAENVolumeControl *)self _updateFlags];
  [(HAENVolumeControl *)self _updateMXVolumeLimit];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)PME_enabled
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  if (v2)
  {
    mEMORY[0x277D3A1D8] = [MEMORY[0x277D3A1D8] sharedInstance];
    if ([mEMORY[0x277D3A1D8] personalMediaEnabled])
    {
      mEMORY[0x277D3A1D8]2 = [MEMORY[0x277D3A1D8] sharedInstance];
      v5 = ([mEMORY[0x277D3A1D8]2 personalAudioAccommodationTypes] >> 2) & 1;
    }

    else
    {
      LODWORD(v5) = 0;
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  v6 = HAENotificationsLog(v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "OFF";
    if (v5)
    {
      v7 = "ON";
    }

    v9 = 136315138;
    v10 = v7;
    _os_log_impl(&dword_25081E000, v6, OS_LOG_TYPE_DEFAULT, "PME status: %s", &v9, 0xCu);
  }

  return v5;
}

- (void)setDeviceInfo:(id)info
{
  v23 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  os_unfair_lock_lock(&self->_lock);
  __asm { FMOV            V0.2S, #-1.0 }

  *&self->_targetVolume80dB = _D0;
  if (infoCopy)
  {
    v9 = [infoCopy objectForKey:@"_HAENMITSV80DB"];
    v10 = [infoCopy objectForKey:@"_HAENMITSV74DB"];
    v11 = v10;
    if (v10)
    {
      _ZF = v9 == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (!_ZF)
    {
      [v10 floatValue];
      self->_targetVolume74dB = v13;
      floatValue = [v9 floatValue];
      self->_targetVolume80dB = v15;
      v16 = HAENotificationsLog(floatValue);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        targetVolume80dB = self->_targetVolume80dB;
        targetVolume74dB = self->_targetVolume74dB;
        v19 = 134218240;
        v20 = targetVolume80dB;
        v21 = 2048;
        v22 = targetVolume74dB;
        _os_log_impl(&dword_25081E000, v16, OS_LOG_TYPE_DEFAULT, "setting target scalar 80dB volume: %.2f, scalar 74dB volume: %.2f", &v19, 0x16u);
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- ($C4267C7EEAC0F1C362AD94E813CFAD30)getStats
{
  os_unfair_lock_lock(&self->_lock);
  v3 = *&self->_stats.currVolume;
  volumeAction = self->_stats.volumeAction;
  os_unfair_lock_unlock(&self->_lock);
  v5 = v3;
  v6 = volumeAction;
  result.var0 = *&v5;
  result.var1 = *(&v5 + 1);
  result.var2 = v6;
  return result;
}

@end