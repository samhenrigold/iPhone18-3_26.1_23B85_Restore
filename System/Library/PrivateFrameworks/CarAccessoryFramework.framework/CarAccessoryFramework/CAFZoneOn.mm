@interface CAFZoneOn
+ (void)load;
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

@implementation CAFZoneOn

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFZoneOn;
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
  v6.super_class = CAFZoneOn;
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
  v6.super_class = CAFZoneOn;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  vehicleLayoutKeyCharacteristic = [(CAFZoneOn *)self vehicleLayoutKeyCharacteristic];
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
  onCharacteristic = [(CAFZoneOn *)self onCharacteristic];
  bOOLValue = [onCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setOn:(BOOL)on
{
  onCopy = on;
  onCharacteristic = [(CAFZoneOn *)self onCharacteristic];
  [onCharacteristic setBoolValue:onCopy];
}

- (BOOL)onDisabled
{
  onCharacteristic = [(CAFZoneOn *)self onCharacteristic];
  isDisabled = [onCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)onInvalid
{
  onCharacteristic = [(CAFZoneOn *)self onCharacteristic];
  isInvalid = [onCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)onRestricted
{
  onCharacteristic = [(CAFZoneOn *)self onCharacteristic];
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
  vehicleLayoutKeyCharacteristic = [(CAFZoneOn *)self vehicleLayoutKeyCharacteristic];
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
    onCharacteristic = [(CAFZoneOn *)self onCharacteristic];
    uniqueIdentifier2 = [onCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers zoneOnService:self didUpdateOn:{-[CAFZoneOn on](self, "on")}];
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
  vehicleLayoutKeyCharacteristic = [(CAFZoneOn *)self vehicleLayoutKeyCharacteristic];
  uniqueIdentifier4 = [vehicleLayoutKeyCharacteristic uniqueIdentifier];
  v16 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

  if (v16)
  {
    observers2 = [(CAFService *)self observers];
    vehicleLayoutKey = [(CAFZoneOn *)self vehicleLayoutKey];
    [observers2 zoneOnService:self didUpdateVehicleLayoutKey:vehicleLayoutKey];

    observers = [(CAFService *)self observers];
    name = [(CAFZoneOn *)self name];
    [observers zoneOnService:self didUpdateName:name];

    goto LABEL_8;
  }

LABEL_9:
  v20.receiver = self;
  v20.super_class = CAFZoneOn;
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