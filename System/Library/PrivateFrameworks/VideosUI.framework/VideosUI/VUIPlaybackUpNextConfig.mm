@interface VUIPlaybackUpNextConfig
- (VUIPlaybackUpNextConfig)init;
@end

@implementation VUIPlaybackUpNextConfig

- (VUIPlaybackUpNextConfig)init
{
  v30 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = VUIPlaybackUpNextConfig;
  v2 = [(VUIPlaybackUpNextConfig *)&v27 init];
  v3 = v2;
  if (v2)
  {
    v2->_documentUpdateOffsetInterval = 1.0;
    v2->_duration = 30.0;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [standardUserDefaults objectForKey:@"maximumAutoPlayableItemsQAOverride"];

    if (v5)
    {
      v7 = VUIDefaultLogObject(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v5;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIFeaturesConfiguration:: overriding max auto playable items from user defaults %@", buf, 0xCu);
      }

      v3->_maximumAutoPlayableItems = [v5 unsignedIntegerValue];
    }

    else
    {
      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      v9 = [standardUserDefaults2 objectForKey:@"maximumAutoPlayableItems"];

      if (v9)
      {
        unsignedIntegerValue = [v9 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue = 3;
      }

      v3->_maximumAutoPlayableItems = unsignedIntegerValue;
    }

    standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v12 = [standardUserDefaults3 objectForKey:@"autoPlayTimerDuration"];

    if (v12)
    {
      [v12 doubleValue];
    }

    else
    {
      v13 = 15.0;
    }

    v3->_autoPlayTimerDuration = v13;
    standardUserDefaults4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v15 = [standardUserDefaults4 objectForKey:@"bootStrapInterval"];

    if (v15)
    {
      [v15 doubleValue];
    }

    else
    {
      v16 = 30.0;
    }

    v3->_bootstrapInterval = v16;
    standardUserDefaults5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v18 = [standardUserDefaults5 objectForKey:@"minAutoPlayStopTimeQAOverride"];

    if (v18)
    {
      [v18 doubleValue];
      v3->_minAutoPlayStopTime = v19;
    }

    else
    {
      standardUserDefaults6 = [MEMORY[0x1E695E000] standardUserDefaults];
      v21 = [standardUserDefaults6 objectForKey:@"minAutoPlayStopTime"];

      if (v21)
      {
        [v21 doubleValue];
      }

      else
      {
        v22 = 0x40BC200000000000;
      }

      *&v3->_minAutoPlayStopTime = v22;
    }

    standardUserDefaults7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v24 = [standardUserDefaults7 objectForKey:@"minTimeIntervalFromEndToDisplay"];

    if (v24)
    {
      [v24 doubleValue];
    }

    else
    {
      v25 = 20.0;
    }

    v3->_minTimeIntervalFromEndToDisplay = v25;
  }

  return v3;
}

@end