@interface CAFFuelRemainingRange
+ (void)load;
- (BOOL)hasHidden;
- (BOOL)hidden;
- (BOOL)registeredForHidden;
- (CAFBoolCharacteristic)hiddenCharacteristic;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFFuelRemainingRange

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFFuelRemainingRange;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846A7C60])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFFuelRemainingRange;
  [(CAFDistanceDisplay *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846A7C60])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFFuelRemainingRange;
  [(CAFDistanceDisplay *)&v6 unregisterObserver:v5];
}

- (CAFBoolCharacteristic)hiddenCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000023"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000036000023"];
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

- (BOOL)hidden
{
  hiddenCharacteristic = [(CAFFuelRemainingRange *)self hiddenCharacteristic];
  bOOLValue = [hiddenCharacteristic BOOLValue];

  return bOOLValue;
}

- (BOOL)hasHidden
{
  hiddenCharacteristic = [(CAFFuelRemainingRange *)self hiddenCharacteristic];
  v3 = hiddenCharacteristic != 0;

  return v3;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if (![characteristicType isEqual:@"0x0000000036000023"])
  {
    goto LABEL_4;
  }

  uniqueIdentifier = [updateCopy uniqueIdentifier];
  hiddenCharacteristic = [(CAFFuelRemainingRange *)self hiddenCharacteristic];
  uniqueIdentifier2 = [hiddenCharacteristic uniqueIdentifier];
  v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v11)
  {
    characteristicType = [(CAFService *)self observers];
    [characteristicType fuelRemainingRangeService:self didUpdateHidden:{-[CAFFuelRemainingRange hidden](self, "hidden")}];
LABEL_4:
  }

  v12.receiver = self;
  v12.super_class = CAFFuelRemainingRange;
  [(CAFDistanceDisplay *)&v12 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForHidden
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000036000023"];

  return v10;
}

@end