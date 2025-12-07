@interface CAFCabin
+ (void)load;
- (BOOL)compressorOn;
- (BOOL)compressorOnDisabled;
- (BOOL)compressorOnInvalid;
- (BOOL)compressorOnRestricted;
- (BOOL)hasCompressorOn;
- (BOOL)hasHvacOn;
- (BOOL)hasMaxACOn;
- (BOOL)hasMaxDefrostOn;
- (BOOL)hvacOn;
- (BOOL)hvacOnInvalid;
- (BOOL)maxACOn;
- (BOOL)maxACOnDisabled;
- (BOOL)maxACOnInvalid;
- (BOOL)maxACOnRestricted;
- (BOOL)maxDefrostOn;
- (BOOL)maxDefrostOnDisabled;
- (BOOL)maxDefrostOnInvalid;
- (BOOL)maxDefrostOnRestricted;
- (BOOL)registeredForACCompressorOn;
- (BOOL)registeredForHVACOn;
- (BOOL)registeredForMaxACOn;
- (BOOL)registeredForMaxDefrostOn;
- (CAFBoolCharacteristic)compressorOnCharacteristic;
- (CAFBoolCharacteristic)hvacOnCharacteristic;
- (CAFBoolCharacteristic)maxACOnCharacteristic;
- (CAFBoolCharacteristic)maxDefrostOnCharacteristic;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)setCompressorOn:(BOOL)on;
- (void)setHvacOn:(BOOL)on;
- (void)setMaxACOn:(BOOL)on;
- (void)setMaxDefrostOn:(BOOL)on;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFCabin

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFCabin;
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
  v6.super_class = CAFCabin;
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
  v6.super_class = CAFCabin;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFBoolCharacteristic)maxACOnCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000022"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000022"];
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

- (BOOL)maxACOn
{
  maxACOnCharacteristic = [(CAFCabin *)self maxACOnCharacteristic];
  bOOLValue = [maxACOnCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setMaxACOn:(BOOL)on
{
  onCopy = on;
  maxACOnCharacteristic = [(CAFCabin *)self maxACOnCharacteristic];
  [maxACOnCharacteristic setBoolValue:onCopy];
}

- (BOOL)hasMaxACOn
{
  maxACOnCharacteristic = [(CAFCabin *)self maxACOnCharacteristic];
  v3 = maxACOnCharacteristic != 0;

  return v3;
}

- (BOOL)maxACOnDisabled
{
  maxACOnCharacteristic = [(CAFCabin *)self maxACOnCharacteristic];
  isDisabled = [maxACOnCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)maxACOnInvalid
{
  maxACOnCharacteristic = [(CAFCabin *)self maxACOnCharacteristic];
  isInvalid = [maxACOnCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)maxACOnRestricted
{
  maxACOnCharacteristic = [(CAFCabin *)self maxACOnCharacteristic];
  isRestricted = [maxACOnCharacteristic isRestricted];

  return isRestricted;
}

- (CAFBoolCharacteristic)maxDefrostOnCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000029"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000029"];
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

- (BOOL)maxDefrostOn
{
  maxDefrostOnCharacteristic = [(CAFCabin *)self maxDefrostOnCharacteristic];
  bOOLValue = [maxDefrostOnCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setMaxDefrostOn:(BOOL)on
{
  onCopy = on;
  maxDefrostOnCharacteristic = [(CAFCabin *)self maxDefrostOnCharacteristic];
  [maxDefrostOnCharacteristic setBoolValue:onCopy];
}

- (BOOL)hasMaxDefrostOn
{
  maxDefrostOnCharacteristic = [(CAFCabin *)self maxDefrostOnCharacteristic];
  v3 = maxDefrostOnCharacteristic != 0;

  return v3;
}

- (BOOL)maxDefrostOnDisabled
{
  maxDefrostOnCharacteristic = [(CAFCabin *)self maxDefrostOnCharacteristic];
  isDisabled = [maxDefrostOnCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)maxDefrostOnInvalid
{
  maxDefrostOnCharacteristic = [(CAFCabin *)self maxDefrostOnCharacteristic];
  isInvalid = [maxDefrostOnCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)maxDefrostOnRestricted
{
  maxDefrostOnCharacteristic = [(CAFCabin *)self maxDefrostOnCharacteristic];
  isRestricted = [maxDefrostOnCharacteristic isRestricted];

  return isRestricted;
}

- (CAFBoolCharacteristic)hvacOnCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000002"];
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

- (BOOL)hvacOn
{
  hvacOnCharacteristic = [(CAFCabin *)self hvacOnCharacteristic];
  bOOLValue = [hvacOnCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setHvacOn:(BOOL)on
{
  onCopy = on;
  hvacOnCharacteristic = [(CAFCabin *)self hvacOnCharacteristic];
  [hvacOnCharacteristic setBoolValue:onCopy];
}

- (BOOL)hasHvacOn
{
  hvacOnCharacteristic = [(CAFCabin *)self hvacOnCharacteristic];
  v3 = hvacOnCharacteristic != 0;

  return v3;
}

- (BOOL)hvacOnInvalid
{
  hvacOnCharacteristic = [(CAFCabin *)self hvacOnCharacteristic];
  isInvalid = [hvacOnCharacteristic isInvalid];

  return isInvalid;
}

- (CAFBoolCharacteristic)compressorOnCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000031000003"];
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

- (BOOL)compressorOn
{
  compressorOnCharacteristic = [(CAFCabin *)self compressorOnCharacteristic];
  bOOLValue = [compressorOnCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)setCompressorOn:(BOOL)on
{
  onCopy = on;
  compressorOnCharacteristic = [(CAFCabin *)self compressorOnCharacteristic];
  [compressorOnCharacteristic setBoolValue:onCopy];
}

- (BOOL)hasCompressorOn
{
  compressorOnCharacteristic = [(CAFCabin *)self compressorOnCharacteristic];
  v3 = compressorOnCharacteristic != 0;

  return v3;
}

- (BOOL)compressorOnDisabled
{
  compressorOnCharacteristic = [(CAFCabin *)self compressorOnCharacteristic];
  isDisabled = [compressorOnCharacteristic isDisabled];

  return isDisabled;
}

- (BOOL)compressorOnInvalid
{
  compressorOnCharacteristic = [(CAFCabin *)self compressorOnCharacteristic];
  isInvalid = [compressorOnCharacteristic isInvalid];

  return isInvalid;
}

- (BOOL)compressorOnRestricted
{
  compressorOnCharacteristic = [(CAFCabin *)self compressorOnCharacteristic];
  isRestricted = [compressorOnCharacteristic isRestricted];

  return isRestricted;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000031000022"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    maxACOnCharacteristic = [(CAFCabin *)self maxACOnCharacteristic];
    uniqueIdentifier2 = [maxACOnCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers cabinService:self didUpdateMaxACOn:{-[CAFCabin maxACOn](self, "maxACOn")}];
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
  }

  characteristicType2 = [updateCopy characteristicType];
  if ([characteristicType2 isEqual:@"0x0000000031000029"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    maxDefrostOnCharacteristic = [(CAFCabin *)self maxDefrostOnCharacteristic];
    uniqueIdentifier4 = [maxDefrostOnCharacteristic uniqueIdentifier];
    v17 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v17)
    {
      observers = [(CAFService *)self observers];
      [observers cabinService:self didUpdateMaxDefrostOn:{-[CAFCabin maxDefrostOn](self, "maxDefrostOn")}];
      goto LABEL_16;
    }
  }

  else
  {
  }

  characteristicType3 = [updateCopy characteristicType];
  if ([characteristicType3 isEqual:@"0x0000000031000002"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    hvacOnCharacteristic = [(CAFCabin *)self hvacOnCharacteristic];
    uniqueIdentifier6 = [hvacOnCharacteristic uniqueIdentifier];
    v22 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v22)
    {
      observers = [(CAFService *)self observers];
      [observers cabinService:self didUpdateHvacOn:{-[CAFCabin hvacOn](self, "hvacOn")}];
      goto LABEL_16;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000031000003"])
  {
    goto LABEL_16;
  }

  uniqueIdentifier7 = [updateCopy uniqueIdentifier];
  compressorOnCharacteristic = [(CAFCabin *)self compressorOnCharacteristic];
  uniqueIdentifier8 = [compressorOnCharacteristic uniqueIdentifier];
  v26 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

  if (v26)
  {
    observers = [(CAFService *)self observers];
    [observers cabinService:self didUpdateCompressorOn:{-[CAFCabin compressorOn](self, "compressorOn")}];
    goto LABEL_16;
  }

LABEL_17:
  v27.receiver = self;
  v27.super_class = CAFCabin;
  [(CAFService *)&v27 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForMaxACOn
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000022"];

  return v10;
}

- (BOOL)registeredForMaxDefrostOn
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000029"];

  return v10;
}

- (BOOL)registeredForHVACOn
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000002"];

  return v10;
}

- (BOOL)registeredForACCompressorOn
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000031000003"];

  return v10;
}

@end