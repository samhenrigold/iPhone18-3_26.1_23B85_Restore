@interface CAFCellularStatus
+ (void)load;
- (BOOL)hasCellularType;
- (BOOL)hasContentURLAction;
- (BOOL)registeredForCellularType;
- (BOOL)registeredForContentURLAction;
- (BOOL)registeredForModuleStatus;
- (BOOL)registeredForSignalBars;
- (CAFCellularTypeCharacteristic)cellularTypeCharacteristic;
- (CAFModuleStatusCharacteristic)moduleStatusCharacteristic;
- (CAFStringCharacteristic)contentURLActionCharacteristic;
- (CAFUInt8Characteristic)signalBarsCharacteristic;
- (CAFUInt8Range)signalBarsRange;
- (NSString)contentURLAction;
- (unsigned)cellularType;
- (unsigned)moduleStatus;
- (unsigned)signalBars;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFCellularStatus

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFCellularStatus;
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
  v6.super_class = CAFCellularStatus;
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
  v6.super_class = CAFCellularStatus;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFModuleStatusCharacteristic)moduleStatusCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036100001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036100001"];
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

- (unsigned)moduleStatus
{
  moduleStatusCharacteristic = [(CAFCellularStatus *)self moduleStatusCharacteristic];
  moduleStatusValue = [moduleStatusCharacteristic moduleStatusValue];

  return moduleStatusValue;
}

- (CAFUInt8Characteristic)signalBarsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036100002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036100002"];
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

- (unsigned)signalBars
{
  signalBarsCharacteristic = [(CAFCellularStatus *)self signalBarsCharacteristic];
  uint8Value = [signalBarsCharacteristic uint8Value];

  return uint8Value;
}

- (CAFUInt8Range)signalBarsRange
{
  signalBarsCharacteristic = [(CAFCellularStatus *)self signalBarsCharacteristic];
  range = [signalBarsCharacteristic range];

  return range;
}

- (CAFCellularTypeCharacteristic)cellularTypeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036100003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036100003"];
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

- (unsigned)cellularType
{
  cellularTypeCharacteristic = [(CAFCellularStatus *)self cellularTypeCharacteristic];
  cellularTypeValue = [cellularTypeCharacteristic cellularTypeValue];

  return cellularTypeValue;
}

- (BOOL)hasCellularType
{
  cellularTypeCharacteristic = [(CAFCellularStatus *)self cellularTypeCharacteristic];
  v3 = cellularTypeCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)contentURLActionCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000066"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000066"];
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

- (NSString)contentURLAction
{
  contentURLActionCharacteristic = [(CAFCellularStatus *)self contentURLActionCharacteristic];
  stringValue = [contentURLActionCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasContentURLAction
{
  contentURLActionCharacteristic = [(CAFCellularStatus *)self contentURLActionCharacteristic];
  v3 = contentURLActionCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000036100001"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    moduleStatusCharacteristic = [(CAFCellularStatus *)self moduleStatusCharacteristic];
    uniqueIdentifier2 = [moduleStatusCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers cellularStatusService:self didUpdateModuleStatus:{-[CAFCellularStatus moduleStatus](self, "moduleStatus")}];
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000036100002"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    signalBarsCharacteristic = [(CAFCellularStatus *)self signalBarsCharacteristic];
    uniqueIdentifier4 = [signalBarsCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      [observers cellularStatusService:self didUpdateSignalBars:{-[CAFCellularStatus signalBars](self, "signalBars")}];
      goto LABEL_16;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000036100003"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    cellularTypeCharacteristic = [(CAFCellularStatus *)self cellularTypeCharacteristic];
    uniqueIdentifier6 = [cellularTypeCharacteristic uniqueIdentifier];
    v22 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v22)
    {
      observers = [(CAFService *)self observers];
      [observers cellularStatusService:self didUpdateCellularType:{-[CAFCellularStatus cellularType](self, "cellularType")}];
      goto LABEL_16;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000036000066"])
  {
    goto LABEL_16;
  }

  uniqueIdentifier7 = [updateCopy uniqueIdentifier];
  contentURLActionCharacteristic = [(CAFCellularStatus *)self contentURLActionCharacteristic];
  uniqueIdentifier8 = [contentURLActionCharacteristic uniqueIdentifier];
  v26 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

  if (v26)
  {
    observers = [(CAFService *)self observers];
    contentURLAction = [(CAFCellularStatus *)self contentURLAction];
    [observers cellularStatusService:self didUpdateContentURLAction:contentURLAction];

    goto LABEL_16;
  }

LABEL_17:
  v28.receiver = self;
  v28.super_class = CAFCellularStatus;
  [(CAFService *)&v28 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForModuleStatus
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036100001"];

  return v10;
}

- (BOOL)registeredForSignalBars
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036100002"];

  return v10;
}

- (BOOL)registeredForCellularType
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036100003"];

  return v10;
}

- (BOOL)registeredForContentURLAction
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000066"];

  return v10;
}

@end