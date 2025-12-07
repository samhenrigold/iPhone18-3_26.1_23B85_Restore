@interface CAFEngineGaugeUI
+ (void)load;
- (BOOL)registeredForUIEmphasizedEngineGauge;
- (BOOL)registeredForUISecondaryEngineGaugeHidden;
- (BOOL)uiSecondaryEngineGaugeHidden;
- (CAFBoolCharacteristic)uiSecondaryEngineGaugeHiddenCharacteristic;
- (CAFUIEmphasizedEngineGaugeCharacteristic)uiEmphasizedEngineGaugeCharacteristic;
- (unsigned)uiEmphasizedEngineGauge;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFEngineGaugeUI

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFEngineGaugeUI;
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
  v6.super_class = CAFEngineGaugeUI;
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
  v6.super_class = CAFEngineGaugeUI;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFUIEmphasizedEngineGaugeCharacteristic)uiEmphasizedEngineGaugeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000007"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000007"];
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

- (unsigned)uiEmphasizedEngineGauge
{
  uiEmphasizedEngineGaugeCharacteristic = [(CAFEngineGaugeUI *)self uiEmphasizedEngineGaugeCharacteristic];
  uIEmphasizedEngineGaugeValue = [uiEmphasizedEngineGaugeCharacteristic uIEmphasizedEngineGaugeValue];

  return uIEmphasizedEngineGaugeValue;
}

- (CAFBoolCharacteristic)uiSecondaryEngineGaugeHiddenCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000008"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000041000008"];
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

- (BOOL)uiSecondaryEngineGaugeHidden
{
  uiSecondaryEngineGaugeHiddenCharacteristic = [(CAFEngineGaugeUI *)self uiSecondaryEngineGaugeHiddenCharacteristic];
  bOOLValue = [uiSecondaryEngineGaugeHiddenCharacteristic BOOLValue];

  return bOOLValue;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000041000007"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    uiEmphasizedEngineGaugeCharacteristic = [(CAFEngineGaugeUI *)self uiEmphasizedEngineGaugeCharacteristic];
    uniqueIdentifier2 = [uiEmphasizedEngineGaugeCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers engineGaugeUIService:self didUpdateUiEmphasizedEngineGauge:{-[CAFEngineGaugeUI uiEmphasizedEngineGauge](self, "uiEmphasizedEngineGauge")}];
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000041000008"])
  {
    goto LABEL_8;
  }

  uniqueIdentifier3 = [updateCopy uniqueIdentifier];
  uiSecondaryEngineGaugeHiddenCharacteristic = [(CAFEngineGaugeUI *)self uiSecondaryEngineGaugeHiddenCharacteristic];
  uniqueIdentifier4 = [uiSecondaryEngineGaugeHiddenCharacteristic uniqueIdentifier];
  v16 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

  if (v16)
  {
    observers = [(CAFService *)self observers];
    [observers engineGaugeUIService:self didUpdateUiSecondaryEngineGaugeHidden:{-[CAFEngineGaugeUI uiSecondaryEngineGaugeHidden](self, "uiSecondaryEngineGaugeHidden")}];
    goto LABEL_8;
  }

LABEL_9:
  v17.receiver = self;
  v17.super_class = CAFEngineGaugeUI;
  [(CAFService *)&v17 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForUIEmphasizedEngineGauge
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000007"];

  return v10;
}

- (BOOL)registeredForUISecondaryEngineGaugeHidden
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000041000008"];

  return v10;
}

@end