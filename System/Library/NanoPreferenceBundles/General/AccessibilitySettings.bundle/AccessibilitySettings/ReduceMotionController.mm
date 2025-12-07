@interface ReduceMotionController
- (id)specifiers;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ReduceMotionController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(ReduceMotionController *)self loadSpecifiersFromPlistName:@"ReduceMotionSettings" target:self];
    v6 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = ReduceMotionController;
  [(AccessibilityBridgeBaseController *)&v15 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"REDUCE_MOTION" table:@"AccessibilitySettings" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale2 bundleURL:bundleURL2];

  v12 = MEMORY[0x277CF3470];
  v16[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=ReduceMotion"];
  [v12 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v13 deepLink:v14];
}

@end