@interface SFSettings
+ (id)settingsControllerModule;
@end

@implementation SFSettings

+ (id)settingsControllerModule
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C6610] rowWithTitle:@"Magic Head" childSettingsKeyPath:@"magicHeadSettings"];
  v10[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v4 = MEMORY[0x1E69C6638];
  v5 = [MEMORY[0x1E69C6638] sectionWithRows:v3];
  v9 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v7 = [v4 moduleWithTitle:@"Settings for Features" contents:v6];

  return v7;
}

@end