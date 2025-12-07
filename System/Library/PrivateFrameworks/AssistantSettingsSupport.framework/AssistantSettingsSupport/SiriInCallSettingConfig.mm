@interface SiriInCallSettingConfig
+ (BOOL)enabled;
+ (void)setEnabled:(BOOL)enabled;
@end

@implementation SiriInCallSettingConfig

+ (BOOL)enabled
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  siriInCallEnabled = [mEMORY[0x277CEF368] siriInCallEnabled];

  return siriInCallEnabled;
}

+ (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  [mEMORY[0x277CEF368] setSiriInCallEnabled:enabledCopy];
}

@end