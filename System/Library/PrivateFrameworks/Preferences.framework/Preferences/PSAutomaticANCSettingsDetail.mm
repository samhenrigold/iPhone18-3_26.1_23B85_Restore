@interface PSAutomaticANCSettingsDetail
+ (BOOL)isEnabled;
+ (void)setEnabled:(BOOL)enabled;
@end

@implementation PSAutomaticANCSettingsDetail

+ (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = PSConnected698();
  if (v4)
  {
    if (enabledCopy)
    {
      v5 = 4;
    }

    else
    {
      v5 = 1;
    }

    v6 = v4;
    PSBTSetAccessoryListeningMode(v4, v5);
    v4 = v6;
  }
}

+ (BOOL)isEnabled
{
  v2 = PSConnected698();
  v3 = v2;
  if (v2)
  {
    v4 = PSBTAccessoryListeningMode(v2) == 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end