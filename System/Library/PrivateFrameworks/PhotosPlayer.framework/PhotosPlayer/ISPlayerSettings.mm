@interface ISPlayerSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation ISPlayerSettings

- (void)setDefaultValues
{
  v6.receiver = self;
  v6.super_class = ISPlayerSettings;
  [(PTSettings *)&v6 setDefaultValues];
  [(ISPlayerSettings *)self setVitalityEaseDuration:0.25];
  LODWORD(v3) = 1045220557;
  [(ISPlayerSettings *)self setVitalityEaseMinRate:v3];
  [(ISPlayerSettings *)self setLoopingEnabled:0];
  [(ISPlayerSettings *)self setCrossfadeEnabled:0];
  [(ISPlayerSettings *)self setAudioEnabled:1];
  [(ISPlayerSettings *)self setPrerollBeforePlaying:0];
  [(ISPlayerSettings *)self setUseDedicatedQueues:1];
  v4 = MGGetStringAnswer();
  v5 = [v4 isEqualToString:@"iPad"];

  [(ISPlayerSettings *)self setAllowFrameBlending:v5 ^ 1u];
  [(ISPlayerSettings *)self setAllowVideoPreRoll:1];
  [(ISPlayerSettings *)self setShowStateOverlay:0];
  [(ISPlayerSettings *)self setForceScrubRewindFactor:2.0];
  [(ISPlayerSettings *)self setForceScrubMinRateChange:0.01];
  [(ISPlayerSettings *)self setForceScrubMinimumRate:0.5];
  [(ISPlayerSettings *)self setForceScrubMaximumInteractiveRate:2.0];
  [(ISPlayerSettings *)self setPlayDuringHint:1];
  [(ISPlayerSettings *)self setPlayIsSticky:0];
  [(ISPlayerSettings *)self setScaleDuringPlayback:1];
  [(ISPlayerSettings *)self setEasingEnabled:0];
  [(ISPlayerSettings *)self setLongExposureVitality:1];
  [(ISPlayerSettings *)self setPlayAppleMusicWithMemoriesExports:1];
}

+ (id)settingsControllerModule
{
  v57[21] = *MEMORY[0x277D85DE8];
  v41 = MEMORY[0x277D43218];
  v54 = [MEMORY[0x277D432A0] rowWithTitle:@"Easing Enabled" valueKeyPath:@"easingEnabled"];
  v57[0] = v54;
  v53 = [MEMORY[0x277D432A0] rowWithTitle:@"Long Exposure Vitality" valueKeyPath:@"longExposureVitality"];
  v57[1] = v53;
  v52 = [MEMORY[0x277D43298] rowWithTitle:@"Vitality Ease Duration" valueKeyPath:@"vitalityEaseDuration"];
  v51 = [v52 minValue:0.1 maxValue:0.5];
  v50 = [v51 is_increment:0.05];
  v49 = [MEMORY[0x277CCAC30] predicateWithFormat:@"easingEnabled == YES"];
  v48 = [v50 condition:v49];
  v57[2] = v48;
  v47 = [MEMORY[0x277D43298] rowWithTitle:@"Vitality Ease Min Rate" valueKeyPath:@"vitalityEaseMinRate"];
  v46 = [v47 minValue:0.100000001 maxValue:1.0];
  v45 = [v46 is_increment:0.0500000007];
  v44 = [MEMORY[0x277CCAC30] predicateWithFormat:@"easingEnabled == YES"];
  v43 = [v45 condition:v44];
  v57[3] = v43;
  v40 = [MEMORY[0x277D431B8] rowWithTitle:@"Playback Starts…" valueKeyPath:@"startBehavior"];
  v39 = [v40 possibleValues:&unk_28705CF10 titles:&unk_28705CF28];
  v57[4] = v39;
  v38 = [MEMORY[0x277D432A0] rowWithTitle:@"Scale During Playback" valueKeyPath:@"scaleDuringPlayback"];
  v57[5] = v38;
  v37 = [MEMORY[0x277D432A0] rowWithTitle:@"Looping Enabled" valueKeyPath:@"loopingEnabled"];
  v57[6] = v37;
  v36 = [MEMORY[0x277D432A0] rowWithTitle:@"Crossfade Enabled" valueKeyPath:@"crossfadeEnabled"];
  v35 = [MEMORY[0x277CCAC30] predicateWithFormat:@"loopingEnabled == YES"];
  v34 = [v36 condition:v35];
  v57[7] = v34;
  v33 = [MEMORY[0x277D432A0] rowWithTitle:@"Audio Enabled" valueKeyPath:@"audioEnabled"];
  v57[8] = v33;
  v32 = [MEMORY[0x277D432A0] rowWithTitle:@"Sticky Play" valueKeyPath:@"playIsSticky"];
  v57[9] = v32;
  v31 = [MEMORY[0x277D432A0] rowWithTitle:@"State Overlay" valueKeyPath:@"showStateOverlay"];
  v57[10] = v31;
  v30 = [MEMORY[0x277D432A0] rowWithTitle:@"Live Hint" valueKeyPath:@"playDuringHint"];
  v57[11] = v30;
  v29 = [MEMORY[0x277D432A0] rowWithTitle:@"Use Dedicated Queues" valueKeyPath:@"useDedicatedQueues"];
  v57[12] = v29;
  v28 = [MEMORY[0x277D432A0] rowWithTitle:@"Preroll Before Playing" valueKeyPath:@"prerollBeforePlaying"];
  v57[13] = v28;
  v27 = [MEMORY[0x277D432A0] rowWithTitle:@"Frame Blending" valueKeyPath:@"allowFrameBlending"];
  v57[14] = v27;
  v26 = [MEMORY[0x277D432A0] rowWithTitle:@"Video Preroll" valueKeyPath:@"allowVideoPreRoll"];
  v57[15] = v26;
  v25 = [MEMORY[0x277D43298] rowWithTitle:@"Force Scrub Rewind Factor" valueKeyPath:@"forceScrubRewindFactor"];
  v24 = [v25 minValue:0.0 maxValue:10.0];
  v23 = [v24 is_increment:0.00999999978];
  v57[16] = v23;
  v22 = [MEMORY[0x277D43298] rowWithTitle:@"Force Scrub Min Rate Change" valueKeyPath:@"forceScrubMinRateChange"];
  v2 = [v22 minValue:0.0 maxValue:0.100000001];
  v3 = [v2 is_increment:0.0000999999975];
  v57[17] = v3;
  v4 = [MEMORY[0x277D43298] rowWithTitle:@"Force Scrub Minimum Rate" valueKeyPath:@"forceScrubMinimumRate"];
  v5 = [v4 minValue:0.0 maxValue:1.0];
  v6 = [v5 is_increment:0.100000001];
  v57[18] = v6;
  v7 = [MEMORY[0x277D43298] rowWithTitle:@"Force Scrub Maximum Interactive Rate" valueKeyPath:@"forceScrubMaximumInteractiveRate"];
  v8 = [v7 minValue:0.0 maxValue:8.0];
  v9 = [v8 is_increment:0.100000001];
  v57[19] = v9;
  v10 = [MEMORY[0x277D432A0] rowWithTitle:@"Play 🍎Music w/Memories Exports" valueKeyPath:@"playAppleMusicWithMemoriesExports"];
  v57[20] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:21];
  v42 = [v41 sectionWithRows:v11];

  v12 = MEMORY[0x277D43218];
  v13 = MEMORY[0x277D431A8];
  v14 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v15 = [v13 rowWithTitle:@"Restore Defaults" action:v14];
  v56 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  v17 = [v12 sectionWithRows:v16];

  v18 = MEMORY[0x277D43218];
  v55[0] = v42;
  v55[1] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  v20 = [v18 moduleWithTitle:@"Player" contents:v19];

  return v20;
}

+ (id)sharedInstance
{
  v2 = +[ISRootSettings sharedInstance];
  playerSettings = [v2 playerSettings];

  return playerSettings;
}

@end