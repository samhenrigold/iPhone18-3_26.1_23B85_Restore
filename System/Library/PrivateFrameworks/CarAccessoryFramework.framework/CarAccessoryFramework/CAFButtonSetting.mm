@interface CAFButtonSetting
+ (void)load;
- (BOOL)hasNotificationInfo;
- (BOOL)registeredForButtonAction;
- (BOOL)registeredForNotificationInfo;
- (CAFButtonActionCharacteristic)buttonActionCharacteristic;
- (CAFSettingNotificationEntry)notificationInfo;
- (CAFSettingNotificationEntryCharacteristic)notificationInfoCharacteristic;
- (id)name;
- (unsigned)buttonAction;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setButtonAction:(unsigned __int8)action;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFButtonSetting

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFButtonSetting;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846A5928])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFButtonSetting;
  [(CAFAutomakerSetting *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846A5928])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFButtonSetting;
  [(CAFAutomakerSetting *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  categoryCharacteristic = [(CAFAutomakerSetting *)self categoryCharacteristic];
  formattedValue = [categoryCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  userVisibleLabelCharacteristic = [(CAFAutomakerSetting *)self userVisibleLabelCharacteristic];
  formattedValue2 = [userVisibleLabelCharacteristic formattedValue];

  if ([formattedValue2 length])
  {
    v9 = [typeName stringByAppendingFormat:@"-%@", formattedValue2];

    typeName = v9;
  }

  return typeName;
}

- (CAFButtonActionCharacteristic)buttonActionCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000010"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000010"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)buttonAction
{
  buttonActionCharacteristic = [(CAFButtonSetting *)self buttonActionCharacteristic];
  buttonActionValue = [buttonActionCharacteristic buttonActionValue];

  return buttonActionValue;
}

- (void)setButtonAction:(unsigned __int8)action
{
  actionCopy = action;
  buttonActionCharacteristic = [(CAFButtonSetting *)self buttonActionCharacteristic];
  [buttonActionCharacteristic setButtonActionValue:actionCopy];
}

- (CAFSettingNotificationEntryCharacteristic)notificationInfoCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000031"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000031"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CAFSettingNotificationEntry)notificationInfo
{
  notificationInfoCharacteristic = [(CAFButtonSetting *)self notificationInfoCharacteristic];
  settingNotificationEntryValue = [notificationInfoCharacteristic settingNotificationEntryValue];

  return settingNotificationEntryValue;
}

- (BOOL)hasNotificationInfo
{
  notificationInfoCharacteristic = [(CAFButtonSetting *)self notificationInfoCharacteristic];
  v3 = notificationInfoCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000036000010"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    buttonActionCharacteristic = [(CAFButtonSetting *)self buttonActionCharacteristic];
    uniqueIdentifier2 = [buttonActionCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers buttonSettingService:self didUpdateButtonAction:{-[CAFButtonSetting buttonAction](self, "buttonAction")}];
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000036000031"])
  {
    goto LABEL_8;
  }

  uniqueIdentifier3 = [updateCopy uniqueIdentifier];
  notificationInfoCharacteristic = [(CAFButtonSetting *)self notificationInfoCharacteristic];
  uniqueIdentifier4 = [notificationInfoCharacteristic uniqueIdentifier];
  v16 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

  if (v16)
  {
    observers = [(CAFService *)self observers];
    notificationInfo = [(CAFButtonSetting *)self notificationInfo];
    [observers buttonSettingService:self didUpdateNotificationInfo:notificationInfo];

    goto LABEL_8;
  }

LABEL_9:
  v18.receiver = self;
  v18.super_class = CAFButtonSetting;
  [(CAFAutomakerSetting *)&v18 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForButtonAction
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000010"];

  return v10;
}

- (BOOL)registeredForNotificationInfo
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000031"];

  return v10;
}

@end