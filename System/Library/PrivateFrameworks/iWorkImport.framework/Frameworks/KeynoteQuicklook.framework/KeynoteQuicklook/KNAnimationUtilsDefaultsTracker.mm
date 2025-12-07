@interface KNAnimationUtilsDefaultsTracker
- (KNAnimationUtilsDefaultsTracker)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation KNAnimationUtilsDefaultsTracker

- (KNAnimationUtilsDefaultsTracker)init
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = KNAnimationUtilsDefaultsTracker;
  v2 = [(KNAnimationUtilsDefaultsTracker *)&v15 init];
  if (v2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v16[0] = @"EnableFPSLogging";
    v16[1] = @"EnableDisplayLogging";
    v16[2] = @"ForceDisplayPreferredMode";
    v16[3] = @"KNAnimationMotionBlurEnabled";
    v16[4] = @"ForceMotionBlurOn";
    v16[5] = @"ForceMotionBlurOff";
    v16[6] = @"EnableMotionBlurLogging";
    v16[7] = @"DisableTexturePrecaching";
    v16[8] = @"DisableMetal";
    v16[9] = @"BadgeMetalRendering";
    v16[10] = @"EnableLocalRendering";
    v16[11] = @"DisableDiscreteGPUAquisition";
    v16[12] = @"DisableViewScaling";
    v16[13] = @"EnableAnimationPluginDevelopment";
    v16[14] = @"EnableResponsivenessLogging";
    v16[15] = @"RandomNumberSeedAlwaysRandom";
    v16[16] = @"RandomNumberSeedAlwaysZero";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:{17, 0}];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
          [standardUserDefaults addObserver:v2 forKeyPath:v8 options:0 context:qword_280A3B1F8];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
      }

      while (v5);
    }
  }

  return v2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (qword_280A3B1F8 == context)
  {

    [KNAnimationUtils updateDefaultsValues:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = KNAnimationUtilsDefaultsTracker;
    [(KNAnimationUtilsDefaultsTracker *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end