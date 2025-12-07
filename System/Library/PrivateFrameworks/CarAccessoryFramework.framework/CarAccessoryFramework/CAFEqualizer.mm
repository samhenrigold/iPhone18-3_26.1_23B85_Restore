@interface CAFEqualizer
+ (void)load;
- (BOOL)hasUserVisibleLabel;
- (BOOL)registeredForEqualizerType;
- (BOOL)registeredForEqualizerValue;
- (BOOL)registeredForSortOrder;
- (BOOL)registeredForUserVisibleLabel;
- (CAFEqualizerTypeCharacteristic)typeCharacteristic;
- (CAFInt8Characteristic)valueCharacteristic;
- (CAFInt8Range)valueRange;
- (CAFStringCharacteristic)userVisibleLabelCharacteristic;
- (CAFUInt8Characteristic)sortOrderCharacteristic;
- (NSString)userVisibleLabel;
- (char)value;
- (id)name;
- (unsigned)sortOrder;
- (unsigned)type;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setValue:(char)value;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFEqualizer

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFEqualizer;
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
  v6.super_class = CAFEqualizer;
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
  v6.super_class = CAFEqualizer;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  typeCharacteristic = [(CAFEqualizer *)self typeCharacteristic];
  formattedValue = [typeCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  sortOrderCharacteristic = [(CAFEqualizer *)self sortOrderCharacteristic];
  formattedValue2 = [sortOrderCharacteristic formattedValue];

  if ([formattedValue2 length])
  {
    v9 = [typeName stringByAppendingFormat:@"-%@", formattedValue2];

    typeName = v9;
  }

  return typeName;
}

- (CAFEqualizerTypeCharacteristic)typeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000033000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000033000007"];
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

- (unsigned)type
{
  typeCharacteristic = [(CAFEqualizer *)self typeCharacteristic];
  equalizerTypeValue = [typeCharacteristic equalizerTypeValue];

  return equalizerTypeValue;
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
  sortOrderCharacteristic = [(CAFEqualizer *)self sortOrderCharacteristic];
  uint8Value = [sortOrderCharacteristic uint8Value];

  return uint8Value;
}

- (CAFInt8Characteristic)valueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000033000008"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000033000008"];
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

- (char)value
{
  valueCharacteristic = [(CAFEqualizer *)self valueCharacteristic];
  int8Value = [valueCharacteristic int8Value];

  return int8Value;
}

- (void)setValue:(char)value
{
  valueCopy = value;
  valueCharacteristic = [(CAFEqualizer *)self valueCharacteristic];
  [valueCharacteristic setInt8Value:valueCopy];
}

- (CAFInt8Range)valueRange
{
  valueCharacteristic = [(CAFEqualizer *)self valueCharacteristic];
  range = [valueCharacteristic range];

  return range;
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
  userVisibleLabelCharacteristic = [(CAFEqualizer *)self userVisibleLabelCharacteristic];
  stringValue = [userVisibleLabelCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleLabel
{
  userVisibleLabelCharacteristic = [(CAFEqualizer *)self userVisibleLabelCharacteristic];
  v3 = userVisibleLabelCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000033000007"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    typeCharacteristic = [(CAFEqualizer *)self typeCharacteristic];
    uniqueIdentifier2 = [typeCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers equalizerService:self didUpdateType:{-[CAFEqualizer type](self, "type")}];
LABEL_17:

      goto LABEL_18;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000030000003"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    sortOrderCharacteristic = [(CAFEqualizer *)self sortOrderCharacteristic];
    uniqueIdentifier4 = [sortOrderCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers2 = [(CAFService *)self observers];
      [observers2 equalizerService:self didUpdateSortOrder:{-[CAFEqualizer sortOrder](self, "sortOrder")}];

      observers = [(CAFService *)self observers];
      name = [(CAFEqualizer *)self name];
      [observers equalizerService:self didUpdateName:name];
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000033000008"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    valueCharacteristic = [(CAFEqualizer *)self valueCharacteristic];
    uniqueIdentifier6 = [valueCharacteristic uniqueIdentifier];
    v24 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v24)
    {
      observers = [(CAFService *)self observers];
      [observers equalizerService:self didUpdateValue:{-[CAFEqualizer value](self, "value")}];
      goto LABEL_17;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000030000001"])
  {
    goto LABEL_17;
  }

  uniqueIdentifier7 = [updateCopy uniqueIdentifier];
  userVisibleLabelCharacteristic = [(CAFEqualizer *)self userVisibleLabelCharacteristic];
  uniqueIdentifier8 = [userVisibleLabelCharacteristic uniqueIdentifier];
  v28 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

  if (v28)
  {
    observers = [(CAFService *)self observers];
    name = [(CAFEqualizer *)self userVisibleLabel];
    [observers equalizerService:self didUpdateUserVisibleLabel:name];
    goto LABEL_16;
  }

LABEL_18:
  v29.receiver = self;
  v29.super_class = CAFEqualizer;
  [(CAFService *)&v29 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForEqualizerType
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000033000007"];

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

- (BOOL)registeredForEqualizerValue
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000033000008"];

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

@end