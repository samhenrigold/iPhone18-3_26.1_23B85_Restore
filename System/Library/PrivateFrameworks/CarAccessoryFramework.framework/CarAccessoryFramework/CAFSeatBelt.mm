@interface CAFSeatBelt
+ (void)load;
- (BOOL)hasBuckleState;
- (BOOL)hasSeatOccupancy;
- (BOOL)registeredForBuckleState;
- (BOOL)registeredForSeatBeltIndicator;
- (BOOL)registeredForSeatOccupancy;
- (BOOL)registeredForVehicleLayoutKey;
- (CAFLockStateCharacteristic)buckleStateCharacteristic;
- (CAFSeatBeltIndicatorCharacteristic)seatBeltIndicatorCharacteristic;
- (CAFSeatOccupancyCharacteristic)seatOccupancyCharacteristic;
- (CAFStringCharacteristic)vehicleLayoutKeyCharacteristic;
- (NSString)vehicleLayoutKey;
- (id)name;
- (unsigned)buckleState;
- (unsigned)seatBeltIndicator;
- (unsigned)seatOccupancy;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFSeatBelt

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSeatBelt;
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
  v6.super_class = CAFSeatBelt;
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
  v6.super_class = CAFSeatBelt;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (id)name
{
  typeName = [(CAFService *)self typeName];
  vehicleLayoutKeyCharacteristic = [(CAFSeatBelt *)self vehicleLayoutKeyCharacteristic];
  formattedValue = [vehicleLayoutKeyCharacteristic formattedValue];

  if ([formattedValue length])
  {
    v6 = [typeName stringByAppendingFormat:@"-%@", formattedValue];

    typeName = v6;
  }

  return typeName;
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
  vehicleLayoutKeyCharacteristic = [(CAFSeatBelt *)self vehicleLayoutKeyCharacteristic];
  stringValue = [vehicleLayoutKeyCharacteristic stringValue];

  return stringValue;
}

- (CAFSeatOccupancyCharacteristic)seatOccupancyCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000060000006"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000060000006"];
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

- (unsigned)seatOccupancy
{
  seatOccupancyCharacteristic = [(CAFSeatBelt *)self seatOccupancyCharacteristic];
  seatOccupancyValue = [seatOccupancyCharacteristic seatOccupancyValue];

  return seatOccupancyValue;
}

- (BOOL)hasSeatOccupancy
{
  seatOccupancyCharacteristic = [(CAFSeatBelt *)self seatOccupancyCharacteristic];
  v3 = seatOccupancyCharacteristic != 0;

  return v3;
}

- (CAFLockStateCharacteristic)buckleStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000060000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000060000002"];
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

- (unsigned)buckleState
{
  buckleStateCharacteristic = [(CAFSeatBelt *)self buckleStateCharacteristic];
  lockStateValue = [buckleStateCharacteristic lockStateValue];

  return lockStateValue;
}

- (BOOL)hasBuckleState
{
  buckleStateCharacteristic = [(CAFSeatBelt *)self buckleStateCharacteristic];
  v3 = buckleStateCharacteristic != 0;

  return v3;
}

- (CAFSeatBeltIndicatorCharacteristic)seatBeltIndicatorCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000060000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000060000007"];
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

- (unsigned)seatBeltIndicator
{
  seatBeltIndicatorCharacteristic = [(CAFSeatBelt *)self seatBeltIndicatorCharacteristic];
  seatBeltIndicatorValue = [seatBeltIndicatorCharacteristic seatBeltIndicatorValue];

  return seatBeltIndicatorValue;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000036000065"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    vehicleLayoutKeyCharacteristic = [(CAFSeatBelt *)self vehicleLayoutKeyCharacteristic];
    uniqueIdentifier2 = [vehicleLayoutKeyCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      vehicleLayoutKey = [(CAFSeatBelt *)self vehicleLayoutKey];
      [observers seatBeltService:self didUpdateVehicleLayoutKey:vehicleLayoutKey];

      observers2 = [(CAFService *)self observers];
      name = [(CAFSeatBelt *)self name];
      [observers2 seatBeltService:self didUpdateName:name];

LABEL_16:
      goto LABEL_17;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000060000006"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    seatOccupancyCharacteristic = [(CAFSeatBelt *)self seatOccupancyCharacteristic];
    uniqueIdentifier4 = [seatOccupancyCharacteristic uniqueIdentifier];
    v20 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v20)
    {
      observers2 = [(CAFService *)self observers];
      [observers2 seatBeltService:self didUpdateSeatOccupancy:{-[CAFSeatBelt seatOccupancy](self, "seatOccupancy")}];
      goto LABEL_16;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000060000002"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    buckleStateCharacteristic = [(CAFSeatBelt *)self buckleStateCharacteristic];
    uniqueIdentifier6 = [buckleStateCharacteristic uniqueIdentifier];
    v25 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v25)
    {
      observers2 = [(CAFService *)self observers];
      [observers2 seatBeltService:self didUpdateBuckleState:{-[CAFSeatBelt buckleState](self, "buckleState")}];
      goto LABEL_16;
    }
  }

  else
  {
  }

  observers2 = [updateCopy characteristicType];
  if (![observers2 isEqual:@"0x0000000060000007"])
  {
    goto LABEL_16;
  }

  uniqueIdentifier7 = [updateCopy uniqueIdentifier];
  seatBeltIndicatorCharacteristic = [(CAFSeatBelt *)self seatBeltIndicatorCharacteristic];
  uniqueIdentifier8 = [seatBeltIndicatorCharacteristic uniqueIdentifier];
  v29 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

  if (v29)
  {
    observers2 = [(CAFService *)self observers];
    [observers2 seatBeltService:self didUpdateSeatBeltIndicator:{-[CAFSeatBelt seatBeltIndicator](self, "seatBeltIndicator")}];
    goto LABEL_16;
  }

LABEL_17:
  v30.receiver = self;
  v30.super_class = CAFSeatBelt;
  [(CAFService *)&v30 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
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

- (BOOL)registeredForSeatOccupancy
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000060000006"];

  return v10;
}

- (BOOL)registeredForBuckleState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000060000002"];

  return v10;
}

- (BOOL)registeredForSeatBeltIndicator
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000060000007"];

  return v10;
}

@end