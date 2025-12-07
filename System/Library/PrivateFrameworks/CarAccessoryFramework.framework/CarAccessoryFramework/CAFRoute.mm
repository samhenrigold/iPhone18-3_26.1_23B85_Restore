@interface CAFRoute
+ (void)load;
- (BOOL)applicationEnabled;
- (BOOL)applicationEnabledInvalid;
- (BOOL)destinationInvalid;
- (BOOL)hasLegs;
- (BOOL)legsInvalid;
- (BOOL)originInvalid;
- (BOOL)registeredForApplicationEnabled;
- (BOOL)registeredForDestination;
- (BOOL)registeredForGeodeticSystem;
- (BOOL)registeredForLegs;
- (BOOL)registeredForOrigin;
- (BOOL)registeredForRouteState;
- (BOOL)registeredForUserEnabled;
- (BOOL)registeredForUserVisibleApplicationName;
- (BOOL)registeredForVehicleEnabled;
- (BOOL)userEnabled;
- (BOOL)userEnabledInvalid;
- (BOOL)userVisibleApplicationNameInvalid;
- (BOOL)vehicleEnabled;
- (CAFBoolCharacteristic)applicationEnabledCharacteristic;
- (CAFBoolCharacteristic)userEnabledCharacteristic;
- (CAFBoolCharacteristic)vehicleEnabledCharacteristic;
- (CAFGeodeticSystemCharacteristic)geodeticSystemCharacteristic;
- (CAFPointOfInterest)destination;
- (CAFPointOfInterest)origin;
- (CAFPointOfInterestCharacteristic)destinationCharacteristic;
- (CAFPointOfInterestCharacteristic)originCharacteristic;
- (CAFRouteLegs)legs;
- (CAFRouteLegsCharacteristic)legsCharacteristic;
- (CAFRouteStateCharacteristic)routeStateCharacteristic;
- (CAFStringCharacteristic)userVisibleApplicationNameCharacteristic;
- (NSString)userVisibleApplicationName;
- (unsigned)geodeticSystem;
- (unsigned)routeState;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setApplicationEnabled:(BOOL)enabled;
- (void)setDestination:(id)destination;
- (void)setGeodeticSystem:(unsigned __int8)system;
- (void)setLegs:(id)legs;
- (void)setOrigin:(id)origin;
- (void)setRouteState:(unsigned __int8)state;
- (void)setUserEnabled:(BOOL)enabled;
- (void)setUserVisibleApplicationName:(id)name;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFRoute

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFRoute;
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
  v6.super_class = CAFRoute;
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
  v6.super_class = CAFRoute;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFRouteStateCharacteristic)routeStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000101"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000101"];
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

- (unsigned)routeState
{
  routeStateCharacteristic = [(CAFRoute *)self routeStateCharacteristic];
  routeStateValue = [routeStateCharacteristic routeStateValue];

  return routeStateValue;
}

- (void)setRouteState:(unsigned __int8)state
{
  stateCopy = state;
  routeStateCharacteristic = [(CAFRoute *)self routeStateCharacteristic];
  [routeStateCharacteristic setRouteStateValue:stateCopy];
}

- (CAFStringCharacteristic)userVisibleApplicationNameCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000102"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000102"];
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

- (NSString)userVisibleApplicationName
{
  userVisibleApplicationNameCharacteristic = [(CAFRoute *)self userVisibleApplicationNameCharacteristic];
  stringValue = [userVisibleApplicationNameCharacteristic stringValue];

  return stringValue;
}

- (void)setUserVisibleApplicationName:(id)name
{
  nameCopy = name;
  userVisibleApplicationNameCharacteristic = [(CAFRoute *)self userVisibleApplicationNameCharacteristic];
  [userVisibleApplicationNameCharacteristic setStringValue:nameCopy];
}

- (BOOL)userVisibleApplicationNameInvalid
{
  userVisibleApplicationNameCharacteristic = [(CAFRoute *)self userVisibleApplicationNameCharacteristic];
  isInvalid = [userVisibleApplicationNameCharacteristic isInvalid];

  return isInvalid;
}

- (CAFBoolCharacteristic)applicationEnabledCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000103"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000103"];
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

- (BOOL)applicationEnabled
{
  applicationEnabledCharacteristic = [(CAFRoute *)self applicationEnabledCharacteristic];
  bOOLValue = [applicationEnabledCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setApplicationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  applicationEnabledCharacteristic = [(CAFRoute *)self applicationEnabledCharacteristic];
  [applicationEnabledCharacteristic setBoolValue:enabledCopy];
}

- (BOOL)applicationEnabledInvalid
{
  applicationEnabledCharacteristic = [(CAFRoute *)self applicationEnabledCharacteristic];
  isInvalid = [applicationEnabledCharacteristic isInvalid];

  return isInvalid;
}

- (CAFBoolCharacteristic)userEnabledCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000104"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000104"];
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

- (BOOL)userEnabled
{
  userEnabledCharacteristic = [(CAFRoute *)self userEnabledCharacteristic];
  bOOLValue = [userEnabledCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setUserEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  userEnabledCharacteristic = [(CAFRoute *)self userEnabledCharacteristic];
  [userEnabledCharacteristic setBoolValue:enabledCopy];
}

- (BOOL)userEnabledInvalid
{
  userEnabledCharacteristic = [(CAFRoute *)self userEnabledCharacteristic];
  isInvalid = [userEnabledCharacteristic isInvalid];

  return isInvalid;
}

- (CAFBoolCharacteristic)vehicleEnabledCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000105"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000105"];
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

- (BOOL)vehicleEnabled
{
  vehicleEnabledCharacteristic = [(CAFRoute *)self vehicleEnabledCharacteristic];
  bOOLValue = [vehicleEnabledCharacteristic BOOLValue];

  return bOOLValue;
}

- (CAFGeodeticSystemCharacteristic)geodeticSystemCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000106"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000106"];
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

- (unsigned)geodeticSystem
{
  geodeticSystemCharacteristic = [(CAFRoute *)self geodeticSystemCharacteristic];
  geodeticSystemValue = [geodeticSystemCharacteristic geodeticSystemValue];

  return geodeticSystemValue;
}

- (void)setGeodeticSystem:(unsigned __int8)system
{
  systemCopy = system;
  geodeticSystemCharacteristic = [(CAFRoute *)self geodeticSystemCharacteristic];
  [geodeticSystemCharacteristic setGeodeticSystemValue:systemCopy];
}

- (CAFPointOfInterestCharacteristic)originCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000107"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000107"];
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

- (CAFPointOfInterest)origin
{
  originCharacteristic = [(CAFRoute *)self originCharacteristic];
  pointOfInterestValue = [originCharacteristic pointOfInterestValue];

  return pointOfInterestValue;
}

- (void)setOrigin:(id)origin
{
  originCopy = origin;
  originCharacteristic = [(CAFRoute *)self originCharacteristic];
  [originCharacteristic setPointOfInterestValue:originCopy];
}

- (BOOL)originInvalid
{
  originCharacteristic = [(CAFRoute *)self originCharacteristic];
  isInvalid = [originCharacteristic isInvalid];

  return isInvalid;
}

- (CAFPointOfInterestCharacteristic)destinationCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000108"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000108"];
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

- (CAFPointOfInterest)destination
{
  destinationCharacteristic = [(CAFRoute *)self destinationCharacteristic];
  pointOfInterestValue = [destinationCharacteristic pointOfInterestValue];

  return pointOfInterestValue;
}

- (void)setDestination:(id)destination
{
  destinationCopy = destination;
  destinationCharacteristic = [(CAFRoute *)self destinationCharacteristic];
  [destinationCharacteristic setPointOfInterestValue:destinationCopy];
}

- (BOOL)destinationInvalid
{
  destinationCharacteristic = [(CAFRoute *)self destinationCharacteristic];
  isInvalid = [destinationCharacteristic isInvalid];

  return isInvalid;
}

- (CAFRouteLegsCharacteristic)legsCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000109"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000045000109"];
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

- (CAFRouteLegs)legs
{
  legsCharacteristic = [(CAFRoute *)self legsCharacteristic];
  routeLegsValue = [legsCharacteristic routeLegsValue];

  return routeLegsValue;
}

- (void)setLegs:(id)legs
{
  legsCopy = legs;
  legsCharacteristic = [(CAFRoute *)self legsCharacteristic];
  [legsCharacteristic setRouteLegsValue:legsCopy];
}

- (BOOL)hasLegs
{
  legsCharacteristic = [(CAFRoute *)self legsCharacteristic];
  v3 = legsCharacteristic != 0;

  return v3;
}

- (BOOL)legsInvalid
{
  legsCharacteristic = [(CAFRoute *)self legsCharacteristic];
  isInvalid = [legsCharacteristic isInvalid];

  return isInvalid;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000045000101"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    routeStateCharacteristic = [(CAFRoute *)self routeStateCharacteristic];
    uniqueIdentifier2 = [routeStateCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers routeService:self didUpdateRouteState:{-[CAFRoute routeState](self, "routeState")}];
LABEL_37:

      goto LABEL_38;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000045000102"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    userVisibleApplicationNameCharacteristic = [(CAFRoute *)self userVisibleApplicationNameCharacteristic];
    uniqueIdentifier4 = [userVisibleApplicationNameCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      userVisibleApplicationName = [(CAFRoute *)self userVisibleApplicationName];
      [observers routeService:self didUpdateUserVisibleApplicationName:userVisibleApplicationName];
LABEL_8:

      goto LABEL_37;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000045000103"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    applicationEnabledCharacteristic = [(CAFRoute *)self applicationEnabledCharacteristic];
    uniqueIdentifier6 = [applicationEnabledCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers = [(CAFService *)self observers];
      [observers routeService:self didUpdateApplicationEnabled:{-[CAFRoute applicationEnabled](self, "applicationEnabled")}];
      goto LABEL_37;
    }
  }

  else
  {
  }

  characteristicType4 = [updateCopy characteristicType];
  if ([characteristicType4 isEqual:@"0x0000000045000104"])
  {
    uniqueIdentifier7 = [updateCopy uniqueIdentifier];
    userEnabledCharacteristic = [(CAFRoute *)self userEnabledCharacteristic];
    uniqueIdentifier8 = [userEnabledCharacteristic uniqueIdentifier];
    v28 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v28)
    {
      observers = [(CAFService *)self observers];
      [observers routeService:self didUpdateUserEnabled:{-[CAFRoute userEnabled](self, "userEnabled")}];
      goto LABEL_37;
    }
  }

  else
  {
  }

  characteristicType5 = [updateCopy characteristicType];
  if ([characteristicType5 isEqual:@"0x0000000045000105"])
  {
    uniqueIdentifier9 = [updateCopy uniqueIdentifier];
    vehicleEnabledCharacteristic = [(CAFRoute *)self vehicleEnabledCharacteristic];
    uniqueIdentifier10 = [vehicleEnabledCharacteristic uniqueIdentifier];
    v33 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

    if (v33)
    {
      observers = [(CAFService *)self observers];
      [observers routeService:self didUpdateVehicleEnabled:{-[CAFRoute vehicleEnabled](self, "vehicleEnabled")}];
      goto LABEL_37;
    }
  }

  else
  {
  }

  characteristicType6 = [updateCopy characteristicType];
  if ([characteristicType6 isEqual:@"0x0000000045000106"])
  {
    uniqueIdentifier11 = [updateCopy uniqueIdentifier];
    geodeticSystemCharacteristic = [(CAFRoute *)self geodeticSystemCharacteristic];
    uniqueIdentifier12 = [geodeticSystemCharacteristic uniqueIdentifier];
    v38 = [uniqueIdentifier11 isEqual:uniqueIdentifier12];

    if (v38)
    {
      observers = [(CAFService *)self observers];
      [observers routeService:self didUpdateGeodeticSystem:{-[CAFRoute geodeticSystem](self, "geodeticSystem")}];
      goto LABEL_37;
    }
  }

  else
  {
  }

  characteristicType7 = [updateCopy characteristicType];
  if ([characteristicType7 isEqual:@"0x0000000045000107"])
  {
    uniqueIdentifier13 = [updateCopy uniqueIdentifier];
    originCharacteristic = [(CAFRoute *)self originCharacteristic];
    uniqueIdentifier14 = [originCharacteristic uniqueIdentifier];
    v43 = [uniqueIdentifier13 isEqual:uniqueIdentifier14];

    if (v43)
    {
      observers = [(CAFService *)self observers];
      userVisibleApplicationName = [(CAFRoute *)self origin];
      [observers routeService:self didUpdateOrigin:userVisibleApplicationName];
      goto LABEL_8;
    }
  }

  else
  {
  }

  characteristicType8 = [updateCopy characteristicType];
  if ([characteristicType8 isEqual:@"0x0000000045000108"])
  {
    uniqueIdentifier15 = [updateCopy uniqueIdentifier];
    destinationCharacteristic = [(CAFRoute *)self destinationCharacteristic];
    uniqueIdentifier16 = [destinationCharacteristic uniqueIdentifier];
    v48 = [uniqueIdentifier15 isEqual:uniqueIdentifier16];

    if (v48)
    {
      observers = [(CAFService *)self observers];
      userVisibleApplicationName = [(CAFRoute *)self destination];
      [observers routeService:self didUpdateDestination:userVisibleApplicationName];
      goto LABEL_8;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000045000109"])
  {
    goto LABEL_37;
  }

  uniqueIdentifier17 = [updateCopy uniqueIdentifier];
  legsCharacteristic = [(CAFRoute *)self legsCharacteristic];
  uniqueIdentifier18 = [legsCharacteristic uniqueIdentifier];
  v52 = [uniqueIdentifier17 isEqual:uniqueIdentifier18];

  if (v52)
  {
    observers = [(CAFService *)self observers];
    userVisibleApplicationName = [(CAFRoute *)self legs];
    [observers routeService:self didUpdateLegs:userVisibleApplicationName];
    goto LABEL_8;
  }

LABEL_38:
  v53.receiver = self;
  v53.super_class = CAFRoute;
  [(CAFService *)&v53 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForRouteState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000101"];

  return v10;
}

- (BOOL)registeredForUserVisibleApplicationName
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000102"];

  return v10;
}

- (BOOL)registeredForApplicationEnabled
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000103"];

  return v10;
}

- (BOOL)registeredForUserEnabled
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000104"];

  return v10;
}

- (BOOL)registeredForVehicleEnabled
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000105"];

  return v10;
}

- (BOOL)registeredForGeodeticSystem
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000106"];

  return v10;
}

- (BOOL)registeredForOrigin
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000107"];

  return v10;
}

- (BOOL)registeredForDestination
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000108"];

  return v10;
}

- (BOOL)registeredForLegs
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000045000109"];

  return v10;
}

@end