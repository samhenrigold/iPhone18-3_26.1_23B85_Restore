@interface CAFExteriorConditions
+ (void)load;
- (BOOL)aqiInvalid;
- (BOOL)hasAqi;
- (BOOL)hasIcyConditions;
- (BOOL)registeredForAQI;
- (BOOL)registeredForIcyConditions;
- (BOOL)registeredForTemperature;
- (BOOL)temperatureInvalid;
- (CAFFloatRange)aqiRange;
- (CAFFloatRange)temperatureRange;
- (CAFIcyConditionsCharacteristic)icyConditionsCharacteristic;
- (CAFMeasurementCharacteristic)aqiCharacteristic;
- (CAFMeasurementCharacteristic)temperatureCharacteristic;
- (CAFMeasurementRange)aqiMeasurementRange;
- (CAFMeasurementRange)temperatureMeasurementRange;
- (NSMeasurement)aqi;
- (NSMeasurement)temperature;
- (unsigned)icyConditions;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFExteriorConditions

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFExteriorConditions;
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
  v6.super_class = CAFExteriorConditions;
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
  v6.super_class = CAFExteriorConditions;
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
  temperatureCharacteristic = [(CAFExteriorConditions *)self temperatureCharacteristic];
  measurementValue = [temperatureCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)temperatureRange
{
  temperatureCharacteristic = [(CAFExteriorConditions *)self temperatureCharacteristic];
  range = [temperatureCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)temperatureMeasurementRange
{
  temperatureRange = [(CAFExteriorConditions *)self temperatureRange];
  temperature = [(CAFExteriorConditions *)self temperature];
  unit = [temperature unit];
  v6 = [temperatureRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)temperatureInvalid
{
  temperatureCharacteristic = [(CAFExteriorConditions *)self temperatureCharacteristic];
  isInvalid = [temperatureCharacteristic isInvalid];

  return isInvalid;
}

- (CAFIcyConditionsCharacteristic)icyConditionsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000051000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000051000005"];
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

- (unsigned)icyConditions
{
  icyConditionsCharacteristic = [(CAFExteriorConditions *)self icyConditionsCharacteristic];
  icyConditionsValue = [icyConditionsCharacteristic icyConditionsValue];

  return icyConditionsValue;
}

- (BOOL)hasIcyConditions
{
  icyConditionsCharacteristic = [(CAFExteriorConditions *)self icyConditionsCharacteristic];
  v3 = icyConditionsCharacteristic != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)aqiCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000010"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000010"];
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

- (NSMeasurement)aqi
{
  aqiCharacteristic = [(CAFExteriorConditions *)self aqiCharacteristic];
  measurementValue = [aqiCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)aqiRange
{
  aqiCharacteristic = [(CAFExteriorConditions *)self aqiCharacteristic];
  range = [aqiCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)aqiMeasurementRange
{
  aqiRange = [(CAFExteriorConditions *)self aqiRange];
  v4 = [(CAFExteriorConditions *)self aqi];
  unit = [v4 unit];
  v6 = [aqiRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasAqi
{
  aqiCharacteristic = [(CAFExteriorConditions *)self aqiCharacteristic];
  v3 = aqiCharacteristic != 0;

  return v3;
}

- (BOOL)aqiInvalid
{
  aqiCharacteristic = [(CAFExteriorConditions *)self aqiCharacteristic];
  isInvalid = [aqiCharacteristic isInvalid];

  return isInvalid;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x000000003000001D"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    temperatureCharacteristic = [(CAFExteriorConditions *)self temperatureCharacteristic];
    uniqueIdentifier2 = [temperatureCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      temperature = [(CAFExteriorConditions *)self temperature];
      [observers exteriorConditionsService:self didUpdateTemperature:temperature];
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000051000005"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    icyConditionsCharacteristic = [(CAFExteriorConditions *)self icyConditionsCharacteristic];
    uniqueIdentifier4 = [icyConditionsCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      [observers exteriorConditionsService:self didUpdateIcyConditions:{-[CAFExteriorConditions icyConditions](self, "icyConditions")}];
LABEL_13:

      goto LABEL_14;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000031000010"])
  {
    goto LABEL_13;
  }

  uniqueIdentifier5 = [updateCopy uniqueIdentifier];
  aqiCharacteristic = [(CAFExteriorConditions *)self aqiCharacteristic];
  uniqueIdentifier6 = [aqiCharacteristic uniqueIdentifier];
  v22 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

  if (v22)
  {
    observers = [(CAFService *)self observers];
    temperature = [(CAFExteriorConditions *)self aqi];
    [observers exteriorConditionsService:self didUpdateAqi:temperature];
    goto LABEL_12;
  }

LABEL_14:
  v23.receiver = self;
  v23.super_class = CAFExteriorConditions;
  [(CAFService *)&v23 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
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

- (BOOL)registeredForIcyConditions
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000051000005"];

  return v10;
}

- (BOOL)registeredForAQI
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000010"];

  return v10;
}

@end