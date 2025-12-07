@interface VideoEffects
- (VideoEffects)initWithVideoEffectsModule:(id)module;
- (void)postNotificationWithBundleID:(id)d;
- (void)setIntensity:(float)intensity withBundleID:(id)d;
- (void)setState:(BOOL)state withBundleID:(id)d;
- (void)updateAvailabilityWithBundleID:(id)d;
- (void)updateControlModeWithBundleID:(id)d;
- (void)updateEnabledWithBundleID:(id)d;
- (void)updateIntensityWithBundleID:(id)d;
- (void)updateVideoEffectStatesWithBundleID:(id)d;
@end

@implementation VideoEffects

- (VideoEffects)initWithVideoEffectsModule:(id)module
{
  moduleCopy = module;
  v9.receiver = self;
  v9.super_class = VideoEffects;
  v6 = [(VideoEffects *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_isAvailable = 0;
    v6->_intensity = 0.0;
    v6->_controlMode = 0;
    objc_storeStrong(&v6->_videoEffect, module);
  }

  return v7;
}

- (void)updateVideoEffectStatesWithBundleID:(id)d
{
  dCopy = d;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[VideoEffects updateVideoEffectStatesWithBundleID:]";
    v7 = 1024;
    v8 = 27;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  [(VideoEffects *)self updateControlModeWithBundleID:dCopy];
  [(VideoEffects *)self updateEnabledWithBundleID:dCopy];
  [(VideoEffects *)self updateAvailabilityWithBundleID:dCopy];
  [(VideoEffects *)self updateIntensityWithBundleID:dCopy];
}

- (void)updateControlModeWithBundleID:(id)d
{
  dCopy = d;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[VideoEffects updateControlModeWithBundleID:]";
    v7 = 1024;
    v8 = 35;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  self->_controlMode = AVControlCenterVideoEffectsModuleGetEffectControlModeForBundleID();
}

- (void)updateEnabledWithBundleID:(id)d
{
  dCopy = d;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[VideoEffects updateEnabledWithBundleID:]";
    v7 = 1024;
    v8 = 40;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  self->_enabled = AVControlCenterVideoEffectsModuleIsEffectEnabledForBundleID();
}

- (void)updateAvailabilityWithBundleID:(id)d
{
  dCopy = d;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[VideoEffects updateAvailabilityWithBundleID:]";
    v7 = 1024;
    v8 = 45;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  self->_isAvailable = AVControlCenterVideoEffectsModuleIsEffectSupportedForBundleID();
}

- (void)updateIntensityWithBundleID:(id)d
{
  dCopy = d;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    videoEffect = self->_videoEffect;
    v16 = 136446722;
    v17 = "[VideoEffects updateIntensityWithBundleID:]";
    v18 = 1024;
    v19 = 50;
    v20 = 2112;
    v21 = videoEffect;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %@", &v16, 0x1Cu);
  }

  if ([(NSString *)self->_videoEffect isEqualToString:AVControlCenterVideoEffectBackgroundBlur])
  {
    AVControlCenterVideoEffectsModuleGetEffectIntensityRangeForBundleID();
    v7 = v6;
    v9 = v8;
    AVControlCenterVideoEffectsModuleGetEffectIntensityForBundleID();
    if (v9 != v7)
    {
      v11 = v9 - v10;
LABEL_10:
      v15 = v11 / (v9 - v7);
      self->_intensity = v15;
    }
  }

  else if ([(NSString *)self->_videoEffect isEqualToString:AVControlCenterVideoEffectStudioLighting])
  {
    AVControlCenterVideoEffectsModuleGetEffectIntensityRangeForBundleID();
    v7 = v12;
    v9 = v13;
    AVControlCenterVideoEffectsModuleGetEffectIntensityForBundleID();
    if (v9 != v7)
    {
      v11 = v14 - v7;
      goto LABEL_10;
    }
  }
}

- (void)setIntensity:(float)intensity withBundleID:(id)d
{
  dCopy = d;
  AVControlCenterVideoEffectsModuleGetEffectIntensityRangeForBundleID();
  v8 = v7;
  v10 = v9;
  v11 = v9 - v7;
  v12 = v7 + (v9 - v7) * intensity;
  v13 = [(NSString *)self->_videoEffect isEqualToString:AVControlCenterVideoEffectBackgroundBlur];
  v14 = v10 - v11 * intensity;
  if (!v13)
  {
    v14 = v12;
  }

  v15 = v14;
  AVControlCenterVideoEffectsModuleGetEffectIntensityDefaultValueForBundleID();
  if (__RPLogLevel <= 1u)
  {
    v17 = v16;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      videoEffect = self->_videoEffect;
      v19 = 136447746;
      v20 = "[VideoEffects setIntensity:withBundleID:]";
      v21 = 1024;
      v22 = 75;
      v23 = 2048;
      v24 = v15;
      v25 = 2112;
      v26 = videoEffect;
      v27 = 2048;
      v28 = v8;
      v29 = 2048;
      v30 = v10;
      v31 = 2048;
      v32 = v17;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d setting intensity %f for effect %@. range min %f max %f. default %f", &v19, 0x44u);
    }
  }

  AVControlCenterVideoEffectsModuleSetEffectIntensityForBundleID();
  self->_intensity = intensity;
  [(VideoEffects *)self postNotificationWithBundleID:dCopy];
}

- (void)setState:(BOOL)state withBundleID:(id)d
{
  stateCopy = state;
  dCopy = d;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446978;
    v8 = "[VideoEffects setState:withBundleID:]";
    v9 = 1024;
    v10 = 82;
    v11 = 1024;
    v12 = stateCopy;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d state=%d bundleID=%@", &v7, 0x22u);
  }

  AVControlCenterVideoEffectsModuleSetEffectEnabledForBundleID();
  [(VideoEffects *)self postNotificationWithBundleID:dCopy];
}

- (void)postNotificationWithBundleID:(id)d
{
  dCopy = d;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[VideoEffects postNotificationWithBundleID:]";
    v12 = 1024;
    v13 = 88;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v8 = AVControlCenterModulesNotificationBundleIdentifierKey;
  v9 = dCopy;
  v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v5 = [NSNotification alloc];
  v6 = [v5 initWithName:AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification object:0 userInfo:v4];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotification:v6];
}

@end