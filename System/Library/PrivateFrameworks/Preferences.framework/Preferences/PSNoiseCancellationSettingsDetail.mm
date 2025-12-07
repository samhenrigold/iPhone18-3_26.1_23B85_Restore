@interface PSNoiseCancellationSettingsDetail
+ (BOOL)isEnabled;
+ (void)setEnabled:(BOOL)enabled;
@end

@implementation PSNoiseCancellationSettingsDetail

+ (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = PSConnected298();
  if (v4)
  {
    if (enabledCopy)
    {
      v5 = 2;
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
  v2 = PSConnected298();
  v3 = v2;
  if (v2)
  {
    v4 = PSBTAccessoryListeningMode(v2) == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end