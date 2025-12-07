@interface CAFSeatHeatingCooling
+ (void)load;
- (BOOL)autoMode;
- (BOOL)hasAutoMode;
- (BOOL)hasOn;
- (BOOL)heatingCoolingLevelDisabled;
- (BOOL)heatingCoolingLevelInvalid;
- (BOOL)heatingCoolingLevelRestricted;
- (BOOL)on;
- (BOOL)onDisabled;
- (BOOL)onInvalid;
- (BOOL)onRestricted;
- (BOOL)registeredForAutoMode;
- (BOOL)registeredForHeatingCoolingLevel;
- (BOOL)registeredForOn;
- (BOOL)registeredForVehicleLayoutKey;
- (CAFBoolCharacteristic)autoModeCharacteristic;
- (CAFBoolCharacteristic)onCharacteristic;
- (CAFInt32Characteristic)heatingCoolingLevelCharacteristic;
- (CAFInt32Range)heatingCoolingLevelRange;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (NSString)vehicleLayoutKey;
- (id)name;
- (int)heatingCoolingLevel;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setHeatingCoolingLevel:(int)level;
- (void)setOn:(BOOL)on;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFSeatHeatingCooling

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSeatHeatingCooling;
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
  v6.super_class = CAFSeatHeatingCooling;
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
  v6.super_class = CAFSeatHeatingCooling;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  vehicleLayoutKeyCharacteristic = [(CAFSeatHeatingCooling *)self vehicleLayoutKeyCharacteristic];
  formattedValue = [vehicleLayoutKeyCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
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
  onCharacteristic = [(CAFSeatHeatingCooling *)self onCharacteristic];
  bOOLValue = [onCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setOn:(BOOL)on
{
  onCopy = on;
  onCharacteristic = [(CAFSeatHeatingCooling *)self onCharacteristic];
  [onCharacteristic setBoolValue:onCopy];
}

- (BOOL)hasOn
{
  onCharacteristic = [(CAFSeatHeatingCooling *)self onCharacteristic];
  v3 = onCharacteristic != 0;

  return v3;
}

- (BOOL)onDisabled
{
  onCharacteristic = [(CAFSeatHeatingCooling *)self onCharacteristic];
  isDisabled = [onCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)onInvalid
{
  onCharacteristic = [(CAFSeatHeatingCooling *)self onCharacteristic];
  isInvalid = [onCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)onRestricted
{
  onCharacteristic = [(CAFSeatHeatingCooling *)self onCharacteristic];
  isRestricted = [onCharacteristic isRestricted];

  return isRestricted;
}

- (CAFInt32Characteristic)heatingCoolingLevelCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000021"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000021"];
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

- (int)heatingCoolingLevel
{
  heatingCoolingLevelCharacteristic = [(CAFSeatHeatingCooling *)self heatingCoolingLevelCharacteristic];
  int32Value = [heatingCoolingLevelCharacteristic int32Value];

  return int32Value;
}

- (void)setHeatingCoolingLevel:(int)level
{
  v3 = *&level;
  heatingCoolingLevelCharacteristic = [(CAFSeatHeatingCooling *)self heatingCoolingLevelCharacteristic];
  [heatingCoolingLevelCharacteristic setInt32Value:v3];
}

- (CAFInt32Range)heatingCoolingLevelRange
{
  heatingCoolingLevelCharacteristic = [(CAFSeatHeatingCooling *)self heatingCoolingLevelCharacteristic];
  range = [heatingCoolingLevelCharacteristic range];

  return range;
}

- (BOOL)heatingCoolingLevelDisabled
{
  heatingCoolingLevelCharacteristic = [(CAFSeatHeatingCooling *)self heatingCoolingLevelCharacteristic];
  isDisabled = [heatingCoolingLevelCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)heatingCoolingLevelInvalid
{
  heatingCoolingLevelCharacteristic = [(CAFSeatHeatingCooling *)self heatingCoolingLevelCharacteristic];
  isInvalid = [heatingCoolingLevelCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)heatingCoolingLevelRestricted
{
  heatingCoolingLevelCharacteristic = [(CAFSeatHeatingCooling *)self heatingCoolingLevelCharacteristic];
  isRestricted = [heatingCoolingLevelCharacteristic isRestricted];

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
  autoModeCharacteristic = [(CAFSeatHeatingCooling *)self autoModeCharacteristic];
  bOOLValue = [autoModeCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasAutoMode
{
  autoModeCharacteristic = [(CAFSeatHeatingCooling *)self autoModeCharacteristic];
  v3 = autoModeCharacteristic != 0;

  return v3;
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
  vehicleLayoutKeyCharacteristic = [(CAFSeatHeatingCooling *)self vehicleLayoutKeyCharacteristic];
  stringValue = [vehicleLayoutKeyCharacteristic stringValue];

  return stringValue;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000030000002"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    onCharacteristic = [(CAFSeatHeatingCooling *)self onCharacteristic];
    uniqueIdentifier2 = [onCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers heatingCoolingService:self didUpdateOn:{-[CAFSeatHeatingCooling on](self, "on")}];
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000031000021"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    heatingCoolingLevelCharacteristic = [(CAFSeatHeatingCooling *)self heatingCoolingLevelCharacteristic];
    uniqueIdentifier4 = [heatingCoolingLevelCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      [observers heatingCoolingService:self didUpdateHeatingCoolingLevel:{-[CAFSeatHeatingCooling heatingCoolingLevel](self, "heatingCoolingLevel")}];
      goto LABEL_16;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x000000003000005F"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    autoModeCharacteristic = [(CAFSeatHeatingCooling *)self autoModeCharacteristic];
    uniqueIdentifier6 = [autoModeCharacteristic uniqueIdentifier];
    v22 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v22)
    {
      observers = [(CAFService *)self observers];
      [observers heatingCoolingService:self didUpdateAutoMode:{-[CAFSeatHeatingCooling autoMode](self, "autoMode")}];
      goto LABEL_16;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000036000065"])
  {
    goto LABEL_16;
  }

  uniqueIdentifier7 = [updateCopy uniqueIdentifier];
  vehicleLayoutKeyCharacteristic = [(CAFSeatHeatingCooling *)self vehicleLayoutKeyCharacteristic];
  uniqueIdentifier8 = [vehicleLayoutKeyCharacteristic uniqueIdentifier];
  v26 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

  if (v26)
  {
    observers2 = [(CAFService *)self observers];
    vehicleLayoutKey = [(CAFSeatHeatingCooling *)self vehicleLayoutKey];
    [observers2 heatingCoolingService:self didUpdateVehicleLayoutKey:vehicleLayoutKey];

    observers = [(CAFService *)self observers];
    name = [(CAFSeatHeatingCooling *)self name];
    [observers heatingCoolingService:self didUpdateName:name];

    goto LABEL_16;
  }

LABEL_17:
  v30.receiver = self;
  v30.super_class = CAFSeatHeatingCooling;
  [(CAFService *)&v30 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
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

- (BOOL)registeredForHeatingCoolingLevel
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000021"];

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