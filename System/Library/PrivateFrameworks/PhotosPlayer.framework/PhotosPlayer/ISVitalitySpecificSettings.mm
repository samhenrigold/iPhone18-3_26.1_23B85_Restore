@interface ISVitalitySpecificSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation ISVitalitySpecificSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = ISVitalitySpecificSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(ISVitalitySpecificSettings *)self setBehavior:4];
  [(ISVitalitySpecificSettings *)self setPreDuration:0.65];
  [(ISVitalitySpecificSettings *)self setPlaybackRate:1.0];
  [(ISVitalitySpecificSettings *)self setEndTimeOffset:-0.135];
  [(ISVitalitySpecificSettings *)self setMinimumVisibilityFactor:0.7];
  [(ISVitalitySpecificSettings *)self setMaximumDelayBeforePlayback:0.2];
  [(ISVitalitySpecificSettings *)self setPostDuration:0.0];
  [(ISVitalitySpecificSettings *)self setStartSeekTolerance:0.3];
  [(ISVitalitySpecificSettings *)self setMinimumPhotoTransitionDuration:0.25];
  [(ISVitalitySpecificSettings *)self setMaxVitalityDelay:0.1];
}

+ (id)settingsControllerModule
{
  v51[10] = *MEMORY[0x277D85DE8];
  v35 = MEMORY[0x277D43218];
  v49 = [MEMORY[0x277D43298] rowWithTitle:@"Max Delay" valueKeyPath:@"maxVitalityDelay"];
  v48 = [v49 minValue:0.0 maxValue:0.25];
  v47 = [v48 is_increment:0.05];
  v51[0] = v47;
  v46 = [MEMORY[0x277D43298] rowWithTitle:@"Min. Photo Transition Duration" valueKeyPath:@"minimumPhotoTransitionDuration"];
  v45 = [v46 minValue:0.0 maxValue:1.0];
  v44 = [v45 is_increment:0.05];
  v51[1] = v44;
  v43 = [MEMORY[0x277D431B8] rowWithTitle:@"Behavior" valueKeyPath:@"behavior"];
  v42 = [v43 possibleValues:&unk_28705CF40 titles:&unk_28705CF58];
  v51[2] = v42;
  v41 = [MEMORY[0x277D43298] rowWithTitle:@"Start Seek Tolerance" valueKeyPath:@"startSeekTolerance"];
  v40 = [v41 minValue:0.0 maxValue:2.0];
  v39 = __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(&unk_28705CF70);
  v38 = [v40 condition:v39];
  v51[3] = v38;
  v37 = [MEMORY[0x277D43298] rowWithTitle:@"Post Duration" valueKeyPath:@"postDuration"];
  v34 = [v37 minValue:0.0 maxValue:2.0];
  v33 = __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(&unk_28705CF88);
  v32 = [v34 condition:v33];
  v51[4] = v32;
  v31 = [MEMORY[0x277D43298] rowWithTitle:@"Pre Duration" valueKeyPath:@"preDuration"];
  v30 = [v31 minValue:0.2 maxValue:1.6];
  v29 = [v30 is_increment:0.05];
  v28 = __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(&unk_28705CFA0);
  v27 = [v29 condition:v28];
  v51[5] = v27;
  v26 = [MEMORY[0x277D43298] rowWithTitle:@"Playback Rate" valueKeyPath:@"playbackRate"];
  v25 = [v26 minValue:0.5 maxValue:3.0];
  v24 = [v25 is_increment:0.1];
  v23 = __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(&unk_28705CFB8);
  v22 = [v24 condition:v23];
  v51[6] = v22;
  v21 = [MEMORY[0x277D43298] rowWithTitle:@"End Time Offset" valueKeyPath:@"endTimeOffset"];
  v20 = [v21 minValue:-0.5 maxValue:0.1];
  v19 = [v20 is_increment:0.05];
  v18 = __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(&unk_28705CFD0);
  v17 = [v19 condition:v18];
  v51[7] = v17;
  v16 = [MEMORY[0x277D43298] rowWithTitle:@"Minimum Visibility" valueKeyPath:@"minimumVisibilityFactor"];
  v2 = [v16 minValue:0.0 maxValue:1.0];
  v3 = [v2 is_increment:0.05];
  v4 = __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(&unk_28705CFE8);
  v5 = [v3 condition:v4];
  v51[8] = v5;
  v6 = [MEMORY[0x277D43298] rowWithTitle:@"Maximum Delay Before Playback" valueKeyPath:@"maximumDelayBeforePlayback"];
  v7 = [v6 minValue:0.0 maxValue:1.0];
  v8 = [v7 is_increment:0.01];
  v9 = __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(&unk_28705D000);
  v10 = [v8 condition:v9];
  v51[9] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:10];
  v36 = [v35 sectionWithRows:v11 title:@"Settings"];

  v12 = MEMORY[0x277D43218];
  v50 = v36;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v14 = [v12 moduleWithTitle:@"Vitality Behavior" contents:v13];

  return v14;
}

id __54__ISVitalitySpecificSettings_settingsControllerModule__block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"behavior == %@", *(*(&v11 + 1) + 8 * i)];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v2];

  return v9;
}

@end