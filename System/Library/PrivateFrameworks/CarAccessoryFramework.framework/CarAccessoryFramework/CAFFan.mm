@interface CAFFan
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

@implementation CAFFan

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFFan;
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
  v6.super_class = CAFFan;
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
  v6.super_class = CAFFan;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  vehicleLayoutKeyCharacteristic = [(CAFFan *)self vehicleLayoutKeyCharacteristic];
  formattedValue = [vehicleLayoutKeyCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
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
  fanLevelCharacteristic = [(CAFFan *)self fanLevelCharacteristic];
  uint8Value = [fanLevelCharacteristic uint8Value];

  return uint8Value;
}

- (void)setFanLevel:(unsigned __int8)level
{
  levelCopy = level;
  fanLevelCharacteristic = [(CAFFan *)self fanLevelCharacteristic];
  [fanLevelCharacteristic setUint8Value:levelCopy];
}

- (CAFUInt8Range)fanLevelRange
{
  fanLevelCharacteristic = [(CAFFan *)self fanLevelCharacteristic];
  range = [fanLevelCharacteristic range];

  return range;
}

- (BOOL)fanLevelDisabled
{
  fanLevelCharacteristic = [(CAFFan *)self fanLevelCharacteristic];
  isDisabled = [fanLevelCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)fanLevelInvalid
{
  fanLevelCharacteristic = [(CAFFan *)self fanLevelCharacteristic];
  isInvalid = [fanLevelCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)fanLevelRestricted
{
  fanLevelCharacteristic = [(CAFFan *)self fanLevelCharacteristic];
  isRestricted = [fanLevelCharacteristic isRestricted];

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
  onCharacteristic = [(CAFFan *)self onCharacteristic];
  bOOLValue = [onCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setOn:(BOOL)on
{
  onCopy = on;
  onCharacteristic = [(CAFFan *)self onCharacteristic];
  [onCharacteristic setBoolValue:onCopy];
}

- (BOOL)hasOn
{
  onCharacteristic = [(CAFFan *)self onCharacteristic];
  v3 = onCharacteristic != 0;

  return v3;
}

- (BOOL)onDisabled
{
  onCharacteristic = [(CAFFan *)self onCharacteristic];
  isDisabled = [onCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)onInvalid
{
  onCharacteristic = [(CAFFan *)self onCharacteristic];
  isInvalid = [onCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)onRestricted
{
  onCharacteristic = [(CAFFan *)self onCharacteristic];
  isRestricted = [onCharacteristic isRestricted];

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
  autoModeCharacteristic = [(CAFFan *)self autoModeCharacteristic];
  bOOLValue = [autoModeCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasAutoMode
{
  autoModeCharacteristic = [(CAFFan *)self autoModeCharacteristic];
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
  vehicleLayoutKeyCharacteristic = [(CAFFan *)self vehicleLayoutKeyCharacteristic];
  stringValue = [vehicleLayoutKeyCharacteristic stringValue];

  return stringValue;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000031000012"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    fanLevelCharacteristic = [(CAFFan *)self fanLevelCharacteristic];
    uniqueIdentifier2 = [fanLevelCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers fanService:self didUpdateFanLevel:{-[CAFFan fanLevel](self, "fanLevel")}];
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000030000002"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    onCharacteristic = [(CAFFan *)self onCharacteristic];
    uniqueIdentifier4 = [onCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      [observers fanService:self didUpdateOn:{-[CAFFan on](self, "on")}];
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
    autoModeCharacteristic = [(CAFFan *)self autoModeCharacteristic];
    uniqueIdentifier6 = [autoModeCharacteristic uniqueIdentifier];
    v22 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v22)
    {
      observers = [(CAFService *)self observers];
      [observers fanService:self didUpdateAutoMode:{-[CAFFan autoMode](self, "autoMode")}];
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
  vehicleLayoutKeyCharacteristic = [(CAFFan *)self vehicleLayoutKeyCharacteristic];
  uniqueIdentifier8 = [vehicleLayoutKeyCharacteristic uniqueIdentifier];
  v26 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

  if (v26)
  {
    observers2 = [(CAFService *)self observers];
    vehicleLayoutKey = [(CAFFan *)self vehicleLayoutKey];
    [observers2 fanService:self didUpdateVehicleLayoutKey:vehicleLayoutKey];

    observers = [(CAFService *)self observers];
    name = [(CAFFan *)self name];
    [observers fanService:self didUpdateName:name];

    goto LABEL_16;
  }

LABEL_17:
  v30.receiver = self;
  v30.super_class = CAFFan;
  [(CAFService *)&v30 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
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