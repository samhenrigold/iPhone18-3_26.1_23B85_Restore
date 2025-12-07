@interface CAFChargingLevel
+ (void)load;
- (BOOL)distanceKMInvalid;
- (BOOL)distanceMilesInvalid;
- (BOOL)hasDistanceKM;
- (BOOL)hasDistanceMiles;
- (BOOL)registeredForChargingLevel;
- (BOOL)registeredForDistanceKM;
- (BOOL)registeredForDistanceMiles;
- (CAFMeasurementCharacteristic)chargingLevelCharacteristic;
- (CAFMeasurementCharacteristic)distanceKMCharacteristic;
- (CAFMeasurementCharacteristic)distanceMilesCharacteristic;
- (CAFMeasurementRange)chargingLevelMeasurementRange;
- (CAFMeasurementRange)distanceKMMeasurementRange;
- (CAFMeasurementRange)distanceMilesMeasurementRange;
- (CAFUInt64Range)distanceKMRange;
- (CAFUInt64Range)distanceMilesRange;
- (CAFUInt8Range)chargingLevelRange;
- (NSMeasurement)chargingLevel;
- (NSMeasurement)distanceKM;
- (NSMeasurement)distanceMiles;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setChargingLevel:(id)level;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFChargingLevel

+ (void)load
{
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___CAFChargingLevel;
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
  v6.super_class = CAFChargingLevel;
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
  v6.super_class = CAFChargingLevel;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)chargingLevelCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000004000000D"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000004000000D"];
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

- (NSMeasurement)chargingLevel
{
  chargingLevelCharacteristic = [(CAFChargingLevel *)self chargingLevelCharacteristic];
  measurementValue = [chargingLevelCharacteristic measurementValue];

  return measurementValue;
}

- (void)setChargingLevel:(id)level
{
  levelCopy = level;
  chargingLevelCharacteristic = [(CAFChargingLevel *)self chargingLevelCharacteristic];
  [chargingLevelCharacteristic setMeasurementValue:levelCopy];
}

- (CAFUInt8Range)chargingLevelRange
{
  chargingLevelCharacteristic = [(CAFChargingLevel *)self chargingLevelCharacteristic];
  range = [chargingLevelCharacteristic range];
  uInt8Range = [range uInt8Range];

  return uInt8Range;
}

- (CAFMeasurementRange)chargingLevelMeasurementRange
{
  chargingLevelRange = [(CAFChargingLevel *)self chargingLevelRange];
  chargingLevel = [(CAFChargingLevel *)self chargingLevel];
  unit = [chargingLevel unit];
  v6 = [chargingLevelRange measurementRangeWithUnit:unit];

  return v6;
}

- (CAFMeasurementCharacteristic)distanceKMCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004A"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000004A"];
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

- (NSMeasurement)distanceKM
{
  distanceKMCharacteristic = [(CAFChargingLevel *)self distanceKMCharacteristic];
  measurementValue = [distanceKMCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt64Range)distanceKMRange
{
  distanceKMCharacteristic = [(CAFChargingLevel *)self distanceKMCharacteristic];
  range = [distanceKMCharacteristic range];
  uInt64Range = [range uInt64Range];

  return uInt64Range;
}

- (CAFMeasurementRange)distanceKMMeasurementRange
{
  distanceKMRange = [(CAFChargingLevel *)self distanceKMRange];
  distanceKM = [(CAFChargingLevel *)self distanceKM];
  unit = [distanceKM unit];
  v6 = [distanceKMRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasDistanceKM
{
  distanceKMCharacteristic = [(CAFChargingLevel *)self distanceKMCharacteristic];
  v3 = distanceKMCharacteristic != 0;

  return v3;
}

- (BOOL)distanceKMInvalid
{
  distanceKMCharacteristic = [(CAFChargingLevel *)self distanceKMCharacteristic];
  isInvalid = [distanceKMCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMeasurementCharacteristic)distanceMilesCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004B"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000004B"];
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

- (NSMeasurement)distanceMiles
{
  distanceMilesCharacteristic = [(CAFChargingLevel *)self distanceMilesCharacteristic];
  measurementValue = [distanceMilesCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt64Range)distanceMilesRange
{
  distanceMilesCharacteristic = [(CAFChargingLevel *)self distanceMilesCharacteristic];
  range = [distanceMilesCharacteristic range];
  uInt64Range = [range uInt64Range];

  return uInt64Range;
}

- (CAFMeasurementRange)distanceMilesMeasurementRange
{
  distanceMilesRange = [(CAFChargingLevel *)self distanceMilesRange];
  distanceMiles = [(CAFChargingLevel *)self distanceMiles];
  unit = [distanceMiles unit];
  v6 = [distanceMilesRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasDistanceMiles
{
  distanceMilesCharacteristic = [(CAFChargingLevel *)self distanceMilesCharacteristic];
  v3 = distanceMilesCharacteristic != 0;

  return v3;
}

- (BOOL)distanceMilesInvalid
{
  distanceMilesCharacteristic = [(CAFChargingLevel *)self distanceMilesCharacteristic];
  isInvalid = [distanceMilesCharacteristic isInvalid];

  return isInvalid;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x000000004000000D"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    chargingLevelCharacteristic = [(CAFChargingLevel *)self chargingLevelCharacteristic];
    uniqueIdentifier2 = [chargingLevelCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      chargingLevel = [(CAFChargingLevel *)self chargingLevel];
      [observers chargingLevelService:self didUpdateChargingLevel:chargingLevel];
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x000000003000004A"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    distanceKMCharacteristic = [(CAFChargingLevel *)self distanceKMCharacteristic];
    uniqueIdentifier4 = [distanceKMCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      chargingLevel = [(CAFChargingLevel *)self distanceKM];
      [observers chargingLevelService:self didUpdateDistanceKM:chargingLevel];
      goto LABEL_12;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x000000003000004B"])
  {
LABEL_13:

    goto LABEL_14;
  }

  uniqueIdentifier5 = [updateCopy uniqueIdentifier];
  distanceMilesCharacteristic = [(CAFChargingLevel *)self distanceMilesCharacteristic];
  uniqueIdentifier6 = [distanceMilesCharacteristic uniqueIdentifier];
  v22 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

  if (v22)
  {
    observers = [(CAFService *)self observers];
    chargingLevel = [(CAFChargingLevel *)self distanceMiles];
    [observers chargingLevelService:self didUpdateDistanceMiles:chargingLevel];
    goto LABEL_12;
  }

LABEL_14:
  v23.receiver = self;
  v23.super_class = CAFChargingLevel;
  [(CAFService *)&v23 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForChargingLevel
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000004000000D"];

  return v10;
}

- (BOOL)registeredForDistanceKM
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004A"];

  return v10;
}

- (BOOL)registeredForDistanceMiles
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000004B"];

  return v10;
}

@end