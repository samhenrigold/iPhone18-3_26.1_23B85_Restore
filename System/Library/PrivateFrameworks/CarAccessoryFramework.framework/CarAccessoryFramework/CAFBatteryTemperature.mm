@interface CAFBatteryTemperature
+ (void)load;
- (BOOL)hasTemperatureMarkerCold;
- (BOOL)hasTemperatureMarkerHot;
- (BOOL)registeredForTemperature;
- (BOOL)registeredForTemperatureMarkerCold;
- (BOOL)registeredForTemperatureMarkerHot;
- (BOOL)registeredForTemperatureMax;
- (BOOL)registeredForTemperatureMin;
- (BOOL)registeredForTemperatureState;
- (BOOL)temperatureInvalid;
- (CAFFloatRange)temperatureMarkerColdRange;
- (CAFFloatRange)temperatureMarkerHotRange;
- (CAFFloatRange)temperatureMaxRange;
- (CAFFloatRange)temperatureMinRange;
- (CAFFloatRange)temperatureRange;
- (CAFMeasurementCharacteristic)temperatureCharacteristic;
- (CAFMeasurementCharacteristic)temperatureMarkerColdCharacteristic;
- (CAFMeasurementCharacteristic)temperatureMarkerHotCharacteristic;
- (CAFMeasurementCharacteristic)temperatureMaxCharacteristic;
- (CAFMeasurementCharacteristic)temperatureMinCharacteristic;
- (CAFMeasurementRange)temperatureMarkerColdMeasurementRange;
- (CAFMeasurementRange)temperatureMarkerHotMeasurementRange;
- (CAFMeasurementRange)temperatureMaxMeasurementRange;
- (CAFMeasurementRange)temperatureMeasurementRange;
- (CAFMeasurementRange)temperatureMinMeasurementRange;
- (CAFTemperatureStateCharacteristic)temperatureStateCharacteristic;
- (NSMeasurement)temperature;
- (NSMeasurement)temperatureMarkerCold;
- (NSMeasurement)temperatureMarkerHot;
- (NSMeasurement)temperatureMax;
- (NSMeasurement)temperatureMin;
- (unsigned)temperatureState;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFBatteryTemperature

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFBatteryTemperature;
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
  v6.super_class = CAFBatteryTemperature;
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
  v6.super_class = CAFBatteryTemperature;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFMeasurementCharacteristic)temperatureCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000001D"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000001D"];
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

- (NSMeasurement)temperature
{
  temperatureCharacteristic = [(CAFBatteryTemperature *)self temperatureCharacteristic];
  measurementValue = [temperatureCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)temperatureRange
{
  temperatureCharacteristic = [(CAFBatteryTemperature *)self temperatureCharacteristic];
  range = [temperatureCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)temperatureMeasurementRange
{
  temperatureRange = [(CAFBatteryTemperature *)self temperatureRange];
  temperature = [(CAFBatteryTemperature *)self temperature];
  unit = [temperature unit];
  v6 = [temperatureRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)temperatureInvalid
{
  temperatureCharacteristic = [(CAFBatteryTemperature *)self temperatureCharacteristic];
  isInvalid = [temperatureCharacteristic isInvalid];

  return isInvalid;
}

- (CAFTemperatureStateCharacteristic)temperatureStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000001E"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000001E"];
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

- (unsigned)temperatureState
{
  temperatureStateCharacteristic = [(CAFBatteryTemperature *)self temperatureStateCharacteristic];
  temperatureStateValue = [temperatureStateCharacteristic temperatureStateValue];

  return temperatureStateValue;
}

- (CAFMeasurementCharacteristic)temperatureMinCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000054"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000054"];
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

- (NSMeasurement)temperatureMin
{
  temperatureMinCharacteristic = [(CAFBatteryTemperature *)self temperatureMinCharacteristic];
  measurementValue = [temperatureMinCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)temperatureMinRange
{
  temperatureMinCharacteristic = [(CAFBatteryTemperature *)self temperatureMinCharacteristic];
  range = [temperatureMinCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)temperatureMinMeasurementRange
{
  temperatureMinRange = [(CAFBatteryTemperature *)self temperatureMinRange];
  temperatureMin = [(CAFBatteryTemperature *)self temperatureMin];
  unit = [temperatureMin unit];
  v6 = [temperatureMinRange measurementRangeWithUnit:unit];

  return v6;
}

- (CAFMeasurementCharacteristic)temperatureMaxCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000055"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000055"];
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

- (NSMeasurement)temperatureMax
{
  temperatureMaxCharacteristic = [(CAFBatteryTemperature *)self temperatureMaxCharacteristic];
  measurementValue = [temperatureMaxCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)temperatureMaxRange
{
  temperatureMaxCharacteristic = [(CAFBatteryTemperature *)self temperatureMaxCharacteristic];
  range = [temperatureMaxCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)temperatureMaxMeasurementRange
{
  temperatureMaxRange = [(CAFBatteryTemperature *)self temperatureMaxRange];
  temperatureMax = [(CAFBatteryTemperature *)self temperatureMax];
  unit = [temperatureMax unit];
  v6 = [temperatureMaxRange measurementRangeWithUnit:unit];

  return v6;
}

- (CAFMeasurementCharacteristic)temperatureMarkerColdCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000056"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000056"];
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

- (NSMeasurement)temperatureMarkerCold
{
  temperatureMarkerColdCharacteristic = [(CAFBatteryTemperature *)self temperatureMarkerColdCharacteristic];
  measurementValue = [temperatureMarkerColdCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)temperatureMarkerColdRange
{
  temperatureMarkerColdCharacteristic = [(CAFBatteryTemperature *)self temperatureMarkerColdCharacteristic];
  range = [temperatureMarkerColdCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)temperatureMarkerColdMeasurementRange
{
  temperatureMarkerColdRange = [(CAFBatteryTemperature *)self temperatureMarkerColdRange];
  temperatureMarkerCold = [(CAFBatteryTemperature *)self temperatureMarkerCold];
  unit = [temperatureMarkerCold unit];
  v6 = [temperatureMarkerColdRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasTemperatureMarkerCold
{
  temperatureMarkerColdCharacteristic = [(CAFBatteryTemperature *)self temperatureMarkerColdCharacteristic];
  v3 = temperatureMarkerColdCharacteristic != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)temperatureMarkerHotCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000057"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000057"];
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

- (NSMeasurement)temperatureMarkerHot
{
  temperatureMarkerHotCharacteristic = [(CAFBatteryTemperature *)self temperatureMarkerHotCharacteristic];
  measurementValue = [temperatureMarkerHotCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)temperatureMarkerHotRange
{
  temperatureMarkerHotCharacteristic = [(CAFBatteryTemperature *)self temperatureMarkerHotCharacteristic];
  range = [temperatureMarkerHotCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)temperatureMarkerHotMeasurementRange
{
  temperatureMarkerHotRange = [(CAFBatteryTemperature *)self temperatureMarkerHotRange];
  temperatureMarkerHot = [(CAFBatteryTemperature *)self temperatureMarkerHot];
  unit = [temperatureMarkerHot unit];
  v6 = [temperatureMarkerHotRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasTemperatureMarkerHot
{
  temperatureMarkerHotCharacteristic = [(CAFBatteryTemperature *)self temperatureMarkerHotCharacteristic];
  v3 = temperatureMarkerHotCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x000000003000001D"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    temperatureCharacteristic = [(CAFBatteryTemperature *)self temperatureCharacteristic];
    uniqueIdentifier2 = [temperatureCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      temperature = [(CAFBatteryTemperature *)self temperature];
      [observers batteryTemperatureService:self didUpdateTemperature:temperature];
LABEL_24:

      goto LABEL_25;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x000000003000001E"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    temperatureStateCharacteristic = [(CAFBatteryTemperature *)self temperatureStateCharacteristic];
    uniqueIdentifier4 = [temperatureStateCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      [observers batteryTemperatureService:self didUpdateTemperatureState:{-[CAFBatteryTemperature temperatureState](self, "temperatureState")}];
      goto LABEL_25;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000030000054"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    temperatureMinCharacteristic = [(CAFBatteryTemperature *)self temperatureMinCharacteristic];
    uniqueIdentifier6 = [temperatureMinCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers = [(CAFService *)self observers];
      temperature = [(CAFBatteryTemperature *)self temperatureMin];
      [observers batteryTemperatureService:self didUpdateTemperatureMin:temperature];
      goto LABEL_24;
    }
  }

  else
  {
  }

  characteristicType4 = [updateCopy characteristicType];
  if ([characteristicType4 isEqual:@"0x0000000030000055"])
  {
    uniqueIdentifier7 = [updateCopy uniqueIdentifier];
    temperatureMaxCharacteristic = [(CAFBatteryTemperature *)self temperatureMaxCharacteristic];
    uniqueIdentifier8 = [temperatureMaxCharacteristic uniqueIdentifier];
    v28 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v28)
    {
      observers = [(CAFService *)self observers];
      temperature = [(CAFBatteryTemperature *)self temperatureMax];
      [observers batteryTemperatureService:self didUpdateTemperatureMax:temperature];
      goto LABEL_24;
    }
  }

  else
  {
  }

  characteristicType5 = [updateCopy characteristicType];
  if ([characteristicType5 isEqual:@"0x0000000030000056"])
  {
    uniqueIdentifier9 = [updateCopy uniqueIdentifier];
    temperatureMarkerColdCharacteristic = [(CAFBatteryTemperature *)self temperatureMarkerColdCharacteristic];
    uniqueIdentifier10 = [temperatureMarkerColdCharacteristic uniqueIdentifier];
    v33 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

    if (v33)
    {
      observers = [(CAFService *)self observers];
      temperature = [(CAFBatteryTemperature *)self temperatureMarkerCold];
      [observers batteryTemperatureService:self didUpdateTemperatureMarkerCold:temperature];
      goto LABEL_24;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000030000057"])
  {
LABEL_25:

    goto LABEL_26;
  }

  uniqueIdentifier11 = [updateCopy uniqueIdentifier];
  temperatureMarkerHotCharacteristic = [(CAFBatteryTemperature *)self temperatureMarkerHotCharacteristic];
  uniqueIdentifier12 = [temperatureMarkerHotCharacteristic uniqueIdentifier];
  v37 = [uniqueIdentifier11 isEqual:uniqueIdentifier12];

  if (v37)
  {
    observers = [(CAFService *)self observers];
    temperature = [(CAFBatteryTemperature *)self temperatureMarkerHot];
    [observers batteryTemperatureService:self didUpdateTemperatureMarkerHot:temperature];
    goto LABEL_24;
  }

LABEL_26:
  v38.receiver = self;
  v38.super_class = CAFBatteryTemperature;
  [(CAFService *)&v38 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForTemperature
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000001D"];

  return v10;
}

- (BOOL)registeredForTemperatureState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000001E"];

  return v10;
}

- (BOOL)registeredForTemperatureMin
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000054"];

  return v10;
}

- (BOOL)registeredForTemperatureMax
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000055"];

  return v10;
}

- (BOOL)registeredForTemperatureMarkerCold
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000056"];

  return v10;
}

- (BOOL)registeredForTemperatureMarkerHot
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000057"];

  return v10;
}

@end