@interface CAFCameraButton
+ (void)load;
- (BOOL)disabled;
- (BOOL)hasButtonAction;
- (BOOL)hasChildrenIdentifiers;
- (BOOL)hasContentURLAction;
- (BOOL)hasDisabled;
- (BOOL)hasHidden;
- (BOOL)hasSelected;
- (BOOL)hasSelectedEntryIndex;
- (BOOL)hidden;
- (BOOL)registeredForButtonAction;
- (BOOL)registeredForChildrenIdentifiers;
- (BOOL)registeredForContentURLAction;
- (BOOL)registeredForDisabled;
- (BOOL)registeredForHidden;
- (BOOL)registeredForIdentifier;
- (BOOL)registeredForSelected;
- (BOOL)registeredForSelectedEntryIndex;
- (BOOL)registeredForSortOrder;
- (BOOL)registeredForSymbolName;
- (BOOL)selected;
- (CAFArrayCharacteristic)childrenIdentifiersCharacteristic;
- (CAFBoolCharacteristic)disabledCharacteristic;
- (CAFBoolCharacteristic)hiddenCharacteristic;
- (CAFBoolCharacteristic)selectedCharacteristic;
- (CAFButtonActionCharacteristic)buttonActionCharacteristic;
- (CAFStringCharacteristic)contentURLActionCharacteristic;
- (CAFStringCharacteristic)identifierCharacteristic;
- (CAFStringCharacteristic)symbolNameCharacteristic;
- (CAFUInt8Characteristic)selectedEntryIndexCharacteristic;
- (CAFUInt8Characteristic)sortOrderCharacteristic;
- (CAFUInt8Range)selectedEntryIndexRange;
- (NSArray)childrenIdentifiers;
- (NSString)contentURLAction;
- (NSString)identifier;
- (NSString)symbolName;
- (id)name;
- (unsigned)buttonAction;
- (unsigned)selectedEntryIndex;
- (unsigned)sortOrder;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setButtonAction:(unsigned __int8)action;
- (void)setSelectedEntryIndex:(unsigned __int8)index;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFCameraButton

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFCameraButton;
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
  v6.super_class = CAFCameraButton;
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
  v6.super_class = CAFCameraButton;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  symbolNameCharacteristic = [(CAFCameraButton *)self symbolNameCharacteristic];
  formattedValue = [symbolNameCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  sortOrderCharacteristic = [(CAFCameraButton *)self sortOrderCharacteristic];
  formattedValue2 = [sortOrderCharacteristic formattedValue];

  if ([formattedValue2 length])
  {
    v9 = [typeName stringByAppendingFormat:@"-%@", formattedValue2];

    typeName = v9;
  }

  return typeName;
}

- (CAFButtonActionCharacteristic)buttonActionCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000010"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000010"];
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

- (unsigned)buttonAction
{
  buttonActionCharacteristic = [(CAFCameraButton *)self buttonActionCharacteristic];
  buttonActionValue = [buttonActionCharacteristic buttonActionValue];

  return buttonActionValue;
}

- (void)setButtonAction:(unsigned __int8)action
{
  actionCopy = action;
  buttonActionCharacteristic = [(CAFCameraButton *)self buttonActionCharacteristic];
  [buttonActionCharacteristic setButtonActionValue:actionCopy];
}

- (BOOL)hasButtonAction
{
  buttonActionCharacteristic = [(CAFCameraButton *)self buttonActionCharacteristic];
  v3 = buttonActionCharacteristic != 0;

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
  contentURLActionCharacteristic = [(CAFCameraButton *)self contentURLActionCharacteristic];
  stringValue = [contentURLActionCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasContentURLAction
{
  contentURLActionCharacteristic = [(CAFCameraButton *)self contentURLActionCharacteristic];
  v3 = contentURLActionCharacteristic != 0;

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
  sortOrderCharacteristic = [(CAFCameraButton *)self sortOrderCharacteristic];
  uint8Value = [sortOrderCharacteristic uint8Value];

  return uint8Value;
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
  symbolNameCharacteristic = [(CAFCameraButton *)self symbolNameCharacteristic];
  stringValue = [symbolNameCharacteristic stringValue];

  return stringValue;
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
  disabledCharacteristic = [(CAFCameraButton *)self disabledCharacteristic];
  bOOLValue = [disabledCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasDisabled
{
  disabledCharacteristic = [(CAFCameraButton *)self disabledCharacteristic];
  v3 = disabledCharacteristic != 0;

  return v3;
}

- (CAFBoolCharacteristic)selectedCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000064"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000064"];
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

- (BOOL)selected
{
  selectedCharacteristic = [(CAFCameraButton *)self selectedCharacteristic];
  bOOLValue = [selectedCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasSelected
{
  selectedCharacteristic = [(CAFCameraButton *)self selectedCharacteristic];
  v3 = selectedCharacteristic != 0;

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
  hiddenCharacteristic = [(CAFCameraButton *)self hiddenCharacteristic];
  bOOLValue = [hiddenCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasHidden
{
  hiddenCharacteristic = [(CAFCameraButton *)self hiddenCharacteristic];
  v3 = hiddenCharacteristic != 0;

  return v3;
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
  identifierCharacteristic = [(CAFCameraButton *)self identifierCharacteristic];
  stringValue = [identifierCharacteristic stringValue];

  return stringValue;
}

- (CAFArrayCharacteristic)childrenIdentifiersCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000050000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000050000001"];
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

- (NSArray)childrenIdentifiers
{
  childrenIdentifiersCharacteristic = [(CAFCameraButton *)self childrenIdentifiersCharacteristic];
  arrayValue = [childrenIdentifiersCharacteristic arrayValue];

  return arrayValue;
}

- (BOOL)hasChildrenIdentifiers
{
  childrenIdentifiersCharacteristic = [(CAFCameraButton *)self childrenIdentifiersCharacteristic];
  v3 = childrenIdentifiersCharacteristic != 0;

  return v3;
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
  selectedEntryIndexCharacteristic = [(CAFCameraButton *)self selectedEntryIndexCharacteristic];
  uint8Value = [selectedEntryIndexCharacteristic uint8Value];

  return uint8Value;
}

- (void)setSelectedEntryIndex:(unsigned __int8)index
{
  indexCopy = index;
  selectedEntryIndexCharacteristic = [(CAFCameraButton *)self selectedEntryIndexCharacteristic];
  [selectedEntryIndexCharacteristic setUint8Value:indexCopy];
}

- (CAFUInt8Range)selectedEntryIndexRange
{
  selectedEntryIndexCharacteristic = [(CAFCameraButton *)self selectedEntryIndexCharacteristic];
  range = [selectedEntryIndexCharacteristic range];

  return range;
}

- (BOOL)hasSelectedEntryIndex
{
  selectedEntryIndexCharacteristic = [(CAFCameraButton *)self selectedEntryIndexCharacteristic];
  v3 = selectedEntryIndexCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000036000010"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    buttonActionCharacteristic = [(CAFCameraButton *)self buttonActionCharacteristic];
    uniqueIdentifier2 = [buttonActionCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers cameraButtonService:self didUpdateButtonAction:{-[CAFCameraButton buttonAction](self, "buttonAction")}];
      goto LABEL_18;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000036000066"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    contentURLActionCharacteristic = [(CAFCameraButton *)self contentURLActionCharacteristic];
    uniqueIdentifier4 = [contentURLActionCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      contentURLAction = [(CAFCameraButton *)self contentURLAction];
      [observers cameraButtonService:self didUpdateContentURLAction:contentURLAction];
LABEL_17:

      goto LABEL_18;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000030000003"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    sortOrderCharacteristic = [(CAFCameraButton *)self sortOrderCharacteristic];
    uniqueIdentifier6 = [sortOrderCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers2 = [(CAFService *)self observers];
      [observers2 cameraButtonService:self didUpdateSortOrder:{-[CAFCameraButton sortOrder](self, "sortOrder")}];
LABEL_16:

      observers = [(CAFService *)self observers];
      contentURLAction = [(CAFCameraButton *)self name];
      [observers cameraButtonService:self didUpdateName:contentURLAction];
      goto LABEL_17;
    }
  }

  else
  {
  }

  characteristicType4 = [updateCopy characteristicType];
  if ([characteristicType4 isEqual:@"0x000000003000005E"])
  {
    uniqueIdentifier7 = [updateCopy uniqueIdentifier];
    symbolNameCharacteristic = [(CAFCameraButton *)self symbolNameCharacteristic];
    uniqueIdentifier8 = [symbolNameCharacteristic uniqueIdentifier];
    v29 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v29)
    {
      observers2 = [(CAFService *)self observers];
      symbolName = [(CAFCameraButton *)self symbolName];
      [observers2 cameraButtonService:self didUpdateSymbolName:symbolName];

      goto LABEL_16;
    }
  }

  else
  {
  }

  characteristicType5 = [updateCopy characteristicType];
  if ([characteristicType5 isEqual:@"0x0000000032000011"])
  {
    uniqueIdentifier9 = [updateCopy uniqueIdentifier];
    disabledCharacteristic = [(CAFCameraButton *)self disabledCharacteristic];
    uniqueIdentifier10 = [disabledCharacteristic uniqueIdentifier];
    v35 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

    if (v35)
    {
      observers = [(CAFService *)self observers];
      [observers cameraButtonService:self didUpdateDisabled:{-[CAFCameraButton disabled](self, "disabled")}];
      goto LABEL_18;
    }
  }

  else
  {
  }

  characteristicType6 = [updateCopy characteristicType];
  if ([characteristicType6 isEqual:@"0x0000000036000064"])
  {
    uniqueIdentifier11 = [updateCopy uniqueIdentifier];
    selectedCharacteristic = [(CAFCameraButton *)self selectedCharacteristic];
    uniqueIdentifier12 = [selectedCharacteristic uniqueIdentifier];
    v40 = [uniqueIdentifier11 isEqual:uniqueIdentifier12];

    if (v40)
    {
      observers = [(CAFService *)self observers];
      [observers cameraButtonService:self didUpdateSelected:{-[CAFCameraButton selected](self, "selected")}];
      goto LABEL_18;
    }
  }

  else
  {
  }

  characteristicType7 = [updateCopy characteristicType];
  if ([characteristicType7 isEqual:@"0x0000000036000023"])
  {
    uniqueIdentifier13 = [updateCopy uniqueIdentifier];
    hiddenCharacteristic = [(CAFCameraButton *)self hiddenCharacteristic];
    uniqueIdentifier14 = [hiddenCharacteristic uniqueIdentifier];
    v45 = [uniqueIdentifier13 isEqual:uniqueIdentifier14];

    if (v45)
    {
      observers = [(CAFService *)self observers];
      [observers cameraButtonService:self didUpdateHidden:{-[CAFCameraButton hidden](self, "hidden")}];
      goto LABEL_18;
    }
  }

  else
  {
  }

  characteristicType8 = [updateCopy characteristicType];
  if ([characteristicType8 isEqual:@"0x0000000030000019"])
  {
    uniqueIdentifier15 = [updateCopy uniqueIdentifier];
    identifierCharacteristic = [(CAFCameraButton *)self identifierCharacteristic];
    uniqueIdentifier16 = [identifierCharacteristic uniqueIdentifier];
    v50 = [uniqueIdentifier15 isEqual:uniqueIdentifier16];

    if (v50)
    {
      observers = [(CAFService *)self observers];
      contentURLAction = [(CAFCameraButton *)self identifier];
      [observers cameraButtonService:self didUpdateIdentifier:contentURLAction];
      goto LABEL_17;
    }
  }

  else
  {
  }

  characteristicType9 = [updateCopy characteristicType];
  if ([characteristicType9 isEqual:@"0x0000000050000001"])
  {
    uniqueIdentifier17 = [updateCopy uniqueIdentifier];
    childrenIdentifiersCharacteristic = [(CAFCameraButton *)self childrenIdentifiersCharacteristic];
    uniqueIdentifier18 = [childrenIdentifiersCharacteristic uniqueIdentifier];
    v55 = [uniqueIdentifier17 isEqual:uniqueIdentifier18];

    if (v55)
    {
      observers = [(CAFService *)self observers];
      contentURLAction = [(CAFCameraButton *)self childrenIdentifiers];
      [observers cameraButtonService:self didUpdateChildrenIdentifiers:contentURLAction];
      goto LABEL_17;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if ([observers isEqual:@"0x0000000030000061"])
  {
    uniqueIdentifier19 = [updateCopy uniqueIdentifier];
    selectedEntryIndexCharacteristic = [(CAFCameraButton *)self selectedEntryIndexCharacteristic];
    uniqueIdentifier20 = [selectedEntryIndexCharacteristic uniqueIdentifier];
    v59 = [uniqueIdentifier19 isEqual:uniqueIdentifier20];

    if (!v59)
    {
      goto LABEL_19;
    }

    observers = [(CAFService *)self observers];
    [observers cameraButtonService:self didUpdateSelectedEntryIndex:{-[CAFCameraButton selectedEntryIndex](self, "selectedEntryIndex")}];
  }

LABEL_18:

LABEL_19:
  v60.receiver = self;
  v60.super_class = CAFCameraButton;
  [(CAFService *)&v60 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForButtonAction
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000010"];

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

- (BOOL)registeredForSelected
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000064"];

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

- (BOOL)registeredForChildrenIdentifiers
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000050000001"];

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

@end