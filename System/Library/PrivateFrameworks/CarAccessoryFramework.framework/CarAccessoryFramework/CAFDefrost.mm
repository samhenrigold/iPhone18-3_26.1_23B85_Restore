@interface CAFDefrost
+ (void)load;
- (BOOL)hasBlownAir;
- (BOOL)hasFilament;
- (BOOL)levelInvalid;
- (BOOL)registeredForDefrostTypes;
- (BOOL)registeredForLevel;
- (BOOL)registeredForVehicleLayoutKey;
- (CAFDefrostTypesCharacteristic)typesCharacteristic;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (CAFUInt8Characteristic)levelCharacteristic;
- (CAFUInt8Range)levelRange;
- (NSString)vehicleLayoutKey;
- (id)name;
- (unint64_t)types;
- (unsigned)level;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setLevel:(unsigned __int8)level;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFDefrost

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFDefrost;
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
  v6.super_class = CAFDefrost;
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
  v6.super_class = CAFDefrost;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  vehicleLayoutKeyCharacteristic = [(CAFDefrost *)self vehicleLayoutKeyCharacteristic];
  formattedValue = [vehicleLayoutKeyCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
}

- (CAFDefrostTypesCharacteristic)typesCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000014"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000014"];
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

- (unint64_t)types
{
  typesCharacteristic = [(CAFDefrost *)self typesCharacteristic];
  defrostTypesValue = [typesCharacteristic defrostTypesValue];

  return defrostTypesValue;
}

- (BOOL)hasBlownAir
{
  typesCharacteristic = [(CAFDefrost *)self typesCharacteristic];
  hasBlownAir = [typesCharacteristic hasBlownAir];

  return hasBlownAir;
}

- (BOOL)hasFilament
{
  typesCharacteristic = [(CAFDefrost *)self typesCharacteristic];
  hasFilament = [typesCharacteristic hasFilament];

  return hasFilament;
}

- (CAFUInt8Characteristic)levelCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000004"];
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

- (unsigned)level
{
  levelCharacteristic = [(CAFDefrost *)self levelCharacteristic];
  uint8Value = [levelCharacteristic uint8Value];

  return uint8Value;
}

- (void)setLevel:(unsigned __int8)level
{
  levelCopy = level;
  levelCharacteristic = [(CAFDefrost *)self levelCharacteristic];
  [levelCharacteristic setUint8Value:levelCopy];
}

- (CAFUInt8Range)levelRange
{
  levelCharacteristic = [(CAFDefrost *)self levelCharacteristic];
  range = [levelCharacteristic range];

  return range;
}

- (BOOL)levelInvalid
{
  levelCharacteristic = [(CAFDefrost *)self levelCharacteristic];
  isInvalid = [levelCharacteristic isInvalid];

  return isInvalid;
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
  vehicleLayoutKeyCharacteristic = [(CAFDefrost *)self vehicleLayoutKeyCharacteristic];
  stringValue = [vehicleLayoutKeyCharacteristic stringValue];

  return stringValue;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000031000014"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    typesCharacteristic = [(CAFDefrost *)self typesCharacteristic];
    uniqueIdentifier2 = [typesCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers defrostService:self didUpdateTypes:{-[CAFDefrost types](self, "types")}];
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000030000004"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    levelCharacteristic = [(CAFDefrost *)self levelCharacteristic];
    uniqueIdentifier4 = [levelCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      [observers defrostService:self didUpdateLevel:{-[CAFDefrost level](self, "level")}];
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
  vehicleLayoutKeyCharacteristic = [(CAFDefrost *)self vehicleLayoutKeyCharacteristic];
  uniqueIdentifier6 = [vehicleLayoutKeyCharacteristic uniqueIdentifier];
  v21 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

  if (v21)
  {
    observers2 = [(CAFService *)self observers];
    vehicleLayoutKey = [(CAFDefrost *)self vehicleLayoutKey];
    [observers2 defrostService:self didUpdateVehicleLayoutKey:vehicleLayoutKey];

    observers = [(CAFService *)self observers];
    name = [(CAFDefrost *)self name];
    [observers defrostService:self didUpdateName:name];

    goto LABEL_12;
  }

LABEL_13:
  v25.receiver = self;
  v25.super_class = CAFDefrost;
  [(CAFService *)&v25 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForDefrostTypes
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000014"];

  return v10;
}

- (BOOL)registeredForLevel
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000004"];

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