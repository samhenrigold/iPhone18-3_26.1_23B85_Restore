@interface CAFSingleSelectImageSetting
+ (void)load;
- (BOOL)hasUserVisibleDescription;
- (BOOL)hasUserVisibleDetailedDescription;
- (BOOL)registeredForCurrentUserVisibleValue;
- (BOOL)registeredForImageList;
- (BOOL)registeredForListUserVisibleValue;
- (BOOL)registeredForUserVisibleDescription;
- (BOOL)registeredForUserVisibleDetailedDescription;
- (CAFArrayCharacteristic)imagesCharacteristic;
- (CAFArrayCharacteristic)listUserVisibleValueCharacteristic;
- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic;
- (CAFUInt8Characteristic)currentUserVisibleValueCharacteristic;
- (CAFUInt8Range)currentUserVisibleValueRange;
- (CAFUserVisibleDetailedDescription)userVisibleDetailedDescription;
- (CAFUserVisibleDetailedDescriptionCharacteristic)userVisibleDetailedDescriptionCharacteristic;
- (NSArray)images;
- (NSArray)listUserVisibleValue;
- (NSString)userVisibleDescription;
- (id)name;
- (unsigned)currentUserVisibleValue;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setCurrentUserVisibleValue:(unsigned __int8)value;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFSingleSelectImageSetting

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSingleSelectImageSetting;
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
  v6.super_class = CAFSingleSelectImageSetting;
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
  v6.super_class = CAFSingleSelectImageSetting;
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

- (CAFUInt8Characteristic)currentUserVisibleValueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000008"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000008"];
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

- (unsigned)currentUserVisibleValue
{
  currentUserVisibleValueCharacteristic = [(CAFSingleSelectImageSetting *)self currentUserVisibleValueCharacteristic];
  uint8Value = [currentUserVisibleValueCharacteristic uint8Value];

  return uint8Value;
}

- (void)setCurrentUserVisibleValue:(unsigned __int8)value
{
  valueCopy = value;
  currentUserVisibleValueCharacteristic = [(CAFSingleSelectImageSetting *)self currentUserVisibleValueCharacteristic];
  [currentUserVisibleValueCharacteristic setUint8Value:valueCopy];
}

- (CAFUInt8Range)currentUserVisibleValueRange
{
  currentUserVisibleValueCharacteristic = [(CAFSingleSelectImageSetting *)self currentUserVisibleValueCharacteristic];
  range = [currentUserVisibleValueCharacteristic range];

  return range;
}

- (CAFArrayCharacteristic)listUserVisibleValueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000007"];
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

- (NSArray)listUserVisibleValue
{
  listUserVisibleValueCharacteristic = [(CAFSingleSelectImageSetting *)self listUserVisibleValueCharacteristic];
  arrayValue = [listUserVisibleValueCharacteristic arrayValue];

  return arrayValue;
}

- (CAFArrayCharacteristic)imagesCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000018"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000018"];
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

- (NSArray)images
{
  imagesCharacteristic = [(CAFSingleSelectImageSetting *)self imagesCharacteristic];
  arrayValue = [imagesCharacteristic arrayValue];

  return arrayValue;
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
  userVisibleDetailedDescriptionCharacteristic = [(CAFSingleSelectImageSetting *)self userVisibleDetailedDescriptionCharacteristic];
  userVisibleDetailedDescriptionValue = [userVisibleDetailedDescriptionCharacteristic userVisibleDetailedDescriptionValue];

  return userVisibleDetailedDescriptionValue;
}

- (BOOL)hasUserVisibleDetailedDescription
{
  userVisibleDetailedDescriptionCharacteristic = [(CAFSingleSelectImageSetting *)self userVisibleDetailedDescriptionCharacteristic];
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
  userVisibleDescriptionCharacteristic = [(CAFSingleSelectImageSetting *)self userVisibleDescriptionCharacteristic];
  stringValue = [userVisibleDescriptionCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleDescription
{
  userVisibleDescriptionCharacteristic = [(CAFSingleSelectImageSetting *)self userVisibleDescriptionCharacteristic];
  v3 = userVisibleDescriptionCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000036000008"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    currentUserVisibleValueCharacteristic = [(CAFSingleSelectImageSetting *)self currentUserVisibleValueCharacteristic];
    uniqueIdentifier2 = [currentUserVisibleValueCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers singleSelectImageSettingService:self didUpdateCurrentUserVisibleValue:{-[CAFSingleSelectImageSetting currentUserVisibleValue](self, "currentUserVisibleValue")}];
LABEL_21:

      goto LABEL_22;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000036000007"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    listUserVisibleValueCharacteristic = [(CAFSingleSelectImageSetting *)self listUserVisibleValueCharacteristic];
    uniqueIdentifier4 = [listUserVisibleValueCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      listUserVisibleValue = [(CAFSingleSelectImageSetting *)self listUserVisibleValue];
      [observers singleSelectImageSettingService:self didUpdateListUserVisibleValue:listUserVisibleValue];
LABEL_20:

      goto LABEL_21;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000030000018"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    imagesCharacteristic = [(CAFSingleSelectImageSetting *)self imagesCharacteristic];
    uniqueIdentifier6 = [imagesCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers = [(CAFService *)self observers];
      listUserVisibleValue = [(CAFSingleSelectImageSetting *)self images];
      [observers singleSelectImageSettingService:self didUpdateImages:listUserVisibleValue];
      goto LABEL_20;
    }
  }

  else
  {
  }

  characteristicType4 = [updateCopy characteristicType];
  if ([characteristicType4 isEqual:@"0x0000000036000029"])
  {
    uniqueIdentifier7 = [updateCopy uniqueIdentifier];
    userVisibleDetailedDescriptionCharacteristic = [(CAFSingleSelectImageSetting *)self userVisibleDetailedDescriptionCharacteristic];
    uniqueIdentifier8 = [userVisibleDetailedDescriptionCharacteristic uniqueIdentifier];
    v28 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v28)
    {
      observers = [(CAFService *)self observers];
      listUserVisibleValue = [(CAFSingleSelectImageSetting *)self userVisibleDetailedDescription];
      [observers singleSelectImageSettingService:self didUpdateUserVisibleDetailedDescription:listUserVisibleValue];
      goto LABEL_20;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000030000005"])
  {
    goto LABEL_21;
  }

  uniqueIdentifier9 = [updateCopy uniqueIdentifier];
  userVisibleDescriptionCharacteristic = [(CAFSingleSelectImageSetting *)self userVisibleDescriptionCharacteristic];
  uniqueIdentifier10 = [userVisibleDescriptionCharacteristic uniqueIdentifier];
  v32 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

  if (v32)
  {
    observers = [(CAFService *)self observers];
    listUserVisibleValue = [(CAFSingleSelectImageSetting *)self userVisibleDescription];
    [observers singleSelectImageSettingService:self didUpdateUserVisibleDescription:listUserVisibleValue];
    goto LABEL_20;
  }

LABEL_22:
  v33.receiver = self;
  v33.super_class = CAFSingleSelectImageSetting;
  [(CAFAutomakerSetting *)&v33 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForCurrentUserVisibleValue
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000008"];

  return v10;
}

- (BOOL)registeredForListUserVisibleValue
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000007"];

  return v10;
}

- (BOOL)registeredForImageList
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000018"];

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

@end