@interface CAFTurnSignals
+ (void)load;
- (BOOL)registeredForTurnSignalLeft;
- (BOOL)registeredForTurnSignalRight;
- (CAFTurnSignalCharacteristic)turnSignalLeftCharacteristic;
- (CAFTurnSignalCharacteristic)turnSignalRightCharacteristic;
- (unsigned)turnSignalLeft;
- (unsigned)turnSignalRight;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFTurnSignals

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTurnSignals;
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
  v6.super_class = CAFTurnSignals;
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
  v6.super_class = CAFTurnSignals;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFTurnSignalCharacteristic)turnSignalLeftCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000051000001"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000051000001"];
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

- (unsigned)turnSignalLeft
{
  turnSignalLeftCharacteristic = [(CAFTurnSignals *)self turnSignalLeftCharacteristic];
  turnSignalValue = [turnSignalLeftCharacteristic turnSignalValue];

  return turnSignalValue;
}

- (CAFTurnSignalCharacteristic)turnSignalRightCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000051000002"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000051000002"];
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

- (unsigned)turnSignalRight
{
  turnSignalRightCharacteristic = [(CAFTurnSignals *)self turnSignalRightCharacteristic];
  turnSignalValue = [turnSignalRightCharacteristic turnSignalValue];

  return turnSignalValue;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  characteristicType = [updateCopy characteristicType];
  if ([characteristicType isEqual:@"0x0000000051000001"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    turnSignalLeftCharacteristic = [(CAFTurnSignals *)self turnSignalLeftCharacteristic];
    uniqueIdentifier2 = [turnSignalLeftCharacteristic uniqueIdentifier];
    v11 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v11)
    {
      observers = [(CAFService *)self observers];
      [observers turnSignalsService:self didUpdateTurnSignalLeft:{-[CAFTurnSignals turnSignalLeft](self, "turnSignalLeft")}];
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
  }

  observers = [updateCopy characteristicType];
  if (![observers isEqual:@"0x0000000051000002"])
  {
    goto LABEL_8;
  }

  uniqueIdentifier3 = [updateCopy uniqueIdentifier];
  turnSignalRightCharacteristic = [(CAFTurnSignals *)self turnSignalRightCharacteristic];
  uniqueIdentifier4 = [turnSignalRightCharacteristic uniqueIdentifier];
  v16 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

  if (v16)
  {
    observers = [(CAFService *)self observers];
    [observers turnSignalsService:self didUpdateTurnSignalRight:{-[CAFTurnSignals turnSignalRight](self, "turnSignalRight")}];
    goto LABEL_8;
  }

LABEL_9:
  v17.receiver = self;
  v17.super_class = CAFTurnSignals;
  [(CAFService *)&v17 _characteristicDidUpdate:updateCopy fromGroupUpdate:groupUpdateCopy];
}

- (BOOL)registeredForTurnSignalLeft
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000051000001"];

  return v10;
}

- (BOOL)registeredForTurnSignalRight
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000051000002"];

  return v10;
}

@end