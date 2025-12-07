@interface CAFEnginePowerLevel
+ (void)load;
- (BOOL)hasPowerLevelMarkerAvailableMax;
- (BOOL)hasPowerLevelMarkerAvailableMin;
- (BOOL)hasPowerState;
- (BOOL)powerLevelInvalid;
- (BOOL)registeredForPowerLevel;
- (BOOL)registeredForPowerLevelMarkerAvailableMax;
- (BOOL)registeredForPowerLevelMarkerAvailableMin;
- (BOOL)registeredForPowerState;
- (CAFFloatRange)powerLevelMarkerAvailableMaxRange;
- (CAFFloatRange)powerLevelMarkerAvailableMinRange;
- (CAFFloatRange)powerLevelRange;
- (CAFMeasurementCharacteristic)powerLevelCharacteristic;
- (CAFMeasurementCharacteristic)powerLevelMarkerAvailableMaxCharacteristic;
- (CAFMeasurementCharacteristic)powerLevelMarkerAvailableMinCharacteristic;
- (CAFMeasurementRange)powerLevelMarkerAvailableMaxMeasurementRange;
- (CAFMeasurementRange)powerLevelMarkerAvailableMinMeasurementRange;
- (CAFMeasurementRange)powerLevelMeasurementRange;
- (CAFPowerStateCharacteristic)powerStateCharacteristic;
- (NSMeasurement)powerLevel;
- (NSMeasurement)powerLevelMarkerAvailableMax;
- (NSMeasurement)powerLevelMarkerAvailableMin;
- (unsigned)powerState;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFEnginePowerLevel

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFEnginePowerLevel;
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
  v6.super_class = CAFEnginePowerLevel;
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
  v6.super_class = CAFEnginePowerLevel;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)powerLevelCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000022"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000022"];
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

- (NSMeasurement)powerLevel
{
  powerLevelCharacteristic = [(CAFEnginePowerLevel *)self powerLevelCharacteristic];
  measurementValue = [powerLevelCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)powerLevelRange
{
  powerLevelCharacteristic = [(CAFEnginePowerLevel *)self powerLevelCharacteristic];
  range = [powerLevelCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)powerLevelMeasurementRange
{
  powerLevelRange = [(CAFEnginePowerLevel *)self powerLevelRange];
  powerLevel = [(CAFEnginePowerLevel *)self powerLevel];
  unit = [powerLevel unit];
  v6 = [powerLevelRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)powerLevelInvalid
{
  powerLevelCharacteristic = [(CAFEnginePowerLevel *)self powerLevelCharacteristic];
  isInvalid = [powerLevelCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMeasurementCharacteristic)powerLevelMarkerAvailableMinCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000023"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000023"];
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

- (NSMeasurement)powerLevelMarkerAvailableMin
{
  powerLevelMarkerAvailableMinCharacteristic = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMinCharacteristic];
  measurementValue = [powerLevelMarkerAvailableMinCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)powerLevelMarkerAvailableMinRange
{
  powerLevelMarkerAvailableMinCharacteristic = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMinCharacteristic];
  range = [powerLevelMarkerAvailableMinCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)powerLevelMarkerAvailableMinMeasurementRange
{
  powerLevelMarkerAvailableMinRange = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMinRange];
  powerLevelMarkerAvailableMin = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMin];
  unit = [powerLevelMarkerAvailableMin unit];
  v6 = [powerLevelMarkerAvailableMinRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasPowerLevelMarkerAvailableMin
{
  powerLevelMarkerAvailableMinCharacteristic = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMinCharacteristic];
  v3 = powerLevelMarkerAvailableMinCharacteristic != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)powerLevelMarkerAvailableMaxCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000024"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000024"];
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

- (NSMeasurement)powerLevelMarkerAvailableMax
{
  powerLevelMarkerAvailableMaxCharacteristic = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMaxCharacteristic];
  measurementValue = [powerLevelMarkerAvailableMaxCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)powerLevelMarkerAvailableMaxRange
{
  powerLevelMarkerAvailableMaxCharacteristic = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMaxCharacteristic];
  range = [powerLevelMarkerAvailableMaxCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)powerLevelMarkerAvailableMaxMeasurementRange
{
  powerLevelMarkerAvailableMaxRange = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMaxRange];
  powerLevelMarkerAvailableMax = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMax];
  unit = [powerLevelMarkerAvailableMax unit];
  v6 = [powerLevelMarkerAvailableMaxRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasPowerLevelMarkerAvailableMax
{
  powerLevelMarkerAvailableMaxCharacteristic = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMaxCharacteristic];
  v3 = powerLevelMarkerAvailableMaxCharacteristic != 0;

  return v3;
}

- (CAFPowerStateCharacteristic)powerStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000067"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000067"];
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

- (unsigned)powerState
{
  powerStateCharacteristic = [(CAFEnginePowerLevel *)self powerStateCharacteristic];
  powerStateValue = [powerStateCharacteristic powerStateValue];

  return powerStateValue;
}

- (BOOL)hasPowerState
{
  powerStateCharacteristic = [(CAFEnginePowerLevel *)self powerStateCharacteristic];
  v3 = powerStateCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000041000022"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    powerLevelCharacteristic = [(CAFEnginePowerLevel *)self powerLevelCharacteristic];
    uniqueIdentifier2 = [powerLevelCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      powerLevel = [(CAFEnginePowerLevel *)self powerLevel];
      [observers enginePowerLevelService:self didUpdatePowerLevel:powerLevel];
LABEL_12:

LABEL_17:
      goto LABEL_18;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000041000023"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    powerLevelMarkerAvailableMinCharacteristic = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMinCharacteristic];
    uniqueIdentifier4 = [powerLevelMarkerAvailableMinCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      powerLevel = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMin];
      [observers enginePowerLevelService:self didUpdatePowerLevelMarkerAvailableMin:powerLevel];
      goto LABEL_12;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000041000024"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    powerLevelMarkerAvailableMaxCharacteristic = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMaxCharacteristic];
    uniqueIdentifier6 = [powerLevelMarkerAvailableMaxCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers = [(CAFService *)self observers];
      powerLevel = [(CAFEnginePowerLevel *)self powerLevelMarkerAvailableMax];
      [observers enginePowerLevelService:self didUpdatePowerLevelMarkerAvailableMax:powerLevel];
      goto LABEL_12;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000036000067"])
  {
    goto LABEL_17;
  }

  uniqueIdentifier7 = [updateCopy uniqueIdentifier];
  powerStateCharacteristic = [(CAFEnginePowerLevel *)self powerStateCharacteristic];
  uniqueIdentifier8 = [powerStateCharacteristic uniqueIdentifier];
  v27 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

  if (v27)
  {
    observers = [(CAFService *)self observers];
    [observers enginePowerLevelService:self didUpdatePowerState:{-[CAFEnginePowerLevel powerState](self, "powerState")}];
    goto LABEL_17;
  }

LABEL_18:
  v28.receiver = self;
  v28.super_class = CAFEnginePowerLevel;
  [(CAFService *)&v28 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForPowerLevel
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000022"];

  return v10;
}

- (BOOL)registeredForPowerLevelMarkerAvailableMin
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000023"];

  return v10;
}

- (BOOL)registeredForPowerLevelMarkerAvailableMax
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000024"];

  return v10;
}

- (BOOL)registeredForPowerState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000067"];

  return v10;
}

@end