@interface CAFMinimalRemoteNotification
+ (void)load;
- (BOOL)registeredForDisplayPanelIdentifier;
- (BOOL)registeredForDisplayZoneIdentifier;
- (BOOL)registeredForIdentifier;
- (BOOL)registeredForSymbolNameAndColor;
- (BOOL)registeredForTrailingButton;
- (BOOL)registeredForTrailingButtonState;
- (BOOL)registeredForUserVisibleDescription;
- (BOOL)registeredForUserVisibleLabel;
- (CAFButtonActionCharacteristic)trailingButtonStateCharacteristic;
- (CAFStringCharacteristic)displayPanelIdentifierCharacteristic;
- (CAFStringCharacteristic)displayZoneIdentifierCharacteristic;
- (CAFStringCharacteristic)identifierCharacteristic;
- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (CAFSymbolImageWithColor)symbolNameAndColor;
- (CAFSymbolImageWithColorCharacteristic)symbolNameAndColorCharacteristic;
- (CAFTrailingButton)trailingButton;
- (CAFTrailingButtonCharacteristic)trailingButtonCharacteristic;
- (NSString)displayPanelIdentifier;
- (NSString)displayZoneIdentifier;
- (NSString)identifier;
- (NSString)userVisibleDescription;
- (NSString)userVisibleLabel;
- (id)name;
- (unsigned)trailingButtonState;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setTrailingButtonState:(unsigned __int8)state;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFMinimalRemoteNotification

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFMinimalRemoteNotification;
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
  v6.super_class = CAFMinimalRemoteNotification;
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
  v6.super_class = CAFMinimalRemoteNotification;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  identifierCharacteristic = [(CAFMinimalRemoteNotification *)self identifierCharacteristic];
  formattedValue = [identifierCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  displayPanelIdentifierCharacteristic = [(CAFMinimalRemoteNotification *)self displayPanelIdentifierCharacteristic];
  formattedValue2 = [displayPanelIdentifierCharacteristic formattedValue];

  if ([formattedValue2 length])
  {
    v9 = [typeName stringByAppendingFormat:@"-%@", formattedValue2];

    typeName = v9;
  }

  displayZoneIdentifierCharacteristic = [(CAFMinimalRemoteNotification *)self displayZoneIdentifierCharacteristic];
  formattedValue3 = [displayZoneIdentifierCharacteristic formattedValue];

  if ([formattedValue3 length])
  {
    v12 = [typeName stringByAppendingFormat:@"-%@", formattedValue3];

    typeName = v12;
  }

  return typeName;
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
  userVisibleLabelCharacteristic = [(CAFMinimalRemoteNotification *)self userVisibleLabelCharacteristic];
  stringValue = [userVisibleLabelCharacteristic stringValue];

  return stringValue;
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
  userVisibleDescriptionCharacteristic = [(CAFMinimalRemoteNotification *)self userVisibleDescriptionCharacteristic];
  stringValue = [userVisibleDescriptionCharacteristic stringValue];

  return stringValue;
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
  identifierCharacteristic = [(CAFMinimalRemoteNotification *)self identifierCharacteristic];
  stringValue = [identifierCharacteristic stringValue];

  return stringValue;
}

- (CAFSymbolImageWithColorCharacteristic)symbolNameAndColorCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000037000008"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000037000008"];
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

- (CAFSymbolImageWithColor)symbolNameAndColor
{
  symbolNameAndColorCharacteristic = [(CAFMinimalRemoteNotification *)self symbolNameAndColorCharacteristic];
  symbolImageWithColorValue = [symbolNameAndColorCharacteristic symbolImageWithColorValue];

  return symbolImageWithColorValue;
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
  displayPanelIdentifierCharacteristic = [(CAFMinimalRemoteNotification *)self displayPanelIdentifierCharacteristic];
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
  displayZoneIdentifierCharacteristic = [(CAFMinimalRemoteNotification *)self displayZoneIdentifierCharacteristic];
  stringValue = [displayZoneIdentifierCharacteristic stringValue];

  return stringValue;
}

- (CAFTrailingButtonCharacteristic)trailingButtonCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003700000C"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003700000C"];
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

- (CAFTrailingButton)trailingButton
{
  trailingButtonCharacteristic = [(CAFMinimalRemoteNotification *)self trailingButtonCharacteristic];
  trailingButtonValue = [trailingButtonCharacteristic trailingButtonValue];

  return trailingButtonValue;
}

- (CAFButtonActionCharacteristic)trailingButtonStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003700000D"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003700000D"];
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

- (unsigned)trailingButtonState
{
  trailingButtonStateCharacteristic = [(CAFMinimalRemoteNotification *)self trailingButtonStateCharacteristic];
  buttonActionValue = [trailingButtonStateCharacteristic buttonActionValue];

  return buttonActionValue;
}

- (void)setTrailingButtonState:(unsigned __int8)state
{
  stateCopy = state;
  trailingButtonStateCharacteristic = [(CAFMinimalRemoteNotification *)self trailingButtonStateCharacteristic];
  [trailingButtonStateCharacteristic setButtonActionValue:stateCopy];
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000030000001"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    userVisibleLabelCharacteristic = [(CAFMinimalRemoteNotification *)self userVisibleLabelCharacteristic];
    uniqueIdentifier2 = [userVisibleLabelCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      userVisibleLabel = [(CAFMinimalRemoteNotification *)self userVisibleLabel];
      [observers minimalRemoteNotificationService:self didUpdateUserVisibleLabel:userVisibleLabel];
LABEL_25:

      goto LABEL_26;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000030000005"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    userVisibleDescriptionCharacteristic = [(CAFMinimalRemoteNotification *)self userVisibleDescriptionCharacteristic];
    uniqueIdentifier4 = [userVisibleDescriptionCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      userVisibleLabel = [(CAFMinimalRemoteNotification *)self userVisibleDescription];
      [observers minimalRemoteNotificationService:self didUpdateUserVisibleDescription:userVisibleLabel];
      goto LABEL_25;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000030000019"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    identifierCharacteristic = [(CAFMinimalRemoteNotification *)self identifierCharacteristic];
    uniqueIdentifier6 = [identifierCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers2 = [(CAFService *)self observers];
      identifier = [(CAFMinimalRemoteNotification *)self identifier];
      [observers2 minimalRemoteNotificationService:self didUpdateIdentifier:identifier];
LABEL_24:

      observers = [(CAFService *)self observers];
      userVisibleLabel = [(CAFMinimalRemoteNotification *)self name];
      [observers minimalRemoteNotificationService:self didUpdateName:userVisibleLabel];
      goto LABEL_25;
    }
  }

  else
  {
  }

  characteristicType4 = [updateCopy characteristicType];
  if ([characteristicType4 isEqual:@"0x0000000037000008"])
  {
    uniqueIdentifier7 = [updateCopy uniqueIdentifier];
    symbolNameAndColorCharacteristic = [(CAFMinimalRemoteNotification *)self symbolNameAndColorCharacteristic];
    uniqueIdentifier8 = [symbolNameAndColorCharacteristic uniqueIdentifier];
    v30 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v30)
    {
      observers = [(CAFService *)self observers];
      userVisibleLabel = [(CAFMinimalRemoteNotification *)self symbolNameAndColor];
      [observers minimalRemoteNotificationService:self didUpdateSymbolNameAndColor:userVisibleLabel];
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
    displayPanelIdentifierCharacteristic = [(CAFMinimalRemoteNotification *)self displayPanelIdentifierCharacteristic];
    uniqueIdentifier10 = [displayPanelIdentifierCharacteristic uniqueIdentifier];
    v35 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

    if (v35)
    {
      observers2 = [(CAFService *)self observers];
      identifier = [(CAFMinimalRemoteNotification *)self displayPanelIdentifier];
      [observers2 minimalRemoteNotificationService:self didUpdateDisplayPanelIdentifier:identifier];
      goto LABEL_24;
    }
  }

  else
  {
  }

  characteristicType6 = [updateCopy characteristicType];
  if ([characteristicType6 isEqual:@"0x000000003700000B"])
  {
    uniqueIdentifier11 = [updateCopy uniqueIdentifier];
    displayZoneIdentifierCharacteristic = [(CAFMinimalRemoteNotification *)self displayZoneIdentifierCharacteristic];
    uniqueIdentifier12 = [displayZoneIdentifierCharacteristic uniqueIdentifier];
    v40 = [uniqueIdentifier11 isEqual:uniqueIdentifier12];

    if (v40)
    {
      observers2 = [(CAFService *)self observers];
      identifier = [(CAFMinimalRemoteNotification *)self displayZoneIdentifier];
      [observers2 minimalRemoteNotificationService:self didUpdateDisplayZoneIdentifier:identifier];
      goto LABEL_24;
    }
  }

  else
  {
  }

  characteristicType7 = [updateCopy characteristicType];
  if ([characteristicType7 isEqual:@"0x000000003700000C"])
  {
    uniqueIdentifier13 = [updateCopy uniqueIdentifier];
    trailingButtonCharacteristic = [(CAFMinimalRemoteNotification *)self trailingButtonCharacteristic];
    uniqueIdentifier14 = [trailingButtonCharacteristic uniqueIdentifier];
    v45 = [uniqueIdentifier13 isEqual:uniqueIdentifier14];

    if (v45)
    {
      observers = [(CAFService *)self observers];
      userVisibleLabel = [(CAFMinimalRemoteNotification *)self trailingButton];
      [observers minimalRemoteNotificationService:self didUpdateTrailingButton:userVisibleLabel];
      goto LABEL_25;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if ([observers isEqual:@"0x000000003700000D"])
  {
    uniqueIdentifier15 = [updateCopy uniqueIdentifier];
    trailingButtonStateCharacteristic = [(CAFMinimalRemoteNotification *)self trailingButtonStateCharacteristic];
    uniqueIdentifier16 = [trailingButtonStateCharacteristic uniqueIdentifier];
    v49 = [uniqueIdentifier15 isEqual:uniqueIdentifier16];

    if (!v49)
    {
      goto LABEL_27;
    }

    observers = [(CAFService *)self observers];
    [observers minimalRemoteNotificationService:self didUpdateTrailingButtonState:{-[CAFMinimalRemoteNotification trailingButtonState](self, "trailingButtonState")}];
  }

LABEL_26:

LABEL_27:
  v50.receiver = self;
  v50.super_class = CAFMinimalRemoteNotification;
  [(CAFService *)&v50 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
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

- (BOOL)registeredForSymbolNameAndColor
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000037000008"];

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

- (BOOL)registeredForTrailingButton
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003700000C"];

  return v10;
}

- (BOOL)registeredForTrailingButtonState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003700000D"];

  return v10;
}

@end