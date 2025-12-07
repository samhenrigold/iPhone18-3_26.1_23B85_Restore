@interface CAFDisplayUnits
+ (void)load;
- (BOOL)hasEnergyEfficiencyUnitRawValue;
- (BOOL)hasFuelEfficiencyUnitRawValue;
- (BOOL)registeredForDistanceUnit;
- (BOOL)registeredForEnergyEfficiencyUnit;
- (BOOL)registeredForFuelEfficiencyUnit;
- (BOOL)registeredForSpeedUnit;
- (BOOL)registeredForTemperatureUnit;
- (CAFUnitEnergyEfficiency)energyEfficiencyUnit;
- (CAFUnitTypeCharacteristic)distanceUnitRawValueCharacteristic;
- (CAFUnitTypeCharacteristic)energyEfficiencyUnitRawValueCharacteristic;
- (CAFUnitTypeCharacteristic)fuelEfficiencyUnitRawValueCharacteristic;
- (CAFUnitTypeCharacteristic)speedUnitRawValueCharacteristic;
- (CAFUnitTypeCharacteristic)temperatureUnitRawValueCharacteristic;
- (NSUnitFuelEfficiency)fuelEfficiencyUnit;
- (NSUnitLength)distanceUnit;
- (NSUnitSpeed)speedUnit;
- (NSUnitTemperature)temperatureUnit;
- (unsigned)distanceUnitRawValue;
- (unsigned)energyEfficiencyUnitRawValue;
- (unsigned)fuelEfficiencyUnitRawValue;
- (unsigned)speedUnitRawValue;
- (unsigned)temperatureUnitRawValue;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFDisplayUnits

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFDisplayUnits;
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
  v6.super_class = CAFDisplayUnits;
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
  v6.super_class = CAFDisplayUnits;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFUnitTypeCharacteristic)speedUnitRawValueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000046000001"];
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

- (unsigned)speedUnitRawValue
{
  speedUnitRawValueCharacteristic = [(CAFDisplayUnits *)self speedUnitRawValueCharacteristic];
  unitTypeValue = [speedUnitRawValueCharacteristic unitTypeValue];

  return unitTypeValue;
}

- (NSUnitSpeed)speedUnit
{
  objc_opt_class();
  speedUnitRawValueCharacteristic = [(CAFDisplayUnits *)self speedUnitRawValueCharacteristic];
  unitValue = [speedUnitRawValueCharacteristic unitValue];
  if (unitValue && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = unitValue;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CAFUnitTypeCharacteristic)distanceUnitRawValueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000046000004"];
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

- (unsigned)distanceUnitRawValue
{
  distanceUnitRawValueCharacteristic = [(CAFDisplayUnits *)self distanceUnitRawValueCharacteristic];
  unitTypeValue = [distanceUnitRawValueCharacteristic unitTypeValue];

  return unitTypeValue;
}

- (NSUnitLength)distanceUnit
{
  objc_opt_class();
  distanceUnitRawValueCharacteristic = [(CAFDisplayUnits *)self distanceUnitRawValueCharacteristic];
  unitValue = [distanceUnitRawValueCharacteristic unitValue];
  if (unitValue && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = unitValue;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CAFUnitTypeCharacteristic)temperatureUnitRawValueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000046000005"];
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

- (unsigned)temperatureUnitRawValue
{
  temperatureUnitRawValueCharacteristic = [(CAFDisplayUnits *)self temperatureUnitRawValueCharacteristic];
  unitTypeValue = [temperatureUnitRawValueCharacteristic unitTypeValue];

  return unitTypeValue;
}

- (NSUnitTemperature)temperatureUnit
{
  objc_opt_class();
  temperatureUnitRawValueCharacteristic = [(CAFDisplayUnits *)self temperatureUnitRawValueCharacteristic];
  unitValue = [temperatureUnitRawValueCharacteristic unitValue];
  if (unitValue && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = unitValue;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CAFUnitTypeCharacteristic)energyEfficiencyUnitRawValueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000010"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000046000010"];
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

- (unsigned)energyEfficiencyUnitRawValue
{
  energyEfficiencyUnitRawValueCharacteristic = [(CAFDisplayUnits *)self energyEfficiencyUnitRawValueCharacteristic];
  unitTypeValue = [energyEfficiencyUnitRawValueCharacteristic unitTypeValue];

  return unitTypeValue;
}

- (CAFUnitEnergyEfficiency)energyEfficiencyUnit
{
  objc_opt_class();
  energyEfficiencyUnitRawValueCharacteristic = [(CAFDisplayUnits *)self energyEfficiencyUnitRawValueCharacteristic];
  unitValue = [energyEfficiencyUnitRawValueCharacteristic unitValue];
  if (unitValue && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = unitValue;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasEnergyEfficiencyUnitRawValue
{
  energyEfficiencyUnitRawValueCharacteristic = [(CAFDisplayUnits *)self energyEfficiencyUnitRawValueCharacteristic];
  v3 = energyEfficiencyUnitRawValueCharacteristic != 0;

  return v3;
}

- (CAFUnitTypeCharacteristic)fuelEfficiencyUnitRawValueCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000011"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000046000011"];
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

- (unsigned)fuelEfficiencyUnitRawValue
{
  fuelEfficiencyUnitRawValueCharacteristic = [(CAFDisplayUnits *)self fuelEfficiencyUnitRawValueCharacteristic];
  unitTypeValue = [fuelEfficiencyUnitRawValueCharacteristic unitTypeValue];

  return unitTypeValue;
}

- (NSUnitFuelEfficiency)fuelEfficiencyUnit
{
  objc_opt_class();
  fuelEfficiencyUnitRawValueCharacteristic = [(CAFDisplayUnits *)self fuelEfficiencyUnitRawValueCharacteristic];
  unitValue = [fuelEfficiencyUnitRawValueCharacteristic unitValue];
  if (unitValue && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = unitValue;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasFuelEfficiencyUnitRawValue
{
  fuelEfficiencyUnitRawValueCharacteristic = [(CAFDisplayUnits *)self fuelEfficiencyUnitRawValueCharacteristic];
  v3 = fuelEfficiencyUnitRawValueCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000046000001"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    speedUnitRawValueCharacteristic = [(CAFDisplayUnits *)self speedUnitRawValueCharacteristic];
    uniqueIdentifier2 = [speedUnitRawValueCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers displayUnitsService:self didUpdateSpeedUnitRawValue:{-[CAFDisplayUnits speedUnitRawValue](self, "speedUnitRawValue")}];
LABEL_20:

      goto LABEL_21;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000046000004"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    distanceUnitRawValueCharacteristic = [(CAFDisplayUnits *)self distanceUnitRawValueCharacteristic];
    uniqueIdentifier4 = [distanceUnitRawValueCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      [observers displayUnitsService:self didUpdateDistanceUnitRawValue:{-[CAFDisplayUnits distanceUnitRawValue](self, "distanceUnitRawValue")}];
      goto LABEL_20;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000046000005"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    temperatureUnitRawValueCharacteristic = [(CAFDisplayUnits *)self temperatureUnitRawValueCharacteristic];
    uniqueIdentifier6 = [temperatureUnitRawValueCharacteristic uniqueIdentifier];
    v22 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v22)
    {
      observers = [(CAFService *)self observers];
      [observers displayUnitsService:self didUpdateTemperatureUnitRawValue:{-[CAFDisplayUnits temperatureUnitRawValue](self, "temperatureUnitRawValue")}];
      goto LABEL_20;
    }
  }

  else
  {
  }

  characteristicType4 = [updateCopy characteristicType];
  if ([characteristicType4 isEqual:@"0x0000000046000010"])
  {
    uniqueIdentifier7 = [updateCopy uniqueIdentifier];
    energyEfficiencyUnitRawValueCharacteristic = [(CAFDisplayUnits *)self energyEfficiencyUnitRawValueCharacteristic];
    uniqueIdentifier8 = [energyEfficiencyUnitRawValueCharacteristic uniqueIdentifier];
    v27 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v27)
    {
      observers = [(CAFService *)self observers];
      [observers displayUnitsService:self didUpdateEnergyEfficiencyUnitRawValue:{-[CAFDisplayUnits energyEfficiencyUnitRawValue](self, "energyEfficiencyUnitRawValue")}];
      goto LABEL_20;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000046000011"])
  {
    goto LABEL_20;
  }

  uniqueIdentifier9 = [updateCopy uniqueIdentifier];
  fuelEfficiencyUnitRawValueCharacteristic = [(CAFDisplayUnits *)self fuelEfficiencyUnitRawValueCharacteristic];
  uniqueIdentifier10 = [fuelEfficiencyUnitRawValueCharacteristic uniqueIdentifier];
  v31 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

  if (v31)
  {
    observers = [(CAFService *)self observers];
    [observers displayUnitsService:self didUpdateFuelEfficiencyUnitRawValue:{-[CAFDisplayUnits fuelEfficiencyUnitRawValue](self, "fuelEfficiencyUnitRawValue")}];
    goto LABEL_20;
  }

LABEL_21:
  v32.receiver = self;
  v32.super_class = CAFDisplayUnits;
  [(CAFService *)&v32 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForSpeedUnit
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000001"];

  return v10;
}

- (BOOL)registeredForDistanceUnit
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000004"];

  return v10;
}

- (BOOL)registeredForTemperatureUnit
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000005"];

  return v10;
}

- (BOOL)registeredForEnergyEfficiencyUnit
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000010"];

  return v10;
}

- (BOOL)registeredForFuelEfficiencyUnit
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000046000011"];

  return v10;
}

@end