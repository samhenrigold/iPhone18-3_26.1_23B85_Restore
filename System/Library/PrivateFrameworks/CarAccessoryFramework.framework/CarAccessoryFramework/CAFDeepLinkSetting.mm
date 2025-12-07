@interface CAFDeepLinkSetting
+ (void)load;
- (BOOL)hasNotificationInfo;
- (BOOL)hasUserVisibleDescription;
- (BOOL)hasUserVisibleDetailedDescription;
- (BOOL)hasUserVisibleValue;
- (BOOL)registeredForContentURLAction;
- (BOOL)registeredForNotificationInfo;
- (BOOL)registeredForUserVisibleDescription;
- (BOOL)registeredForUserVisibleDetailedDescription;
- (BOOL)registeredForUserVisibleValue;
- (CAFSettingNotificationEntry)notificationInfo;
- (CAFSettingNotificationEntryCharacteristic)notificationInfoCharacteristic;
- (CAFStringCharacteristic)contentURLActionCharacteristic;
- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic;
- (CAFStringCharacteristic)userVisibleValueCharacteristic;
- (CAFUserVisibleDetailedDescription)userVisibleDetailedDescription;
- (CAFUserVisibleDetailedDescriptionCharacteristic)userVisibleDetailedDescriptionCharacteristic;
- (NSString)contentURLAction;
- (NSString)userVisibleDescription;
- (NSString)userVisibleValue;
- (id)name;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFDeepLinkSetting

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFDeepLinkSetting;
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
  v6.super_class = CAFDeepLinkSetting;
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
  v6.super_class = CAFDeepLinkSetting;
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

- (CAFStringCharacteristic)userVisibleValueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000017"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000017"];
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

- (NSString)userVisibleValue
{
  userVisibleValueCharacteristic = [(CAFDeepLinkSetting *)self userVisibleValueCharacteristic];
  stringValue = [userVisibleValueCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleValue
{
  userVisibleValueCharacteristic = [(CAFDeepLinkSetting *)self userVisibleValueCharacteristic];
  v3 = userVisibleValueCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)contentURLActionCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000066"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000066"];
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

- (NSString)contentURLAction
{
  contentURLActionCharacteristic = [(CAFDeepLinkSetting *)self contentURLActionCharacteristic];
  stringValue = [contentURLActionCharacteristic stringValue];

  return stringValue;
}

- (CAFUserVisibleDetailedDescriptionCharacteristic)userVisibleDetailedDescriptionCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000029"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000029"];
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

- (CAFUserVisibleDetailedDescription)userVisibleDetailedDescription
{
  userVisibleDetailedDescriptionCharacteristic = [(CAFDeepLinkSetting *)self userVisibleDetailedDescriptionCharacteristic];
  userVisibleDetailedDescriptionValue = [userVisibleDetailedDescriptionCharacteristic userVisibleDetailedDescriptionValue];

  return userVisibleDetailedDescriptionValue;
}

- (BOOL)hasUserVisibleDetailedDescription
{
  userVisibleDetailedDescriptionCharacteristic = [(CAFDeepLinkSetting *)self userVisibleDetailedDescriptionCharacteristic];
  v3 = userVisibleDetailedDescriptionCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000005"];
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

- (NSString)userVisibleDescription
{
  userVisibleDescriptionCharacteristic = [(CAFDeepLinkSetting *)self userVisibleDescriptionCharacteristic];
  stringValue = [userVisibleDescriptionCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleDescription
{
  userVisibleDescriptionCharacteristic = [(CAFDeepLinkSetting *)self userVisibleDescriptionCharacteristic];
  v3 = userVisibleDescriptionCharacteristic != 0;

  return v3;
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
  notificationInfoCharacteristic = [(CAFDeepLinkSetting *)self notificationInfoCharacteristic];
  settingNotificationEntryValue = [notificationInfoCharacteristic settingNotificationEntryValue];

  return settingNotificationEntryValue;
}

- (BOOL)hasNotificationInfo
{
  notificationInfoCharacteristic = [(CAFDeepLinkSetting *)self notificationInfoCharacteristic];
  v3 = notificationInfoCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000030000017"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    userVisibleValueCharacteristic = [(CAFDeepLinkSetting *)self userVisibleValueCharacteristic];
    uniqueIdentifier2 = [userVisibleValueCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      userVisibleValue = [(CAFDeepLinkSetting *)self userVisibleValue];
      [observers deepLinkSettingService:self didUpdateUserVisibleValue:userVisibleValue];
LABEL_20:

      goto LABEL_21;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000036000066"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    contentURLActionCharacteristic = [(CAFDeepLinkSetting *)self contentURLActionCharacteristic];
    uniqueIdentifier4 = [contentURLActionCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      userVisibleValue = [(CAFDeepLinkSetting *)self contentURLAction];
      [observers deepLinkSettingService:self didUpdateContentURLAction:userVisibleValue];
      goto LABEL_20;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000036000029"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    userVisibleDetailedDescriptionCharacteristic = [(CAFDeepLinkSetting *)self userVisibleDetailedDescriptionCharacteristic];
    uniqueIdentifier6 = [userVisibleDetailedDescriptionCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers = [(CAFService *)self observers];
      userVisibleValue = [(CAFDeepLinkSetting *)self userVisibleDetailedDescription];
      [observers deepLinkSettingService:self didUpdateUserVisibleDetailedDescription:userVisibleValue];
      goto LABEL_20;
    }
  }

  else
  {
  }

  characteristicType4 = [updateCopy characteristicType];
  if ([characteristicType4 isEqual:@"0x0000000030000005"])
  {
    uniqueIdentifier7 = [updateCopy uniqueIdentifier];
    userVisibleDescriptionCharacteristic = [(CAFDeepLinkSetting *)self userVisibleDescriptionCharacteristic];
    uniqueIdentifier8 = [userVisibleDescriptionCharacteristic uniqueIdentifier];
    v28 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v28)
    {
      observers = [(CAFService *)self observers];
      userVisibleValue = [(CAFDeepLinkSetting *)self userVisibleDescription];
      [observers deepLinkSettingService:self didUpdateUserVisibleDescription:userVisibleValue];
      goto LABEL_20;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000036000031"])
  {
LABEL_21:

    goto LABEL_22;
  }

  uniqueIdentifier9 = [updateCopy uniqueIdentifier];
  notificationInfoCharacteristic = [(CAFDeepLinkSetting *)self notificationInfoCharacteristic];
  uniqueIdentifier10 = [notificationInfoCharacteristic uniqueIdentifier];
  v32 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

  if (v32)
  {
    observers = [(CAFService *)self observers];
    userVisibleValue = [(CAFDeepLinkSetting *)self notificationInfo];
    [observers deepLinkSettingService:self didUpdateNotificationInfo:userVisibleValue];
    goto LABEL_20;
  }

LABEL_22:
  v33.receiver = self;
  v33.super_class = CAFDeepLinkSetting;
  [(CAFAutomakerSetting *)&v33 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForUserVisibleValue
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000017"];

  return v10;
}

- (BOOL)registeredForContentURLAction
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000066"];

  return v10;
}

- (BOOL)registeredForUserVisibleDetailedDescription
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000029"];

  return v10;
}

- (BOOL)registeredForUserVisibleDescription
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000005"];

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