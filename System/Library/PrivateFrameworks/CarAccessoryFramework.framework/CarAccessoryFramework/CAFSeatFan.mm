@interface CAFSeatFan
+ (void)load;
- (BOOL)autoMode;
- (BOOL)fanLevelDisabled;
- (BOOL)fanLevelInvalid;
- (BOOL)fanLevelRestricted;
- (BOOL)hasAutoMode;
- (BOOL)hasOn;
- (BOOL)on;
- (BOOL)onDisabled;
- (BOOL)onInvalid;
- (BOOL)onRestricted;
- (BOOL)registeredForAutoMode;
- (BOOL)registeredForFanLevel;
- (BOOL)registeredForOn;
- (BOOL)registeredForVehicleLayoutKey;
- (CAFBoolCharacteristic)autoModeCharacteristic;
- (CAFBoolCharacteristic)onCharacteristic;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (CAFUInt8Characteristic)fanLevelCharacteristic;
- (CAFUInt8Range)fanLevelRange;
- (NSString)vehicleLayoutKey;
- (id)name;
- (unsigned)fanLevel;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setFanLevel:(unsigned __int8)level;
- (void)setOn:(BOOL)on;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFSeatFan

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSeatFan;
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
  v6.super_class = CAFSeatFan;
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
  v6.super_class = CAFSeatFan;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  vehicleLayoutKeyCharacteristic = [(CAFSeatFan *)self vehicleLayoutKeyCharacteristic];
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
  onCharacteristic = [(CAFSeatFan *)self onCharacteristic];
  bOOLValue = [onCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setOn:(BOOL)on
{
  onCopy = on;
  onCharacteristic = [(CAFSeatFan *)self onCharacteristic];
  [onCharacteristic setBoolValue:onCopy];
}

- (BOOL)hasOn
{
  onCharacteristic = [(CAFSeatFan *)self onCharacteristic];
  v3 = onCharacteristic != 0;

  return v3;
}

- (BOOL)onDisabled
{
  onCharacteristic = [(CAFSeatFan *)self onCharacteristic];
  isDisabled = [onCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)onInvalid
{
  onCharacteristic = [(CAFSeatFan *)self onCharacteristic];
  isInvalid = [onCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)onRestricted
{
  onCharacteristic = [(CAFSeatFan *)self onCharacteristic];
  isRestricted = [onCharacteristic isRestricted];

  return isRestricted;
}

- (CAFUInt8Characteristic)fanLevelCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000012"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000012"];
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

- (unsigned)fanLevel
{
  fanLevelCharacteristic = [(CAFSeatFan *)self fanLevelCharacteristic];
  uint8Value = [fanLevelCharacteristic uint8Value];

  return uint8Value;
}

- (void)setFanLevel:(unsigned __int8)level
{
  levelCopy = level;
  fanLevelCharacteristic = [(CAFSeatFan *)self fanLevelCharacteristic];
  [fanLevelCharacteristic setUint8Value:levelCopy];
}

- (CAFUInt8Range)fanLevelRange
{
  fanLevelCharacteristic = [(CAFSeatFan *)self fanLevelCharacteristic];
  range = [fanLevelCharacteristic range];

  return range;
}

- (BOOL)fanLevelDisabled
{
  fanLevelCharacteristic = [(CAFSeatFan *)self fanLevelCharacteristic];
  isDisabled = [fanLevelCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)fanLevelInvalid
{
  fanLevelCharacteristic = [(CAFSeatFan *)self fanLevelCharacteristic];
  isInvalid = [fanLevelCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)fanLevelRestricted
{
  fanLevelCharacteristic = [(CAFSeatFan *)self fanLevelCharacteristic];
  isRestricted = [fanLevelCharacteristic isRestricted];

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
  autoModeCharacteristic = [(CAFSeatFan *)self autoModeCharacteristic];
  bOOLValue = [autoModeCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasAutoMode
{
  autoModeCharacteristic = [(CAFSeatFan *)self autoModeCharacteristic];
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
  vehicleLayoutKeyCharacteristic = [(CAFSeatFan *)self vehicleLayoutKeyCharacteristic];
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
    onCharacteristic = [(CAFSeatFan *)self onCharacteristic];
    uniqueIdentifier2 = [onCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers fanService:self didUpdateOn:{-[CAFSeatFan on](self, "on")}];
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000031000012"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    fanLevelCharacteristic = [(CAFSeatFan *)self fanLevelCharacteristic];
    uniqueIdentifier4 = [fanLevelCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      [observers fanService:self didUpdateFanLevel:{-[CAFSeatFan fanLevel](self, "fanLevel")}];
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
    autoModeCharacteristic = [(CAFSeatFan *)self autoModeCharacteristic];
    uniqueIdentifier6 = [autoModeCharacteristic uniqueIdentifier];
    v22 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v22)
    {
      observers = [(CAFService *)self observers];
      [observers fanService:self didUpdateAutoMode:{-[CAFSeatFan autoMode](self, "autoMode")}];
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
  vehicleLayoutKeyCharacteristic = [(CAFSeatFan *)self vehicleLayoutKeyCharacteristic];
  uniqueIdentifier8 = [vehicleLayoutKeyCharacteristic uniqueIdentifier];
  v26 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

  if (v26)
  {
    observers2 = [(CAFService *)self observers];
    vehicleLayoutKey = [(CAFSeatFan *)self vehicleLayoutKey];
    [observers2 fanService:self didUpdateVehicleLayoutKey:vehicleLayoutKey];

    observers = [(CAFService *)self observers];
    name = [(CAFSeatFan *)self name];
    [observers fanService:self didUpdateName:name];

    goto LABEL_16;
  }

LABEL_17:
  v30.receiver = self;
  v30.super_class = CAFSeatFan;
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

- (BOOL)registeredForFanLevel
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000012"];

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