@interface CAFTemperature
+ (void)load;
- (BOOL)currentTemperatureInvalid;
- (BOOL)hasCurrentTemperature;
- (BOOL)hasOn;
- (BOOL)on;
- (BOOL)onDisabled;
- (BOOL)onInvalid;
- (BOOL)onRestricted;
- (BOOL)registeredForCurrentTemperature;
- (BOOL)registeredForOn;
- (BOOL)registeredForTargetTemperature;
- (BOOL)registeredForVehicleLayoutKey;
- (BOOL)targetTemperatureDisabled;
- (BOOL)targetTemperatureInvalid;
- (BOOL)targetTemperatureRestricted;
- (CAFBoolCharacteristic)onCharacteristic;
- (CAFFloatRange)currentTemperatureRange;
- (CAFFloatRange)targetTemperatureRange;
- (CAFMeasurementCharacteristic)currentTemperatureCharacteristic;
- (CAFMeasurementCharacteristic)targetTemperatureCharacteristic;
- (CAFMeasurementRange)currentTemperatureMeasurementRange;
- (CAFMeasurementRange)targetTemperatureMeasurementRange;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (NSMeasurement)currentTemperature;
- (NSMeasurement)targetTemperature;
- (NSString)vehicleLayoutKey;
- (id)name;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setOn:(BOOL)on;
- (void)setTargetTemperature:(id)temperature;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTemperature

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTemperature;
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
  v6.super_class = CAFTemperature;
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
  v6.super_class = CAFTemperature;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  vehicleLayoutKeyCharacteristic = [(CAFTemperature *)self vehicleLayoutKeyCharacteristic];
  formattedValue = [vehicleLayoutKeyCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
}

- (CAFMeasurementCharacteristic)currentTemperatureCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000019"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000019"];
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

- (NSMeasurement)currentTemperature
{
  currentTemperatureCharacteristic = [(CAFTemperature *)self currentTemperatureCharacteristic];
  measurementValue = [currentTemperatureCharacteristic measurementValue];

  return measurementValue;
}

- (CAFFloatRange)currentTemperatureRange
{
  currentTemperatureCharacteristic = [(CAFTemperature *)self currentTemperatureCharacteristic];
  range = [currentTemperatureCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)currentTemperatureMeasurementRange
{
  currentTemperatureRange = [(CAFTemperature *)self currentTemperatureRange];
  currentTemperature = [(CAFTemperature *)self currentTemperature];
  unit = [currentTemperature unit];
  v6 = [currentTemperatureRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasCurrentTemperature
{
  currentTemperatureCharacteristic = [(CAFTemperature *)self currentTemperatureCharacteristic];
  v3 = currentTemperatureCharacteristic != 0;

  return v3;
}

- (BOOL)currentTemperatureInvalid
{
  currentTemperatureCharacteristic = [(CAFTemperature *)self currentTemperatureCharacteristic];
  isInvalid = [currentTemperatureCharacteristic isInvalid];

  return isInvalid;
}

- (CAFMeasurementCharacteristic)targetTemperatureCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000017"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000017"];
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

- (NSMeasurement)targetTemperature
{
  targetTemperatureCharacteristic = [(CAFTemperature *)self targetTemperatureCharacteristic];
  measurementValue = [targetTemperatureCharacteristic measurementValue];

  return measurementValue;
}

- (void)setTargetTemperature:(id)temperature
{
  temperatureCopy = temperature;
  targetTemperatureCharacteristic = [(CAFTemperature *)self targetTemperatureCharacteristic];
  [targetTemperatureCharacteristic setMeasurementValue:temperatureCopy];
}

- (CAFFloatRange)targetTemperatureRange
{
  targetTemperatureCharacteristic = [(CAFTemperature *)self targetTemperatureCharacteristic];
  range = [targetTemperatureCharacteristic range];
  floatRange = [range floatRange];

  return floatRange;
}

- (CAFMeasurementRange)targetTemperatureMeasurementRange
{
  targetTemperatureRange = [(CAFTemperature *)self targetTemperatureRange];
  targetTemperature = [(CAFTemperature *)self targetTemperature];
  unit = [targetTemperature unit];
  v6 = [targetTemperatureRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)targetTemperatureDisabled
{
  targetTemperatureCharacteristic = [(CAFTemperature *)self targetTemperatureCharacteristic];
  isDisabled = [targetTemperatureCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)targetTemperatureInvalid
{
  targetTemperatureCharacteristic = [(CAFTemperature *)self targetTemperatureCharacteristic];
  isInvalid = [targetTemperatureCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)targetTemperatureRestricted
{
  targetTemperatureCharacteristic = [(CAFTemperature *)self targetTemperatureCharacteristic];
  isRestricted = [targetTemperatureCharacteristic isRestricted];

  return isRestricted;
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
  onCharacteristic = [(CAFTemperature *)self onCharacteristic];
  bOOLValue = [onCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setOn:(BOOL)on
{
  onCopy = on;
  onCharacteristic = [(CAFTemperature *)self onCharacteristic];
  [onCharacteristic setBoolValue:onCopy];
}

- (BOOL)hasOn
{
  onCharacteristic = [(CAFTemperature *)self onCharacteristic];
  v3 = onCharacteristic != 0;

  return v3;
}

- (BOOL)onDisabled
{
  onCharacteristic = [(CAFTemperature *)self onCharacteristic];
  isDisabled = [onCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)onInvalid
{
  onCharacteristic = [(CAFTemperature *)self onCharacteristic];
  isInvalid = [onCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)onRestricted
{
  onCharacteristic = [(CAFTemperature *)self onCharacteristic];
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
  vehicleLayoutKeyCharacteristic = [(CAFTemperature *)self vehicleLayoutKeyCharacteristic];
  stringValue = [vehicleLayoutKeyCharacteristic stringValue];

  return stringValue;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000031000019"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    currentTemperatureCharacteristic = [(CAFTemperature *)self currentTemperatureCharacteristic];
    uniqueIdentifier2 = [currentTemperatureCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      currentTemperature = [(CAFTemperature *)self currentTemperature];
      [observers temperatureService:self didUpdateCurrentTemperature:currentTemperature];
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000031000017"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    targetTemperatureCharacteristic = [(CAFTemperature *)self targetTemperatureCharacteristic];
    uniqueIdentifier4 = [targetTemperatureCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      currentTemperature = [(CAFTemperature *)self targetTemperature];
      [observers temperatureService:self didUpdateTargetTemperature:currentTemperature];
      goto LABEL_16;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000030000002"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    onCharacteristic = [(CAFTemperature *)self onCharacteristic];
    uniqueIdentifier6 = [onCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers = [(CAFService *)self observers];
      [observers temperatureService:self didUpdateOn:{-[CAFTemperature on](self, "on")}];
LABEL_17:

      goto LABEL_18;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000036000065"])
  {
    goto LABEL_17;
  }

  uniqueIdentifier7 = [updateCopy uniqueIdentifier];
  vehicleLayoutKeyCharacteristic = [(CAFTemperature *)self vehicleLayoutKeyCharacteristic];
  uniqueIdentifier8 = [vehicleLayoutKeyCharacteristic uniqueIdentifier];
  v27 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

  if (v27)
  {
    observers2 = [(CAFService *)self observers];
    vehicleLayoutKey = [(CAFTemperature *)self vehicleLayoutKey];
    [observers2 temperatureService:self didUpdateVehicleLayoutKey:vehicleLayoutKey];

    observers = [(CAFService *)self observers];
    currentTemperature = [(CAFTemperature *)self name];
    [observers temperatureService:self didUpdateName:currentTemperature];
    goto LABEL_16;
  }

LABEL_18:
  v30.receiver = self;
  v30.super_class = CAFTemperature;
  [(CAFService *)&v30 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForCurrentTemperature
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000019"];

  return v10;
}

- (BOOL)registeredForTargetTemperature
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000017"];

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