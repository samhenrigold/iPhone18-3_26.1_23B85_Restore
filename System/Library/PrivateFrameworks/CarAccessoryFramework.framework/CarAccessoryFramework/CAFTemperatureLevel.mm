@interface CAFTemperatureLevel
+ (void)load;
- (BOOL)hasOn;
- (BOOL)heatingCoolingLevelDisabled;
- (BOOL)heatingCoolingLevelInvalid;
- (BOOL)heatingCoolingLevelRestricted;
- (BOOL)on;
- (BOOL)onDisabled;
- (BOOL)onInvalid;
- (BOOL)onRestricted;
- (BOOL)registeredForHeatingCoolingLevel;
- (BOOL)registeredForOn;
- (BOOL)registeredForVehicleLayoutKey;
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

@implementation CAFTemperatureLevel

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTemperatureLevel;
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
  v6.super_class = CAFTemperatureLevel;
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
  v6.super_class = CAFTemperatureLevel;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  vehicleLayoutKeyCharacteristic = [(CAFTemperatureLevel *)self vehicleLayoutKeyCharacteristic];
  formattedValue = [vehicleLayoutKeyCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
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
  heatingCoolingLevelCharacteristic = [(CAFTemperatureLevel *)self heatingCoolingLevelCharacteristic];
  int32Value = [heatingCoolingLevelCharacteristic int32Value];

  return int32Value;
}

- (void)setHeatingCoolingLevel:(int)level
{
  v3 = *&level;
  heatingCoolingLevelCharacteristic = [(CAFTemperatureLevel *)self heatingCoolingLevelCharacteristic];
  [heatingCoolingLevelCharacteristic setInt32Value:v3];
}

- (CAFInt32Range)heatingCoolingLevelRange
{
  heatingCoolingLevelCharacteristic = [(CAFTemperatureLevel *)self heatingCoolingLevelCharacteristic];
  range = [heatingCoolingLevelCharacteristic range];

  return range;
}

- (BOOL)heatingCoolingLevelDisabled
{
  heatingCoolingLevelCharacteristic = [(CAFTemperatureLevel *)self heatingCoolingLevelCharacteristic];
  isDisabled = [heatingCoolingLevelCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)heatingCoolingLevelInvalid
{
  heatingCoolingLevelCharacteristic = [(CAFTemperatureLevel *)self heatingCoolingLevelCharacteristic];
  isInvalid = [heatingCoolingLevelCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)heatingCoolingLevelRestricted
{
  heatingCoolingLevelCharacteristic = [(CAFTemperatureLevel *)self heatingCoolingLevelCharacteristic];
  isRestricted = [heatingCoolingLevelCharacteristic isRestricted];

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
  onCharacteristic = [(CAFTemperatureLevel *)self onCharacteristic];
  bOOLValue = [onCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setOn:(BOOL)on
{
  onCopy = on;
  onCharacteristic = [(CAFTemperatureLevel *)self onCharacteristic];
  [onCharacteristic setBoolValue:onCopy];
}

- (BOOL)hasOn
{
  onCharacteristic = [(CAFTemperatureLevel *)self onCharacteristic];
  v3 = onCharacteristic != 0;

  return v3;
}

- (BOOL)onDisabled
{
  onCharacteristic = [(CAFTemperatureLevel *)self onCharacteristic];
  isDisabled = [onCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)onInvalid
{
  onCharacteristic = [(CAFTemperatureLevel *)self onCharacteristic];
  isInvalid = [onCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)onRestricted
{
  onCharacteristic = [(CAFTemperatureLevel *)self onCharacteristic];
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
  vehicleLayoutKeyCharacteristic = [(CAFTemperatureLevel *)self vehicleLayoutKeyCharacteristic];
  stringValue = [vehicleLayoutKeyCharacteristic stringValue];

  return stringValue;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000031000021"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    heatingCoolingLevelCharacteristic = [(CAFTemperatureLevel *)self heatingCoolingLevelCharacteristic];
    uniqueIdentifier2 = [heatingCoolingLevelCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers temperatureLevelService:self didUpdateHeatingCoolingLevel:{-[CAFTemperatureLevel heatingCoolingLevel](self, "heatingCoolingLevel")}];
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000030000002"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    onCharacteristic = [(CAFTemperatureLevel *)self onCharacteristic];
    uniqueIdentifier4 = [onCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      [observers temperatureLevelService:self didUpdateOn:{-[CAFTemperatureLevel on](self, "on")}];
      goto LABEL_12;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000036000065"])
  {
    goto LABEL_12;
  }

  uniqueIdentifier5 = [updateCopy uniqueIdentifier];
  vehicleLayoutKeyCharacteristic = [(CAFTemperatureLevel *)self vehicleLayoutKeyCharacteristic];
  uniqueIdentifier6 = [vehicleLayoutKeyCharacteristic uniqueIdentifier];
  v21 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

  if (v21)
  {
    observers2 = [(CAFService *)self observers];
    vehicleLayoutKey = [(CAFTemperatureLevel *)self vehicleLayoutKey];
    [observers2 temperatureLevelService:self didUpdateVehicleLayoutKey:vehicleLayoutKey];

    observers = [(CAFService *)self observers];
    name = [(CAFTemperatureLevel *)self name];
    [observers temperatureLevelService:self didUpdateName:name];

    goto LABEL_12;
  }

LABEL_13:
  v25.receiver = self;
  v25.super_class = CAFTemperatureLevel;
  [(CAFService *)&v25 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
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