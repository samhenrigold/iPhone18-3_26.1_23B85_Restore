@interface DNDSServerSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation DNDSServerSettings

- (void)setDefaultValues
{
  v2.receiver = self;
  v2.super_class = DNDSServerSettings;
  [(PTSettings *)&v2 setDefaultValues];
}

+ (id)settingsControllerModule
{
  v23[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431B8] rowWithTitle:@"Intelligent Breakthrough" valueKeyPath:@"forcedIntelligentBreakthrough"];
  v22[0] = &unk_285C53418;
  v22[1] = &unk_285C53430;
  v23[0] = @"None";
  v23[1] = @"Yes";
  v22[2] = &unk_285C53448;
  v23[2] = @"No";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  allKeys = [v3 allKeys];
  [v2 setPossibleValues:allKeys];

  allValues = [v3 allValues];
  [v2 setPossibleTitles:allValues];

  v6 = MEMORY[0x277D43218];
  v21 = v2;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v8 = [v6 sectionWithRows:v7 title:@"Force Intelligent Breakthrough"];

  v9 = MEMORY[0x277D431A8];
  v10 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v11 = [v9 rowWithTitle:@"Restore Defaults" action:v10];

  v12 = MEMORY[0x277D43218];
  v20 = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v14 = [v12 sectionWithRows:v13];

  v15 = MEMORY[0x277D43218];
  v19[0] = v8;
  v19[1] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v17 = [v15 moduleWithTitle:@"Focus" contents:v16];

  return v17;
}

@end