@interface CAFMultipleSelectImageSetting
+ (void)load;
- (BOOL)hasUserVisibleDescription;
- (BOOL)hasUserVisibleDetailedDescription;
- (BOOL)registeredForImageList;
- (BOOL)registeredForIndicesUserVisibleValue;
- (BOOL)registeredForListUserVisibleValue;
- (BOOL)registeredForUserVisibleDescription;
- (BOOL)registeredForUserVisibleDetailedDescription;
- (CAFArrayCharacteristic)imagesCharacteristic;
- (CAFArrayCharacteristic)indicesUserVisibleValueCharacteristic;
- (CAFArrayCharacteristic)listUserVisibleValueCharacteristic;
- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic;
- (CAFUserVisibleDetailedDescription)userVisibleDetailedDescription;
- (CAFUserVisibleDetailedDescriptionCharacteristic)userVisibleDetailedDescriptionCharacteristic;
- (NSArray)images;
- (NSArray)indicesUserVisibleValue;
- (NSArray)listUserVisibleValue;
- (NSString)userVisibleDescription;
- (id)name;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setIndicesUserVisibleValue:(id)value;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFMultipleSelectImageSetting

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFMultipleSelectImageSetting;
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
  v6.super_class = CAFMultipleSelectImageSetting;
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
  v6.super_class = CAFMultipleSelectImageSetting;
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

- (CAFArrayCharacteristic)indicesUserVisibleValueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000009"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000009"];
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

- (NSArray)indicesUserVisibleValue
{
  indicesUserVisibleValueCharacteristic = [(CAFMultipleSelectImageSetting *)self indicesUserVisibleValueCharacteristic];
  arrayValue = [indicesUserVisibleValueCharacteristic arrayValue];

  return arrayValue;
}

- (void)setIndicesUserVisibleValue:(id)value
{
  valueCopy = value;
  indicesUserVisibleValueCharacteristic = [(CAFMultipleSelectImageSetting *)self indicesUserVisibleValueCharacteristic];
  [indicesUserVisibleValueCharacteristic setArrayValue:valueCopy];
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
  listUserVisibleValueCharacteristic = [(CAFMultipleSelectImageSetting *)self listUserVisibleValueCharacteristic];
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
  imagesCharacteristic = [(CAFMultipleSelectImageSetting *)self imagesCharacteristic];
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
  userVisibleDetailedDescriptionCharacteristic = [(CAFMultipleSelectImageSetting *)self userVisibleDetailedDescriptionCharacteristic];
  userVisibleDetailedDescriptionValue = [userVisibleDetailedDescriptionCharacteristic userVisibleDetailedDescriptionValue];

  return userVisibleDetailedDescriptionValue;
}

- (BOOL)hasUserVisibleDetailedDescription
{
  userVisibleDetailedDescriptionCharacteristic = [(CAFMultipleSelectImageSetting *)self userVisibleDetailedDescriptionCharacteristic];
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
  userVisibleDescriptionCharacteristic = [(CAFMultipleSelectImageSetting *)self userVisibleDescriptionCharacteristic];
  stringValue = [userVisibleDescriptionCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleDescription
{
  userVisibleDescriptionCharacteristic = [(CAFMultipleSelectImageSetting *)self userVisibleDescriptionCharacteristic];
  v3 = userVisibleDescriptionCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000036000009"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    indicesUserVisibleValueCharacteristic = [(CAFMultipleSelectImageSetting *)self indicesUserVisibleValueCharacteristic];
    uniqueIdentifier2 = [indicesUserVisibleValueCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      indicesUserVisibleValue = [(CAFMultipleSelectImageSetting *)self indicesUserVisibleValue];
      [observers multipleSelectImageSettingService:self didUpdateIndicesUserVisibleValue:indicesUserVisibleValue];
LABEL_20:

      goto LABEL_21;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000036000007"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    listUserVisibleValueCharacteristic = [(CAFMultipleSelectImageSetting *)self listUserVisibleValueCharacteristic];
    uniqueIdentifier4 = [listUserVisibleValueCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      indicesUserVisibleValue = [(CAFMultipleSelectImageSetting *)self listUserVisibleValue];
      [observers multipleSelectImageSettingService:self didUpdateListUserVisibleValue:indicesUserVisibleValue];
      goto LABEL_20;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000030000018"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    imagesCharacteristic = [(CAFMultipleSelectImageSetting *)self imagesCharacteristic];
    uniqueIdentifier6 = [imagesCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers = [(CAFService *)self observers];
      indicesUserVisibleValue = [(CAFMultipleSelectImageSetting *)self images];
      [observers multipleSelectImageSettingService:self didUpdateImages:indicesUserVisibleValue];
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
    userVisibleDetailedDescriptionCharacteristic = [(CAFMultipleSelectImageSetting *)self userVisibleDetailedDescriptionCharacteristic];
    uniqueIdentifier8 = [userVisibleDetailedDescriptionCharacteristic uniqueIdentifier];
    v28 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v28)
    {
      observers = [(CAFService *)self observers];
      indicesUserVisibleValue = [(CAFMultipleSelectImageSetting *)self userVisibleDetailedDescription];
      [observers multipleSelectImageSettingService:self didUpdateUserVisibleDetailedDescription:indicesUserVisibleValue];
      goto LABEL_20;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000030000005"])
  {
LABEL_21:

    goto LABEL_22;
  }

  uniqueIdentifier9 = [updateCopy uniqueIdentifier];
  userVisibleDescriptionCharacteristic = [(CAFMultipleSelectImageSetting *)self userVisibleDescriptionCharacteristic];
  uniqueIdentifier10 = [userVisibleDescriptionCharacteristic uniqueIdentifier];
  v32 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

  if (v32)
  {
    observers = [(CAFService *)self observers];
    indicesUserVisibleValue = [(CAFMultipleSelectImageSetting *)self userVisibleDescription];
    [observers multipleSelectImageSettingService:self didUpdateUserVisibleDescription:indicesUserVisibleValue];
    goto LABEL_20;
  }

LABEL_22:
  v33.receiver = self;
  v33.super_class = CAFMultipleSelectImageSetting;
  [(CAFAutomakerSetting *)&v33 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForIndicesUserVisibleValue
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000009"];

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