@interface AXSAudioDonationSiriImprovementEnabled
@end

@implementation AXSAudioDonationSiriImprovementEnabled

void *___AXSAudioDonationSiriImprovementEnabled_block_invoke()
{
  if (_kAXSCacheAudioDonationSiriImprovementDidChangeNotification && !_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, _kAXSCacheAudioDonationSiriImprovementDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAudioDonationSiriImprovementEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheAudioDonationSiriImprovementEnabled = result;
  }

  return result;
}

@end