@interface CAFUIState
+ (void)load;
- (BOOL)hasDriverSide;
- (BOOL)hasUiSceneOptions;
- (BOOL)registeredForDriverSide;
- (BOOL)registeredForUISceneOptions;
- (BOOL)registeredForUISceneState;
- (CAFArrayCharacteristic)uiSceneOptionsCharacteristic;
- (CAFDriverSideCharacteristic)driverSideCharacteristic;
- (CAFUISceneStateCharacteristic)uiSceneStateCharacteristic;
- (NSArray)uiSceneOptions;
- (unsigned)driverSide;
- (unsigned)uiSceneState;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFUIState

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFUIState;
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
  v6.super_class = CAFUIState;
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
  v6.super_class = CAFUIState;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFUISceneStateCharacteristic)uiSceneStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000047000001"];
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

- (unsigned)uiSceneState
{
  uiSceneStateCharacteristic = [(CAFUIState *)self uiSceneStateCharacteristic];
  uiSceneStateValue = [uiSceneStateCharacteristic uiSceneStateValue];

  return uiSceneStateValue;
}

- (CAFArrayCharacteristic)uiSceneOptionsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000047000004"];
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

- (NSArray)uiSceneOptions
{
  uiSceneOptionsCharacteristic = [(CAFUIState *)self uiSceneOptionsCharacteristic];
  arrayValue = [uiSceneOptionsCharacteristic arrayValue];

  return arrayValue;
}

- (BOOL)hasUiSceneOptions
{
  uiSceneOptionsCharacteristic = [(CAFUIState *)self uiSceneOptionsCharacteristic];
  v3 = uiSceneOptionsCharacteristic != 0;

  return v3;
}

- (CAFDriverSideCharacteristic)driverSideCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000009"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000009"];
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

- (unsigned)driverSide
{
  driverSideCharacteristic = [(CAFUIState *)self driverSideCharacteristic];
  driverSideValue = [driverSideCharacteristic driverSideValue];

  return driverSideValue;
}

- (BOOL)hasDriverSide
{
  driverSideCharacteristic = [(CAFUIState *)self driverSideCharacteristic];
  v3 = driverSideCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000047000001"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    uiSceneStateCharacteristic = [(CAFUIState *)self uiSceneStateCharacteristic];
    uniqueIdentifier2 = [uiSceneStateCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers uiStateService:self didUpdateUiSceneState:{-[CAFUIState uiSceneState](self, "uiSceneState")}];
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000047000004"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    uiSceneOptionsCharacteristic = [(CAFUIState *)self uiSceneOptionsCharacteristic];
    uniqueIdentifier4 = [uiSceneOptionsCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      uiSceneOptions = [(CAFUIState *)self uiSceneOptions];
      [observers uiStateService:self didUpdateUiSceneOptions:uiSceneOptions];

      goto LABEL_12;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000041000009"])
  {
    goto LABEL_12;
  }

  uniqueIdentifier5 = [updateCopy uniqueIdentifier];
  driverSideCharacteristic = [(CAFUIState *)self driverSideCharacteristic];
  uniqueIdentifier6 = [driverSideCharacteristic uniqueIdentifier];
  v22 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

  if (v22)
  {
    observers = [(CAFService *)self observers];
    [observers uiStateService:self didUpdateDriverSide:{-[CAFUIState driverSide](self, "driverSide")}];
    goto LABEL_12;
  }

LABEL_13:
  v23.receiver = self;
  v23.super_class = CAFUIState;
  [(CAFService *)&v23 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForUISceneState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000001"];

  return v10;
}

- (BOOL)registeredForUISceneOptions
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000047000004"];

  return v10;
}

- (BOOL)registeredForDriverSide
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000009"];

  return v10;
}

@end