@interface CAFPicker
+ (void)load;
- (BOOL)registeredForDisplayPanelIdentifier;
- (BOOL)registeredForDisplayZoneIdentifier;
- (BOOL)registeredForEntryList;
- (BOOL)registeredForIdentifier;
- (BOOL)registeredForSelectedEntryIndex;
- (BOOL)registeredForUserSelectionEnabled;
- (BOOL)userSelectionEnabled;
- (CAFBoolCharacteristic)userSelectionEnabledCharacteristic;
- (CAFEntryList)entryList;
- (CAFEntryListCharacteristic)entryListCharacteristic;
- (CAFStringCharacteristic)displayPanelIdentifierCharacteristic;
- (CAFStringCharacteristic)displayZoneIdentifierCharacteristic;
- (CAFStringCharacteristic)identifierCharacteristic;
- (CAFUInt8Characteristic)selectedEntryIndexCharacteristic;
- (CAFUInt8Range)selectedEntryIndexRange;
- (NSString)displayPanelIdentifier;
- (NSString)displayZoneIdentifier;
- (NSString)identifier;
- (unsigned)selectedEntryIndex;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setSelectedEntryIndex:(unsigned __int8)index;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFPicker

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFPicker;
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
  v6.super_class = CAFPicker;
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
  v6.super_class = CAFPicker;
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
  identifierCharacteristic = [(CAFPicker *)self identifierCharacteristic];
  stringValue = [identifierCharacteristic stringValue];

  return stringValue;
}

- (CAFEntryListCharacteristic)entryListCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000005D"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000005D"];
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

- (CAFEntryList)entryList
{
  entryListCharacteristic = [(CAFPicker *)self entryListCharacteristic];
  entryListValue = [entryListCharacteristic entryListValue];

  return entryListValue;
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
  selectedEntryIndexCharacteristic = [(CAFPicker *)self selectedEntryIndexCharacteristic];
  uint8Value = [selectedEntryIndexCharacteristic uint8Value];

  return uint8Value;
}

- (void)setSelectedEntryIndex:(unsigned __int8)index
{
  indexCopy = index;
  selectedEntryIndexCharacteristic = [(CAFPicker *)self selectedEntryIndexCharacteristic];
  [selectedEntryIndexCharacteristic setUint8Value:indexCopy];
}

- (CAFUInt8Range)selectedEntryIndexRange
{
  selectedEntryIndexCharacteristic = [(CAFPicker *)self selectedEntryIndexCharacteristic];
  range = [selectedEntryIndexCharacteristic range];

  return range;
}

- (CAFBoolCharacteristic)userSelectionEnabledCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003700000A"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003700000A"];
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

- (BOOL)userSelectionEnabled
{
  userSelectionEnabledCharacteristic = [(CAFPicker *)self userSelectionEnabledCharacteristic];
  bOOLValue = [userSelectionEnabledCharacteristic BOOLValue];

  return bOOLValue;
}

- (CAFStringCharacteristic)displayPanelIdentifierCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000037000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000037000007"];
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

- (NSString)displayPanelIdentifier
{
  displayPanelIdentifierCharacteristic = [(CAFPicker *)self displayPanelIdentifierCharacteristic];
  stringValue = [displayPanelIdentifierCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)displayZoneIdentifierCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003700000B"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003700000B"];
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

- (NSString)displayZoneIdentifier
{
  displayZoneIdentifierCharacteristic = [(CAFPicker *)self displayZoneIdentifierCharacteristic];
  stringValue = [displayZoneIdentifierCharacteristic stringValue];

  return stringValue;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000030000019"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    identifierCharacteristic = [(CAFPicker *)self identifierCharacteristic];
    uniqueIdentifier2 = [identifierCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      identifier = [(CAFPicker *)self identifier];
      [observers pickerService:self didUpdateIdentifier:identifier];
LABEL_24:

      goto LABEL_25;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x000000003000005D"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    entryListCharacteristic = [(CAFPicker *)self entryListCharacteristic];
    uniqueIdentifier4 = [entryListCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      identifier = [(CAFPicker *)self entryList];
      [observers pickerService:self didUpdateEntryList:identifier];
      goto LABEL_24;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000030000061"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    selectedEntryIndexCharacteristic = [(CAFPicker *)self selectedEntryIndexCharacteristic];
    uniqueIdentifier6 = [selectedEntryIndexCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers = [(CAFService *)self observers];
      [observers pickerService:self didUpdateSelectedEntryIndex:{-[CAFPicker selectedEntryIndex](self, "selectedEntryIndex")}];
      goto LABEL_25;
    }
  }

  else
  {
  }

  characteristicType4 = [updateCopy characteristicType];
  if ([characteristicType4 isEqual:@"0x000000003700000A"])
  {
    uniqueIdentifier7 = [updateCopy uniqueIdentifier];
    userSelectionEnabledCharacteristic = [(CAFPicker *)self userSelectionEnabledCharacteristic];
    uniqueIdentifier8 = [userSelectionEnabledCharacteristic uniqueIdentifier];
    v28 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v28)
    {
      observers = [(CAFService *)self observers];
      [observers pickerService:self didUpdateUserSelectionEnabled:{-[CAFPicker userSelectionEnabled](self, "userSelectionEnabled")}];
      goto LABEL_25;
    }
  }

  else
  {
  }

  characteristicType5 = [updateCopy characteristicType];
  if ([characteristicType5 isEqual:@"0x0000000037000007"])
  {
    uniqueIdentifier9 = [updateCopy uniqueIdentifier];
    displayPanelIdentifierCharacteristic = [(CAFPicker *)self displayPanelIdentifierCharacteristic];
    uniqueIdentifier10 = [displayPanelIdentifierCharacteristic uniqueIdentifier];
    v33 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

    if (v33)
    {
      observers = [(CAFService *)self observers];
      identifier = [(CAFPicker *)self displayPanelIdentifier];
      [observers pickerService:self didUpdateDisplayPanelIdentifier:identifier];
      goto LABEL_24;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x000000003700000B"])
  {
LABEL_25:

    goto LABEL_26;
  }

  uniqueIdentifier11 = [updateCopy uniqueIdentifier];
  displayZoneIdentifierCharacteristic = [(CAFPicker *)self displayZoneIdentifierCharacteristic];
  uniqueIdentifier12 = [displayZoneIdentifierCharacteristic uniqueIdentifier];
  v37 = [uniqueIdentifier11 isEqual:uniqueIdentifier12];

  if (v37)
  {
    observers = [(CAFService *)self observers];
    identifier = [(CAFPicker *)self displayZoneIdentifier];
    [observers pickerService:self didUpdateDisplayZoneIdentifier:identifier];
    goto LABEL_24;
  }

LABEL_26:
  v38.receiver = self;
  v38.super_class = CAFPicker;
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

- (BOOL)registeredForEntryList
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000005D"];

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

- (BOOL)registeredForUserSelectionEnabled
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003700000A"];

  return v10;
}

- (BOOL)registeredForDisplayPanelIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000037000007"];

  return v10;
}

- (BOOL)registeredForDisplayZoneIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003700000B"];

  return v10;
}

@end