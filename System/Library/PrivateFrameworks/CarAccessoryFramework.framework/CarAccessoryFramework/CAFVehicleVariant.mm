@interface CAFVehicleVariant
+ (void)load;
- (BOOL)hasAudioLogo;
- (BOOL)hasVehicleLayout;
- (BOOL)hasVehicleLogo;
- (BOOL)registeredForAudioLogo;
- (BOOL)registeredForExteriorStyle;
- (BOOL)registeredForInteriorStyle;
- (BOOL)registeredForVehicleLayout;
- (BOOL)registeredForVehicleLogo;
- (CAFStringCharacteristic)audioLogoCharacteristic;
- (CAFStringCharacteristic)exteriorStyleCharacteristic;
- (CAFStringCharacteristic)interiorStyleCharacteristic;
- (CAFStringCharacteristic)vehicleLayoutCharacteristic;
- (CAFStringCharacteristic)vehicleLogoCharacteristic;
- (NSString)audioLogo;
- (NSString)exteriorStyle;
- (NSString)interiorStyle;
- (NSString)vehicleLayout;
- (NSString)vehicleLogo;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFVehicleVariant

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFVehicleVariant;
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
  v6.super_class = CAFVehicleVariant;
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
  v6.super_class = CAFVehicleVariant;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFStringCharacteristic)exteriorStyleCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000048000003"];
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

- (NSString)exteriorStyle
{
  exteriorStyleCharacteristic = [(CAFVehicleVariant *)self exteriorStyleCharacteristic];
  stringValue = [exteriorStyleCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)interiorStyleCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000048000004"];
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

- (NSString)interiorStyle
{
  interiorStyleCharacteristic = [(CAFVehicleVariant *)self interiorStyleCharacteristic];
  stringValue = [interiorStyleCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)vehicleLayoutCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000048000005"];
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

- (NSString)vehicleLayout
{
  vehicleLayoutCharacteristic = [(CAFVehicleVariant *)self vehicleLayoutCharacteristic];
  stringValue = [vehicleLayoutCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasVehicleLayout
{
  vehicleLayoutCharacteristic = [(CAFVehicleVariant *)self vehicleLayoutCharacteristic];
  v3 = vehicleLayoutCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)audioLogoCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000006"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000048000006"];
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

- (NSString)audioLogo
{
  audioLogoCharacteristic = [(CAFVehicleVariant *)self audioLogoCharacteristic];
  stringValue = [audioLogoCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasAudioLogo
{
  audioLogoCharacteristic = [(CAFVehicleVariant *)self audioLogoCharacteristic];
  v3 = audioLogoCharacteristic != 0;

  return v3;
}

- (CAFStringCharacteristic)vehicleLogoCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000048000007"];
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

- (NSString)vehicleLogo
{
  vehicleLogoCharacteristic = [(CAFVehicleVariant *)self vehicleLogoCharacteristic];
  stringValue = [vehicleLogoCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasVehicleLogo
{
  vehicleLogoCharacteristic = [(CAFVehicleVariant *)self vehicleLogoCharacteristic];
  v3 = vehicleLogoCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000048000003"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    exteriorStyleCharacteristic = [(CAFVehicleVariant *)self exteriorStyleCharacteristic];
    uniqueIdentifier2 = [exteriorStyleCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      exteriorStyle = [(CAFVehicleVariant *)self exteriorStyle];
      [observers vehicleVariantService:self didUpdateExteriorStyle:exteriorStyle];
LABEL_20:

      goto LABEL_21;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000048000004"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    interiorStyleCharacteristic = [(CAFVehicleVariant *)self interiorStyleCharacteristic];
    uniqueIdentifier4 = [interiorStyleCharacteristic uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v18)
    {
      observers = [(CAFService *)self observers];
      exteriorStyle = [(CAFVehicleVariant *)self interiorStyle];
      [observers vehicleVariantService:self didUpdateInteriorStyle:exteriorStyle];
      goto LABEL_20;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000048000005"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    vehicleLayoutCharacteristic = [(CAFVehicleVariant *)self vehicleLayoutCharacteristic];
    uniqueIdentifier6 = [vehicleLayoutCharacteristic uniqueIdentifier];
    v23 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v23)
    {
      observers = [(CAFService *)self observers];
      exteriorStyle = [(CAFVehicleVariant *)self vehicleLayout];
      [observers vehicleVariantService:self didUpdateVehicleLayout:exteriorStyle];
      goto LABEL_20;
    }
  }

  else
  {
  }

  characteristicType4 = [updateCopy characteristicType];
  if ([characteristicType4 isEqual:@"0x0000000048000006"])
  {
    uniqueIdentifier7 = [updateCopy uniqueIdentifier];
    audioLogoCharacteristic = [(CAFVehicleVariant *)self audioLogoCharacteristic];
    uniqueIdentifier8 = [audioLogoCharacteristic uniqueIdentifier];
    v28 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v28)
    {
      observers = [(CAFService *)self observers];
      exteriorStyle = [(CAFVehicleVariant *)self audioLogo];
      [observers vehicleVariantService:self didUpdateAudioLogo:exteriorStyle];
      goto LABEL_20;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000048000007"])
  {
LABEL_21:

    goto LABEL_22;
  }

  uniqueIdentifier9 = [updateCopy uniqueIdentifier];
  vehicleLogoCharacteristic = [(CAFVehicleVariant *)self vehicleLogoCharacteristic];
  uniqueIdentifier10 = [vehicleLogoCharacteristic uniqueIdentifier];
  v32 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

  if (v32)
  {
    observers = [(CAFService *)self observers];
    exteriorStyle = [(CAFVehicleVariant *)self vehicleLogo];
    [observers vehicleVariantService:self didUpdateVehicleLogo:exteriorStyle];
    goto LABEL_20;
  }

LABEL_22:
  v33.receiver = self;
  v33.super_class = CAFVehicleVariant;
  [(CAFService *)&v33 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForExteriorStyle
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000003"];

  return v10;
}

- (BOOL)registeredForInteriorStyle
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000004"];

  return v10;
}

- (BOOL)registeredForVehicleLayout
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000005"];

  return v10;
}

- (BOOL)registeredForAudioLogo
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000006"];

  return v10;
}

- (BOOL)registeredForVehicleLogo
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000048000007"];

  return v10;
}

@end