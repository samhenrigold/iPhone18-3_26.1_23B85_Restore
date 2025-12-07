@interface CAFSettingsSection
+ (void)load;
- (BOOL)hasUserVisibleFooter;
- (BOOL)hasUserVisibleSectionName;
- (BOOL)registeredForIdentifier;
- (BOOL)registeredForSortOrder;
- (BOOL)registeredForUserVisibleFooter;
- (BOOL)registeredForUserVisibleSectionName;
- (CAFStringCharacteristic)identifierCharacteristic;
- (CAFStringCharacteristic)userVisibleFooterCharacteristic;
- (CAFStringCharacteristic)userVisibleSectionNameCharacteristic;
- (CAFUInt8Characteristic)sortOrderCharacteristic;
- (NSString)identifier;
- (NSString)userVisibleFooter;
- (NSString)userVisibleSectionName;
- (id)name;
- (unsigned)sortOrder;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFSettingsSection

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSettingsSection;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFSettingsSection;
  [(CAFService *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFSettingsSection;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  identifierCharacteristic = [(CAFSettingsSection *)self identifierCharacteristic];
  formattedValue = [identifierCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  userVisibleSectionNameCharacteristic = [(CAFSettingsSection *)self userVisibleSectionNameCharacteristic];
  formattedValue2 = [userVisibleSectionNameCharacteristic formattedValue];

  if ([formattedValue2 length])
  {
    v9 = [typeName stringByAppendingFormat:@"-%@", formattedValue2];

    typeName = v9;
  }

  return typeName;
}

- (CAFStringCharacteristic)identifierCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000019"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000019"];
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

- (NSString)identifier
{
  identifierCharacteristic = [(CAFSettingsSection *)self identifierCharacteristic];
  stringValue = [identifierCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)userVisibleSectionNameCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000004"];
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

- (NSString)userVisibleSectionName
{
  userVisibleSectionNameCharacteristic = [(CAFSettingsSection *)self userVisibleSectionNameCharacteristic];
  stringValue = [userVisibleSectionNameCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleSectionName
{
  userVisibleSectionNameCharacteristic = [(CAFSettingsSection *)self userVisibleSectionNameCharacteristic];
  v3 = userVisibleSectionNameCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)userVisibleFooterCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000016"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000016"];
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

- (NSString)userVisibleFooter
{
  userVisibleFooterCharacteristic = [(CAFSettingsSection *)self userVisibleFooterCharacteristic];
  stringValue = [userVisibleFooterCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleFooter
{
  userVisibleFooterCharacteristic = [(CAFSettingsSection *)self userVisibleFooterCharacteristic];
  v3 = userVisibleFooterCharacteristic != 0;

  return v3;
}

- (CAFUInt8Characteristic)sortOrderCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000003"];
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

- (unsigned)sortOrder
{
  sortOrderCharacteristic = [(CAFSettingsSection *)self sortOrderCharacteristic];
  uint8Value = [sortOrderCharacteristic uint8Value];

  return uint8Value;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000030000019"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    identifierCharacteristic = [(CAFSettingsSection *)self identifierCharacteristic];
    uniqueIdentifier2 = [identifierCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      identifier = [(CAFSettingsSection *)self identifier];
      [observers settingsSectionService:self didUpdateIdentifier:identifier];
LABEL_8:

      observers2 = [(CAFService *)self observers];
      name = [(CAFSettingsSection *)self name];
      [observers2 settingsSectionService:self didUpdateName:name];
LABEL_13:

LABEL_18:
      goto LABEL_19;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000036000004"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    userVisibleSectionNameCharacteristic = [(CAFSettingsSection *)self userVisibleSectionNameCharacteristic];
    uniqueIdentifier4 = [userVisibleSectionNameCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      identifier = [(CAFSettingsSection *)self userVisibleSectionName];
      [observers settingsSectionService:self didUpdateUserVisibleSectionName:identifier];
      goto LABEL_8;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000030000016"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    userVisibleFooterCharacteristic = [(CAFSettingsSection *)self userVisibleFooterCharacteristic];
    uniqueIdentifier6 = [userVisibleFooterCharacteristic uniqueIdentifier];
    v25 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v25)
    {
      observers2 = [(CAFService *)self observers];
      name = [(CAFSettingsSection *)self userVisibleFooter];
      [observers2 settingsSectionService:self didUpdateUserVisibleFooter:name];
      goto LABEL_13;
    }
  }

  else
  {
  }

  observers2 = [updateCopy characteristicType];
  if (![observers2 isEqual:@"0x0000000030000003"])
  {
    goto LABEL_18;
  }

  uniqueIdentifier7 = [updateCopy uniqueIdentifier];
  sortOrderCharacteristic = [(CAFSettingsSection *)self sortOrderCharacteristic];
  uniqueIdentifier8 = [sortOrderCharacteristic uniqueIdentifier];
  v29 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

  if (v29)
  {
    observers2 = [(CAFService *)self observers];
    [observers2 settingsSectionService:self didUpdateSortOrder:{-[CAFSettingsSection sortOrder](self, "sortOrder")}];
    goto LABEL_18;
  }

LABEL_19:
  v30.receiver = self;
  v30.super_class = CAFSettingsSection;
  [(CAFService *)&v30 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000019"];

  return v10;
}

- (BOOL)registeredForUserVisibleSectionName
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000004"];

  return v10;
}

- (BOOL)registeredForUserVisibleFooter
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000016"];

  return v10;
}

- (BOOL)registeredForSortOrder
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000003"];

  return v10;
}

@end