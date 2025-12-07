@interface CAFMultiSelectRemoteNotification
+ (void)load;
- (BOOL)registeredForDisplayPanelIdentifier;
- (BOOL)registeredForDisplayZoneIdentifier;
- (BOOL)registeredForIdentifier;
- (BOOL)registeredForSelectableNotificationEntries;
- (BOOL)registeredForSelectedEntryIndices;
- (BOOL)registeredForSymbolNameAndColor;
- (BOOL)registeredForTrailingButton;
- (BOOL)registeredForTrailingButtonState;
- (BOOL)registeredForUserVisibleDescription;
- (BOOL)registeredForUserVisibleLabel;
- (CAFArrayCharacteristic)selectedEntryIndicesCharacteristic;
- (CAFButtonActionCharacteristic)trailingButtonStateCharacteristic;
- (CAFSelectableNotificationEntryList)selectableNotificationEntries;
- (CAFSelectableNotificationEntryListCharacteristic)selectableNotificationEntriesCharacteristic;
- (CAFStringCharacteristic)displayPanelIdentifierCharacteristic;
- (CAFStringCharacteristic)displayZoneIdentifierCharacteristic;
- (CAFStringCharacteristic)identifierCharacteristic;
- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (CAFSymbolImageWithColor)symbolNameAndColor;
- (CAFSymbolImageWithColorCharacteristic)symbolNameAndColorCharacteristic;
- (CAFTrailingButton)trailingButton;
- (CAFTrailingButtonCharacteristic)trailingButtonCharacteristic;
- (NSArray)selectedEntryIndices;
- (NSString)displayPanelIdentifier;
- (NSString)displayZoneIdentifier;
- (NSString)identifier;
- (NSString)userVisibleDescription;
- (NSString)userVisibleLabel;
- (id)name;
- (unsigned)trailingButtonState;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setSelectedEntryIndices:(id)indices;
- (void)setTrailingButtonState:(unsigned __int8)state;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFMultiSelectRemoteNotification

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFMultiSelectRemoteNotification;
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
  v6.super_class = CAFMultiSelectRemoteNotification;
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
  v6.super_class = CAFMultiSelectRemoteNotification;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  identifierCharacteristic = [(CAFMultiSelectRemoteNotification *)self identifierCharacteristic];
  formattedValue = [identifierCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  displayPanelIdentifierCharacteristic = [(CAFMultiSelectRemoteNotification *)self displayPanelIdentifierCharacteristic];
  formattedValue2 = [displayPanelIdentifierCharacteristic formattedValue];

  if ([formattedValue2 length])
  {
    v9 = [typeName stringByAppendingFormat:@"-%@", formattedValue2];

    typeName = v9;
  }

  displayZoneIdentifierCharacteristic = [(CAFMultiSelectRemoteNotification *)self displayZoneIdentifierCharacteristic];
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
  userVisibleLabelCharacteristic = [(CAFMultiSelectRemoteNotification *)self userVisibleLabelCharacteristic];
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
  userVisibleDescriptionCharacteristic = [(CAFMultiSelectRemoteNotification *)self userVisibleDescriptionCharacteristic];
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
  identifierCharacteristic = [(CAFMultiSelectRemoteNotification *)self identifierCharacteristic];
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
  symbolNameAndColorCharacteristic = [(CAFMultiSelectRemoteNotification *)self symbolNameAndColorCharacteristic];
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
  displayPanelIdentifierCharacteristic = [(CAFMultiSelectRemoteNotification *)self displayPanelIdentifierCharacteristic];
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
  displayZoneIdentifierCharacteristic = [(CAFMultiSelectRemoteNotification *)self displayZoneIdentifierCharacteristic];
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
  trailingButtonCharacteristic = [(CAFMultiSelectRemoteNotification *)self trailingButtonCharacteristic];
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
  trailingButtonStateCharacteristic = [(CAFMultiSelectRemoteNotification *)self trailingButtonStateCharacteristic];
  buttonActionValue = [trailingButtonStateCharacteristic buttonActionValue];

  return buttonActionValue;
}

- (void)setTrailingButtonState:(unsigned __int8)state
{
  stateCopy = state;
  trailingButtonStateCharacteristic = [(CAFMultiSelectRemoteNotification *)self trailingButtonStateCharacteristic];
  [trailingButtonStateCharacteristic setButtonActionValue:stateCopy];
}

- (CAFSelectableNotificationEntryListCharacteristic)selectableNotificationEntriesCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003700000F"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003700000F"];
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

- (CAFSelectableNotificationEntryList)selectableNotificationEntries
{
  selectableNotificationEntriesCharacteristic = [(CAFMultiSelectRemoteNotification *)self selectableNotificationEntriesCharacteristic];
  selectableNotificationEntryListValue = [selectableNotificationEntriesCharacteristic selectableNotificationEntryListValue];

  return selectableNotificationEntryListValue;
}

- (CAFArrayCharacteristic)selectedEntryIndicesCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000062"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000062"];
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

- (NSArray)selectedEntryIndices
{
  selectedEntryIndicesCharacteristic = [(CAFMultiSelectRemoteNotification *)self selectedEntryIndicesCharacteristic];
  arrayValue = [selectedEntryIndicesCharacteristic arrayValue];

  return arrayValue;
}

- (void)setSelectedEntryIndices:(id)indices
{
  indicesCopy = indices;
  selectedEntryIndicesCharacteristic = [(CAFMultiSelectRemoteNotification *)self selectedEntryIndicesCharacteristic];
  [selectedEntryIndicesCharacteristic setArrayValue:indicesCopy];
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if (([characteristicType isEqual:@"0x0000000030000001"] & 1) == 0)
  {

LABEL_5:
    characteristicType2 = [updateCopy characteristicType];
    if ([characteristicType2 isEqual:@"0x0000000030000005"])
    {
      uniqueIdentifier = [updateCopy uniqueIdentifier];
      userVisibleDescriptionCharacteristic = [(CAFMultiSelectRemoteNotification *)self userVisibleDescriptionCharacteristic];
      uniqueIdentifier2 = [userVisibleDescriptionCharacteristic uniqueIdentifier];
      v18 = [uniqueIdentifier isEqual:uniqueIdentifier2];

      if (v18)
      {
        observers = [(CAFService *)self observers];
        userVisibleDescription = [(CAFMultiSelectRemoteNotification *)self userVisibleDescription];
        [observers multiSelectRemoteNotificationService:self didUpdateUserVisibleDescription:userVisibleDescription];
        goto LABEL_25;
      }
    }

    else
    {
    }

    characteristicType3 = [updateCopy characteristicType];
    if ([characteristicType3 isEqual:@"0x0000000030000019"])
    {
      uniqueIdentifier3 = [updateCopy uniqueIdentifier];
      identifierCharacteristic = [(CAFMultiSelectRemoteNotification *)self identifierCharacteristic];
      uniqueIdentifier4 = [identifierCharacteristic uniqueIdentifier];
      v23 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

      if (v23)
      {
        observers2 = [(CAFService *)self observers];
        identifier = [(CAFMultiSelectRemoteNotification *)self identifier];
        [observers2 multiSelectRemoteNotificationService:self didUpdateIdentifier:identifier];
LABEL_24:

        observers = [(CAFService *)self observers];
        userVisibleDescription = [(CAFMultiSelectRemoteNotification *)self name];
        [observers multiSelectRemoteNotificationService:self didUpdateName:userVisibleDescription];
        goto LABEL_25;
      }
    }

    else
    {
    }

    characteristicType4 = [updateCopy characteristicType];
    if ([characteristicType4 isEqual:@"0x0000000037000008"])
    {
      uniqueIdentifier5 = [updateCopy uniqueIdentifier];
      symbolNameAndColorCharacteristic = [(CAFMultiSelectRemoteNotification *)self symbolNameAndColorCharacteristic];
      uniqueIdentifier6 = [symbolNameAndColorCharacteristic uniqueIdentifier];
      v30 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

      if (v30)
      {
        observers = [(CAFService *)self observers];
        userVisibleDescription = [(CAFMultiSelectRemoteNotification *)self symbolNameAndColor];
        [observers multiSelectRemoteNotificationService:self didUpdateSymbolNameAndColor:userVisibleDescription];
        goto LABEL_25;
      }
    }

    else
    {
    }

    characteristicType5 = [updateCopy characteristicType];
    if ([characteristicType5 isEqual:@"0x0000000037000007"])
    {
      uniqueIdentifier7 = [updateCopy uniqueIdentifier];
      displayPanelIdentifierCharacteristic = [(CAFMultiSelectRemoteNotification *)self displayPanelIdentifierCharacteristic];
      uniqueIdentifier8 = [displayPanelIdentifierCharacteristic uniqueIdentifier];
      v35 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

      if (v35)
      {
        observers2 = [(CAFService *)self observers];
        identifier = [(CAFMultiSelectRemoteNotification *)self displayPanelIdentifier];
        [observers2 multiSelectRemoteNotificationService:self didUpdateDisplayPanelIdentifier:identifier];
        goto LABEL_24;
      }
    }

    else
    {
    }

    characteristicType6 = [updateCopy characteristicType];
    if ([characteristicType6 isEqual:@"0x000000003700000B"])
    {
      uniqueIdentifier9 = [updateCopy uniqueIdentifier];
      displayZoneIdentifierCharacteristic = [(CAFMultiSelectRemoteNotification *)self displayZoneIdentifierCharacteristic];
      uniqueIdentifier10 = [displayZoneIdentifierCharacteristic uniqueIdentifier];
      v40 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

      if (v40)
      {
        observers2 = [(CAFService *)self observers];
        identifier = [(CAFMultiSelectRemoteNotification *)self displayZoneIdentifier];
        [observers2 multiSelectRemoteNotificationService:self didUpdateDisplayZoneIdentifier:identifier];
        goto LABEL_24;
      }
    }

    else
    {
    }

    characteristicType7 = [updateCopy characteristicType];
    if ([characteristicType7 isEqual:@"0x000000003700000C"])
    {
      uniqueIdentifier11 = [updateCopy uniqueIdentifier];
      trailingButtonCharacteristic = [(CAFMultiSelectRemoteNotification *)self trailingButtonCharacteristic];
      uniqueIdentifier12 = [trailingButtonCharacteristic uniqueIdentifier];
      v45 = [uniqueIdentifier11 isEqual:uniqueIdentifier12];

      if (v45)
      {
        observers = [(CAFService *)self observers];
        userVisibleDescription = [(CAFMultiSelectRemoteNotification *)self trailingButton];
        [observers multiSelectRemoteNotificationService:self didUpdateTrailingButton:userVisibleDescription];
        goto LABEL_25;
      }
    }

    else
    {
    }

    characteristicType8 = [updateCopy characteristicType];
    if ([characteristicType8 isEqual:@"0x000000003700000D"])
    {
      uniqueIdentifier13 = [updateCopy uniqueIdentifier];
      trailingButtonStateCharacteristic = [(CAFMultiSelectRemoteNotification *)self trailingButtonStateCharacteristic];
      uniqueIdentifier14 = [trailingButtonStateCharacteristic uniqueIdentifier];
      v50 = [uniqueIdentifier13 isEqual:uniqueIdentifier14];

      if (v50)
      {
        observers = [(CAFService *)self observers];
        [observers multiSelectRemoteNotificationService:self didUpdateTrailingButtonState:{-[CAFMultiSelectRemoteNotification trailingButtonState](self, "trailingButtonState")}];
        goto LABEL_26;
      }
    }

    else
    {
    }

    characteristicType9 = [updateCopy characteristicType];
    if ([characteristicType9 isEqual:@"0x000000003700000F"])
    {
      uniqueIdentifier15 = [updateCopy uniqueIdentifier];
      selectableNotificationEntriesCharacteristic = [(CAFMultiSelectRemoteNotification *)self selectableNotificationEntriesCharacteristic];
      uniqueIdentifier16 = [selectableNotificationEntriesCharacteristic uniqueIdentifier];
      v55 = [uniqueIdentifier15 isEqual:uniqueIdentifier16];

      if (v55)
      {
        observers = [(CAFService *)self observers];
        userVisibleDescription = [(CAFMultiSelectRemoteNotification *)self selectableNotificationEntries];
        [observers multiSelectRemoteNotificationService:self didUpdateSelectableNotificationEntries:userVisibleDescription];
        goto LABEL_25;
      }
    }

    else
    {
    }

    observers = [updateCopy characteristicType];
    if (![observers isEqual:@"0x0000000036000062"])
    {
      goto LABEL_26;
    }

    uniqueIdentifier17 = [updateCopy uniqueIdentifier];
    selectedEntryIndicesCharacteristic = [(CAFMultiSelectRemoteNotification *)self selectedEntryIndicesCharacteristic];
    uniqueIdentifier18 = [selectedEntryIndicesCharacteristic uniqueIdentifier];
    v59 = [uniqueIdentifier17 isEqual:uniqueIdentifier18];

    if (!v59)
    {
      goto LABEL_27;
    }

    observers = [(CAFService *)self observers];
    userVisibleDescription = [(CAFMultiSelectRemoteNotification *)self selectedEntryIndices];
    [observers multiSelectRemoteNotificationService:self didUpdateSelectedEntryIndices:userVisibleDescription];
    goto LABEL_25;
  }

  uniqueIdentifier19 = [updateCopy uniqueIdentifier];
  userVisibleLabelCharacteristic = [(CAFMultiSelectRemoteNotification *)self userVisibleLabelCharacteristic];
  uniqueIdentifier20 = [userVisibleLabelCharacteristic uniqueIdentifier];
  v11 = [uniqueIdentifier19 isEqual:uniqueIdentifier20];

  if (!v11)
  {
    goto LABEL_5;
  }

  observers = [(CAFService *)self observers];
  userVisibleDescription = [(CAFMultiSelectRemoteNotification *)self userVisibleLabel];
  [observers multiSelectRemoteNotificationService:self didUpdateUserVisibleLabel:userVisibleDescription];
LABEL_25:

LABEL_26:
LABEL_27:
  v60.receiver = self;
  v60.super_class = CAFMultiSelectRemoteNotification;
  [(CAFService *)&v60 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
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

- (BOOL)registeredForSelectableNotificationEntries
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003700000F"];

  return v10;
}

- (BOOL)registeredForSelectedEntryIndices
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000062"];

  return v10;
}

@end