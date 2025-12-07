@interface CAFAutomakerStatusItem
+ (void)load;
- (BOOL)disabled;
- (BOOL)hasDisabled;
- (BOOL)hasHidden;
- (BOOL)hasUserVisibleLabel;
- (BOOL)hidden;
- (BOOL)registeredForDisabled;
- (BOOL)registeredForHidden;
- (BOOL)registeredForIdentifier;
- (BOOL)registeredForSortOrder;
- (BOOL)registeredForSymbolName;
- (BOOL)registeredForUserVisibleLabel;
- (CAFBoolCharacteristic)disabledCharacteristic;
- (CAFBoolCharacteristic)hiddenCharacteristic;
- (CAFStringCharacteristic)identifierCharacteristic;
- (CAFStringCharacteristic)symbolNameCharacteristic;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (CAFUInt8Characteristic)sortOrderCharacteristic;
- (NSString)identifier;
- (NSString)symbolName;
- (NSString)userVisibleLabel;
- (unsigned)sortOrder;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFAutomakerStatusItem

+ (void)load
{
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___CAFAutomakerStatusItem;
    objc_msgSendSuper2(&v4, sel_load);
  }
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
  v6.super_class = CAFAutomakerStatusItem;
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
  v6.super_class = CAFAutomakerStatusItem;
  [(CAFService *)&v6 unregisterObserver:v5];
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
  identifierCharacteristic = [(CAFAutomakerStatusItem *)self identifierCharacteristic];
  stringValue = [identifierCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)userVisibleLabelCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000001"];
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

- (NSString)userVisibleLabel
{
  userVisibleLabelCharacteristic = [(CAFAutomakerStatusItem *)self userVisibleLabelCharacteristic];
  stringValue = [userVisibleLabelCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleLabel
{
  userVisibleLabelCharacteristic = [(CAFAutomakerStatusItem *)self userVisibleLabelCharacteristic];
  v3 = userVisibleLabelCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)symbolNameCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000005E"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000005E"];
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

- (NSString)symbolName
{
  symbolNameCharacteristic = [(CAFAutomakerStatusItem *)self symbolNameCharacteristic];
  stringValue = [symbolNameCharacteristic stringValue];

  return stringValue;
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
  sortOrderCharacteristic = [(CAFAutomakerStatusItem *)self sortOrderCharacteristic];
  uint8Value = [sortOrderCharacteristic uint8Value];

  return uint8Value;
}

- (CAFBoolCharacteristic)disabledCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000011"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000011"];
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

- (BOOL)disabled
{
  disabledCharacteristic = [(CAFAutomakerStatusItem *)self disabledCharacteristic];
  bOOLValue = [disabledCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasDisabled
{
  disabledCharacteristic = [(CAFAutomakerStatusItem *)self disabledCharacteristic];
  v3 = disabledCharacteristic != 0;

  return v3;
}

- (CAFBoolCharacteristic)hiddenCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000023"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000023"];
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

- (BOOL)hidden
{
  hiddenCharacteristic = [(CAFAutomakerStatusItem *)self hiddenCharacteristic];
  bOOLValue = [hiddenCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasHidden
{
  hiddenCharacteristic = [(CAFAutomakerStatusItem *)self hiddenCharacteristic];
  v3 = hiddenCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000030000019"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    identifierCharacteristic = [(CAFAutomakerStatusItem *)self identifierCharacteristic];
    uniqueIdentifier2 = [identifierCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      identifier = [(CAFAutomakerStatusItem *)self identifier];
      [observers automakerStatusItemService:self didUpdateIdentifier:identifier];
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000030000001"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    userVisibleLabelCharacteristic = [(CAFAutomakerStatusItem *)self userVisibleLabelCharacteristic];
    uniqueIdentifier4 = [userVisibleLabelCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      identifier = [(CAFAutomakerStatusItem *)self userVisibleLabel];
      [observers automakerStatusItemService:self didUpdateUserVisibleLabel:identifier];
      goto LABEL_12;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x000000003000005E"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    symbolNameCharacteristic = [(CAFAutomakerStatusItem *)self symbolNameCharacteristic];
    uniqueIdentifier6 = [symbolNameCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers = [(CAFService *)self observers];
      identifier = [(CAFAutomakerStatusItem *)self symbolName];
      [observers automakerStatusItemService:self didUpdateSymbolName:identifier];
      goto LABEL_12;
    }
  }

  else
  {
  }

  characteristicType4 = [updateCopy characteristicType];
  if ([characteristicType4 isEqual:@"0x0000000030000003"])
  {
    uniqueIdentifier7 = [updateCopy uniqueIdentifier];
    sortOrderCharacteristic = [(CAFAutomakerStatusItem *)self sortOrderCharacteristic];
    uniqueIdentifier8 = [sortOrderCharacteristic uniqueIdentifier];
    v28 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v28)
    {
      observers = [(CAFService *)self observers];
      [observers automakerStatusItemService:self didUpdateSortOrder:{-[CAFAutomakerStatusItem sortOrder](self, "sortOrder")}];
      goto LABEL_13;
    }
  }

  else
  {
  }

  characteristicType5 = [updateCopy characteristicType];
  if ([characteristicType5 isEqual:@"0x0000000032000011"])
  {
    uniqueIdentifier9 = [updateCopy uniqueIdentifier];
    disabledCharacteristic = [(CAFAutomakerStatusItem *)self disabledCharacteristic];
    uniqueIdentifier10 = [disabledCharacteristic uniqueIdentifier];
    v33 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

    if (v33)
    {
      observers = [(CAFService *)self observers];
      [observers automakerStatusItemService:self didUpdateDisabled:{-[CAFAutomakerStatusItem disabled](self, "disabled")}];
      goto LABEL_13;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if ([observers isEqual:@"0x0000000036000023"])
  {
    uniqueIdentifier11 = [updateCopy uniqueIdentifier];
    hiddenCharacteristic = [(CAFAutomakerStatusItem *)self hiddenCharacteristic];
    uniqueIdentifier12 = [hiddenCharacteristic uniqueIdentifier];
    v37 = [uniqueIdentifier11 isEqual:uniqueIdentifier12];

    if (!v37)
    {
      goto LABEL_14;
    }

    observers = [(CAFService *)self observers];
    [observers automakerStatusItemService:self didUpdateHidden:{-[CAFAutomakerStatusItem hidden](self, "hidden")}];
  }

LABEL_13:

LABEL_14:
  v38.receiver = self;
  v38.super_class = CAFAutomakerStatusItem;
  [(CAFService *)&v38 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
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

- (BOOL)registeredForUserVisibleLabel
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000001"];

  return v10;
}

- (BOOL)registeredForSymbolName
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000005E"];

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

- (BOOL)registeredForDisabled
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000011"];

  return v10;
}

- (BOOL)registeredForHidden
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000023"];

  return v10;
}

@end