@interface CAFVent
+ (void)load;
- (BOOL)autoMode;
- (BOOL)currentIndexDisabled;
- (BOOL)currentIndexInvalid;
- (BOOL)currentIndexRestricted;
- (BOOL)hasAutoMode;
- (BOOL)hasOn;
- (BOOL)on;
- (BOOL)onDisabled;
- (BOOL)onInvalid;
- (BOOL)onRestricted;
- (BOOL)registeredForAutoMode;
- (BOOL)registeredForCurrentIndex;
- (BOOL)registeredForOn;
- (BOOL)registeredForVehicleLayoutKey;
- (BOOL)registeredForVentCombinations;
- (CAFArrayCharacteristic)combinationsCharacteristic;
- (CAFBoolCharacteristic)autoModeCharacteristic;
- (CAFBoolCharacteristic)onCharacteristic;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (CAFUInt32Characteristic)currentIndexCharacteristic;
- (CAFUInt32Range)currentIndexRange;
- (NSArray)combinations;
- (NSString)vehicleLayoutKey;
- (id)name;
- (int64_t)typeCompare:(id)compare;
- (unsigned)currentIndex;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setCurrentIndex:(unsigned int)index;
- (void)setOn:(BOOL)on;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFVent

- (int64_t)typeCompare:(id)compare
{
  v29 = *MEMORY[0x277D85DE8];
  compareCopy = compare;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  combinations = [(CAFVent *)self combinations];
  v6 = [combinations countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(combinations);
        }

        v8 |= [*(*(&v23 + 1) + 8 * i) unsignedIntValue];
      }

      v7 = [combinations countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  combinations2 = [compareCopy combinations];
  v12 = [combinations2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(combinations2);
        }

        v14 |= [*(*(&v19 + 1) + 8 * j) unsignedIntValue];
      }

      v13 = [combinations2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v17 = [CAFBitMaskUtilities compareBitmask1:v8 bitmask2:v14 optionsSort:&unk_284682FA0];
  return v17;
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFVent;
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
  v6.super_class = CAFVent;
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
  v6.super_class = CAFVent;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  vehicleLayoutKeyCharacteristic = [(CAFVent *)self vehicleLayoutKeyCharacteristic];
  formattedValue = [vehicleLayoutKeyCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
}

- (CAFArrayCharacteristic)combinationsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000025"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000025"];
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

- (NSArray)combinations
{
  combinationsCharacteristic = [(CAFVent *)self combinationsCharacteristic];
  arrayValue = [combinationsCharacteristic arrayValue];

  return arrayValue;
}

- (CAFUInt32Characteristic)currentIndexCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000038"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000038"];
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

- (unsigned)currentIndex
{
  currentIndexCharacteristic = [(CAFVent *)self currentIndexCharacteristic];
  uint32Value = [currentIndexCharacteristic uint32Value];

  return uint32Value;
}

- (void)setCurrentIndex:(unsigned int)index
{
  v3 = *&index;
  currentIndexCharacteristic = [(CAFVent *)self currentIndexCharacteristic];
  [currentIndexCharacteristic setUint32Value:v3];
}

- (CAFUInt32Range)currentIndexRange
{
  currentIndexCharacteristic = [(CAFVent *)self currentIndexCharacteristic];
  range = [currentIndexCharacteristic range];

  return range;
}

- (BOOL)currentIndexDisabled
{
  currentIndexCharacteristic = [(CAFVent *)self currentIndexCharacteristic];
  isDisabled = [currentIndexCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)currentIndexInvalid
{
  currentIndexCharacteristic = [(CAFVent *)self currentIndexCharacteristic];
  isInvalid = [currentIndexCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)currentIndexRestricted
{
  currentIndexCharacteristic = [(CAFVent *)self currentIndexCharacteristic];
  isRestricted = [currentIndexCharacteristic isRestricted];

  return isRestricted;
}

- (CAFBoolCharacteristic)autoModeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000005F"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000005F"];
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

- (BOOL)autoMode
{
  autoModeCharacteristic = [(CAFVent *)self autoModeCharacteristic];
  bOOLValue = [autoModeCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasAutoMode
{
  autoModeCharacteristic = [(CAFVent *)self autoModeCharacteristic];
  v3 = autoModeCharacteristic != 0;

  return v3;
}

- (CAFBoolCharacteristic)onCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000002"];
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

- (BOOL)on
{
  onCharacteristic = [(CAFVent *)self onCharacteristic];
  bOOLValue = [onCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setOn:(BOOL)on
{
  onCopy = on;
  onCharacteristic = [(CAFVent *)self onCharacteristic];
  [onCharacteristic setBoolValue:onCopy];
}

- (BOOL)hasOn
{
  onCharacteristic = [(CAFVent *)self onCharacteristic];
  v3 = onCharacteristic != 0;

  return v3;
}

- (BOOL)onDisabled
{
  onCharacteristic = [(CAFVent *)self onCharacteristic];
  isDisabled = [onCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)onInvalid
{
  onCharacteristic = [(CAFVent *)self onCharacteristic];
  isInvalid = [onCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)onRestricted
{
  onCharacteristic = [(CAFVent *)self onCharacteristic];
  isRestricted = [onCharacteristic isRestricted];

  return isRestricted;
}

- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000065"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000065"];
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

- (NSString)vehicleLayoutKey
{
  vehicleLayoutKeyCharacteristic = [(CAFVent *)self vehicleLayoutKeyCharacteristic];
  stringValue = [vehicleLayoutKeyCharacteristic stringValue];

  return stringValue;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000031000025"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    combinationsCharacteristic = [(CAFVent *)self combinationsCharacteristic];
    uniqueIdentifier2 = [combinationsCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      combinations = [(CAFVent *)self combinations];
      [observers ventService:self didUpdateCombinations:combinations];
LABEL_20:

      goto LABEL_21;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000030000038"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    currentIndexCharacteristic = [(CAFVent *)self currentIndexCharacteristic];
    uniqueIdentifier4 = [currentIndexCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      [observers ventService:self didUpdateCurrentIndex:{-[CAFVent currentIndex](self, "currentIndex")}];
LABEL_21:

      goto LABEL_22;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x000000003000005F"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    autoModeCharacteristic = [(CAFVent *)self autoModeCharacteristic];
    uniqueIdentifier6 = [autoModeCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers = [(CAFService *)self observers];
      [observers ventService:self didUpdateAutoMode:{-[CAFVent autoMode](self, "autoMode")}];
      goto LABEL_21;
    }
  }

  else
  {
  }

  characteristicType4 = [updateCopy characteristicType];
  if ([characteristicType4 isEqual:@"0x0000000030000002"])
  {
    uniqueIdentifier7 = [updateCopy uniqueIdentifier];
    onCharacteristic = [(CAFVent *)self onCharacteristic];
    uniqueIdentifier8 = [onCharacteristic uniqueIdentifier];
    v28 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v28)
    {
      observers = [(CAFService *)self observers];
      [observers ventService:self didUpdateOn:{-[CAFVent on](self, "on")}];
      goto LABEL_21;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000036000065"])
  {
    goto LABEL_21;
  }

  uniqueIdentifier9 = [updateCopy uniqueIdentifier];
  vehicleLayoutKeyCharacteristic = [(CAFVent *)self vehicleLayoutKeyCharacteristic];
  uniqueIdentifier10 = [vehicleLayoutKeyCharacteristic uniqueIdentifier];
  v32 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

  if (v32)
  {
    observers2 = [(CAFService *)self observers];
    vehicleLayoutKey = [(CAFVent *)self vehicleLayoutKey];
    [observers2 ventService:self didUpdateVehicleLayoutKey:vehicleLayoutKey];

    observers = [(CAFService *)self observers];
    combinations = [(CAFVent *)self name];
    [observers ventService:self didUpdateName:combinations];
    goto LABEL_20;
  }

LABEL_22:
  v35.receiver = self;
  v35.super_class = CAFVent;
  [(CAFService *)&v35 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForVentCombinations
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000025"];

  return v10;
}

- (BOOL)registeredForCurrentIndex
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000038"];

  return v10;
}

- (BOOL)registeredForAutoMode
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000005F"];

  return v10;
}

- (BOOL)registeredForOn
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000002"];

  return v10;
}

- (BOOL)registeredForVehicleLayoutKey
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000065"];

  return v10;
}

@end