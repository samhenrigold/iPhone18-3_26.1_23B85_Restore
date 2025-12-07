@interface ITAttentionAwarenessSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation ITAttentionAwarenessSettings

- (void)setDefaultValues
{
  [(ITAttentionAwarenessSettings *)self setNonSampledAttentionLostTimeout:3600.0];

  [(ITAttentionAwarenessSettings *)self setNonSampledAttentionLostTimeoutEnable:1];
}

+ (id)settingsControllerModule
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43218];
  v3 = [MEMORY[0x277D431F0] rowWithTitle:@"nonSampled attention lost timeout" valueKeyPath:@"nonSampledAttentionLostTimeout"];
  v12[0] = v3;
  v4 = [MEMORY[0x277D432A0] rowWithTitle:@"nonSampled attention lost timeout enabled" valueKeyPath:@"nonSampledAttentionLostTimeoutEnable"];
  v12[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v6 = [v2 sectionWithRows:v5 title:@"nonSampled Attention Lost Timeout"];

  v7 = MEMORY[0x277D43218];
  v11 = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v9 = [v7 moduleWithTitle:0 contents:v8];

  return v9;
}

@end