@interface CAFRemoteNotification
+ (void)load;
- (BOOL)hasSymbolNameAndColor;
- (BOOL)registeredForDisplayPanelIdentifier;
- (BOOL)registeredForDisplayZoneIdentifier;
- (BOOL)registeredForIdentifier;
- (BOOL)registeredForNotificationUserActions;
- (BOOL)registeredForSymbolNameAndColor;
- (BOOL)registeredForUserAction;
- (BOOL)registeredForUserVisibleDescription;
- (BOOL)registeredForUserVisibleLabel;
- (CAFNotificationUserActions)notificationUserActions;
- (CAFNotificationUserActionsCharacteristic)notificationUserActionsCharacteristic;
- (CAFStringCharacteristic)displayPanelIdentifierCharacteristic;
- (CAFStringCharacteristic)displayZoneIdentifierCharacteristic;
- (CAFStringCharacteristic)identifierCharacteristic;
- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (CAFSymbolImageWithColor)symbolNameAndColor;
- (CAFSymbolImageWithColorCharacteristic)symbolNameAndColorCharacteristic;
- (CAFUInt8Characteristic)userActionCharacteristic;
- (CAFUInt8Range)userActionRange;
- (NSString)displayPanelIdentifier;
- (NSString)displayZoneIdentifier;
- (NSString)identifier;
- (NSString)userVisibleDescription;
- (NSString)userVisibleLabel;
- (id)name;
- (unsigned)userAction;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setUserAction:(unsigned __int8)action;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFRemoteNotification

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFRemoteNotification;
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
  v6.super_class = CAFRemoteNotification;
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
  v6.super_class = CAFRemoteNotification;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  identifierCharacteristic = [(CAFRemoteNotification *)self identifierCharacteristic];
  formattedValue = [identifierCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  displayZoneIdentifierCharacteristic = [(CAFRemoteNotification *)self displayZoneIdentifierCharacteristic];
  formattedValue2 = [displayZoneIdentifierCharacteristic formattedValue];

  if ([formattedValue2 length])
  {
    v9 = [typeName stringByAppendingFormat:@"-%@", formattedValue2];

    typeName = v9;
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
  userVisibleLabelCharacteristic = [(CAFRemoteNotification *)self userVisibleLabelCharacteristic];
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
  userVisibleDescriptionCharacteristic = [(CAFRemoteNotification *)self userVisibleDescriptionCharacteristic];
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
  identifierCharacteristic = [(CAFRemoteNotification *)self identifierCharacteristic];
  stringValue = [identifierCharacteristic stringValue];

  return stringValue;
}

- (CAFNotificationUserActionsCharacteristic)notificationUserActionsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000037000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000037000002"];
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

- (CAFNotificationUserActions)notificationUserActions
{
  notificationUserActionsCharacteristic = [(CAFRemoteNotification *)self notificationUserActionsCharacteristic];
  notificationUserActionsValue = [notificationUserActionsCharacteristic notificationUserActionsValue];

  return notificationUserActionsValue;
}

- (CAFUInt8Characteristic)userActionCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000037000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000037000003"];
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

- (unsigned)userAction
{
  userActionCharacteristic = [(CAFRemoteNotification *)self userActionCharacteristic];
  uint8Value = [userActionCharacteristic uint8Value];

  return uint8Value;
}

- (void)setUserAction:(unsigned __int8)action
{
  actionCopy = action;
  userActionCharacteristic = [(CAFRemoteNotification *)self userActionCharacteristic];
  [userActionCharacteristic setUint8Value:actionCopy];
}

- (CAFUInt8Range)userActionRange
{
  userActionCharacteristic = [(CAFRemoteNotification *)self userActionCharacteristic];
  range = [userActionCharacteristic range];

  return range;
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
  symbolNameAndColorCharacteristic = [(CAFRemoteNotification *)self symbolNameAndColorCharacteristic];
  symbolImageWithColorValue = [symbolNameAndColorCharacteristic symbolImageWithColorValue];

  return symbolImageWithColorValue;
}

- (BOOL)hasSymbolNameAndColor
{
  symbolNameAndColorCharacteristic = [(CAFRemoteNotification *)self symbolNameAndColorCharacteristic];
  v3 = symbolNameAndColorCharacteristic != 0;

  return v3;
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
  displayPanelIdentifierCharacteristic = [(CAFRemoteNotification *)self displayPanelIdentifierCharacteristic];
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
  displayZoneIdentifierCharacteristic = [(CAFRemoteNotification *)self displayZoneIdentifierCharacteristic];
  stringValue = [displayZoneIdentifierCharacteristic stringValue];

  return stringValue;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000030000001"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    userVisibleLabelCharacteristic = [(CAFRemoteNotification *)self userVisibleLabelCharacteristic];
    uniqueIdentifier2 = [userVisibleLabelCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      userVisibleLabel = [(CAFRemoteNotification *)self userVisibleLabel];
      [observers remoteNotificationService:self didUpdateUserVisibleLabel:userVisibleLabel];
LABEL_29:

      goto LABEL_30;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000030000005"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    userVisibleDescriptionCharacteristic = [(CAFRemoteNotification *)self userVisibleDescriptionCharacteristic];
    uniqueIdentifier4 = [userVisibleDescriptionCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      userVisibleLabel = [(CAFRemoteNotification *)self userVisibleDescription];
      [observers remoteNotificationService:self didUpdateUserVisibleDescription:userVisibleLabel];
      goto LABEL_29;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000030000019"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    identifierCharacteristic = [(CAFRemoteNotification *)self identifierCharacteristic];
    uniqueIdentifier6 = [identifierCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers2 = [(CAFService *)self observers];
      identifier = [(CAFRemoteNotification *)self identifier];
      [observers2 remoteNotificationService:self didUpdateIdentifier:identifier];
LABEL_12:

      observers = [(CAFService *)self observers];
      userVisibleLabel = [(CAFRemoteNotification *)self name];
      [observers remoteNotificationService:self didUpdateName:userVisibleLabel];
      goto LABEL_29;
    }
  }

  else
  {
  }

  characteristicType4 = [updateCopy characteristicType];
  if ([characteristicType4 isEqual:@"0x0000000037000002"])
  {
    uniqueIdentifier7 = [updateCopy uniqueIdentifier];
    notificationUserActionsCharacteristic = [(CAFRemoteNotification *)self notificationUserActionsCharacteristic];
    uniqueIdentifier8 = [notificationUserActionsCharacteristic uniqueIdentifier];
    v30 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v30)
    {
      observers = [(CAFService *)self observers];
      userVisibleLabel = [(CAFRemoteNotification *)self notificationUserActions];
      [observers remoteNotificationService:self didUpdateNotificationUserActions:userVisibleLabel];
      goto LABEL_29;
    }
  }

  else
  {
  }

  characteristicType5 = [updateCopy characteristicType];
  if (([characteristicType5 isEqual:@"0x0000000037000003"] & 1) == 0)
  {

    goto LABEL_22;
  }

  uniqueIdentifier9 = [updateCopy uniqueIdentifier];
  userActionCharacteristic = [(CAFRemoteNotification *)self userActionCharacteristic];
  uniqueIdentifier10 = [userActionCharacteristic uniqueIdentifier];
  v35 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

  if (!v35)
  {
LABEL_22:
    characteristicType6 = [updateCopy characteristicType];
    if ([characteristicType6 isEqual:@"0x0000000037000008"])
    {
      uniqueIdentifier11 = [updateCopy uniqueIdentifier];
      symbolNameAndColorCharacteristic = [(CAFRemoteNotification *)self symbolNameAndColorCharacteristic];
      uniqueIdentifier12 = [symbolNameAndColorCharacteristic uniqueIdentifier];
      v40 = [uniqueIdentifier11 isEqual:uniqueIdentifier12];

      if (v40)
      {
        observers = [(CAFService *)self observers];
        userVisibleLabel = [(CAFRemoteNotification *)self symbolNameAndColor];
        [observers remoteNotificationService:self didUpdateSymbolNameAndColor:userVisibleLabel];
        goto LABEL_29;
      }
    }

    else
    {
    }

    characteristicType7 = [updateCopy characteristicType];
    if ([characteristicType7 isEqual:@"0x0000000037000007"])
    {
      uniqueIdentifier13 = [updateCopy uniqueIdentifier];
      displayPanelIdentifierCharacteristic = [(CAFRemoteNotification *)self displayPanelIdentifierCharacteristic];
      uniqueIdentifier14 = [displayPanelIdentifierCharacteristic uniqueIdentifier];
      v45 = [uniqueIdentifier13 isEqual:uniqueIdentifier14];

      if (v45)
      {
        observers = [(CAFService *)self observers];
        userVisibleLabel = [(CAFRemoteNotification *)self displayPanelIdentifier];
        [observers remoteNotificationService:self didUpdateDisplayPanelIdentifier:userVisibleLabel];
        goto LABEL_29;
      }
    }

    else
    {
    }

    observers = [updateCopy characteristicType];
    if (![observers isEqual:@"0x000000003700000B"])
    {
      goto LABEL_30;
    }

    uniqueIdentifier15 = [updateCopy uniqueIdentifier];
    displayZoneIdentifierCharacteristic = [(CAFRemoteNotification *)self displayZoneIdentifierCharacteristic];
    uniqueIdentifier16 = [displayZoneIdentifierCharacteristic uniqueIdentifier];
    v49 = [uniqueIdentifier15 isEqual:uniqueIdentifier16];

    if (!v49)
    {
      goto LABEL_31;
    }

    observers2 = [(CAFService *)self observers];
    identifier = [(CAFRemoteNotification *)self displayZoneIdentifier];
    [observers2 remoteNotificationService:self didUpdateDisplayZoneIdentifier:identifier];
    goto LABEL_12;
  }

  observers = [(CAFService *)self observers];
  [observers remoteNotificationService:self didUpdateUserAction:{-[CAFRemoteNotification userAction](self, "userAction")}];
LABEL_30:

LABEL_31:
  v50.receiver = self;
  v50.super_class = CAFRemoteNotification;
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

- (BOOL)registeredForNotificationUserActions
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000037000002"];

  return v10;
}

- (BOOL)registeredForUserAction
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000037000003"];

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

@end