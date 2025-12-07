@interface CAFWiFiStatus
+ (void)load;
- (BOOL)hasContentURLAction;
- (BOOL)registeredForContentURLAction;
- (BOOL)registeredForModuleStatus;
- (BOOL)registeredForSignalBars;
- (CAFModuleStatusCharacteristic)moduleStatusCharacteristic;
- (CAFStringCharacteristic)contentURLActionCharacteristic;
- (CAFUInt8Characteristic)signalBarsCharacteristic;
- (CAFUInt8Range)signalBarsRange;
- (NSString)contentURLAction;
- (unsigned)moduleStatus;
- (unsigned)signalBars;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFWiFiStatus

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFWiFiStatus;
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
  v6.super_class = CAFWiFiStatus;
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
  v6.super_class = CAFWiFiStatus;
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
  moduleStatusCharacteristic = [(CAFWiFiStatus *)self moduleStatusCharacteristic];
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
  signalBarsCharacteristic = [(CAFWiFiStatus *)self signalBarsCharacteristic];
  uint8Value = [signalBarsCharacteristic uint8Value];

  return uint8Value;
}

- (CAFUInt8Range)signalBarsRange
{
  signalBarsCharacteristic = [(CAFWiFiStatus *)self signalBarsCharacteristic];
  range = [signalBarsCharacteristic range];

  return range;
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
  contentURLActionCharacteristic = [(CAFWiFiStatus *)self contentURLActionCharacteristic];
  stringValue = [contentURLActionCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasContentURLAction
{
  contentURLActionCharacteristic = [(CAFWiFiStatus *)self contentURLActionCharacteristic];
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
    moduleStatusCharacteristic = [(CAFWiFiStatus *)self moduleStatusCharacteristic];
    uniqueIdentifier2 = [moduleStatusCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers wiFiStatusService:self didUpdateModuleStatus:{-[CAFWiFiStatus moduleStatus](self, "moduleStatus")}];
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000036100002"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    signalBarsCharacteristic = [(CAFWiFiStatus *)self signalBarsCharacteristic];
    uniqueIdentifier4 = [signalBarsCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      [observers wiFiStatusService:self didUpdateSignalBars:{-[CAFWiFiStatus signalBars](self, "signalBars")}];
      goto LABEL_12;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000036000066"])
  {
    goto LABEL_12;
  }

  uniqueIdentifier5 = [updateCopy uniqueIdentifier];
  contentURLActionCharacteristic = [(CAFWiFiStatus *)self contentURLActionCharacteristic];
  uniqueIdentifier6 = [contentURLActionCharacteristic uniqueIdentifier];
  v21 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

  if (v21)
  {
    observers = [(CAFService *)self observers];
    contentURLAction = [(CAFWiFiStatus *)self contentURLAction];
    [observers wiFiStatusService:self didUpdateContentURLAction:contentURLAction];

    goto LABEL_12;
  }

LABEL_13:
  v23.receiver = self;
  v23.super_class = CAFWiFiStatus;
  [(CAFService *)&v23 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
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