@interface CAFMediaSource
+ (void)load;
- (BOOL)currentFrequencyInvalid;
- (BOOL)currentMediaItemIdentifierInvalid;
- (BOOL)disabled;
- (BOOL)hasCurrentFrequency;
- (BOOL)hasCurrentMediaItemIdentifier;
- (BOOL)hasMediaItemImages;
- (BOOL)hasMediaItems;
- (BOOL)hasUserVisibleLabel;
- (BOOL)registeredForCurrentFrequency;
- (BOOL)registeredForCurrentMediaItemIdentifier;
- (BOOL)registeredForDisabled;
- (BOOL)registeredForIdentifier;
- (BOOL)registeredForMediaItemImages;
- (BOOL)registeredForMediaItems;
- (BOOL)registeredForMediaSourceSemanticType;
- (BOOL)registeredForUserVisibleLabel;
- (CAFBoolCharacteristic)disabledCharacteristic;
- (CAFMediaItemImages)mediaItemImages;
- (CAFMediaItemImagesCharacteristic)mediaItemImagesCharacteristic;
- (CAFMediaItems)mediaItems;
- (CAFMediaItemsCharacteristic)mediaItemsCharacteristic;
- (CAFMediaSourceSemanticTypeCharacteristic)mediaSourceSemanticTypeCharacteristic;
- (CAFStringCharacteristic)currentMediaItemIdentifierCharacteristic;
- (CAFStringCharacteristic)identifierCharacteristic;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (CAFUInt32Characteristic)currentFrequencyCharacteristic;
- (CAFUInt32Range)currentFrequencyRange;
- (NSString)currentMediaItemIdentifier;
- (NSString)identifier;
- (NSString)userVisibleLabel;
- (id)name;
- (int64_t)typeCompare:(id)compare;
- (unsigned)currentFrequency;
- (unsigned)mediaSourceSemanticType;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFMediaSource

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFMediaSource;
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
  v6.super_class = CAFMediaSource;
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
  v6.super_class = CAFMediaSource;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  userVisibleLabelCharacteristic = [(CAFMediaSource *)self userVisibleLabelCharacteristic];
  formattedValue = [userVisibleLabelCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  mediaSourceSemanticTypeCharacteristic = [(CAFMediaSource *)self mediaSourceSemanticTypeCharacteristic];
  formattedValue2 = [mediaSourceSemanticTypeCharacteristic formattedValue];

  if ([formattedValue2 length])
  {
    v9 = [typeName stringByAppendingFormat:@"-%@", formattedValue2];

    typeName = v9;
  }

  return typeName;
}

- (CAFUInt32Characteristic)currentFrequencyCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000007"];
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

- (unsigned)currentFrequency
{
  currentFrequencyCharacteristic = [(CAFMediaSource *)self currentFrequencyCharacteristic];
  uint32Value = [currentFrequencyCharacteristic uint32Value];

  return uint32Value;
}

- (CAFUInt32Range)currentFrequencyRange
{
  currentFrequencyCharacteristic = [(CAFMediaSource *)self currentFrequencyCharacteristic];
  range = [currentFrequencyCharacteristic range];

  return range;
}

- (BOOL)hasCurrentFrequency
{
  currentFrequencyCharacteristic = [(CAFMediaSource *)self currentFrequencyCharacteristic];
  v3 = currentFrequencyCharacteristic != 0;

  return v3;
}

- (BOOL)currentFrequencyInvalid
{
  currentFrequencyCharacteristic = [(CAFMediaSource *)self currentFrequencyCharacteristic];
  isInvalid = [currentFrequencyCharacteristic isInvalid];

  return isInvalid;
}

- (CAFStringCharacteristic)currentMediaItemIdentifierCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000026"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000026"];
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

- (NSString)currentMediaItemIdentifier
{
  currentMediaItemIdentifierCharacteristic = [(CAFMediaSource *)self currentMediaItemIdentifierCharacteristic];
  stringValue = [currentMediaItemIdentifierCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasCurrentMediaItemIdentifier
{
  currentMediaItemIdentifierCharacteristic = [(CAFMediaSource *)self currentMediaItemIdentifierCharacteristic];
  v3 = currentMediaItemIdentifierCharacteristic != 0;

  return v3;
}

- (BOOL)currentMediaItemIdentifierInvalid
{
  currentMediaItemIdentifierCharacteristic = [(CAFMediaSource *)self currentMediaItemIdentifierCharacteristic];
  isInvalid = [currentMediaItemIdentifierCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMediaItemsCharacteristic)mediaItemsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000012"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000012"];
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

- (CAFMediaItems)mediaItems
{
  mediaItemsCharacteristic = [(CAFMediaSource *)self mediaItemsCharacteristic];
  mediaItemsValue = [mediaItemsCharacteristic mediaItemsValue];

  return mediaItemsValue;
}

- (BOOL)hasMediaItems
{
  mediaItemsCharacteristic = [(CAFMediaSource *)self mediaItemsCharacteristic];
  v3 = mediaItemsCharacteristic != 0;

  return v3;
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
  userVisibleLabelCharacteristic = [(CAFMediaSource *)self userVisibleLabelCharacteristic];
  stringValue = [userVisibleLabelCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleLabel
{
  userVisibleLabelCharacteristic = [(CAFMediaSource *)self userVisibleLabelCharacteristic];
  v3 = userVisibleLabelCharacteristic != 0;

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
  identifierCharacteristic = [(CAFMediaSource *)self identifierCharacteristic];
  stringValue = [identifierCharacteristic stringValue];

  return stringValue;
}

- (CAFMediaSourceSemanticTypeCharacteristic)mediaSourceSemanticTypeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000025"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000025"];
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

- (unsigned)mediaSourceSemanticType
{
  mediaSourceSemanticTypeCharacteristic = [(CAFMediaSource *)self mediaSourceSemanticTypeCharacteristic];
  mediaSourceSemanticTypeValue = [mediaSourceSemanticTypeCharacteristic mediaSourceSemanticTypeValue];

  return mediaSourceSemanticTypeValue;
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
  disabledCharacteristic = [(CAFMediaSource *)self disabledCharacteristic];
  bOOLValue = [disabledCharacteristic BOOLValue];

  return bOOLValue;
}

- (CAFMediaItemImagesCharacteristic)mediaItemImagesCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000031"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000031"];
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

- (CAFMediaItemImages)mediaItemImages
{
  mediaItemImagesCharacteristic = [(CAFMediaSource *)self mediaItemImagesCharacteristic];
  mediaItemImagesValue = [mediaItemImagesCharacteristic mediaItemImagesValue];

  return mediaItemImagesValue;
}

- (BOOL)hasMediaItemImages
{
  mediaItemImagesCharacteristic = [(CAFMediaSource *)self mediaItemImagesCharacteristic];
  v3 = mediaItemImagesCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if (([characteristicType isEqual:@"0x0000000032000007"] & 1) == 0)
  {

LABEL_5:
    characteristicType2 = [updateCopy characteristicType];
    if ([characteristicType2 isEqual:@"0x0000000032000026"])
    {
      uniqueIdentifier = [updateCopy uniqueIdentifier];
      currentMediaItemIdentifierCharacteristic = [(CAFMediaSource *)self currentMediaItemIdentifierCharacteristic];
      uniqueIdentifier2 = [currentMediaItemIdentifierCharacteristic uniqueIdentifier];
      v17 = [uniqueIdentifier isEqual:uniqueIdentifier2];

      if (v17)
      {
        observers = [(CAFService *)self observers];
        currentMediaItemIdentifier = [(CAFMediaSource *)self currentMediaItemIdentifier];
        [observers mediaSourceService:self didUpdateCurrentMediaItemIdentifier:currentMediaItemIdentifier];
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
    }

    characteristicType3 = [updateCopy characteristicType];
    if ([characteristicType3 isEqual:@"0x0000000032000012"])
    {
      uniqueIdentifier3 = [updateCopy uniqueIdentifier];
      mediaItemsCharacteristic = [(CAFMediaSource *)self mediaItemsCharacteristic];
      uniqueIdentifier4 = [mediaItemsCharacteristic uniqueIdentifier];
      v23 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

      if (v23)
      {
        observers = [(CAFService *)self observers];
        currentMediaItemIdentifier = [(CAFMediaSource *)self mediaItems];
        [observers mediaSourceService:self didUpdateMediaItems:currentMediaItemIdentifier];
        goto LABEL_25;
      }
    }

    else
    {
    }

    characteristicType4 = [updateCopy characteristicType];
    if ([characteristicType4 isEqual:@"0x0000000030000001"])
    {
      uniqueIdentifier5 = [updateCopy uniqueIdentifier];
      userVisibleLabelCharacteristic = [(CAFMediaSource *)self userVisibleLabelCharacteristic];
      uniqueIdentifier6 = [userVisibleLabelCharacteristic uniqueIdentifier];
      v28 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

      if (v28)
      {
        observers2 = [(CAFService *)self observers];
        userVisibleLabel = [(CAFMediaSource *)self userVisibleLabel];
        [observers2 mediaSourceService:self didUpdateUserVisibleLabel:userVisibleLabel];

LABEL_24:
        observers = [(CAFService *)self observers];
        currentMediaItemIdentifier = [(CAFMediaSource *)self name];
        [observers mediaSourceService:self didUpdateName:currentMediaItemIdentifier];
        goto LABEL_25;
      }
    }

    else
    {
    }

    characteristicType5 = [updateCopy characteristicType];
    if ([characteristicType5 isEqual:@"0x0000000030000019"])
    {
      uniqueIdentifier7 = [updateCopy uniqueIdentifier];
      identifierCharacteristic = [(CAFMediaSource *)self identifierCharacteristic];
      uniqueIdentifier8 = [identifierCharacteristic uniqueIdentifier];
      v35 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

      if (v35)
      {
        observers = [(CAFService *)self observers];
        currentMediaItemIdentifier = [(CAFMediaSource *)self identifier];
        [observers mediaSourceService:self didUpdateIdentifier:currentMediaItemIdentifier];
        goto LABEL_25;
      }
    }

    else
    {
    }

    characteristicType6 = [updateCopy characteristicType];
    if ([characteristicType6 isEqual:@"0x0000000032000025"])
    {
      uniqueIdentifier9 = [updateCopy uniqueIdentifier];
      mediaSourceSemanticTypeCharacteristic = [(CAFMediaSource *)self mediaSourceSemanticTypeCharacteristic];
      uniqueIdentifier10 = [mediaSourceSemanticTypeCharacteristic uniqueIdentifier];
      v40 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

      if (v40)
      {
        observers2 = [(CAFService *)self observers];
        [observers2 mediaSourceService:self didUpdateMediaSourceSemanticType:{-[CAFMediaSource mediaSourceSemanticType](self, "mediaSourceSemanticType")}];
        goto LABEL_24;
      }
    }

    else
    {
    }

    characteristicType7 = [updateCopy characteristicType];
    if ([characteristicType7 isEqual:@"0x0000000032000011"])
    {
      uniqueIdentifier11 = [updateCopy uniqueIdentifier];
      disabledCharacteristic = [(CAFMediaSource *)self disabledCharacteristic];
      uniqueIdentifier12 = [disabledCharacteristic uniqueIdentifier];
      v45 = [uniqueIdentifier11 isEqual:uniqueIdentifier12];

      if (v45)
      {
        observers = [(CAFService *)self observers];
        [observers mediaSourceService:self didUpdateDisabled:{-[CAFMediaSource disabled](self, "disabled")}];
        goto LABEL_26;
      }
    }

    else
    {
    }

    observers = [updateCopy characteristicType];
    if (![observers isEqual:@"0x0000000032000031"])
    {
      goto LABEL_26;
    }

    uniqueIdentifier13 = [updateCopy uniqueIdentifier];
    mediaItemImagesCharacteristic = [(CAFMediaSource *)self mediaItemImagesCharacteristic];
    uniqueIdentifier14 = [mediaItemImagesCharacteristic uniqueIdentifier];
    v49 = [uniqueIdentifier13 isEqual:uniqueIdentifier14];

    if (!v49)
    {
      goto LABEL_27;
    }

    observers = [(CAFService *)self observers];
    currentMediaItemIdentifier = [(CAFMediaSource *)self mediaItemImages];
    [observers mediaSourceService:self didUpdateMediaItemImages:currentMediaItemIdentifier];
    goto LABEL_25;
  }

  uniqueIdentifier15 = [updateCopy uniqueIdentifier];
  currentFrequencyCharacteristic = [(CAFMediaSource *)self currentFrequencyCharacteristic];
  uniqueIdentifier16 = [currentFrequencyCharacteristic uniqueIdentifier];
  v11 = [uniqueIdentifier15 isEqual:uniqueIdentifier16];

  if (!v11)
  {
    goto LABEL_5;
  }

  observers = [(CAFService *)self observers];
  [observers mediaSourceService:self didUpdateCurrentFrequency:{-[CAFMediaSource currentFrequency](self, "currentFrequency")}];
LABEL_26:

LABEL_27:
  v50.receiver = self;
  v50.super_class = CAFMediaSource;
  [(CAFService *)&v50 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForCurrentFrequency
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000007"];

  return v10;
}

- (BOOL)registeredForCurrentMediaItemIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000026"];

  return v10;
}

- (BOOL)registeredForMediaItems
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000012"];

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

- (BOOL)registeredForMediaSourceSemanticType
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000025"];

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

- (BOOL)registeredForMediaItemImages
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000031"];

  return v10;
}

- (int64_t)typeCompare:(id)compare
{
  v4 = MEMORY[0x277CCABB0];
  compareCopy = compare;
  v6 = [v4 numberWithUnsignedChar:{-[CAFMediaSource mediaSourceSemanticType](self, "mediaSourceSemanticType")}];
  v7 = [&unk_284683048 indexOfObject:v6];

  v8 = MEMORY[0x277CCABB0];
  mediaSourceSemanticType = [compareCopy mediaSourceSemanticType];

  v10 = [v8 numberWithUnsignedChar:mediaSourceSemanticType];
  v11 = [&unk_284683048 indexOfObject:v10];

  v12 = -1;
  if (v7 >= v11)
  {
    v12 = 1;
  }

  if (v7 == v11)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

@end