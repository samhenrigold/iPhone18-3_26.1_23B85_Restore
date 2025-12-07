@interface CAFClimateControlsLocked
+ (void)load;
- (BOOL)hasVehicleLayoutKey;
- (BOOL)lockStateDisabled;
- (BOOL)lockStateRestricted;
- (BOOL)registeredForLockState;
- (BOOL)registeredForVehicleLayoutKey;
- (CAFLockStateCharacteristic)lockStateCharacteristic;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (NSString)vehicleLayoutKey;
- (id)name;
- (unsigned)lockState;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setLockState:(unsigned __int8)state;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFClimateControlsLocked

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFClimateControlsLocked;
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
  v6.super_class = CAFClimateControlsLocked;
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
  v6.super_class = CAFClimateControlsLocked;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  vehicleLayoutKeyCharacteristic = [(CAFClimateControlsLocked *)self vehicleLayoutKeyCharacteristic];
  formattedValue = [vehicleLayoutKeyCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
}

- (CAFLockStateCharacteristic)lockStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000042000009"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000042000009"];
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

- (unsigned)lockState
{
  lockStateCharacteristic = [(CAFClimateControlsLocked *)self lockStateCharacteristic];
  lockStateValue = [lockStateCharacteristic lockStateValue];

  return lockStateValue;
}

- (void)setLockState:(unsigned __int8)state
{
  stateCopy = state;
  lockStateCharacteristic = [(CAFClimateControlsLocked *)self lockStateCharacteristic];
  [lockStateCharacteristic setLockStateValue:stateCopy];
}

- (BOOL)lockStateDisabled
{
  lockStateCharacteristic = [(CAFClimateControlsLocked *)self lockStateCharacteristic];
  isDisabled = [lockStateCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)lockStateRestricted
{
  lockStateCharacteristic = [(CAFClimateControlsLocked *)self lockStateCharacteristic];
  isRestricted = [lockStateCharacteristic isRestricted];

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
  vehicleLayoutKeyCharacteristic = [(CAFClimateControlsLocked *)self vehicleLayoutKeyCharacteristic];
  stringValue = [vehicleLayoutKeyCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasVehicleLayoutKey
{
  vehicleLayoutKeyCharacteristic = [(CAFClimateControlsLocked *)self vehicleLayoutKeyCharacteristic];
  v3 = vehicleLayoutKeyCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000042000009"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    lockStateCharacteristic = [(CAFClimateControlsLocked *)self lockStateCharacteristic];
    uniqueIdentifier2 = [lockStateCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers climateControlsLockedService:self didUpdateLockState:{-[CAFClimateControlsLocked lockState](self, "lockState")}];
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
  vehicleLayoutKeyCharacteristic = [(CAFClimateControlsLocked *)self vehicleLayoutKeyCharacteristic];
  uniqueIdentifier4 = [vehicleLayoutKeyCharacteristic uniqueIdentifier];
  v16 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

  if (v16)
  {
    observers2 = [(CAFService *)self observers];
    vehicleLayoutKey = [(CAFClimateControlsLocked *)self vehicleLayoutKey];
    [observers2 climateControlsLockedService:self didUpdateVehicleLayoutKey:vehicleLayoutKey];

    observers = [(CAFService *)self observers];
    name = [(CAFClimateControlsLocked *)self name];
    [observers climateControlsLockedService:self didUpdateName:name];

    goto LABEL_8;
  }

LABEL_9:
  v20.receiver = self;
  v20.super_class = CAFClimateControlsLocked;
  [(CAFService *)&v20 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForLockState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000042000009"];

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