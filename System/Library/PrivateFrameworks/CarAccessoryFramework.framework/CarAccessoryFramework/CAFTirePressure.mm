@interface CAFTirePressure
+ (void)load;
- (BOOL)hasPressure;
- (BOOL)hasSensorState;
- (BOOL)registeredForPressure;
- (BOOL)registeredForPressureState;
- (BOOL)registeredForSensorState;
- (BOOL)registeredForVehicleLayoutKey;
- (CAFMeasurementCharacteristic)pressureCharacteristic;
- (CAFMeasurementRange)pressureMeasurementRange;
- (CAFPressureStateCharacteristic)pressureStateCharacteristic;
- (CAFSensorStateCharacteristic)sensorStateCharacteristic;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (CAFUInt32Range)pressureRange;
- (NSMeasurement)pressure;
- (NSString)vehicleLayoutKey;
- (id)name;
- (unsigned)pressureState;
- (unsigned)sensorState;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTirePressure

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTirePressure;
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
  v6.super_class = CAFTirePressure;
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
  v6.super_class = CAFTirePressure;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  vehicleLayoutKeyCharacteristic = [(CAFTirePressure *)self vehicleLayoutKeyCharacteristic];
  formattedValue = [vehicleLayoutKeyCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
}

- (CAFSensorStateCharacteristic)sensorStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000001A"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000001A"];
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

- (unsigned)sensorState
{
  sensorStateCharacteristic = [(CAFTirePressure *)self sensorStateCharacteristic];
  sensorStateValue = [sensorStateCharacteristic sensorStateValue];

  return sensorStateValue;
}

- (BOOL)hasSensorState
{
  sensorStateCharacteristic = [(CAFTirePressure *)self sensorStateCharacteristic];
  v3 = sensorStateCharacteristic != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)pressureCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000001B"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000001B"];
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

- (NSMeasurement)pressure
{
  pressureCharacteristic = [(CAFTirePressure *)self pressureCharacteristic];
  measurementValue = [pressureCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt32Range)pressureRange
{
  pressureCharacteristic = [(CAFTirePressure *)self pressureCharacteristic];
  range = [pressureCharacteristic range];
  uInt32Range = [range uInt32Range];

  return uInt32Range;
}

- (CAFMeasurementRange)pressureMeasurementRange
{
  pressureRange = [(CAFTirePressure *)self pressureRange];
  pressure = [(CAFTirePressure *)self pressure];
  unit = [pressure unit];
  v6 = [pressureRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasPressure
{
  pressureCharacteristic = [(CAFTirePressure *)self pressureCharacteristic];
  v3 = pressureCharacteristic != 0;

  return v3;
}

- (CAFPressureStateCharacteristic)pressureStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000001C"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x000000003000001C"];
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

- (unsigned)pressureState
{
  pressureStateCharacteristic = [(CAFTirePressure *)self pressureStateCharacteristic];
  pressureStateValue = [pressureStateCharacteristic pressureStateValue];

  return pressureStateValue;
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
  vehicleLayoutKeyCharacteristic = [(CAFTirePressure *)self vehicleLayoutKeyCharacteristic];
  stringValue = [vehicleLayoutKeyCharacteristic stringValue];

  return stringValue;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x000000003000001A"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    sensorStateCharacteristic = [(CAFTirePressure *)self sensorStateCharacteristic];
    uniqueIdentifier2 = [sensorStateCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers tirePressureService:self didUpdateSensorState:{-[CAFTirePressure sensorState](self, "sensorState")}];
LABEL_17:

      goto LABEL_18;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x000000003000001B"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    pressureCharacteristic = [(CAFTirePressure *)self pressureCharacteristic];
    uniqueIdentifier4 = [pressureCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      pressure = [(CAFTirePressure *)self pressure];
      [observers tirePressureService:self didUpdatePressure:pressure];
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x000000003000001C"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    pressureStateCharacteristic = [(CAFTirePressure *)self pressureStateCharacteristic];
    uniqueIdentifier6 = [pressureStateCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers = [(CAFService *)self observers];
      [observers tirePressureService:self didUpdatePressureState:{-[CAFTirePressure pressureState](self, "pressureState")}];
      goto LABEL_17;
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
  vehicleLayoutKeyCharacteristic = [(CAFTirePressure *)self vehicleLayoutKeyCharacteristic];
  uniqueIdentifier8 = [vehicleLayoutKeyCharacteristic uniqueIdentifier];
  v27 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

  if (v27)
  {
    observers2 = [(CAFService *)self observers];
    vehicleLayoutKey = [(CAFTirePressure *)self vehicleLayoutKey];
    [observers2 tirePressureService:self didUpdateVehicleLayoutKey:vehicleLayoutKey];

    observers = [(CAFService *)self observers];
    pressure = [(CAFTirePressure *)self name];
    [observers tirePressureService:self didUpdateName:pressure];
    goto LABEL_16;
  }

LABEL_18:
  v30.receiver = self;
  v30.super_class = CAFTirePressure;
  [(CAFService *)&v30 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForSensorState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000001A"];

  return v10;
}

- (BOOL)registeredForPressure
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000001B"];

  return v10;
}

- (BOOL)registeredForPressureState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x000000003000001C"];

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