@interface DDPeoplePickerMutableSceneSettings
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDedicatedDevicePicker:(BOOL)picker;
- (void)setMicOnlyDevicePicker:(BOOL)picker;
@end

@implementation DDPeoplePickerMutableSceneSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DDPeoplePickerSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (void)setDedicatedDevicePicker:(BOOL)picker
{
  pickerCopy = picker;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:pickerCopy];
  [otherSettings setObject:v4 forSetting:18492850];
}

- (void)setMicOnlyDevicePicker:(BOOL)picker
{
  pickerCopy = picker;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:pickerCopy];
  [otherSettings setObject:v4 forSetting:18492851];
}

@end