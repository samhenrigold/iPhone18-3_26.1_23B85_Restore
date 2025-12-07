@interface CAFSingleSelectSetting
+ (void)load;
- (BOOL)hasSelectSettingEntryListNotificationInfo;
- (BOOL)hasUserVisibleDescription;
- (BOOL)hasUserVisibleDetailedDescription;
- (BOOL)registeredForSelectSettingEntryList;
- (BOOL)registeredForSelectSettingEntryListNotificationInfo;
- (BOOL)registeredForSelectedEntryIndex;
- (BOOL)registeredForUserVisibleDescription;
- (BOOL)registeredForUserVisibleDetailedDescription;
- (CAFSelectSettingEntryList)selectSettingEntryList;
- (CAFSelectSettingEntryListCharacteristic)selectSettingEntryListCharacteristic;
- (CAFSelectSettingNotificationEntryList)selectSettingEntryListNotificationInfo;
- (CAFSelectSettingNotificationEntryListCharacteristic)selectSettingEntryListNotificationInfoCharacteristic;
- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic;
- (CAFUInt8Characteristic)selectedEntryIndexCharacteristic;
- (CAFUInt8Range)selectedEntryIndexRange;
- (CAFUserVisibleDetailedDescription)userVisibleDetailedDescription;
- (CAFUserVisibleDetailedDescriptionCharacteristic)userVisibleDetailedDescriptionCharacteristic;
- (NSString)userVisibleDescription;
- (id)name;
- (unsigned)selectedEntryIndex;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setSelectedEntryIndex:(unsigned __int8)index;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFSingleSelectSetting

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSingleSelectSetting;
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
  v6.super_class = CAFSingleSelectSetting;
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
  v6.super_class = CAFSingleSelectSetting;
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

- (CAFSelectSettingEntryListCharacteristic)selectSettingEntryListCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000024"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000024"];
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

- (CAFSelectSettingEntryList)selectSettingEntryList
{
  selectSettingEntryListCharacteristic = [(CAFSingleSelectSetting *)self selectSettingEntryListCharacteristic];
  selectSettingEntryListValue = [selectSettingEntryListCharacteristic selectSettingEntryListValue];

  return selectSettingEntryListValue;
}

- (CAFUInt8Characteristic)selectedEntryIndexCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000061"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000061"];
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

- (unsigned)selectedEntryIndex
{
  selectedEntryIndexCharacteristic = [(CAFSingleSelectSetting *)self selectedEntryIndexCharacteristic];
  uint8Value = [selectedEntryIndexCharacteristic uint8Value];

  return uint8Value;
}

- (void)setSelectedEntryIndex:(unsigned __int8)index
{
  indexCopy = index;
  selectedEntryIndexCharacteristic = [(CAFSingleSelectSetting *)self selectedEntryIndexCharacteristic];
  [selectedEntryIndexCharacteristic setUint8Value:indexCopy];
}

- (CAFUInt8Range)selectedEntryIndexRange
{
  selectedEntryIndexCharacteristic = [(CAFSingleSelectSetting *)self selectedEntryIndexCharacteristic];
  range = [selectedEntryIndexCharacteristic range];

  return range;
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
  userVisibleDetailedDescriptionCharacteristic = [(CAFSingleSelectSetting *)self userVisibleDetailedDescriptionCharacteristic];
  userVisibleDetailedDescriptionValue = [userVisibleDetailedDescriptionCharacteristic userVisibleDetailedDescriptionValue];

  return userVisibleDetailedDescriptionValue;
}

- (BOOL)hasUserVisibleDetailedDescription
{
  userVisibleDetailedDescriptionCharacteristic = [(CAFSingleSelectSetting *)self userVisibleDetailedDescriptionCharacteristic];
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
  userVisibleDescriptionCharacteristic = [(CAFSingleSelectSetting *)self userVisibleDescriptionCharacteristic];
  stringValue = [userVisibleDescriptionCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleDescription
{
  userVisibleDescriptionCharacteristic = [(CAFSingleSelectSetting *)self userVisibleDescriptionCharacteristic];
  v3 = userVisibleDescriptionCharacteristic != 0;

  return v3;
}

- (CAFSelectSettingNotificationEntryListCharacteristic)selectSettingEntryListNotificationInfoCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000033"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000033"];
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

- (CAFSelectSettingNotificationEntryList)selectSettingEntryListNotificationInfo
{
  selectSettingEntryListNotificationInfoCharacteristic = [(CAFSingleSelectSetting *)self selectSettingEntryListNotificationInfoCharacteristic];
  selectSettingNotificationEntryListValue = [selectSettingEntryListNotificationInfoCharacteristic selectSettingNotificationEntryListValue];

  return selectSettingNotificationEntryListValue;
}

- (BOOL)hasSelectSettingEntryListNotificationInfo
{
  selectSettingEntryListNotificationInfoCharacteristic = [(CAFSingleSelectSetting *)self selectSettingEntryListNotificationInfoCharacteristic];
  v3 = selectSettingEntryListNotificationInfoCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000036000024"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    selectSettingEntryListCharacteristic = [(CAFSingleSelectSetting *)self selectSettingEntryListCharacteristic];
    uniqueIdentifier2 = [selectSettingEntryListCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      selectSettingEntryList = [(CAFSingleSelectSetting *)self selectSettingEntryList];
      [observers singleSelectSettingService:self didUpdateSelectSettingEntryList:selectSettingEntryList];
LABEL_20:

      goto LABEL_21;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000030000061"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    selectedEntryIndexCharacteristic = [(CAFSingleSelectSetting *)self selectedEntryIndexCharacteristic];
    uniqueIdentifier4 = [selectedEntryIndexCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      [observers singleSelectSettingService:self didUpdateSelectedEntryIndex:{-[CAFSingleSelectSetting selectedEntryIndex](self, "selectedEntryIndex")}];
      goto LABEL_21;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000036000029"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    userVisibleDetailedDescriptionCharacteristic = [(CAFSingleSelectSetting *)self userVisibleDetailedDescriptionCharacteristic];
    uniqueIdentifier6 = [userVisibleDetailedDescriptionCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers = [(CAFService *)self observers];
      selectSettingEntryList = [(CAFSingleSelectSetting *)self userVisibleDetailedDescription];
      [observers singleSelectSettingService:self didUpdateUserVisibleDetailedDescription:selectSettingEntryList];
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
    userVisibleDescriptionCharacteristic = [(CAFSingleSelectSetting *)self userVisibleDescriptionCharacteristic];
    uniqueIdentifier8 = [userVisibleDescriptionCharacteristic uniqueIdentifier];
    v28 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v28)
    {
      observers = [(CAFService *)self observers];
      selectSettingEntryList = [(CAFSingleSelectSetting *)self userVisibleDescription];
      [observers singleSelectSettingService:self didUpdateUserVisibleDescription:selectSettingEntryList];
      goto LABEL_20;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000036000033"])
  {
LABEL_21:

    goto LABEL_22;
  }

  uniqueIdentifier9 = [updateCopy uniqueIdentifier];
  selectSettingEntryListNotificationInfoCharacteristic = [(CAFSingleSelectSetting *)self selectSettingEntryListNotificationInfoCharacteristic];
  uniqueIdentifier10 = [selectSettingEntryListNotificationInfoCharacteristic uniqueIdentifier];
  v32 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

  if (v32)
  {
    observers = [(CAFService *)self observers];
    selectSettingEntryList = [(CAFSingleSelectSetting *)self selectSettingEntryListNotificationInfo];
    [observers singleSelectSettingService:self didUpdateSelectSettingEntryListNotificationInfo:selectSettingEntryList];
    goto LABEL_20;
  }

LABEL_22:
  v33.receiver = self;
  v33.super_class = CAFSingleSelectSetting;
  [(CAFAutomakerSetting *)&v33 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForSelectSettingEntryList
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000024"];

  return v10;
}

- (BOOL)registeredForSelectedEntryIndex
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000061"];

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

- (BOOL)registeredForSelectSettingEntryListNotificationInfo
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000033"];

  return v10;
}

@end