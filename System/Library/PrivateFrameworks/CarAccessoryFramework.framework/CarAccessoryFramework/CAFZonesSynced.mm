@interface CAFZonesSynced
+ (void)load;
- (BOOL)hasVehicleLayoutKey;
- (BOOL)on;
- (BOOL)onDisabled;
- (BOOL)onInvalid;
- (BOOL)onRestricted;
- (BOOL)registeredForOn;
- (BOOL)registeredForVehicleLayoutKey;
- (CAFBoolCharacteristic)onCharacteristic;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (NSString)vehicleLayoutKey;
- (id)name;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setOn:(BOOL)on;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFZonesSynced

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFZonesSynced;
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
  v6.super_class = CAFZonesSynced;
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
  v6.super_class = CAFZonesSynced;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  vehicleLayoutKeyCharacteristic = [(CAFZonesSynced *)self vehicleLayoutKeyCharacteristic];
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
  onCharacteristic = [(CAFZonesSynced *)self onCharacteristic];
  bOOLValue = [onCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setOn:(BOOL)on
{
  onCopy = on;
  onCharacteristic = [(CAFZonesSynced *)self onCharacteristic];
  [onCharacteristic setBoolValue:onCopy];
}

- (BOOL)onDisabled
{
  onCharacteristic = [(CAFZonesSynced *)self onCharacteristic];
  isDisabled = [onCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)onInvalid
{
  onCharacteristic = [(CAFZonesSynced *)self onCharacteristic];
  isInvalid = [onCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)onRestricted
{
  onCharacteristic = [(CAFZonesSynced *)self onCharacteristic];
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
  vehicleLayoutKeyCharacteristic = [(CAFZonesSynced *)self vehicleLayoutKeyCharacteristic];
  stringValue = [vehicleLayoutKeyCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasVehicleLayoutKey
{
  vehicleLayoutKeyCharacteristic = [(CAFZonesSynced *)self vehicleLayoutKeyCharacteristic];
  v3 = vehicleLayoutKeyCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000030000002"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    onCharacteristic = [(CAFZonesSynced *)self onCharacteristic];
    uniqueIdentifier2 = [onCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers zonesSyncedService:self didUpdateOn:{-[CAFZonesSynced on](self, "on")}];
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000036000065"])
  {
    goto LABEL_8;
  }

  uniqueIdentifier3 = [updateCopy uniqueIdentifier];
  vehicleLayoutKeyCharacteristic = [(CAFZonesSynced *)self vehicleLayoutKeyCharacteristic];
  uniqueIdentifier4 = [vehicleLayoutKeyCharacteristic uniqueIdentifier];
  v16 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

  if (v16)
  {
    observers2 = [(CAFService *)self observers];
    vehicleLayoutKey = [(CAFZonesSynced *)self vehicleLayoutKey];
    [observers2 zonesSyncedService:self didUpdateVehicleLayoutKey:vehicleLayoutKey];

    observers = [(CAFService *)self observers];
    name = [(CAFZonesSynced *)self name];
    [observers zonesSyncedService:self didUpdateName:name];

    goto LABEL_8;
  }

LABEL_9:
  v20.receiver = self;
  v20.super_class = CAFZonesSynced;
  [(CAFService *)&v20 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
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