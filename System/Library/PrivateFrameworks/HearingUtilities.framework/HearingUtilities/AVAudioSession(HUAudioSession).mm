@interface AVAudioSession(HUAudioSession)
- (uint64_t)currentFeature;
- (void)setActive:()HUAudioSession forFeature:error:;
- (void)setCurrentFeature:()HUAudioSession;
@end

@implementation AVAudioSession(HUAudioSession)

- (void)setActive:()HUAudioSession forFeature:error:
{
  v17 = *MEMORY[0x1E69E9840];
  if ((a3 & 1) != 0 || [self currentFeature] == a4)
  {
    v9 = HCLogHearingAids();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109376;
      v14 = a3;
      v15 = 2048;
      v16 = a4;
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Setting session active %d for %lu", &v13, 0x12u);
    }

    v10 = HCLogComfortSounds();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109376;
      v14 = a3;
      v15 = 2048;
      v16 = a4;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "Setting session active %d for %lu", &v13, 0x12u);
    }

    if (a3)
    {
      [self setCurrentFeature:a4];
    }

    [self setActive:a3 error:a5];
  }

  else
  {
    v11 = HCLogHearingAids();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109376;
      v14 = 0;
      v15 = 2048;
      v16 = a4;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "Skipping session change %d, %lu", &v13, 0x12u);
    }

    v12 = HCLogComfortSounds();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109376;
      v14 = 0;
      v15 = 2048;
      v16 = a4;
      _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "Skipping session change %d, %lu", &v13, 0x12u);
    }
  }
}

- (void)setCurrentFeature:()HUAudioSession
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(self, &AVAS_PROPERTY_KEY, v2, 1);
}

- (uint64_t)currentFeature
{
  v1 = objc_getAssociatedObject(self, &AVAS_PROPERTY_KEY);
  integerValue = [v1 integerValue];

  return integerValue;
}

@end