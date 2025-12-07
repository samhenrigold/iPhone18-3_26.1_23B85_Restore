@interface TTSVBSettings
+ (id)sharedInstance;
- (BOOL)allowAppUsage;
- (TTSVBSettings)init;
- (void)setAllowAppUsage:(BOOL)usage;
@end

@implementation TTSVBSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[TTSVBSettings sharedInstance];
  }

  v3 = sharedInstance_Shared;

  return v3;
}

uint64_t __31__TTSVBSettings_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  sharedInstance_Shared = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (TTSVBSettings)init
{
  v5.receiver = self;
  v5.super_class = TTSVBSettings;
  v2 = [(TTSVBSettings *)&v5 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Accessibility"];
    [(TTSVBSettings *)v2 setDefaults:v3];
  }

  return v2;
}

- (BOOL)allowAppUsage
{
  defaults = [(TTSVBSettings *)self defaults];
  v3 = [defaults BOOLForKey:@"kTTSVBAllowVoiceBankingAppUsage"];

  return v3;
}

- (void)setAllowAppUsage:(BOOL)usage
{
  usageCopy = usage;
  defaults = [(TTSVBSettings *)self defaults];
  [defaults setBool:usageCopy forKey:@"kTTSVBAllowVoiceBankingAppUsage"];
}

@end