@interface UNMutableNotificationSound
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAlertTopic:(id)topic;
- (void)setAudioCategory:(id)category;
- (void)setToneFileName:(id)name;
- (void)setToneFileURL:(id)l;
- (void)setToneIdentifier:(id)identifier;
- (void)setVibrationIdentifier:(id)identifier;
- (void)setVibrationPatternFileURL:(id)l;
@end

@implementation UNMutableNotificationSound

- (void)setAlertTopic:(id)topic
{
  self->super._alertTopic = [topic copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setAudioCategory:(id)category
{
  self->super._audioCategory = [category copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setToneFileName:(id)name
{
  self->super._toneFileName = [name copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setToneFileURL:(id)l
{
  self->super._toneFileURL = [l copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setToneIdentifier:(id)identifier
{
  self->super._toneIdentifier = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setVibrationIdentifier:(id)identifier
{
  self->super._vibrationIdentifier = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setVibrationPatternFileURL:(id)l
{
  self->super._vibrationPatternFileURL = [l copy];

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = [UNNotificationSound allocWithZone:zone];
  alertType = [(UNNotificationSound *)self alertType];
  alertTopic = [(UNNotificationSound *)self alertTopic];
  audioCategory = [(UNNotificationSound *)self audioCategory];
  audioVolume = [(UNNotificationSound *)self audioVolume];
  isCritical = [(UNNotificationSound *)self isCritical];
  [(UNNotificationSound *)self maximumDuration];
  v6 = v5;
  shouldIgnoreAccessibilityDisabledVibrationSetting = [(UNNotificationSound *)self shouldIgnoreAccessibilityDisabledVibrationSetting];
  shouldIgnoreRingerSwitch = [(UNNotificationSound *)self shouldIgnoreRingerSwitch];
  shouldRepeat = [(UNNotificationSound *)self shouldRepeat];
  toneFileName = [(UNNotificationSound *)self toneFileName];
  toneFileURL = [(UNNotificationSound *)self toneFileURL];
  toneIdentifier = [(UNNotificationSound *)self toneIdentifier];
  toneMediaLibraryItemIdentifier = [(UNNotificationSound *)self toneMediaLibraryItemIdentifier];
  vibrationIdentifier = [(UNNotificationSound *)self vibrationIdentifier];
  vibrationPatternFileURL = [(UNNotificationSound *)self vibrationPatternFileURL];
  BYTE1(v18) = shouldRepeat;
  LOBYTE(v18) = shouldIgnoreRingerSwitch;
  v16 = [(UNNotificationSound *)v23 _initWithAlertType:alertType alertTopic:alertTopic audioCategory:audioCategory audioVolume:audioVolume critical:isCritical maximumDuration:shouldIgnoreAccessibilityDisabledVibrationSetting shouldIgnoreAccessibilityDisabledVibrationSetting:v6 shouldIgnoreRingerSwitch:v18 shouldRepeat:toneFileName toneFileName:toneFileURL toneFileURL:toneIdentifier toneIdentifier:toneMediaLibraryItemIdentifier toneMediaLibraryItemIdentifier:vibrationIdentifier vibrationIdentifier:vibrationPatternFileURL vibrationPatternFileURL:?];

  return v16;
}

@end